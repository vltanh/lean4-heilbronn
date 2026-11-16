module

public import Heilbronn.Nine.TypeII.TypeII
public import Heilbronn.Nine.Corners.OneCorner

/-! # The balanced adjacent-corner case: the left hull must be triangular

The balanced count row `(2,2,2)` of Type II, with `0 < b ≤ 1/2`: the left pair is `E, L`, the
central pair `P, Q`, the right pair `R, S`. The free points are passed to
`typeIIConfig l b L P Q R S` in this order (`BalancedRow`). When the right hull vertex adjacent
to `B` matters, it is whichever of `R, S` it is.

Thresholds: most results work at doubled threshold `s = 7/64` (area `7/128`);
`not_both_central_in_DEC` uses the stronger `s = 79/720 < 2A₀` (area `79/1440`), and the final
placement uses `σ = 7/64` again.

Results:

* `lower_vertex_bounds`: the lower-vertex inequality of a four-point endpoint quadrilateral
  in the triangle `(0,0), (1,0), (1,1)`;
* `left_quad_bounds`: a quadrilateral left hull forces a low point;
* `right_hull_triangular_of_left_quad`: both side hulls cannot be quadrilaterals (stated as: the right
  hull is triangular, one right point strictly inside the triangle `B, C` and the other);
* `false_of_left_quad_of_right_tri`: left quadrilateral with right triangle is impossible;
* `left_hull_triangular`: `L` lies strictly inside `DBE`;
* `not_both_central_in_EBC`, `left_in_EBC_of_central_in_DEC`: restrictions on the two central points
  relative to the cut `CE`;
* `not_both_central_in_DEC` (at `79/720`);
* `left_above_CE` and the summary `balancedPlacement_or_swap`, with the definition
  `BalancedPlacement` of the resulting placement.

Implementation notes. The hull alternatives of the four-point sets are written as sign conditions: the
left set `D, B, E, L` is triangular exactly when `L` is inside `DBE`; for the right set
`B, C, R, S` (both right points on one side of `BC`) the signs of `[BRS]` and `[RCS]` decide
between `S` inside `BRC`, `R` inside `BSC` and the two convex quadrilaterals `B, R, S, C`,
`B, S, R, C`. The bound on `[EBL]` in `not_both_central_in_DEC` is proved in polynomial form:
for `z = bq` the expression `z(1 - q + z) - s(1 + z)` increases with `z`, and at the largest `z`
allowed by the line table it is a quartic in `q`, negative on `[6s, 1]`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeIIBalanced

open Heilbronn.Nine.TypeII

/-- The balanced row `(2,2,2)` with labelled points: the Type-II data with `0 < b ≤ 1/2`, the
free points in the square, `L` a left point, `P, Q` central points and `R, S` right points. -/
def BalancedRow (l b : ℝ) (L P Q R S : Point) : Prop :=
  TypeIIData l b L P Q R S ∧ b ≤ 1 / 2 ∧ IsLeft b L ∧ IsCentral b P ∧ IsCentral b Q ∧
    IsRight b R ∧ IsRight b S

/-- The final balanced placement: the Type-II data with `0 < b ≤ 1/2`, the free points in the
square, `L` strictly inside `DBE` and above `CE`, the central point `P` above `CE`, the central
point `Q` below `CE`, and `R, S` right points. -/
def BalancedPlacement (l b : ℝ) (L P Q R S : Point) : Prop :=
  TypeIIData l b L P Q R S ∧ b ≤ 1 / 2 ∧
    InTriangle L ptD (ptE l) (ptB b) ∧ 0 < sarea (ptE l) ptC L ∧
    IsCentral b P ∧ 0 < sarea (ptE l) ptC P ∧
    IsCentral b Q ∧ sarea (ptE l) ptC Q < 0 ∧
    IsRight b R ∧ IsRight b S

/-! ### Helpers -/

theorem ge_of_abs_pos {s t : ℝ} (hp : 0 < t) (h : s ≤ |t|) : s ≤ t := by
  rwa [abs_of_pos hp] at h

theorem ne_of_le_abs {s t : ℝ} (hs : 0 < s) (h : s ≤ |t|) : t ≠ 0 := fun h0 => by
  rw [h0, abs_zero] at h; linarith

/-- `(4 + 2√3)(7/64) > 13/16`. -/
theorem Ktwo_s_gt : 13 / 16 < Ktwo * (7 / 64) := by unfold Ktwo; nlinarith [sqrt_three_gt]

/-- The two-interior-point lemma in signed doubled form at least area `7/128`. -/
theorem two_interior_sarea {A B C X Y : Point} (hX : InTriangle X A B C)
    (hY : InTriangle Y A B C) (hmin : 7 / 128 ≤ minTriangleArea ![A, B, C, X, Y]) :
    Ktwo * (7 / 64) ≤ sarea A B C := by
  have h2 := twoInteriorPointLemma A B C X Y (Or.inl hX) (Or.inl hY) (7 / 128)
    (by norm_num) hmin
  have hpos : 0 < sarea A B C := by
    have := sarea_add_sarea_add_sarea A B C X
    obtain ⟨a1, a2, a3⟩ := hX
    linarith
  rw [triangleArea_eq, abs_of_pos hpos] at h2
  unfold Ktwo; linarith

/-- A sub-configuration of the balanced configuration. -/
theorem row_sub {l b t : ℝ} {L P Q R S : Point} {m : ℕ} (hm : 3 ≤ m)
    (h : t ≤ minTriangleArea (typeIIConfig l b L P Q R S)) (f : Fin m → Fin 9)
    (hf : Function.Injective f) (Y : Fin m → Point)
    (hY : Y = ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] ∘ f) : t ≤ minTriangleArea Y :=
  h.trans (min_le_min_reindex hm _ _ f hf hY)

/-- Swapping the two right points keeps the least area. -/
theorem min_swapRS (l b : ℝ) (L P Q R S : Point) :
    minTriangleArea (typeIIConfig l b L P Q S R) = minTriangleArea (typeIIConfig l b L P Q R S) := by
  rw [show typeIIConfig l b L P Q S R = typeIIConfig l b L P Q R S ∘ Equiv.swap (7 : Fin 9) 8 by
    funext m; fin_cases m <;> rfl, minTriangleArea_comp_perm]

/-- Swapping the two central points keeps the least area. -/
theorem min_swapPQ (l b : ℝ) (L P Q R S : Point) :
    minTriangleArea (typeIIConfig l b L Q P R S) = minTriangleArea (typeIIConfig l b L P Q R S) := by
  rw [show typeIIConfig l b L Q P R S = typeIIConfig l b L P Q R S ∘ Equiv.swap (5 : Fin 9) 6 by
    funext m; fin_cases m <;> rfl, minTriangleArea_comp_perm]

theorem balancedRow_swapRS {l b : ℝ} {L P Q R S : Point} (h : BalancedRow l b L P Q R S) :
    BalancedRow l b L P Q S R := by
  obtain ⟨⟨h1, h2, h3, h4, h5, h6, h7, h8, h9⟩, h10, h11, h12, h13, h14, h15⟩ := h
  exact ⟨⟨h1, h2, h3, h4, h5, h6, h7, h9, h8⟩, h10, h11, h12, h13, h15, h14⟩

theorem balancedRow_swapPQ {l b : ℝ} {L P Q R S : Point} (h : BalancedRow l b L P Q R S) :
    BalancedRow l b L Q P R S := by
  obtain ⟨⟨h1, h2, h3, h4, h5, h6, h7, h8, h9⟩, h10, h11, h12, h13, h14, h15⟩ := h
  exact ⟨⟨h1, h2, h3, h4, h5, h7, h6, h8, h9⟩, h10, h11, h13, h12, h14, h15⟩

/-! ### The lower vertex of an endpoint quadrilateral -/

/-- Let `B₀ = (0,0)`, `C₀ = (1,1)`, `Q₀ = (x,y)`, `R₀ = (z,w)`, with `Q₀, R₀` in the closed
triangle `(0,0), (1,0), (1,1)` and `B₀, Q₀, R₀, C₀` the vertices of a convex quadrilateral in this
cyclic order, and let every doubled triangle area of the four points be at least `a > 0`. Then
`x > y ≥ 0`, `x < 1`, `(x-y)(1-x) ≥ a` and `y ≤ 1 - 2√a`.

The cyclic order is counterclockwise (forced, as `Q₀, R₀` lie below the diagonal `B₀C₀`). -/
theorem lower_vertex_bounds {a : ℝ} {Q₀ R₀ : Point} (ha : 0 < a)
    (hQ : 0 ≤ Q₀.2 ∧ Q₀.2 ≤ Q₀.1 ∧ Q₀.1 ≤ 1) (hR : 0 ≤ R₀.2 ∧ R₀.2 ≤ R₀.1 ∧ R₀.1 ≤ 1)
    (hconv : ConvexQuad (0, 0) Q₀ R₀ (1, 1))
    (hmin : a / 2 ≤ minTriangleArea ![((0, 0) : Point), Q₀, R₀, (1, 1)]) :
    Q₀.2 < Q₀.1 ∧ 0 ≤ Q₀.2 ∧ Q₀.1 < 1 ∧ a ≤ (Q₀.1 - Q₀.2) * (1 - Q₀.1) ∧
      Q₀.2 ≤ 1 - 2 * Real.sqrt a := by
  obtain ⟨c1, c2, -, c4⟩ := hconv
  have hu := ge_of_abs_pos c1 (le_abs_sarea_of_le_min hmin 0 1 2)
  have hv := ge_of_abs_pos c2 (le_abs_sarea_of_le_min hmin 1 2 3)
  obtain ⟨y0, yx, x1⟩ := hQ
  obtain ⟨-, -, z1⟩ := hR
  simp only [sarea] at hu hv c4
  have hxy : Q₀.2 < Q₀.1 := by linarith
  have hx1 : Q₀.1 < 1 := by
    rcases lt_or_eq_of_le x1 with h | h
    · exact h
    · exfalso; rw [h] at hv; nlinarith
  have hx0 : 0 ≤ Q₀.1 := by linarith
  have key : a ≤ (Q₀.1 - Q₀.2) * (1 - Q₀.1) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hx1.le) (sub_nonneg.2 hu),
      mul_nonneg (sub_nonneg.2 hxy.le) (sub_nonneg.2 z1), mul_nonneg hx0 (sub_nonneg.2 hv)]
  refine ⟨hxy, y0, hx1, key, ?_⟩
  have hs : Real.sqrt a ≤ (1 - Q₀.2) / 2 :=
    Real.sqrt_le_iff.2 ⟨by linarith, by nlinarith [sq_nonneg (Q₀.1 - Q₀.2 - (1 - Q₀.1))]⟩
  linarith

/-! ### A quadrilateral left hull -/

/-- In the balanced row at doubled threshold `s = 7/64`, if `L = (p, v)` is not inside `DBE`
(the left hull is the quadrilateral `D, E, L, B`), then `(1-λ)p ≥ s` and `λ(b-p) - bv ≥ s`;
`b ≥ s/(λ(1-λ)) ≥ 4s` and `1 - b ≤ 9/16`; `v ≤ 1 - √(7/8) < 1/15`; and `0 < p < b`. -/
theorem left_quad_bounds {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) :
    7 / 64 ≤ (1 - l) * L.1 ∧ 7 / 64 ≤ l * (b - L.1) - b * L.2 ∧
      7 / 64 ≤ l * (1 - l) * b ∧ 4 * (7 / 64) ≤ b ∧ 1 - b ≤ 9 / 16 ∧
      L.2 ≤ 1 - Real.sqrt (7 / 8) ∧ L.2 < 1 / 15 ∧ 0 < L.1 ∧ L.1 < b := by
  obtain ⟨⟨hb, hb1, hl, hl1, hLs, -, -, -, -⟩, hb2, hL, -⟩ := hrow
  obtain ⟨Lx0, -, Ly0, -⟩ := hLs
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have eDEL : 7 / 64 ≤ |sarea ptD (ptE l) L| := le_abs_sarea_of_le_min hm 0 2 4
  have eEBL : 7 / 64 ≤ |sarea (ptE l) (ptB b) L| := le_abs_sarea_of_le_min hm 2 3 4
  have dDEL : sarea ptD (ptE l) L = (1 - l) * L.1 := by simp only [sarea, ptD, ptE]; ring
  have dEBL : sarea (ptE l) (ptB b) L = -(l * (b - L.1) - b * L.2) := by
    simp only [sarea, ptE, ptB]; ring
  have dBDL : sarea (ptB b) ptD L = -sarea ptD (ptB b) L := by unfold sarea; ring
  unfold IsLeft at hL
  rw [dDEL, abs_of_nonneg (by nlinarith)] at eDEL
  have pDEL : 0 < sarea ptD (ptE l) L := by rw [dDEL]; linarith
  have nEBL : sarea (ptE l) (ptB b) L ≤ 0 := by
    by_contra hc
    push Not at hc
    exact hquad ⟨pDEL, hc, by rw [dBDL]; linarith⟩
  have h4b : 7 / 64 ≤ l * (b - L.1) - b * L.2 := by
    rcases eq_or_lt_of_le nEBL with h0 | hneg
    · rw [h0, abs_zero] at eEBL; norm_num at eEBL
    · rw [abs_of_neg hneg, dEBL] at eEBL; linarith
  have hq : 0 < 1 - l := by linarith
  have hlb : 7 / 64 ≤ l * (1 - l) * b := by
    nlinarith [mul_le_mul_of_nonneg_left eDEL hl.le, mul_le_mul_of_nonneg_left h4b hq.le,
      mul_nonneg (mul_nonneg hq.le hb.le) Ly0]
  have h4s : 4 * (7 / 64) ≤ b := by nlinarith [mul_nonneg (sq_nonneg (l - 1 / 2)) hb.le]
  -- `(1-λ)(λ - v) ≥ 2s`
  have hbq : 7 / 64 ≤ b * ((1 - l) * (l - L.2)) := by
    nlinarith [mul_le_mul_of_nonneg_left eDEL hl.le, mul_le_mul_of_nonneg_left h4b hq.le]
  have hX0 : 0 < (1 - l) * (l - L.2) := by
    by_contra hc; push Not at hc; nlinarith [mul_nonpos_of_nonneg_of_nonpos hb.le hc]
  have h2s : 7 / 32 ≤ (1 - l) * (l - L.2) := by nlinarith
  have hqt : (1 - l) ^ 2 + 7 / 32 ≤ (1 - l) * (1 - L.2) := by nlinarith
  have ht0 : 0 ≤ 1 - L.2 := by nlinarith
  have hsq : 7 / 8 ≤ (1 - L.2) ^ 2 := by
    have e1 : ((1 - l) ^ 2 + 7 / 32) ^ 2 ≤ ((1 - l) * (1 - L.2)) ^ 2 :=
      pow_le_pow_left₀ (by positivity) hqt 2
    have e2 : 7 / 8 * (1 - l) ^ 2 ≤ ((1 - l) ^ 2 + 7 / 32) ^ 2 := by
      nlinarith [sq_nonneg ((1 - l) ^ 2 - 7 / 32)]
    have e3 : (1 - l) ^ 2 * (7 / 8) ≤ (1 - l) ^ 2 * (1 - L.2) ^ 2 := by nlinarith
    exact le_of_mul_le_mul_left e3 (by positivity)
  have hv6 : L.2 ≤ 1 - Real.sqrt (7 / 8) := by
    have := Real.sqrt_le_iff.2 ⟨ht0, hsq⟩
    linarith
  have h1415 : (14 / 15 : ℝ) < Real.sqrt (7 / 8) := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  refine ⟨eDEL, h4b, hlb, h4s, by linarith, hv6, by linarith, by nlinarith, ?_⟩
  by_contra hc
  push Not at hc
  nlinarith [mul_nonneg hb.le Ly0, mul_nonneg hl.le (sub_nonneg.2 hc)]

/-! ### Two quadrilateral side hulls -/

/-- The scalar core of `right_hull_triangular_of_left_quad`: `X` a right hull vertex adjacent to `B` of the
convex quadrilateral `B, X, Y, C`, with `[BXY], [XYC] ≥ s`, is low (`X_y < 1/8`), and then
`[LBX] < 1/10 < s`. -/
theorem both_quad_core {b : ℝ} {L X Y : Point} (hb : 0 < b) (hb1 : b < 1) (hb2 : b ≤ 1 / 2)
    (hb9 : 1 - b ≤ 9 / 16) (hp0 : 0 < L.1) (hpb : L.1 < b) (hv0 : 0 ≤ L.2) (hv15 : L.2 < 1 / 15)
    (hXs : X ∈ unitSquare) (hYs : Y ∈ unitSquare) (hXr : IsRight b X)
    (hU : 7 / 64 ≤ sarea (ptB b) X Y) (hV : 7 / 64 ≤ sarea X Y ptC)
    (hLBX : 7 / 64 ≤ |sarea L (ptB b) X|) : False := by
  obtain ⟨-, x1', x2a, x2b⟩ := hXs
  obtain ⟨-, y1, -, -⟩ := hYs
  unfold IsRight at hXr
  simp only [sarea, ptB, ptC] at hU hV hXr hLBX
  have hw : 0 < 1 - b := by linarith
  have hx1 : 0 ≤ X.1 - b := by nlinarith
  have hxr : 0 < X.1 - b - (1 - b) * X.2 := by linarith
  have hid : (X.1 - b) * ((Y.1 - X.1) * (1 - X.2) - (Y.2 - X.2) * (1 - X.1)) =
      ((X.1 - b) - (1 - b)) * ((X.1 - b) * (Y.2 - 0) - (X.2 - 0) * (Y.1 - b)) +
        ((Y.1 - b) - (X.1 - b)) * ((X.1 - b) - (1 - b) * X.2) := by ring
  have hX1 : X.1 < 1 := by
    rcases lt_or_eq_of_le x1' with h | h
    · exact h
    · exfalso
      rw [h] at hid hV
      nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 y1) hw.le) (sub_nonneg.2 x2b)]
  have key : 7 / 64 * (1 - b) ≤ (1 - X.1) * (X.1 - b - (1 - b) * X.2) := by
    nlinarith [mul_nonneg hx1 (sub_nonneg.2 hV), mul_nonneg (sub_nonneg.2 hX1.le) (sub_nonneg.2 hU),
      mul_nonneg hxr.le (sub_nonneg.2 y1)]
  have hsq : 7 / 9 ≤ (1 - X.2) ^ 2 := by
    have e1 : 4 * ((1 - X.1) * (X.1 - b - (1 - b) * X.2)) ≤ ((1 - b) * (1 - X.2)) ^ 2 := by
      nlinarith [sq_nonneg ((1 - X.1) - (X.1 - b - (1 - b) * X.2))]
    have e2 : 7 / 16 ≤ (1 - b) * (1 - X.2) ^ 2 := by
      have : (1 - b) * (7 / 16) ≤ (1 - b) * ((1 - b) * (1 - X.2) ^ 2) := by nlinarith
      exact le_of_mul_le_mul_left this hw
    nlinarith [mul_le_mul_of_nonneg_right hb9 (sq_nonneg (1 - X.2))]
  have hX2 : X.2 < 1 / 8 := by nlinarith
  have hLB : sarea L (ptB b) X = (b - L.1) * X.2 + L.2 * (X.1 - b) := by
    simp only [sarea, ptB]; ring
  have h0 : 0 ≤ (b - L.1) * X.2 + L.2 * (X.1 - b) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hpb.le) x2a, mul_nonneg hv0 hx1]
  rw [show (b - L.1) * (X.2 - L.2) - (0 - L.2) * (X.1 - L.1) =
    (b - L.1) * X.2 + L.2 * (X.1 - b) by ring, abs_of_nonneg h0] at hLBX
  nlinarith [mul_le_mul (show b - L.1 ≤ 1 / 2 by linarith) hX2.le x2a (by norm_num),
    mul_le_mul hv15.le (show X.1 - b ≤ 9 / 16 by linarith) hx1 (by norm_num),
    mul_nonneg (sub_nonneg.2 hpb.le) x2a]

/-- At doubled threshold `7/64`, if the left hull is a quadrilateral then the right four-point
hull `B, C, R, S` is triangular: otherwise the lower-vertex inequality, after
`(x,y) ↦ ((x-b)/(1-b), y)` with `a = s/(1-b) ≥ 7/36`, gives a right hull vertex `Q` with
`Q_y < 1/8`, and `[LBQ] < 1/10 < s` (`both_quad_core`).

Stated (strengthened) as the triangular alternative itself: one right point is strictly inside the
triangle formed by `B, C` and the other (`B, C` are always hull vertices). `TriangularHull` of the
four points follows. -/
theorem right_hull_triangular_of_left_quad {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) :
    InTriangle S (ptB b) R ptC ∨ InTriangle R (ptB b) S ptC := by
  obtain ⟨-, -, -, h4s, hb9, -, hv15, hp0, hpb⟩ := left_quad_bounds hrow hmin hquad
  obtain ⟨⟨hb, hb1, -, -, hLs, -, -, hRs, hSs⟩, hb2, -, -, -, hR, hS⟩ := hrow
  obtain ⟨-, -, Ly0, -⟩ := hLs
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  have pBRC : 0 < sarea (ptB b) R ptC := by
    unfold IsRight at hR; rw [show sarea (ptB b) R ptC = -sarea (ptB b) ptC R by unfold sarea; ring]
    linarith
  have pBSC : 0 < sarea (ptB b) S ptC := by
    unfold IsRight at hS; rw [show sarea (ptB b) S ptC = -sarea (ptB b) ptC S by unfold sarea; ring]
    linarith
  have eBRS : 7 / 64 ≤ |sarea (ptB b) R S| := le_abs_sarea_of_le_min hm 3 7 8
  have eRCS : 7 / 64 ≤ |sarea R ptC S| := le_abs_sarea_of_le_min hm 7 1 8
  have eBSR : 7 / 64 ≤ |sarea (ptB b) S R| := le_abs_sarea_of_le_min hm 3 8 7
  have eRSC : 7 / 64 ≤ |sarea R S ptC| := le_abs_sarea_of_le_min hm 7 8 1
  have eSRC : 7 / 64 ≤ |sarea S R ptC| := le_abs_sarea_of_le_min hm 8 7 1
  have eLBR : 7 / 64 ≤ |sarea L (ptB b) R| := le_abs_sarea_of_le_min hm 4 3 7
  have eLBS : 7 / 64 ≤ |sarea L (ptB b) S| := le_abs_sarea_of_le_min hm 4 3 8
  have c1 : sarea ptC (ptB b) S = sarea (ptB b) S ptC := by unfold sarea; ring
  have c2 : sarea ptC (ptB b) R = sarea (ptB b) R ptC := by unfold sarea; ring
  have c3 : sarea (ptB b) S R = -sarea (ptB b) R S := by unfold sarea; ring
  have c4 : sarea S ptC R = -sarea R ptC S := by unfold sarea; ring
  have c5 : sarea R S ptC = -sarea R ptC S := by unfold sarea; ring
  have c6 : sarea S R ptC = sarea R ptC S := by unfold sarea; ring
  rcases lt_or_gt_of_ne (ne_of_le_abs (by norm_num) eBRS) with h1 | h1 <;>
    rcases lt_or_gt_of_ne (ne_of_le_abs (by norm_num) eRCS) with h2 | h2
  · exact Or.inr ⟨by rw [c3]; linarith, by rw [c4]; linarith, by rw [c2]; exact pBRC⟩
  · -- the convex quadrilateral `B, S, R, C`
    exfalso
    exact both_quad_core hb hb1 hb2 hb9 hp0 hpb Ly0 hv15 hSs hRs hS
      (ge_of_abs_pos (by rw [c3]; linarith) eBSR) (ge_of_abs_pos (by rw [c6]; exact h2) eSRC) eLBS
  · -- the convex quadrilateral `B, R, S, C`
    exfalso
    exact both_quad_core hb hb1 hb2 hb9 hp0 hpb Ly0 hv15 hRs hSs hR (ge_of_abs_pos h1 eBRS)
      (ge_of_abs_pos (by rw [c5]; linarith) eRSC) eLBR
  · exact Or.inl ⟨h1, h2, by rw [c1]; exact pBSC⟩

/-! ### A left quadrilateral with a triangular right hull -/

/-- A central point lies in `DBR` or in `DRC` according to the side of `DR`. -/
theorem central_split {b : ℝ} {R X : Point} (hg : 0 < sarea (ptB b) R ptC)
    (hDBR : 0 < sarea ptD (ptB b) R) (hDRC : 0 < sarea ptD R ptC) (hX : IsCentral b X) :
    (sarea ptD R X < 0 → InTriangle X ptD (ptB b) R) ∧
      (0 < sarea ptD R X → InTriangle X ptD R ptC) := by
  obtain ⟨x1, x2, x3⟩ := hX
  have i1 : sarea (ptB b) R X = sarea (ptB b) ptC X * sarea ptD (ptB b) R +
      sarea ptD (ptB b) X * sarea (ptB b) R ptC := by simp only [sarea, ptB, ptC, ptD]; ring
  have i2 : sarea R ptC X = sarea (ptB b) ptC X * sarea ptD R ptC +
      sarea ptC ptD X * sarea (ptB b) R ptC := by simp only [sarea, ptB, ptC, ptD]; ring
  have i3 : sarea R ptD X = -sarea ptD R X := by unfold sarea; ring
  refine ⟨fun h => ⟨x1, ?_, by rw [i3]; linarith⟩, fun h => ⟨h, ?_, x3⟩⟩
  · rw [i1]; positivity
  · rw [i2]; positivity

/-- A point strictly inside `BRC` lies in `DBR` or in `DRC` according to the side of `DR`. -/
theorem inner_split {b : ℝ} {R X : Point} (hDBR : 0 < sarea ptD (ptB b) R)
    (hDRC : 0 < sarea ptD R ptC) (hX : InTriangle X (ptB b) R ptC) :
    (sarea ptD R X < 0 → InTriangle X ptD (ptB b) R) ∧
      (0 < sarea ptD R X → InTriangle X ptD R ptC) := by
  obtain ⟨x1, x2, x3⟩ := hX
  have hg : 0 < sarea (ptB b) R ptC := by
    have := sarea_add_sarea_add_sarea (ptB b) R ptC X; linarith
  have i1 : sarea ptD (ptB b) X * sarea (ptB b) R ptC =
      sarea ptC (ptB b) X * sarea ptD (ptB b) R + sarea (ptB b) R X := by
    simp only [sarea, ptB, ptC, ptD]; ring
  have i2 : sarea ptC ptD X * sarea (ptB b) R ptC =
      sarea R ptC X + sarea ptC (ptB b) X * sarea ptD R ptC := by
    simp only [sarea, ptB, ptC, ptD]; ring
  have i3 : sarea R ptD X = -sarea ptD R X := by unfold sarea; ring
  refine ⟨fun h => ⟨?_, x1, by rw [i3]; linarith⟩, fun h => ⟨h, x2, ?_⟩⟩
  · have : 0 < sarea ptD (ptB b) X * sarea (ptB b) R ptC := by rw [i1]; positivity
    exact pos_of_mul_pos_left this hg.le
  · have : 0 < sarea ptC ptD X * sarea (ptB b) R ptC := by rw [i2]; positivity
    exact pos_of_mul_pos_left this hg.le

/-- The scalar end of `false_of_left_quad_of_right_tri`: `λ(1-λ) ≥ 2s` gives `1 - λ < 11/16`
and `p > 7/44`, and then `[LBR] < 357/3520 < s`. -/
theorem leftquad_final {l b : ℝ} {L R : Point} (_hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hb9 : 1 - b ≤ 9 / 16) (hl : 0 < l) (hl1 : l < 1) (hlb : 7 / 64 ≤ l * (1 - l) * b)
    (h4a : 7 / 64 ≤ (1 - l) * L.1) (hp0 : 0 < L.1) (hpb : L.1 < b) (Ly0 : 0 ≤ L.2)
    (hv15 : L.2 < 1 / 15) (Ry0 : 0 ≤ R.2) (Rx1 : R.1 ≤ 1) (hu : R.2 < 3 / 16) (hR : IsRight b R)
    (eLBR : 7 / 64 ≤ |sarea L (ptB b) R|) : False := by
  -- `λ(1-λ) ≥ 2s`, hence `1 - λ < 11/16` and `p > 7/44`
  have hl2 : 7 / 32 ≤ l * (1 - l) := by
    have := mul_le_mul_of_nonneg_left hb2 (mul_nonneg hl.le (by linarith : (0:ℝ) ≤ 1 - l))
    nlinarith
  have hl11 : 1 - l < 11 / 16 := by nlinarith
  have hp7 : 7 / 44 < L.1 := by
    by_contra hc
    push Not at hc
    nlinarith [mul_le_mul hl11.le hc hp0.le (by norm_num)]
  -- `[LBR] = (b-p)u + v(r-b) < 357/3520`
  have dLBR : sarea L (ptB b) R = (b - L.1) * R.2 + L.2 * (R.1 - b) := by
    simp only [sarea, ptB]; ring
  have hrb : 0 ≤ R.1 - b := by
    unfold IsRight at hR; simp only [sarea, ptB, ptC] at hR; nlinarith
  have h0 : 0 ≤ (b - L.1) * R.2 + L.2 * (R.1 - b) := by
    nlinarith [mul_nonneg (sub_nonneg.2 hpb.le) Ry0, mul_nonneg Ly0 hrb]
  rw [dLBR, abs_of_nonneg h0] at eLBR
  nlinarith [mul_le_mul (show b - L.1 ≤ 15 / 44 by linarith) hu.le Ry0 (by norm_num),
    mul_le_mul hv15.le (show R.1 - b ≤ 9 / 16 by linarith) hrb (by norm_num)]

/-- At doubled threshold `7/64`, a quadrilateral left hull and a triangular right hull are
incompatible: with `R` the third right hull vertex (`S` strictly inside `BRC`), `g = [BRC] ≥ 3s`,
`2 area(DBR) < 13/16`, the two-interior bound puts two of the three points `P, Q, S` in `DCR`,
so `u < 3/16`, and then `[LBR] < 357/3520 < s` (`leftquad_final`).

Stated with the triangular alternative written out (`S` inside `BRC`); the other labelling is
the same statement with `R, S` exchanged (`right_hull_triangular_of_left_quad`). -/
theorem false_of_left_quad_of_right_tri {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hquad : ¬ InTriangle L ptD (ptE l) (ptB b)) (htri : InTriangle S (ptB b) R ptC) :
    False := by
  obtain ⟨h4a, -, hlb, h4s, hb9, -, hv15, hp0, hpb⟩ := left_quad_bounds hrow hmin hquad
  obtain ⟨⟨hb, hb1, hl, hl1, hLs, -, -, hRs, -⟩, hb2, -, hP, hQ, hR, -⟩ := hrow
  obtain ⟨-, -, Ly0, -⟩ := hLs
  obtain ⟨-, Rx1, Ry0, -⟩ := hRs
  have hmin' := hmin
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    linarith
  obtain ⟨t1, t2, t3⟩ := htri
  have e1 := ge_of_abs_pos t1 (le_abs_sarea_of_le_min hm 3 7 8)
  have e2 := ge_of_abs_pos t2 (le_abs_sarea_of_le_min hm 7 1 8)
  have e3 := ge_of_abs_pos t3 (le_abs_sarea_of_le_min hm 1 3 8)
  have hg : 3 * (7 / 64) ≤ sarea (ptB b) R ptC := by
    have := sarea_add_sarea_add_sarea (ptB b) R ptC S; linarith
  have dg : sarea (ptB b) R ptC = R.1 - b - (1 - b) * R.2 := by simp only [sarea, ptB, ptC]; ring
  have dDBR : sarea ptD (ptB b) R = R.1 - b + b * R.2 := by simp only [sarea, ptB, ptD]; ring
  have dDRC : sarea ptD R ptC = 1 - R.2 := by simp only [sarea, ptC, ptD]; ring
  have hw : 0 < 1 - b := by linarith
  -- `g ≥ 3s` and `2 area(DBR) < 13/16`
  have hu1 : (1 - b) * R.2 ≤ 1 - b - 3 * (7 / 64) := by linarith
  have pDBR : 0 < sarea ptD (ptB b) R := by rw [dDBR]; nlinarith
  have pDRC : 0 < sarea ptD R ptC := by rw [dDRC]; nlinarith
  have hDBR : sarea ptD (ptB b) R < 13 / 16 := by
    rw [dDBR]
    have : (1 - b) * (R.1 - b + b * R.2) ≤ 1 - b - 3 * (7 / 64) * b := by
      nlinarith [mul_le_mul_of_nonneg_left hu1 hb.le]
    nlinarith
  have hK := Ktwo_s_gt
  -- two of `P, Q, S` in `DRC`, hence `u < 3/16`
  have nP := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 0 7 5)
  have nQ := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 0 7 6)
  have nS := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 0 7 8)
  have sP := central_split (by linarith) pDBR pDRC hP
  have sQ := central_split (by linarith) pDBR pDRC hQ
  have sS := inner_split pDBR pDRC ⟨t1, t2, t3⟩
  have DBR2 : ∀ {X Y : Point} (f : Fin 5 → Fin 9), Function.Injective f →
      ![ptD, ptB b, R, X, Y] = ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] ∘ f →
      InTriangle X ptD (ptB b) R → InTriangle Y ptD (ptB b) R → False := by
    intro X Y f hf hY hX' hY'
    have := two_interior_sarea hX' hY' (row_sub (by norm_num) hmin' f hf _ hY)
    linarith
  have DRC2 : ∀ {X Y : Point} (f : Fin 5 → Fin 9), Function.Injective f →
      ![ptD, R, ptC, X, Y] = ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] ∘ f →
      InTriangle X ptD R ptC → InTriangle Y ptD R ptC → R.2 < 3 / 16 := by
    intro X Y f hf hY hX' hY'
    have := two_interior_sarea hX' hY' (row_sub (by norm_num) hmin' f hf _ hY)
    rw [dDRC] at this
    linarith
  have hu : R.2 < 3 / 16 := by
    rcases lt_or_gt_of_ne nP with p | p <;> rcases lt_or_gt_of_ne nQ with q | q <;>
      rcases lt_or_gt_of_ne nS with r | r
    · exact (DBR2 ![0, 3, 7, 5, 6] (by decide) (by funext m; fin_cases m <;> rfl)
        (sP.1 p) (sQ.1 q)).elim
    · exact (DBR2 ![0, 3, 7, 5, 6] (by decide) (by funext m; fin_cases m <;> rfl)
        (sP.1 p) (sQ.1 q)).elim
    · exact (DBR2 ![0, 3, 7, 5, 8] (by decide) (by funext m; fin_cases m <;> rfl)
        (sP.1 p) (sS.1 r)).elim
    · exact DRC2 ![0, 7, 1, 6, 8] (by decide) (by funext m; fin_cases m <;> rfl) (sQ.2 q) (sS.2 r)
    · exact (DBR2 ![0, 3, 7, 6, 8] (by decide) (by funext m; fin_cases m <;> rfl)
        (sQ.1 q) (sS.1 r)).elim
    · exact DRC2 ![0, 7, 1, 5, 8] (by decide) (by funext m; fin_cases m <;> rfl) (sP.2 p) (sS.2 r)
    · exact DRC2 ![0, 7, 1, 5, 6] (by decide) (by funext m; fin_cases m <;> rfl) (sP.2 p) (sQ.2 q)
    · exact DRC2 ![0, 7, 1, 5, 6] (by decide) (by funext m; fin_cases m <;> rfl) (sP.2 p) (sQ.2 q)
  have eLBR : 7 / 64 ≤ |sarea L (ptB b) R| := le_abs_sarea_of_le_min hm 4 3 7
  exact leftquad_final hb hb2 hb9 hl hl1 hlb h4a hp0 hpb Ly0 hv15 Ry0 Rx1 hu hR eLBR

/-- In the balanced row, with every doubled triangle area at least `s = 7/64`, the four-point set
`D, B, E, L` has triangular hull `DBE`: `L` lies strictly inside `DBE`. -/
theorem left_hull_triangular {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle L ptD (ptE l) (ptB b) := by
  by_contra hquad
  rcases right_hull_triangular_of_left_quad hrow hmin hquad with h | h
  · exact false_of_left_quad_of_right_tri hrow hmin hquad h
  · exact false_of_left_quad_of_right_tri (balancedRow_swapRS hrow)
      (by rw [min_swapRS]; exact hmin) hquad h

/-! ### Cut restrictions in the triangular-left branch -/

/-- Subdivision of `DBE` at `L`: `b(1-λ) ≥ 3s`. -/
theorem bq_ge {l b s : ℝ} {L P Q R S : Point}
    (hmin : s / 2 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hLin : InTriangle L ptD (ptE l) (ptB b)) : 3 * s ≤ b * (1 - l) := by
  rw [typeIIConfig_eq] at hmin
  obtain ⟨a1, a2, a3⟩ := hLin
  have e1 := ge_of_abs_pos a1 (le_abs_sarea_of_le_min hmin 0 2 4)
  have e2 := ge_of_abs_pos a2 (le_abs_sarea_of_le_min hmin 2 3 4)
  have e3 := ge_of_abs_pos a3 (le_abs_sarea_of_le_min hmin 3 0 4)
  have := sarea_add_sarea_add_sarea ptD (ptE l) (ptB b) L
  have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
  linarith

/-- A point strictly inside `DBE` is below `DC` and left of `BC`. -/
theorem deb_facts {l b : ℝ} {L : Point} (hb : 0 < b) (hl : 0 < l) (hl1 : l < 1)
    (hLin : InTriangle L ptD (ptE l) (ptB b)) :
    0 < sarea ptC ptD L ∧ 0 < sarea (ptB b) ptC L := by
  obtain ⟨a1, a2, a3⟩ := hLin
  have hz : 0 < b * (1 - l) := mul_pos hb (by linarith)
  have i1 : sarea ptC ptD L * (b * (1 - l)) = sarea (ptB b) ptD L * (1 - l) + sarea ptD (ptE l) L := by
    simp only [sarea, ptB, ptC, ptD, ptE]; ring
  have i2 : sarea (ptB b) ptC L * (b * (1 - l)) =
      sarea (ptE l) (ptB b) L + sarea (ptB b) ptD L * (l * (1 - b) + b) := by
    simp only [sarea, ptB, ptC, ptD, ptE]; ring
  have hq : 0 < 1 - l := by linarith
  have hb' : 0 < l * (1 - b) + b := by nlinarith
  exact ⟨pos_of_mul_pos_left (by rw [i1]; positivity) hz.le,
    pos_of_mul_pos_left (by rw [i2]; positivity) hz.le⟩

/-- `EBC` cannot contain two points when `b(1-λ) ≥ 3s`, `b ≤ 1/2` (`(7+2√3)s > 1`). -/
theorem EBC_two_false {l b : ℝ} {X Y : Point} (hb2 : b ≤ 1 / 2) (hl1 : l < 1)
    (hbq : 3 * (7 / 64) ≤ b * (1 - l)) (hX : InTriangle X (ptE l) (ptB b) ptC)
    (hY : InTriangle Y (ptE l) (ptB b) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptE l, ptB b, ptC, X, Y]) : False := by
  have h2 := two_interior_sarea hX hY hmin
  have hEBC : sarea (ptE l) (ptB b) ptC = 1 - (1 - b) * (1 - l) := by
    simp only [sarea, ptE, ptB, ptC]; ring
  rw [hEBC] at h2
  have : b * (1 - l) ≤ (1 - b) * (1 - l) := by nlinarith
  unfold Ktwo at h2
  nlinarith [sqrt_three_gt]

/-- At doubled threshold `7/64`, the two central points are not both inside `EBC` (with
`b(1-λ) ≥ 3s` from `L ∈ DBE`, the two-interior bound would give `1 ≥ (7+2√3)s > 1`). -/
theorem not_both_central_in_EBC {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ¬ (InTriangle P (ptE l) (ptB b) ptC ∧ InTriangle Q (ptE l) (ptB b) ptC) := by
  rintro ⟨hPE, hQE⟩
  have hbq := bq_ge (s := 7 / 64) (le_trans (le_of_eq (by norm_num)) hmin) (left_hull_triangular hrow hmin)
  exact EBC_two_false hrow.2.1 hrow.1.2.2.2.1 hbq hPE hQE
    (row_sub (by norm_num) hmin ![2, 3, 1, 5, 6] (by decide) _ (by funext m; fin_cases m <;> rfl))

/-- Three of the free points `L, P, Q` cannot all lie inside `DCE` at least area above `7/128`:
`OneCorner.cornerTriangleOccupancyTheorem`, after the reflection `y ↦ 1 - y` (which sends
`D, E, C` to `(0,0), (0,1-λ), (1,0)`). -/
theorem corner_three {l b : ℝ} {L P Q R S : Point} (hd : TypeIIData l b L P Q R S)
    (hmin : 7 / 128 < minTriangleArea (typeIIConfig l b L P Q R S))
    (hL : InTriangle L ptD (ptE l) ptC) (hP : InTriangle P ptD (ptE l) ptC)
    (hQ : InTriangle Q ptD (ptE l) ptC) : False := by
  set Pr : Fin 9 → Point := affineMap 1 0 0 (-1) 0 1 ∘ typeIIConfig l b L P Q R S with hPr
  have hmr : minTriangleArea Pr = minTriangleArea (typeIIConfig l b L P Q R S) := by
    rw [hPr, minTriangleArea_affineMap]; norm_num
  have hsq : ∀ i, Pr i ∈ unitSquare := by
    intro i
    obtain ⟨x0, x1, y0, y1⟩ := typeIIConfig_mem hd i
    simp only [hPr, Function.comp, affineMap]
    exact ⟨by linarith, by linarith, by linarith, by linarith⟩
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  have key : ∀ X : Point, InTriangle X ptD (ptE l) ptC →
      InsideTriangle (affineMap 1 0 0 (-1) 0 1 X) (0, 0) (0, 1 - l) (1, 0) := by
    rintro X ⟨h1, h2, h3⟩
    right
    simp only [InTriangle, sarea, affineMap, ptD, ptE, ptC] at h1 h2 h3 ⊢
    refine ⟨by linarith, by linarith, by linarith⟩
  have h3 : 3 ≤ {m : Fin 9 | InsideTriangle (Pr m) (0, 0) (0, 1 - l) (1, 0)}.ncard := by
    have : 2 < {m : Fin 9 | InsideTriangle (Pr m) (0, 0) (0, 1 - l) (1, 0)}.ncard :=
      (Set.two_lt_ncard_iff).2 ⟨4, 5, 6, key L hL, key P hP, key Q hQ, by decide, by decide,
        by decide⟩
    omega
  have := OneCorner.cornerTriangleOccupancyTheorem Pr hsq 1 (1 - l) one_pos le_rfl
    (by linarith) (by linarith)
    ⟨0, by simp [hPr, affineMap, typeIIConfig_eq, ptD]⟩
    ⟨2, by simp [hPr, affineMap, typeIIConfig_eq, ptE]; ring⟩
    ⟨1, by simp [hPr, affineMap, typeIIConfig_eq, ptC]⟩ h3
  rw [hmr] at this
  linarith

-- Threshold: the corner-triangle occupancy theorem (`OneCorner.cornerTriangleOccupancyTheorem`)
-- only gives `t ≤ 7/128`, so there is no contradiction at `t = 7/128`. The proof needs least area
-- strictly above `7/128`; it is stated so here (as used, with `t ≥ A₀ > 7/128`).
/-- If both central points are inside `DCE`, then `L` is below `CE`, inside `EBC`: by
`corner_three`, the triangle `DCE` cannot contain three of the free points.

Stated at least area `> 7/128` rather than `≥ 7/128`, see the comment above. -/
theorem left_in_EBC_of_central_in_DEC {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 < minTriangleArea (typeIIConfig l b L P Q R S))
    (hPE : InTriangle P ptD (ptE l) ptC) (hQE : InTriangle Q ptD (ptE l) ptC) :
    InTriangle L (ptE l) (ptB b) ptC := by
  have hLin := left_hull_triangular hrow hmin.le
  obtain ⟨hb, -, hl, hl1, -⟩ := hrow.1
  obtain ⟨hCDL, hBCL⟩ := deb_facts hb hl hl1 hLin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    rw [← typeIIConfig_eq]; linarith
  have nL : sarea (ptE l) ptC L ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 2 1 4)
  have c : sarea ptC (ptE l) L = -sarea (ptE l) ptC L := by unfold sarea; ring
  rcases lt_or_gt_of_ne nL with h | h
  · exact ⟨hLin.2.1, hBCL, by rw [c]; linarith⟩
  · exact (corner_three hrow.1 hmin ⟨hLin.1, h, hCDL⟩ hPE hQE).elim

/-! ### The two central points on opposite sides of `CE` -/

/-- `B, E` are on the same side of `PQ` for two points inside `DCB ∩ DCE` (`twoPointChamberLemma`
in both orientations). -/
theorem pq_BE_same_side {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q]) :
    0 < sarea P Q (ptB b) * sarea P Q (ptE l) := by
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by
    linarith
  have eB : 7 / 64 ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hmin' 4 5 3
  have eE : 7 / 64 ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hmin' 4 5 2
  have cB : sarea P Q (ptB b) = sarea (ptB b) P Q := by unfold sarea; ring
  have cE : sarea P Q (ptE l) = sarea (ptE l) P Q := by unfold sarea; ring
  rcases lt_or_gt_of_ne (ne_of_le_abs (by norm_num) eB) with hB | hB <;>
    rcases lt_or_gt_of_ne (ne_of_le_abs (by norm_num) eE) with hE | hE
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

/-- The scalar end of `not_both_central_in_DEC` at `s = 79/720`: with `z = bq`, the area bound
`(1+z)[EBL] ≤ z(1 - q + z)`, the line-table row `A² ≥ 4sq(1+z)`, `A = q - s(q+1) > 0`,
`3s ≤ z ≤ q/2` and `q ≤ 1` contradict `[EBL] ≥ s`. -/
theorem abovece_scalar {q z e : ℝ} (hq1 : q ≤ 1) (hz : 3 * (79 / 720) ≤ z) (hzq : z ≤ q / 2)
    (hA2 : 4 * (79 / 720) * q * (1 + z) ≤ (q - 79 / 720 * (q + 1)) ^ 2)
    (he : 79 / 720 ≤ e) (hez : (1 + z) * e ≤ z * (1 - q + z)) : False := by
  have hq6 : 6 * (79 / 720) ≤ q := by linarith
  -- `h(z) = z(1-q+z) - s(1+z) ≥ 0`
  have hh : 0 ≤ z * (1 - q + z) - 79 / 720 * (1 + z) := by nlinarith
  -- monotone replacement of `z` by its largest value
  have hmono : (4 * (79 / 720) * q) ^ 2 * (z * (1 - q + z) - 79 / 720 * (1 + z)) ≤
      ((q - 79 / 720 * (q + 1)) ^ 2 - 4 * (79 / 720) * q) ^ 2 +
        (1 - q - 79 / 720) * ((q - 79 / 720 * (q + 1)) ^ 2 - 4 * (79 / 720) * q) *
          (4 * (79 / 720) * q) - 79 / 720 * (4 * (79 / 720) * q) ^ 2 := by
    have e1 : 0 ≤ (q - 79 / 720 * (q + 1)) ^ 2 - 4 * (79 / 720) * q * (1 + z) := by linarith
    have e2 : 0 ≤ (q - 79 / 720 * (q + 1)) ^ 2 + 4 * (79 / 720) * q * (z - q - 79 / 720) := by
      nlinarith
    nlinarith [mul_nonneg e1 e2]
  have hP : ((q - 79 / 720 * (q + 1)) ^ 2 - 4 * (79 / 720) * q) ^ 2 +
        (1 - q - 79 / 720) * ((q - 79 / 720 * (q + 1)) ^ 2 - 4 * (79 / 720) * q) *
          (4 * (79 / 720) * q) - 79 / 720 * (4 * (79 / 720) * q) ^ 2 < 0 := by
    have a0 : 0 ≤ q - 6 * (79 / 720) := by linarith
    have b0 : 0 ≤ 1 - q := by linarith
    nlinarith [pow_nonneg b0 4, mul_nonneg a0 (pow_nonneg b0 3),
      mul_nonneg (pow_nonneg a0 2) (pow_nonneg b0 2), mul_nonneg (pow_nonneg a0 3) b0,
      pow_nonneg a0 4]
  nlinarith [mul_nonneg (sq_nonneg (4 * (79 / 720) * q)) hh]

/-- At the stronger doubled threshold `s = 79/720 < 2A₀` (area `79/1440`), the two central points
cannot both lie in `DCE`: then `L` is inside `EBT`, `T = DB ∩ CE` (`left_in_EBC_of_central_in_DEC`);
`D, C` are on the same side of `PQ` by `b_le_two_sevenths` since `b ≥ 3s > 2/7`; the
same-side row of `pq_line_table` bounds `b` in terms of `q`, and then `2 area(EBL) < s`
(`abovece_scalar`). Hence exactly one central point lies on each side of `CE`. -/
theorem not_both_central_in_DEC {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 79 / 1440 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    ¬ (InTriangle P ptD (ptE l) ptC ∧ InTriangle Q ptD (ptE l) ptC) := by
  rintro ⟨hPE, hQE⟩
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans (by norm_num) hmin
  have hmin7' : 7 / 128 < minTriangleArea (typeIIConfig l b L P Q R S) :=
    lt_of_lt_of_le (by norm_num) hmin
  have hLin := left_hull_triangular hrow hmin7
  have hLb := left_in_EBC_of_central_in_DEC hrow hmin7' hPE hQE
  have hbq := bq_ge (s := 79 / 720) (le_trans (le_of_eq (by norm_num)) hmin) hLin
  obtain ⟨⟨hb, hb1, hl, hl1, -⟩, hb2, -, hP, hQ, -⟩ := hrow
  have h6 : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] :=
    row_sub (by norm_num) hmin7 ![0, 1, 2, 3, 5, 6] (by decide) _
      (by funext m; fin_cases m <;> rfl)
  have h6' : (79 / 720) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] :=
    row_sub (by norm_num) (le_trans (le_of_eq (by norm_num)) hmin) ![0, 1, 2, 3, 5, 6] (by decide) _
      (by funext m; fin_cases m <;> rfl)
  have hBE := pq_BE_same_side hb hb2 hl hl1 hP hPE hQ hQE h6
  have hm6 : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by linarith
  have nD : sarea P Q ptD ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm6 4 5 0)
  have nC : sarea P Q ptC ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm6 4 5 1)
  have nB : sarea P Q (ptB b) ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm6 4 5 3)
  have hDC : 0 < sarea P Q ptD * sarea P Q ptC := by
    rcases lt_or_gt_of_ne (mul_ne_zero nD nC) with h | h
    · exfalso
      have := b_le_two_sevenths hb hb2 hl hl1 hP hPE hQ hQE h6 h
      nlinarith
    · exact h
  obtain ⟨htri, h1, -, -⟩ := pq_line_table (s := 79 / 720) (by norm_num) hb hb1 hl hl1 hP
    hPE hQ hQE h6' hBE
  have row1 : 0 < sarea P Q ptD * sarea P Q ptC ∧ sarea P Q ptD * sarea P Q (ptB b) < 0 := by
    rcases htri with h | ⟨h2, h3⟩ | ⟨h2, h3⟩
    · exact h
    · exfalso
      have := mul_neg_of_neg_of_pos h2 h3
      nlinarith [mul_pos hDC (mul_self_pos.2 nB)]
    · exfalso
      have := mul_neg_of_neg_of_pos h2 h3
      nlinarith [mul_pos hDC (mul_self_pos.2 nB)]
  obtain ⟨-, hA2⟩ := h1 row1
  -- the area of `EBL`
  have hm : (79 / 720 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    rw [← typeIIConfig_eq]; linarith
  have he := ge_of_abs_pos hLin.2.1 (le_abs_sarea_of_le_min hm 2 3 4)
  have hid : (1 + b * (1 - l)) * sarea (ptE l) (ptB b) L = b * (1 - l) * (l + b * (1 - l)) -
      (l + b * (1 - l)) * sarea (ptB b) ptD L + b * (1 - l) * sarea (ptE l) ptC L := by
    simp only [sarea, ptE, ptB, ptD, ptC]; ring
  have hECL : sarea (ptE l) ptC L < 0 := by
    have := hLb.2.2
    rw [show sarea ptC (ptE l) L = -sarea (ptE l) ptC L by unfold sarea; ring] at this
    linarith
  have hz : 0 < b * (1 - l) := by linarith
  have hez : (1 + b * (1 - l)) * sarea (ptE l) (ptB b) L ≤
      b * (1 - l) * (1 - (1 - l) + b * (1 - l)) := by
    rw [hid]
    nlinarith [mul_pos (by linarith : (0:ℝ) < l + b * (1 - l)) hLin.2.2,
      mul_neg_of_pos_of_neg hz hECL]
  exact abovece_scalar (q := 1 - l) (by linarith) hbq (by nlinarith) hA2 he hez

/-- At doubled threshold `σ = 7/64`, if the central point `P` is above `CE` (inside `DCE`) and
`Q` below it (inside `EBC`), then `L` is above `CE`, so `DCE` contains `L, P`, and
`q = 1 - λ > 13/16`, `λ < 3/16`. -/
theorem left_above_CE {l b : ℝ} {L P Q R S : Point} (hrow : BalancedRow l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S))
    (hPE : InTriangle P ptD (ptE l) ptC) (hQE : InTriangle Q (ptE l) (ptB b) ptC) :
    0 < sarea (ptE l) ptC L ∧ InTriangle L ptD (ptE l) ptC ∧ 13 / 16 < 1 - l ∧ l < 3 / 16 := by
  have hLin := left_hull_triangular hrow hmin
  have hbq := bq_ge (s := 7 / 64) (le_trans (le_of_eq (by norm_num)) hmin) hLin
  obtain ⟨⟨hb, hb1, hl, hl1, -⟩, hb2, -⟩ := hrow
  obtain ⟨hCDL, hBCL⟩ := deb_facts hb hl hl1 hLin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    rw [← typeIIConfig_eq]; linarith
  have nL : sarea (ptE l) ptC L ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 2 1 4)
  have hpos : 0 < sarea (ptE l) ptC L := by
    rcases lt_or_gt_of_ne nL with h | h
    · exfalso
      have c : sarea ptC (ptE l) L = -sarea (ptE l) ptC L := by unfold sarea; ring
      exact EBC_two_false hb2 hl1 hbq ⟨hLin.2.1, hBCL, by rw [c]; linarith⟩ hQE
        (row_sub (by norm_num) hmin ![2, 3, 1, 4, 6] (by decide) _
          (by funext m; fin_cases m <;> rfl))
    · exact h
  have hLE : InTriangle L ptD (ptE l) ptC := ⟨hLin.1, hpos, hCDL⟩
  have h2 := two_interior_sarea hLE hPE
    (row_sub (by norm_num) hmin ![0, 2, 1, 4, 5] (by decide) _ (by funext m; fin_cases m <;> rfl))
  have hDEC : sarea ptD (ptE l) ptC = 1 - l := by simp only [sarea, ptD, ptE, ptC]; ring
  rw [hDEC] at h2
  have hK := Ktwo_s_gt
  exact ⟨hpos, hLE, by linarith, by linarith⟩

/-- At doubled threshold `79/720`, after possibly exchanging the two central points, the balanced
row is in the `BalancedPlacement`: `L` strictly inside `DBE` and above `CE`, one central point
above `CE`, the other below. -/
theorem balancedPlacement_or_swap {l b : ℝ} {L P Q R S : Point}
    (hrow : BalancedRow l b L P Q R S)
    (hmin : 79 / 1440 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    BalancedPlacement l b L P Q R S ∨ BalancedPlacement l b L Q P R S := by
  have hmin7 : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S) :=
    le_trans (by norm_num) hmin
  have hLin := left_hull_triangular hrow hmin7
  have hrow' := balancedRow_swapPQ hrow
  have hmin7s : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L Q P R S) := by
    rw [min_swapPQ]; exact hmin7
  obtain ⟨hd, hb2, -, hP, hQ, hR, hS⟩ := hrow
  have hb := hd.1
  have hb1 := hd.2.1
  have hl := hd.2.2.1
  have hl1 := hd.2.2.2.1
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, L, P, Q, R, S] := by
    rw [← typeIIConfig_eq]; linarith
  have nP : sarea (ptE l) ptC P ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 2 1 5)
  have nQ : sarea (ptE l) ptC Q ≠ 0 := ne_of_le_abs (by norm_num) (le_abs_sarea_of_le_min hm 2 1 6)
  have cP := central_inTriangle_iff hb hb1 hl hl1 hP
  have cQ := central_inTriangle_iff hb hb1 hl hl1 hQ
  rcases lt_or_gt_of_ne nP with sP | sP <;> rcases lt_or_gt_of_ne nQ with sQ | sQ
  · exact (not_both_central_in_EBC ⟨hd, hb2, hrow'.2.2.1, hP, hQ, hR, hS⟩ hmin7
      ⟨cP.2.2 sP, cQ.2.2 sQ⟩).elim
  · right
    obtain ⟨hL, -⟩ := left_above_CE hrow' hmin7s (cQ.1.2 sQ) (cP.2.2 sP)
    exact ⟨hrow'.1, hb2, hLin, hL, hQ, sQ, hP, sP, hR, hS⟩
  · left
    obtain ⟨hL, -⟩ := left_above_CE ⟨hd, hb2, hrow'.2.2.1, hP, hQ, hR, hS⟩ hmin7 (cP.1.2 sP)
      (cQ.2.2 sQ)
    exact ⟨hd, hb2, hLin, hL, hP, sP, hQ, sQ, hR, hS⟩
  · exact (not_both_central_in_DEC ⟨hd, hb2, hrow'.2.2.1, hP, hQ, hR, hS⟩ hmin
      ⟨cP.1.2 sP, cQ.1.2 sQ⟩).elim

end Heilbronn.Nine.TypeIIBalanced
