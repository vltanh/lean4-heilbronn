module

public import Heilbronn.Nine.C1.OneLower.CompB

/-! # More helpers for the one-lower hull packages

Used by the packages of the top triangle, the right top triangle, the convex top and the mixed
caps.

* `hsign_of_pos`, `hsign_of_neg`, `inTriangle_of_hinside`: list words and polygon signs;
* `word_of_edges`: a radial word passing a pruned enumeration, for a point inside every edge;
* `lower_bounds1`: the lower-point bounds `ℓ_x, ℓ_y ≥ s`, `c - ℓ_x, h - ℓ_y ≥ 2s`,
  `ℓ_x + ℓ_y ≤ 1 - s`;
* `uv_pos`: two top-cap points with `[DXY], [XYF] > 0` have `x_x > y_x`, `y_y > x_y`
  (as in `C1OneLowerEightHull.topCap_pair_order`);
* `xy_pos`: then every anchor `V` has `[VXY] > 0`;
* `not_triangularHull_four`: the four points `D, F, X, Y` in convex position do not have a
  triangular hull;
* `upper_inTriangle`: a point of `HCDF` lies in `HCD` or in `HDF`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.C1OneLowerB

open Heilbronn.Nine.C1 Heilbronn.Nine.C1ZeroLower Cover Model
open Heilbronn.Nine.C1OneLowerTopCap (HasHullWord)

/-! ### Words -/

theorem hsign_of_pos {n : ℕ} {V : Fin n → Point} {R : Point} {w : List ℕ}
    (hw : HasHullWord V R (fun i : Fin n => w.getD i.val 0)) {i j : Fin n} (hij : i ≠ j)
    (h : 0 < sarea (V i) (V j) R) : hsign n w i j = true := by
  rw [hsign_eq]; exact (hw i j hij).1 h

theorem hsign_of_neg {n : ℕ} {V : Fin n → Point} {R : Point} {w : List ℕ}
    (hw : HasHullWord V R (fun i : Fin n => w.getD i.val 0)) {i j : Fin n} (hij : i ≠ j)
    (h : sarea (V i) (V j) R < 0) : hsign n w i j = false := by
  rw [hsign_eq, Bool.eq_false_iff]; intro e; have := (hw i j hij).2 e; linarith

theorem inTriangle_of_hinside {n : ℕ} {V : Fin n → Point} {R : Point} {w : List ℕ}
    (hw : HasHullWord V R (fun i : Fin n => w.getD i.val 0)) {a b e : Fin n} (hab : a ≠ b)
    (hbe : b ≠ e) (hae : a ≠ e) (h : hinside n w a b e = true) :
    InTriangle R (V a) (V b) (V e) := by
  simp only [hinside, Bool.and_eq_true, hsign_eq] at h
  exact ⟨(hw a b hab).2 h.1.1, (hw b e hbe).2 h.1.2, (hw e a (Ne.symm hae)).2 h.2⟩

/-- A point strictly inside every edge of a convex polygon (with no zero area against two
vertices) has a radial word passing every pruned enumeration test checked by `enumW`. -/
theorem word_of_edges {n : ℕ} [NeZero n] {V : Fin n → Point} (hV : IsConvexPolygon V) {R : Point}
    (hin : ∀ i : Fin n, 0 < sarea (V i) (V (i + 1)) R)
    (hne : ∀ i j : Fin n, i ≠ j → sarea (V i) (V j) R ≠ 0) {p : List ℕ → Bool}
    (he : enumW n (n - 2) p n [] = true) :
    ∃ w : List ℕ, p w = true ∧ HasHullWord V R (fun i : Fin n => w.getD i.val 0) ∧
      (∀ i : Fin n, 1 ≤ w.getD i.val 0 ∧ w.getD i.val 0 ≤ n - 2) := by
  obtain ⟨r, hr, hb, ha⟩ := C1OneLowerTopCap.exists_hullWord hV hin hne
  have eq : (fun i : Fin n => (List.ofFn r).getD i.val 0) = r := funext fun i => ofFn_getD r i
  exact ⟨List.ofFn r, enum_word he hb ha, by rw [eq]; exact hr, fun i => by
    rw [ofFn_getD]; exact hb i⟩

/-! ### The lower point -/

/-- The lower-point bounds (subdivision of `OHC` at `L`): `ℓ_x, ℓ_y ≥ s`, `c - ℓ_x ≥ 2s`,
`h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1 - s`. -/
theorem lower_bounds1 {t h c lx ly : ℝ} (ht : 8 / 73 < t) (hh : h < 1) (hc : c < 1)
    (hh0 : 0 < h) (hc0 : 0 < c) (lx0 : 0 ≤ lx) (ly0 : 0 ≤ ly)
    (aL1 : t ≤ c * ly) (aL2 : t ≤ h * lx) (aL3 : t ≤ h * c - h * lx - c * ly) :
    8 / 73 ≤ lx ∧ 8 / 73 ≤ ly ∧ 16 / 73 ≤ c - lx ∧ 16 / 73 ≤ h - ly ∧
      8 / 73 ≤ 1 - lx - ly := by
  have a := lb_of_prod (by linarith) (show t ≤ h * lx - 0 by linarith) le_rfl hh0.le hh.le
  have b := lb_of_prod (by linarith) (show t ≤ c * ly - 0 by linarith) le_rfl hc0.le hc.le
  have e1 := lb_of_prod (by linarith) (show 2 * t ≤ h * (c - lx) - 0 by nlinarith) le_rfl hh0.le
    hh.le
  have e2 := lb_of_prod (by linarith) (show 2 * t ≤ c * (h - ly) - 0 by nlinarith) le_rfl hc0.le
    hc.le
  have k1 : h * c - h * lx - c * ly ≤ h * c * (1 - lx - ly) := by
    nlinarith [mul_nonneg (mul_nonneg hh0.le lx0) (show (0:ℝ) ≤ 1 - c by linarith),
      mul_nonneg (mul_nonneg hc0.le ly0) (show (0:ℝ) ≤ 1 - h by linarith)]
  have l := lb_of_prod (by linarith) (show t ≤ h * c * (1 - lx - ly) - 0 by linarith) le_rfl
    (by positivity) (show h * c ≤ 1 by nlinarith)
  refine ⟨by linarith, by linarith, by linarith, by linarith, by linarith⟩

/-! ### Two top-cap points in convex position -/

/-- Two top-cap points `X, Y` of the square with `[DXY] > 0` and `[XYF] > 0` have
`u = x_x - y_x > 0` and `v = y_y - x_y > 0` (as in `C1OneLowerEightHull.topCap_pair_order`). -/
theorem uv_pos {d f : ℝ} (hd1 : d < 1) (hf1 : f < 1) {X Y : Point} (hX : InTopCap d f X)
    (hY : InTopCap d f Y) (hXs : X ∈ unitSquare) (hYs : Y ∈ unitSquare)
    (h1 : 0 < sarea (ptD d) X Y) (h2 : 0 < sarea X Y (ptF f)) :
    0 < X.1 - Y.1 ∧ 0 < Y.2 - X.2 := by
  obtain ⟨x0, x1, y0, y1⟩ := hXs
  obtain ⟨u0, u1, v0, v1⟩ := hYs
  simp only [InTopCap, ptD, ptF, sarea] at hX hY
  simp only [ptD, ptF] at h1 h2
  -- the two strict cap inequalities and the two areas
  have cX : (1 - d) * (1 - X.1) < (1 - f) * (X.2 - d) := by nlinarith
  have cY : (1 - f) * (1 - Y.2) < (1 - d) * (Y.1 - f) := by nlinarith
  have hXd : 0 < X.2 - d := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - d by linarith) (sub_nonneg.2 x1),
      mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) (show (0:ℝ) ≤ d - X.2 by linarith)]
  have hYf : 0 < Y.1 - f := by
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg (show (0:ℝ) ≤ 1 - f by linarith) (sub_nonneg.2 v1),
      mul_nonneg (show (0:ℝ) ≤ 1 - d by linarith) (show (0:ℝ) ≤ f - Y.1 by linarith)]
  have eD : sarea (1, d) X Y = (X.1 - Y.1) * (X.2 - d) - (1 - X.1) * (Y.2 - X.2) := by
    unfold sarea; ring
  have eF : sarea X Y (f, 1) = (Y.2 - X.2) * (Y.1 - f) - (1 - Y.2) * (X.1 - Y.1) := by
    unfold sarea; ring
  rw [eD] at h1; rw [eF] at h2
  set u := X.1 - Y.1
  set v := Y.2 - X.2
  have hu : 0 < u := by
    by_contra hu; push Not at hu
    have hv : v < 0 := by
      by_contra hv; push Not at hv
      nlinarith [mul_nonpos_of_nonpos_of_nonneg hu hXd.le, mul_nonneg (sub_nonneg.2 x1) hv]
    -- both negative: contradicts the product of the strict cap inequalities
    have hu' : 0 < -u := by
      rcases hu.lt_or_eq with h | h
      · linarith
      · exfalso; rw [h] at h1; nlinarith [mul_nonneg (sub_nonneg.2 x1) (show (0:ℝ) ≤ -v by linarith)]
    have hv' : 0 < -v := by linarith
    have k1 : (-u) * (X.2 - d) < (1 - X.1) * (-v) := by linarith
    have k2 : (-v) * (Y.1 - f) < (1 - Y.2) * (-u) := by linarith
    have p := mul_lt_mul'' k1 k2 (mul_pos hu' hXd).le (mul_pos hv' hYf).le
    have huv : 0 < (-u) * (-v) := mul_pos hu' hv'
    have A1 : (X.2 - d) * (Y.1 - f) < (1 - X.1) * (1 - Y.2) := by
      have e1 : (-u) * (X.2 - d) * ((-v) * (Y.1 - f)) = ((-u) * (-v)) * ((X.2 - d) * (Y.1 - f)) := by
        ring
      have e2 : (1 - X.1) * (-v) * ((1 - Y.2) * (-u)) = ((-u) * (-v)) * ((1 - X.1) * (1 - Y.2)) := by
        ring
      rw [e1, e2] at p; exact lt_of_mul_lt_mul_left p huv.le
    have q := mul_lt_mul'' cX cY (mul_nonneg (by linarith) (sub_nonneg.2 x1))
      (mul_nonneg (by linarith) (sub_nonneg.2 v1))
    have hdf : 0 < (1 - d) * (1 - f) := mul_pos (by linarith) (by linarith)
    have A2 : (1 - X.1) * (1 - Y.2) < (X.2 - d) * (Y.1 - f) := by
      have e1 : (1 - d) * (1 - X.1) * ((1 - f) * (1 - Y.2)) =
          ((1 - d) * (1 - f)) * ((1 - X.1) * (1 - Y.2)) := by ring
      have e2 : (1 - f) * (X.2 - d) * ((1 - d) * (Y.1 - f)) =
          ((1 - d) * (1 - f)) * ((X.2 - d) * (Y.1 - f)) := by ring
      rw [e1, e2] at q; exact lt_of_mul_lt_mul_left q hdf.le
    linarith
  have hv : 0 < v := by
    by_contra hv; push Not at hv
    nlinarith [mul_nonpos_of_nonpos_of_nonneg hv hYf.le, mul_nonneg (sub_nonneg.2 v1) hu.le]
  exact ⟨hu, hv⟩

/-- With `u, v > 0`, every anchor is on the positive side of the line `XY`
(`[XYP] = u(x_y - p_y) + v(x_x - p_x)`, through `D` and `F`). -/
theorem xy_pos {h c d f : ℝ} (hA : C1Anchors h c d f) {X Y : Point}
    (hu : 0 < X.1 - Y.1) (hv : 0 < Y.2 - X.2) (h1 : 0 < sarea (ptD d) X Y)
    (h2 : 0 < sarea X Y (ptF f)) :
    0 < sarea ptO X Y ∧ 0 < sarea (ptC c) X Y ∧ 0 < sarea (ptD d) X Y ∧
      0 < sarea (ptF f) X Y ∧ 0 < sarea (ptH h) X Y := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have g : ∀ P : Point, sarea P X Y = (X.1 - Y.1) * (X.2 - P.2) + (Y.2 - X.2) * (X.1 - P.1) := by
    intro P; unfold sarea; ring
  have gF : sarea (ptF f) X Y = sarea X Y (ptF f) := (sarea_cycle _ _ _).symm
  rw [g] at h1
  rw [← gF, g] at h2
  simp only [ptD, ptF] at h1 h2
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [g]; simp only [ptO]; nlinarith [mul_pos hu hd, mul_pos hv (show (0:ℝ) < 1 by norm_num)]
  · rw [g]; simp only [ptC]
    nlinarith [mul_pos hu hd, mul_pos hv (show (0:ℝ) < 1 - c by linarith)]
  · rw [g]; simp only [ptD]; linarith
  · rw [g]; simp only [ptF]; linarith
  · rw [g]; simp only [ptH]
    nlinarith [mul_pos hu (show (0:ℝ) < 1 - h by linarith), mul_pos hv hf]

theorem sarea_affine' (A B p : Point) :
    sarea A B p = (-(B.2 - A.2)) * p.1 + (B.1 - A.1) * p.2 +
      ((B.2 - A.2) * A.1 - (B.1 - A.1) * A.2) := by
  unfold sarea; ring

/-- A point strictly on the negative side of a line through two of three points, the third on
the positive side, is not in their convex hull. -/
theorem not_mem_hull {A B C Z : Point} (hC : 0 ≤ sarea A B C) (hZ : sarea A B Z < 0) :
    Z ∉ convexHull ℝ ({A, B, C} : Set Point) := by
  intro hm
  have := hull_le (S := {A, B, C}) (-(B.2 - A.2)) (B.1 - A.1)
    ((B.2 - A.2) * A.1 - (B.1 - A.1) * A.2) 0 (fun p hp => by
    rw [← sarea_affine' A B p]
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
    rcases hp with e | e | e <;> rw [e]
    · unfold sarea; nlinarith
    · unfold sarea; nlinarith
    · exact hC) Z hm
  rw [← sarea_affine' A B Z] at this
  linarith

/-- The convex top hull is not triangular: for `D, X, Y, F` in convex position
(`[DXY], [XYF] > 0`, `X, Y` beyond `DF`), the four points `D, F, X, Y` do not have a triangular
hull. -/
theorem not_triangularHull_four {d f : ℝ} {X Y : Point} (hX : InTopCap d f X)
    (hY : InTopCap d f Y) (h1 : 0 < sarea (ptD d) X Y) (h2 : 0 < sarea X Y (ptF f)) :
    ¬ TypeII.TriangularHull ![ptD d, ptF f, X, Y] := by
  rintro ⟨i, j, k, hall⟩
  unfold InTopCap at hX hY
  have c1 := sarea_cycle (ptD d) X Y
  have c2 := sarea_cycle X Y (ptF f)
  -- each point is outside the triangle of the other three
  have oD : ptD d ∉ convexHull ℝ ({ptF f, X, Y} : Set Point) :=
    not_mem_hull (A := ptF f) (B := X) (C := Y) (by
      have := sarea_cycle (ptF f) X Y; linarith) (by
      have := sarea_cycle (ptD d) (ptF f) X; linarith)
  have oF : ptF f ∉ convexHull ℝ ({ptD d, X, Y} : Set Point) := by
    have := not_mem_hull (A := Y) (B := ptD d) (C := X) (Z := ptF f) (by
      have := sarea_cycle Y (ptD d) X; linarith) (by
      have := sarea_cycle Y (ptD d) (ptF f); linarith)
    intro hm; apply this
    have e : ({Y, ptD d, X} : Set Point) = {ptD d, X, Y} := by
      ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
    rw [e]; exact hm
  have oX : X ∉ convexHull ℝ ({ptD d, Y, ptF f} : Set Point) :=
    not_mem_hull (A := ptD d) (B := Y) (C := ptF f) (by
      have := sarea_swap₂₃ (ptD d) (ptF f) Y; linarith) (by
      have := sarea_swap₂₃ (ptD d) X Y; linarith)
  have oY : Y ∉ convexHull ℝ ({ptD d, X, ptF f} : Set Point) := by
    have := not_mem_hull (A := X) (B := ptF f) (C := ptD d) (Z := Y) (by
      have := sarea_cycle (ptD d) X (ptF f); have := sarea_swap₂₃ (ptD d) (ptF f) X; linarith)
      (by have := sarea_swap₂₃ X Y (ptF f); linarith)
    intro hm; apply this
    have e : ({X, ptF f, ptD d} : Set Point) = {ptD d, X, ptF f} := by
      ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
    rw [e]; exact hm
  set P : Fin 4 → Point := ![ptD d, ptF f, X, Y] with hP
  have key : ∀ m : Fin 4, m ≠ i → m ≠ j → m ≠ k → False := by
    intro m hmi hmj hmk
    have hsub : ∀ T : Set Point, (∀ x : Fin 4, x ≠ m → P x ∈ T) →
        convexHull ℝ ({P i, P j, P k} : Set Point) ⊆ convexHull ℝ T := by
      intro T hT
      apply convexHull_mono
      intro p hp
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
      rcases hp with rfl | rfl | rfl
      exacts [hT i (Ne.symm hmi), hT j (Ne.symm hmj), hT k (Ne.symm hmk)]
    fin_cases m
    · exact oD (hsub {ptF f, X, Y} (fun x hx => by fin_cases x <;> simp_all) (hall 0))
    · exact oF (hsub {ptD d, X, Y} (fun x hx => by fin_cases x <;> simp_all) (hall 1))
    · exact oX (hsub {ptD d, Y, ptF f} (fun x hx => by fin_cases x <;> simp_all) (hall 2))
    · exact oY (hsub {ptD d, X, ptF f} (fun x hx => by fin_cases x <;> simp_all) (hall 3))
  have : ∃ m : Fin 4, m ≠ i ∧ m ≠ j ∧ m ≠ k := by
    by_contra hn; push Not at hn
    have : (Finset.univ : Finset (Fin 4)) ⊆ {i, j, k} := by
      intro m _
      simp only [Finset.mem_insert, Finset.mem_singleton]
      by_cases a : m = i
      · exact Or.inl a
      by_cases b : m = j
      · exact Or.inr (Or.inl b)
      exact Or.inr (Or.inr (hn m a b))
    have := Finset.card_le_card this
    have h3 := Finset.card_le_three (a := i) (b := j) (c := k)
    simp at this; omega
  obtain ⟨m, a, b, e⟩ := this
  exact key m a b e

/-! ### A point of the upper quadrilateral -/

/-- A point of the open quadrilateral `HCDF` (with `[HDX] ≠ 0`) lies in `CDH` or in `DFH`. -/
theorem upper_inTriangle {h c d f : ℝ} {X : Point} (hU : InUpperQuad h c d f X)
    (hne : sarea (ptH h) (ptD d) X ≠ 0) :
    InTriangle X (ptC c) (ptD d) (ptH h) ∨ InTriangle X (ptD d) (ptF f) (ptH h) := by
  obtain ⟨u1, u2, u3, u4⟩ := hU
  rcases hne.lt_or_gt with hn | hp
  · left
    refine ⟨u2, ?_, u1⟩
    have := sarea_swap₁₂ (ptH h) (ptD d) X; linarith
  · right; exact ⟨u3, u4, hp⟩

/-! ### Points beyond `DF` -/

/-- A point `Z = (z, w)` beyond `DF` with
`-[DFZ] = (1-d)(z-f) - (1-f)(1-w) = (1-f)(w-d) - (1-d)(1-z) ≥ t` has `z - f ≥ 8/65` and
`w - d ≥ 8/65` (with `d, f ≥ s`). -/
theorem cap_pt {t d f zx zy : ℝ} (ht : 8 / 73 < t) (hd : 8 / 73 ≤ d) (hf : 8 / 73 ≤ f)
    (hd1 : d < 1) (hf1 : f < 1) (zx1 : zx ≤ 1) (zy1 : zy ≤ 1)
    (a : t ≤ (1 - d) * (zx - f) - (1 - f) * (1 - zy)) : 8 / 65 ≤ zx - f ∧ 8 / 65 ≤ zy - d := by
  have a1 := lb_of_prod (by linarith) a (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - d ≤ 65 / 73 by linarith)
  have a' : t ≤ (1 - f) * (zy - d) - (1 - d) * (1 - zx) := by nlinarith
  have a2 := lb_of_prod (by linarith) a' (mul_nonneg (by linarith) (by linarith)) (by linarith)
    (show 1 - f ≤ 65 / 73 by linarith)
  constructor <;> linarith

/-- An area `t ≤ a u - e` with `e ≥ 0`, `0 ≤ a ≤ 1` gives `u ≥ s`. -/
theorem ge_s {t a u e : ℝ} (ht : 8 / 73 < t) (h : t ≤ a * u - e) (he : 0 ≤ e) (ha0 : 0 ≤ a)
    (ha1 : a ≤ 1) : 8 / 73 ≤ u := by
  have := lb_of_prod (by linarith) h he ha0 ha1; rw [div_one] at this; linarith

/-- The anchors are in the square. -/
theorem sq_anchor {h c d f : ℝ} (hA : C1Anchors h c d f) :
    ptO ∈ unitSquare ∧ ptC c ∈ unitSquare ∧ ptD d ∈ unitSquare ∧ ptF f ∈ unitSquare ∧
      ptH h ∈ unitSquare := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  simp only [ptO, ptC, ptD, ptF, ptH, unitSquare, Set.mem_ofPred_eq]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩ <;> refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith

end Heilbronn.Nine.C1OneLowerB
