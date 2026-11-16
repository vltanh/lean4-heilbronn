module

public import Heilbronn.Nine.SixBoundary.RadialCover
public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle
public import Heilbronn.Nine.Local.HandProof

/-! # Shared tools of the six-boundary packages `SIDE_OPPOSITE`, `SIDE_TWO_TOP`, `TWO_TOP_*`

* `nConfig_area`: a least area `≥ 4/73` gives every actual doubled area `≥ σ = 8/73`;
* `anchor_bounds`: the N anchor bounds from `[ABC], [ABH] ≥ σ` (`a, b > 1/8`, `hc ≥ 4σ`, …);
* `inPolygon_of_inTriangle`: a point strictly inside a triangle of three hull vertices is
  inside the strictly convex hull polygon;
* `quad_not_triangular`: a strictly convex quadrilateral does not have a triangular hull;
* `capT_mem`: a point of the opposite cap lies in the virtual triangle `DF(1,1)`.
-/

@[expose] public section

namespace Heilbronn.Nine.SixRadial

open SixBoundary

theorem pos_of_nonneg_of_le_abs {x t : ℝ} (ht : 0 < t) (h0 : 0 ≤ x) (h : t ≤ |x|) : 0 < x := by
  rcases h0.eq_or_lt with h' | h'
  · rw [← h', abs_zero] at h; linarith
  · exact h'

theorem le_of_pos_of_le_abs {x t : ℝ} (h0 : 0 < x) (h : t ≤ |x|) : t ≤ x := by
  rwa [abs_of_pos h0] at h

theorem le_neg_of_neg_of_le_abs {x t : ℝ} (h0 : x < 0) (h : t ≤ |x|) : t ≤ -x := by
  rwa [abs_of_neg h0] at h

/-- A least area `≥ 4/73` gives every actual doubled area `≥ 8/73`. -/
theorem nConfig_area {a h b c d f : ℝ} {X Y Z : Point}
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) (i j k : Fin 9)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    8 / 73 ≤ |sarea (nConfig a h b c d f X Y Z i) (nConfig a h b c d f X Y Z j)
      (nConfig a h b c d f X Y Z k)| := by
  have := area_of_le_min hmin i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith

/-- `t ≤ p q` with `0 < t` and `0 ≤ p ≤ P` gives `t ≤ P q`. -/
theorem prod_le {t p q P : ℝ} (ht : 0 < t) (hp : 0 ≤ p) (hpP : p ≤ P) (h : t ≤ p * q) :
    t ≤ P * q := by
  rcases le_or_gt 0 q with hq | hq
  · nlinarith [mul_le_mul_of_nonneg_right hpP hq]
  · nlinarith [mul_nonpos_of_nonneg_of_nonpos hp hq.le]

/-- `t ≤ p q` with `0 < t` and `0 ≤ p` gives `0 < q`. -/
theorem pos_of_prod {t p q : ℝ} (ht : 0 < t) (hp : 0 ≤ p) (h : t ≤ p * q) : 0 < q := by
  by_contra hq; push Not at hq
  nlinarith [mul_nonpos_of_nonneg_of_nonpos hp hq]

/-- The AM–GM step: `t ≤ u p` and `t ≤ v q` (all positive) give `4t ≤ (u + v)(p + q)`. -/
theorem amgm4 {t u v p q : ℝ} (ht : 0 < t) (hu : 0 < u) (hv : 0 < v) (hp : 0 < p) (hq : 0 < q)
    (h1 : t ≤ u * p) (h2 : t ≤ v * q) : 4 * t ≤ (u + v) * (p + q) := by
  have p1 : t * t ≤ (u * p) * (v * q) := mul_le_mul h1 h2 ht.le (by positivity)
  have hS : 0 < u * q + v * p := by positivity
  have key : (2 * t) ^ 2 ≤ (u * q + v * p) ^ 2 := by
    nlinarith [sq_nonneg (u * q - v * p)]
  have p2 : 2 * t ≤ u * q + v * p := by
    by_contra hcon; push Not at hcon
    nlinarith
  nlinarith

/-- **The N anchor bounds** (`σ = 8/73`): from `[ABC] = a(c-b) ≥ σ` and `[ABH] = b(h-a) ≥ σ`. -/
theorem anchor_bounds {a h b c : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (hABC : 8 / 73 ≤ a * (c - b)) (hABH : 8 / 73 ≤ b * (h - a)) :
    1 / 8 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ h * c ∧ 8 / 73 < h - a ∧ 8 / 73 < c - b ∧
      4 * (8 / 73) ≤ h ∧ 4 * (8 / 73) ≤ c := by
  have hL0 : 0 < h - a := by linarith
  have hM0 : 0 < c - b := by linarith
  have hb1' : b < 1 := by linarith
  have ha1' : a < 1 := by linarith
  have hL : 8 / 73 < h - a := by
    have := mul_lt_mul_of_pos_right hb1' hL0; linarith
  have hM : 8 / 73 < c - b := by
    have := mul_lt_mul_of_pos_right ha1' hM0; linarith
  have hbs : 8 / 73 < b := by
    have := mul_lt_mul_of_pos_left (show h - a < 1 by linarith) hb; linarith
  have has : 8 / 73 < a := by
    have := mul_lt_mul_of_pos_left (show c - b < 1 by linarith) ha; linarith
  have e1 := mul_le_mul_of_nonneg_left hABC hb.le
  have e2 := mul_le_mul_of_nonneg_left hABH hM0.le
  have e3 := mul_le_mul_of_nonneg_left hABH ha.le
  have e4 := mul_le_mul_of_nonneg_left hABC hL0.le
  have hbM : 8 / 73 * (b + (c - b)) < b * (c - b) := by
    have : 8 / 73 * (b + (c - b)) ≤ b * (c - b) * h := by linarith
    have := mul_lt_mul_of_pos_left hh (mul_pos hb hM0); linarith
  have haL : 8 / 73 * (a + (h - a)) < a * (h - a) := by
    have : 8 / 73 * (a + (h - a)) ≤ a * (h - a) * c := by linarith
    have := mul_lt_mul_of_pos_left hc (mul_pos ha hL0); linarith
  have hb1 : 8 / 73 < b * (1 - b) := by
    have := mul_pos (show (0 : ℝ) < 1 - c by linarith) (show (0 : ℝ) < b - 8 / 73 by linarith)
    linarith
  have ha1 : 8 / 73 < a * (1 - a) := by
    have := mul_pos (show (0 : ℝ) < 1 - h by linarith) (show (0 : ℝ) < a - 8 / 73 by linarith)
    linarith
  have hb8 : 1 / 8 < b := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 8 - b by linarith) (show (0 : ℝ) ≤ 7 / 8 - b by linarith)]
  have ha8 : 1 / 8 < a := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 8 - a by linarith) (show (0 : ℝ) ≤ 7 / 8 - a by linarith)]
  have p1 : 8 / 73 * (8 / 73) ≤ (a * (c - b)) * (b * (h - a)) :=
    mul_le_mul hABC hABH (by norm_num) (by linarith)
  have q : (2 * (8 / 73)) ^ 2 ≤ (a * b + (h - a) * (c - b)) ^ 2 := by
    nlinarith [sq_nonneg (a * b - (h - a) * (c - b))]
  have hS : 0 < a * b + (h - a) * (c - b) := by positivity
  have p2 : 2 * (8 / 73) ≤ a * b + (h - a) * (c - b) := by
    by_contra hcon; push Not at hcon
    nlinarith
  have hhc : 4 * (8 / 73) ≤ h * c := by linarith
  refine ⟨ha8, hb8, hhc, hL, hM, ?_, ?_⟩
  · have := mul_lt_mul_of_pos_left hc (show (0 : ℝ) < h by linarith); linarith
  · have := mul_lt_mul_of_pos_left hh (show (0 : ℝ) < c by linarith); linarith

/-- The anchor and side-point bounds (`s = 8/73`). -/
theorem side_bounds {a h b c d f x y : ℝ} (hN : NAnchors a h b c d f) (hx1 : x ≤ 1)
    (hy0 : 0 ≤ y) (hABC : 8 / 73 ≤ a * (c - b)) (hABH : 8 / 73 ≤ b * (h - a))
    (hBCX : 8 / 73 ≤ (c - b) * y) (hCXD : 8 / 73 ≤ d * (x - c) - (1 - c) * y) :
    64 / 447 < a ∧ 1 / 8 < b ∧ 4 * (8 / 73) ≤ c ∧ c ≤ 1 - 8 / 73 ∧ 1 / 2 < d ∧
      8 / 73 < h - a ∧ 8 / 73 < c - b ∧ 8 / 73 ≤ x - c ∧ 64 / 447 < y ∧ 8 / 41 ≤ d - y ∧
      c - b < 447 / 584 ∧ 8 / 73 ≤ (1 - c) * (d - y) ∧ 4 * (8 / 73) ≤ d * (1 - b) ∧
      1 / 8 < a ∧ 4 * (8 / 73) ≤ h * c := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨ha8, hb8, hhc, hL, hM, -, hc4⟩ := anchor_bounds ha hah hh hb hbc hc hABC hABH
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have hd0 : 0 < d := by linarith
  have m1 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - c) hy0
  have h1 : 8 / 73 ≤ d * (x - c) := by linarith
  have hxc : 8 / 73 ≤ x - c := by
    have := prod_le hs hd0.le (by linarith : d ≤ 1) h1; linarith
  have m2 := mul_le_mul_of_nonneg_left (by linarith : x - c ≤ 1 - c) hd0.le
  have hW : 8 / 73 ≤ (1 - c) * (d - y) := by linarith
  have hc1 : c ≤ 1 - 8 / 73 := by linarith
  have hMlt : c - b < 447 / 584 := by linarith
  have ha' : 64 / 447 < a := by
    have := mul_lt_mul_of_pos_right hMlt ha; linarith
  have hy0' : 0 < y := pos_of_prod hs (by linarith : (0 : ℝ) ≤ c - b) hBCX
  have hy' : 64 / 447 < y := by
    have := mul_lt_mul_of_pos_right hMlt hy0'; linarith
  have hdy0 : 0 < d - y := pos_of_prod hs (by linarith : (0 : ℝ) ≤ 1 - c) hW
  have hdy : 8 / 41 ≤ d - y := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ 1 - c) (by linarith : 1 - c ≤ 41 / 73) hW; linarith
  have hd4 : 4 * (8 / 73) ≤ d * (1 - b) := by
    have := amgm4 hs (by linarith : (0 : ℝ) < c - b) (by linarith : (0 : ℝ) < 1 - c)
      (by linarith : (0 : ℝ) < y) hdy0 hBCX hW
    have e : (c - b + (1 - c)) * (y + (d - y)) = d * (1 - b) := by ring
    linarith
  have hd2 : 1 / 2 < d := by
    have := prod_le (by norm_num : (0 : ℝ) < 4 * (8 / 73)) (by linarith : (0 : ℝ) ≤ 1 - b)
      (by linarith : 1 - b ≤ 7 / 8) (by linarith : 4 * (8 / 73) ≤ (1 - b) * d)
    linarith
  exact ⟨ha', hb8, hc4, hc1, hd2, hL, hM, hxc, hy', hdy, hMlt, hW, hd4, ha8, hhc⟩

/-! ### Convex polygons -/

theorem rc_convex_cyc {n : ℕ} {V : Fin n → Point} (hV : IsConvexCCW V) (i : Fin n) {p q : ℕ}
    (hp : 0 < p) (hpq : p < q) (hq : q < n) :
    0 < sarea (V i) (V (cyc i p)) (V (cyc i q)) := by
  have hi := i.isLt
  have cv : ∀ (j : ℕ), (cyc i j).val = (i.val + j) % n := fun _ => rfl
  rcases lt_or_ge (i.val + q) n with h1 | h1
  · have e1 : (cyc i p).val = i.val + p := by rw [cv, Nat.mod_eq_of_lt (by omega)]
    have e2 : (cyc i q).val = i.val + q := by rw [cv, Nat.mod_eq_of_lt h1]
    exact hV _ _ _ (by rw [Fin.lt_def, e1]; omega) (by rw [Fin.lt_def, e1, e2]; omega)
  have e2 : (cyc i q).val = i.val + q - n := by
    rw [cv, Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]
  rcases lt_or_ge (i.val + p) n with h2 | h2
  · have e1 : (cyc i p).val = i.val + p := by rw [cv, Nat.mod_eq_of_lt h2]
    have := hV (cyc i q) i (cyc i p) (by rw [Fin.lt_def, e2]; omega)
      (by rw [Fin.lt_def, e1]; omega)
    rw [sarea_cycle]; exact this
  · have e1 : (cyc i p).val = i.val + p - n := by
      rw [cv, Nat.mod_eq_sub_mod h2, Nat.mod_eq_of_lt (by omega)]
    have := hV (cyc i p) (cyc i q) i (by rw [Fin.lt_def, e1, e2]; omega)
      (by rw [Fin.lt_def, e2]; omega)
    rw [← sarea_cycle]; exact this

/-- Every vertex is weakly on the inner side of every edge, strictly when not on it. -/
theorem edge_sign {n : ℕ} {V : Fin n → Point} (hV : IsConvexCCW V) (i m : Fin n) :
    0 ≤ sarea (V i) (V (cyc i 1)) (V m) ∧
      (m ≠ i → m ≠ cyc i 1 → 0 < sarea (V i) (V (cyc i 1)) (V m)) := by
  have hi := i.isLt
  have hm := m.isLt
  obtain ⟨q, hqn, hmq⟩ : ∃ q, q < n ∧ m = cyc i q := by
    rcases le_or_gt i.val m.val with h1 | h1
    · refine ⟨m.val - i.val, by omega, Fin.ext ?_⟩
      show m.val = (i.val + (m.val - i.val)) % n
      rw [show i.val + (m.val - i.val) = m.val by omega, Nat.mod_eq_of_lt hm]
    · refine ⟨m.val + n - i.val, by omega, Fin.ext ?_⟩
      show m.val = (i.val + (m.val + n - i.val)) % n
      rw [show i.val + (m.val + n - i.val) = m.val + n by omega, Nat.add_mod_right,
        Nat.mod_eq_of_lt hm]
  have key : 1 < q → 0 < sarea (V i) (V (cyc i 1)) (V m) := fun h => by
    rw [hmq]; exact rc_convex_cyc hV i (by norm_num) h hqn
  have z0 : q = 0 → m = i := fun h => by
    rw [hmq, h]; apply Fin.ext; show (i.val + 0) % n = i.val; rw [Nat.add_zero, Nat.mod_eq_of_lt hi]
  have z1 : q = 1 → m = cyc i 1 := fun h => by rw [hmq, h]
  refine ⟨?_, fun h1 h2 => key (by
    rcases Nat.lt_or_ge q 2 with h | h
    · interval_cases q
      · exact absurd (z0 rfl) h1
      · exact absurd (z1 rfl) h2
    · omega)⟩
  rcases Nat.lt_or_ge q 2 with h | h
  · interval_cases q
    · rw [z0 rfl]; apply le_of_eq; simp only [sarea]; ring
    · rw [z1 rfl]; apply le_of_eq; simp only [sarea]; ring
  · exact (key (by omega)).le

/-- The barycentric identity of an affine function `sarea U W ·` over a triangle. -/
theorem sarea_bary (U W P₁ P₂ P₃ Q : Point) :
    sarea U W Q * sarea P₁ P₂ P₃ = sarea U W P₁ * sarea P₂ P₃ Q + sarea U W P₂ * sarea P₃ P₁ Q +
      sarea U W P₃ * sarea P₁ P₂ Q := by
  simp only [sarea]; ring

/-- A point strictly inside a triangle of three hull vertices is inside the hull polygon. -/
theorem inPolygon_of_inTriangle {n : ℕ} {V : Fin n → Point} (hV : IsConvexCCW V) {p q r : Fin n}
    (hpq : p < q) (hqr : q < r) {R : Point} (hR : InTriangle R (V p) (V q) (V r)) :
    InPolygon V R := by
  intro i
  obtain ⟨h1, h2, h3⟩ := hR
  have hpqr := hV p q r hpq hqr
  obtain ⟨gp, sp⟩ := edge_sign hV i p
  obtain ⟨gq, sq⟩ := edge_sign hV i q
  obtain ⟨gr, sr⟩ := edge_sign hV i r
  have e := sarea_bary (V i) (V (cyc i 1)) (V p) (V q) (V r) R
  have hpq' : p ≠ q := ne_of_lt hpq
  have hqr' : q ≠ r := ne_of_lt hqr
  have hpr' : p ≠ r := ne_of_lt (hpq.trans hqr)
  have hpos : 0 < sarea (V i) (V (cyc i 1)) R * sarea (V p) (V q) (V r) := by
    rw [e]
    by_cases ap : p ≠ i ∧ p ≠ cyc i 1
    · nlinarith [mul_pos (sp ap.1 ap.2) h2, mul_nonneg gq h3.le, mul_nonneg gr h1.le]
    by_cases aq : q ≠ i ∧ q ≠ cyc i 1
    · nlinarith [mul_pos (sq aq.1 aq.2) h3, mul_nonneg gp h2.le, mul_nonneg gr h1.le]
    have ap' : p = i ∨ p = cyc i 1 := by tauto
    have aq' : q = i ∨ q = cyc i 1 := by tauto
    have ar : r ≠ i ∧ r ≠ cyc i 1 := by
      constructor
      · intro hr; subst hr
        rcases ap' with ap | ap <;> rcases aq' with aq | aq
        · exact hpq' (ap.trans aq.symm)
        · exact hpr' ap
        · exact hqr' aq
        · exact hpq' (ap.trans aq.symm)
      · intro hr; subst hr
        rcases ap' with ap | ap <;> rcases aq' with aq | aq
        · exact hpq' (ap.trans aq.symm)
        · exact hqr' aq
        · exact hpr' ap
        · exact hpq' (ap.trans aq.symm)
    nlinarith [mul_pos (sr ar.1 ar.2) h1, mul_nonneg gp h2.le, mul_nonneg gq h3.le]
  exact pos_of_mul_pos_left hpos hpqr.le

/-- A point strictly inside the hexagon `V p₀ … V p₅` (vertices of a strictly convex polygon, in
order) and on no diagonal from `V p₀` is inside the polygon (fan from `V p₀`). -/
theorem inPolygon_of_fan {n : ℕ} {V : Fin n → Point} (hV : IsConvexCCW V)
    {p0 p1 p2 p3 p4 p5 : Fin n} (h01 : p0 < p1) (h12 : p1 < p2) (h23 : p2 < p3) (h34 : p3 < p4)
    (h45 : p4 < p5) {R : Point}
    (e1 : 0 < sarea (V p0) (V p1) R) (e2 : 0 < sarea (V p1) (V p2) R)
    (e3 : 0 < sarea (V p2) (V p3) R) (e4 : 0 < sarea (V p3) (V p4) R)
    (e5 : 0 < sarea (V p4) (V p5) R) (e6 : 0 < sarea (V p5) (V p0) R)
    (n2 : sarea (V p0) (V p2) R ≠ 0) (n3 : sarea (V p0) (V p3) R ≠ 0)
    (n4 : sarea (V p0) (V p4) R ≠ 0) : InPolygon V R := by
  have sw : ∀ P Q : Point, sarea Q P R = -sarea P Q R := fun P Q => sarea_swap₁₂ P Q R
  rcases n2.lt_or_gt with d2 | d2
  · exact inPolygon_of_inTriangle hV h01 h12 ⟨e1, e2, by rw [sw]; linarith⟩
  rcases n3.lt_or_gt with d3 | d3
  · exact inPolygon_of_inTriangle hV (h01.trans h12) h23 ⟨d2, e3, by rw [sw]; linarith⟩
  rcases n4.lt_or_gt with d4 | d4
  · exact inPolygon_of_inTriangle hV ((h01.trans h12).trans h23) h34 ⟨d3, e4, by rw [sw]; linarith⟩
  · exact inPolygon_of_inTriangle hV (((h01.trans h12).trans h23).trans h34) h45 ⟨d4, e5, e6⟩

/-! ### The sharp chambers -/

open HandProof in
theorem chamber_ne (i : Fin 11) :
    (chamberTriangles i).1 ≠ (chamberTriangles i).2.1 ∧
      (chamberTriangles i).2.1 ≠ (chamberTriangles i).2.2 ∧
      (chamberTriangles i).1 ≠ (chamberTriangles i).2.2 := by
  fin_cases i <;> decide

open HandProof in
/-- A chamber area of a relabelled configuration bounds its least area. -/
theorem min_le_of_chamber {P : Fin 9 → Point} {τ : Fin 9 → Fin 9} (hτ : Function.Injective τ)
    {i : Fin 11} {t : ℝ} (h : chamberArea (P ∘ τ) i ≤ t) : minTriangleArea P ≤ t := by
  obtain ⟨d1, d2, d3⟩ := chamber_ne i
  exact (minTriangleArea_le P (hτ.ne d1) (hτ.ne d2) (hτ.ne d3)).trans h

open HandProof in
/-- The least area bounds every chamber area of a relabelled configuration. -/
theorem chamber_ge_of_min {P : Fin 9 → Point} {τ : Fin 9 → Fin 9} (hτ : Function.Injective τ)
    {t : ℝ} (h : t ≤ minTriangleArea P) (i : Fin 11) : t ≤ chamberArea (P ∘ τ) i := by
  obtain ⟨d1, d2, d3⟩ := chamber_ne i
  exact area_of_le_min h _ _ _ (hτ.ne d1) (hτ.ne d2) (hτ.ne d3)

/-- The rotation `R(u, v) = (v, 1 - u)` keeps every signed area. -/
theorem sarea_rotate (p q r : Point) :
    sarea (p.2, 1 - p.1) (q.2, 1 - q.1) (r.2, 1 - r.1) = sarea p q r := by
  simp only [sarea]; ring

/-! ### Quadrilaterals and the opposite cap -/

/-- A strictly convex quadrilateral (all four increasing triples counterclockwise) does not have
a triangular hull. -/
theorem quad_not_triangular {P0 P1 P2 P3 : Point} (h012 : 0 < sarea P0 P1 P2)
    (h013 : 0 < sarea P0 P1 P3) (h023 : 0 < sarea P0 P2 P3) (h123 : 0 < sarea P1 P2 P3) :
    ¬ TypeII.TriangularHull ![P0, P1, P2, P3] := by
  rintro ⟨i, j, k, hm⟩
  have o3 : P3 ∉ convexHull ℝ ({P0, P1, P2} : Set Point) := fun h => by
    obtain ⟨-, h2, -, -⟩ := TypeII.sarea_nonneg_of_mem_convexHull h012.le h
    have : sarea P2 P0 P3 = -sarea P0 P2 P3 := by simp only [sarea]; ring
    linarith
  have o2 : P2 ∉ convexHull ℝ ({P0, P1, P3} : Set Point) := fun h => by
    obtain ⟨h1, -, -, -⟩ := TypeII.sarea_nonneg_of_mem_convexHull h013.le h
    have : sarea P1 P3 P2 = -sarea P1 P2 P3 := by simp only [sarea]; ring
    linarith
  have o1 : P1 ∉ convexHull ℝ ({P0, P2, P3} : Set Point) := fun h => by
    obtain ⟨-, -, h3, -⟩ := TypeII.sarea_nonneg_of_mem_convexHull h023.le h
    have : sarea P0 P2 P1 = -sarea P0 P1 P2 := by simp only [sarea]; ring
    linarith
  have o0 : P0 ∉ convexHull ℝ ({P1, P2, P3} : Set Point) := fun h => by
    obtain ⟨-, h2, -, -⟩ := TypeII.sarea_nonneg_of_mem_convexHull h123.le h
    have : sarea P3 P1 P0 = -sarea P0 P1 P3 := by simp only [sarea]; ring
    linarith
  obtain ⟨m, hmi, hmj, hmk⟩ : ∃ m : Fin 4, m ≠ i ∧ m ≠ j ∧ m ≠ k := by
    clear hm; revert i j k; decide
  fin_cases m
  · refine o0 (convexHull_mono ?_ (hm 0))
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢
    rcases hp with rfl | rfl | rfl
    · fin_cases i <;> simp_all
    · fin_cases j <;> simp_all
    · fin_cases k <;> simp_all
  · refine o1 (convexHull_mono ?_ (hm 1))
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢
    rcases hp with rfl | rfl | rfl
    · fin_cases i <;> simp_all
    · fin_cases j <;> simp_all
    · fin_cases k <;> simp_all
  · refine o2 (convexHull_mono ?_ (hm 2))
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢
    rcases hp with rfl | rfl | rfl
    · fin_cases i <;> simp_all
    · fin_cases j <;> simp_all
    · fin_cases k <;> simp_all
  · refine o3 (convexHull_mono ?_ (hm 3))
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢
    rcases hp with rfl | rfl | rfl
    · fin_cases i <;> simp_all
    · fin_cases j <;> simp_all
    · fin_cases k <;> simp_all

/-- A point of the opposite cap lies in the virtual triangle `DF(1,1)`. -/
theorem capT_mem {d f : ℝ} (hd : d < 1) (hf : f < 1) {Y : Point} (hY : InCapT d f Y) :
    Y ∈ convexHull ℝ ({ptD d, ptF f, ((1 : ℝ), (1 : ℝ))} : Set Point) := by
  obtain ⟨⟨y0, y1, y2, y3⟩, hc⟩ := hY
  have hset : ({ptD d, ptF f, ((1 : ℝ), (1 : ℝ))} : Set Point) =
      {ptD d, ((1 : ℝ), (1 : ℝ)), ptF f} := by
    rw [Set.pair_comm]
  rw [hset]
  refine TypeII.mem_convexHull_of_sarea ?_ ?_ ?_ ?_
  · simp only [sarea]; nlinarith
  · simp only [sarea]; nlinarith
  · simp only [sarea] at hc ⊢; linarith
  · simp only [sarea]; nlinarith

/-- `σ/(3 - 2√2) > 7/11` for `σ = 8/73`, and `3 - 2√2 > 0`. -/
theorem endpoint_const : 0 < 3 - 2 * Real.sqrt 2 ∧ (7 / 11 : ℝ) < (8 / 73) / (3 - 2 * Real.sqrt 2) := by
  have h2 : Real.sqrt 2 < 1.41422 := by
    rw [Real.sqrt_lt' (by norm_num)]; norm_num
  have h2' : 1.41421 < Real.sqrt 2 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hpos : 0 < 3 - 2 * Real.sqrt 2 := by linarith
  refine ⟨hpos, ?_⟩
  rw [lt_div_iff₀ hpos]
  linarith

/-- **The lower point bound** (`TYPE_II` endpoint theorem): if a point `O` of the first quadrant is
below `HC` and the five points `H, C, A, B, O` have least area `≥ 4/73`, then
`hc ≥ σ/(3-2√2)` (`σ = 8/73`). -/
theorem hc_lower {a h b c : ℝ} {O : Point} (ha : 0 < a) (hah : a < h) (hb : 0 < b) (hbc : b < c)
    (hO1 : 0 ≤ O.1) (hO2 : 0 ≤ O.2) (hlow : sarea (ptH h) (ptC c) O < 0)
    (hsub : 4 / 73 ≤ minTriangleArea ![ptH h, ptC c, ptA a, ptB b, O]) :
    (8 / 73) / (3 - 2 * Real.sqrt 2) ≤ h * c := by
  obtain ⟨hk, -⟩ := endpoint_const
  have hset : ({(0, (0 : ℝ)), ptC c, ptH h} : Set Point) = {ptH h, ptC c, (0, 0)} := by
    ext p; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  have hc0 : 0 < c := by linarith
  have hh0 : 0 < h := by linarith
  have hO : 0 < sarea ((0 : ℝ), (0 : ℝ)) (ptC c) (ptH h) := by
    simp only [sarea]; nlinarith [mul_pos hc0 hh0]
  have mem : ∀ p : Point, 0 ≤ sarea (ptC c) (ptH h) p → 0 ≤ sarea (ptH h) (0, 0) p →
      0 ≤ sarea (0, 0) (ptC c) p → p ∈ convexHull ℝ ({ptH h, ptC c, (0, 0)} : Set Point) :=
    fun p h1 h2 h3 => by rw [← hset]; exact TypeII.mem_convexHull_of_sarea hO h1 h2 h3
  have p1 := mul_pos hc0 (show 0 < h - a by linarith)
  have p2 := mul_pos hc0 ha
  have p3 := mul_pos hh0 (show 0 < c - b by linarith)
  have p4 := mul_pos hh0 hb
  have p5 := mul_nonneg hh0.le hO1
  have p6 := mul_nonneg hc0.le hO2
  have mA := mem (ptA a) (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have mB := mem (ptB b) (by simp only [sarea]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have mQ := mem O (by rw [sarea_swap₁₂]; linarith) (by simp only [sarea]; linarith)
    (by simp only [sarea]; linarith)
  have hE := TypeII.endpointTriangleTheorem (ptH h) (ptC c) (0, 0) (ptA a) (ptB b) O mA mB mQ
  have harea : triangleArea (ptH h) (ptC c) (0, 0) = h * c / 2 := by
    rw [triangleArea_eq, show sarea (ptH h) (ptC c) (0, 0) = -(h * c) by simp only [sarea]; ring,
      abs_neg, abs_of_pos (by positivity)]
  rw [harea] at hE
  unfold TypeII.kEnd at hE
  rw [div_le_iff₀ hk]
  linarith

/-- The box of a hexagon point (bases `AH`, `BC` and the projection identities): `σ ≤ r, t ≤ 1-σ`. -/
theorem q_box {a h b c d f r t : ℝ} (hN : NAnchors a h b c d f) (hHAQ : 8 / 73 ≤ (h - a) * r)
    (hBCQ : 8 / 73 ≤ (c - b) * t) (hCDQ : 8 / 73 ≤ (1 - c) * t - d * (r - c))
    (hDFQ : 8 / 73 ≤ (f - 1) * (t - d) - (1 - d) * (r - 1))
    (hFHQ : 8 / 73 ≤ f * (1 - t) + (1 - h) * (r - f)) :
    8 / 73 ≤ r ∧ r ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ t ∧ t ≤ 1 - 8 / 73 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hs : (0 : ℝ) < 8 / 73 := by norm_num
  have hr : 8 / 73 ≤ r := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ h - a) (by linarith : h - a ≤ 1) hHAQ; linarith
  have ht : 8 / 73 ≤ t := by
    have := prod_le hs (by linarith : (0 : ℝ) ≤ c - b) (by linarith : c - b ≤ 1) hBCQ; linarith
  have i1 : (1 - f) * ((1 - c) * t - d * (r - c)) + (1 - c) * ((f - 1) * (t - d) - (1 - d) * (r - 1))
      = (d * (1 - f) + (1 - d) * (1 - c)) * (1 - r) := by ring
  have i2 : (1 - h) * ((f - 1) * (t - d) - (1 - d) * (r - 1)) + (1 - d) * (f * (1 - t) + (1 - h) * (r - f))
      = ((1 - h) * (1 - f) + (1 - d) * f) * (1 - t) := by ring
  have k1 := mul_le_mul_of_nonneg_left hCDQ (by linarith : (0 : ℝ) ≤ 1 - f)
  have k2 := mul_le_mul_of_nonneg_left hDFQ (by linarith : (0 : ℝ) ≤ 1 - c)
  have k3 := mul_le_mul_of_nonneg_left hDFQ (by linarith : (0 : ℝ) ≤ 1 - h)
  have k4 := mul_le_mul_of_nonneg_left hFHQ (by linarith : (0 : ℝ) ≤ 1 - d)
  have K1 : 0 < d * (1 - f) + (1 - d) * (1 - c) := by
    have := mul_pos (by linarith : (0 : ℝ) < d) (by linarith : (0 : ℝ) < 1 - f)
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - c)
    linarith
  have K2 : 0 < (1 - h) * (1 - f) + (1 - d) * f := by
    have := mul_pos (by linarith : (0 : ℝ) < 1 - h) (by linarith : (0 : ℝ) < 1 - f)
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ f)
    linarith
  have L1 : d * (1 - f) + (1 - d) * (1 - c) ≤ (1 - f) + (1 - c) := by
    have := mul_le_mul_of_nonneg_right (by linarith : d ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - f)
    have := mul_le_mul_of_nonneg_right (by linarith : 1 - d ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - c)
    linarith
  have L2 : (1 - h) * (1 - f) + (1 - d) * f ≤ (1 - h) + (1 - d) := by
    have := mul_le_mul_of_nonneg_left (by linarith : 1 - f ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - h)
    have := mul_le_mul_of_nonneg_left (by linarith : f ≤ 1) (by linarith : (0 : ℝ) ≤ 1 - d)
    linarith
  have hr1 : r ≤ 1 - 8 / 73 := by
    by_contra hcon; push Not at hcon
    have := mul_lt_mul_of_pos_left (show 1 - r < 8 / 73 by linarith) K1
    nlinarith
  have ht1 : t ≤ 1 - 8 / 73 := by
    by_contra hcon; push Not at hcon
    have := mul_lt_mul_of_pos_left (show 1 - t < 8 / 73 by linarith) K2
    nlinarith
  exact ⟨hr, hr1, ht, ht1⟩

end Heilbronn.Nine.SixRadial
