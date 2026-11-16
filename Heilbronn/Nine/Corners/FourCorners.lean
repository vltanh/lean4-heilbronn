module

public import Heilbronn.Nine.Corners.OppositeCorners

/-! # Nine points with all four square corners

Nine points of the unit square that include all four corners have minimum triangle area at most
`1/19` (`fourCornersTheorem`). The bound is used by
`CornerFamilies.nearSquareQuadrilateralLemma`, which transfers a near-square quadrilateral to the
square by a projective map.

**Setting.** The corners are `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, `D = (1,0)`. The proof
assumes every triangle area is at least `1/19` (written `1/19 ≤ minTriangleArea …`), i.e. every
doubled area at least `s = 2/19`; `D_O(P, Q) = det(P - O, Q - O) = sarea O P Q`. The five
noncorner points lie in four triangular regions (`fcRegion 0 = leftRegion`, `1 = topRegion`,
`2 = rightRegion`, `3 = bottomRegion`, the rotations of the left region about the centre).

**Results.**

* `fourCornersTheorem`: minimum area `≤ 1/19` (the proof gives `< 1/19`).
* `exists_mem_fcRegion`: every noncorner point lies in one of the regions; `leftRegion_pair_bounds`:
  the separation of a pair in the left region; `not_three_mem_fcRegion`: no region holds three
  points; `pairLine_band`: the band around the line through the pair;
  `no_pair_in_other_fcRegion`: only one region holds two points; `top_bottom_corner_signs`: the corner
  signs of the top and bottom points; `abs_sarea_inner_top_bottom_le`: these two points form a small
  triangle with the inner point of the pair.

The lemmas about a pair are stated for the left region; the other regions follow by the square
symmetries. In a pair `P, Q` of the left region, `P` is the member with the smaller
`x`-coordinate and `Q` the "inner point".

**Proof organization.** The square rotations `rotK k` (determinant `1`) bring region `k` to the
left region, which reduces the statements for the other regions (`not_three_mem_fcRegion`,
`no_pair_in_other_fcRegion`) and the theorem to the left region; the reflection `flipY` across
`y = 1/2` gives the bottom signs from the top ones (`top_signs`). The final triangle is a
division-free polynomial argument (`final_poly`). The theorem assigns each of the five noncorner
points a region, finds a pair by pigeonhole, rotates it to the left region, and counts the other
three (`four_left`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.FourCorners

/-! ### The four regions -/

/-- The left region: `s ≤ x`, `x + s ≤ y ≤ 1 - s - x` (then `x ≤ 1/2 - s`). -/
def leftRegion (s : ℝ) : Set Point := {p | s ≤ p.1 ∧ p.1 + s ≤ p.2 ∧ p.1 + p.2 ≤ 1 - s}

/-- The top region, the rotation of the left one: `y ≤ 1 - s`, `y ≥ x + s`, `x + y ≥ 1 + s`. -/
def topRegion (s : ℝ) : Set Point := {p | p.2 ≤ 1 - s ∧ p.1 + s ≤ p.2 ∧ 1 + s ≤ p.1 + p.2}

/-- The right region: `x ≤ 1 - s`, `x ≥ y + s`, `x + y ≥ 1 + s`. -/
def rightRegion (s : ℝ) : Set Point := {p | p.1 ≤ 1 - s ∧ p.2 + s ≤ p.1 ∧ 1 + s ≤ p.1 + p.2}

/-- The bottom region: `y ≥ s`, `x ≥ y + s`, `x + y ≤ 1 - s`. -/
def bottomRegion (s : ℝ) : Set Point := {p | s ≤ p.2 ∧ p.2 + s ≤ p.1 ∧ p.1 + p.2 ≤ 1 - s}

/-- The four regions indexed counterclockwise from the left one: left, top, right, bottom. -/
def fcRegion (k : Fin 4) (s : ℝ) : Set Point :=
  ![leftRegion s, topRegion s, rightRegion s, bottomRegion s] k

/-- The line through `P` and `Q` as a function of `x`:
`ℓ(x) = y_P + (y_Q - y_P)(x - x_P)/(x_Q - x_P)`. -/
def pairLine (P Q : Point) (x : ℝ) : ℝ := P.2 + (Q.2 - P.2) / (Q.1 - P.1) * (x - P.1)

/-! ### Helpers: sub-configurations and the rotations of the square -/

theorem min_sub4 {n : ℕ} (P : Fin n → Point) (i j k l : Fin n)
    (hinj : Function.Injective ![i, j, k, l]) :
    minTriangleArea P ≤ minTriangleArea ![P i, P j, P k, P l] := by
  have := le_min_comp (by norm_num) P hinj
  convert this using 2
  funext x; fin_cases x <;> rfl

theorem min_swap4 (A B X Y : Point) :
    minTriangleArea ![A, B, Y, X] = minTriangleArea ![A, B, X, Y] := by
  have e : ![A, B, Y, X] = ![A, B, X, Y] ∘ Equiv.swap (2 : Fin 4) 3 := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_perm]

/-- The rotation of the square bringing region `k` to the left region. -/
def rotK (k : Fin 4) (p : Point) : Point :=
  ![p, (1 - p.2, p.1), (1 - p.1, 1 - p.2), (p.2, 1 - p.1)] k

/-- The corner that `rotK k` sends to `(0,0)`. -/
def preA (k : Fin 4) : Point := ![(0, 0), (0, 1), (1, 1), (1, 0)] k

/-- The corner that `rotK k` sends to `(0,1)`. -/
def preB (k : Fin 4) : Point := ![(0, 1), (1, 1), (1, 0), (0, 0)] k

theorem sarea_rotK (k : Fin 4) (a b c : Point) :
    sarea (rotK k a) (rotK k b) (rotK k c) = sarea a b c := by
  fin_cases k <;> simp only [rotK, sarea] <;> simp <;> ring

theorem rotK_mem (k : Fin 4) {p : Point} (hp : p ∈ unitSquare) : rotK k p ∈ unitSquare := by
  obtain ⟨a, b, c, d⟩ := hp
  fin_cases k <;> simp [rotK, unitSquare] <;> refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith

theorem rotK_region (k : Fin 4) (s : ℝ) {p : Point} (hp : p ∈ fcRegion k s) :
    rotK k p ∈ leftRegion s := by
  fin_cases k <;>
    simp only [fcRegion, leftRegion, topRegion, rightRegion, bottomRegion, rotK] at hp ⊢ <;>
    simp at hp ⊢ <;> obtain ⟨a, b, c⟩ := hp <;> refine ⟨?_, ?_, ?_⟩ <;> linarith

theorem min_rot4 (k : Fin 4) (X Y : Point) :
    minTriangleArea ![(0, 0), (0, 1), rotK k X, rotK k Y] =
      minTriangleArea ![preA k, preB k, X, Y] := by
  have e : ![(0, 0), (0, 1), rotK k X, rotK k Y] = rotK k ∘ ![preA k, preB k, X, Y] := by
    funext i; fin_cases i <;> fin_cases k <;> simp [rotK, preA, preB]
  rw [e]
  exact minTriangleArea_comp_of_area _ _ fun p q r => by
    rw [triangleArea_eq, triangleArea_eq, sarea_rotK]

/-! ### Four regions and a pair in one region -/

/-- A point `X` of the square whose triangles with pairs of corners have doubled area at least
`s = 2/19` satisfies `s ≤ x, y ≤ 1 - s`, `|x - y| ≥ s`, `|x + y - 1| ≥ s`, and lies in one of the
four regions. -/
theorem exists_mem_fcRegion (X : Point) (hX : X ∈ unitSquare)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), X]) :
    2 / 19 ≤ X.1 ∧ X.1 ≤ 1 - 2 / 19 ∧ 2 / 19 ≤ X.2 ∧ X.2 ≤ 1 - 2 / 19 ∧
      2 / 19 ≤ |X.1 - X.2| ∧ 2 / 19 ≤ |X.1 + X.2 - 1| ∧
      ∃ k : Fin 4, X ∈ fcRegion k (2 / 19) := by
  obtain ⟨x0, x1, y0, y1⟩ := hX
  have hm : (2 / 19 : ℝ) / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), X] := by
    linarith
  have a1 : 2 / 19 ≤ |sarea (0, 0) (0, 1) X| := OppositeCorners.abs_sarea_ge hm 0 1 4
  have a2 : 2 / 19 ≤ |sarea (1, 1) (1, 0) X| := OppositeCorners.abs_sarea_ge hm 2 3 4
  have a3 : 2 / 19 ≤ |sarea (0, 0) (1, 0) X| := OppositeCorners.abs_sarea_ge hm 0 3 4
  have a4 : 2 / 19 ≤ |sarea (0, 1) (1, 1) X| := OppositeCorners.abs_sarea_ge hm 1 2 4
  have a5 : 2 / 19 ≤ |sarea (0, 0) (1, 1) X| := OppositeCorners.abs_sarea_ge hm 0 2 4
  have a6 : 2 / 19 ≤ |sarea (0, 1) (1, 0) X| := OppositeCorners.abs_sarea_ge hm 1 3 4
  have e1 : sarea (0, 0) (0, 1) X = -X.1 := by simp only [sarea]; ring
  have e2 : sarea (1, 1) (1, 0) X = X.1 - 1 := by simp only [sarea]; ring
  have e3 : sarea (0, 0) (1, 0) X = X.2 := by simp only [sarea]; ring
  have e4 : sarea (0, 1) (1, 1) X = X.2 - 1 := by simp only [sarea]; ring
  have e5 : sarea (0, 0) (1, 1) X = -(X.1 - X.2) := by simp only [sarea]; ring
  have e6 : sarea (0, 1) (1, 0) X = X.1 + X.2 - 1 := by simp only [sarea]; ring
  rw [e1, abs_neg, abs_of_nonneg x0] at a1
  rw [e2, abs_of_nonpos (by linarith)] at a2
  rw [e3, abs_of_nonneg y0] at a3
  rw [e4, abs_of_nonpos (by linarith)] at a4
  rw [e5, abs_neg] at a5
  rw [e6] at a6
  refine ⟨a1, by linarith, a3, by linarith, a5, a6, ?_⟩
  rcases le_abs'.1 a5 with h5 | h5 <;> rcases le_abs'.1 a6 with h6 | h6
  · exact ⟨0, ⟨a1, by linarith, by linarith⟩⟩
  · exact ⟨1, ⟨by linarith, by linarith, by linarith⟩⟩
  · exact ⟨3, ⟨a3, by linarith, by linarith⟩⟩
  · exact ⟨2, ⟨by linarith, by linarith, by linarith⟩⟩

/-- For `P = (p,u)`, `Q = (q,v)` in the left region with `p ≤ q` and all doubled areas among
`A, B, P, Q` at least `s = 2/19`: `D_A(P,Q) ≤ -s`, `D_B(P,Q) ≥ s`, `d = q - p ≥ 2s`, and the
inner point `Q` satisfies `3s ≤ q ≤ 1/2 - s`, `q + s ≤ v ≤ 1 - s - q`, `4s ≤ v ≤ 1 - 4s`. -/
theorem leftRegion_pair_bounds (P Q : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q]) :
    sarea (0, 0) P Q ≤ -(2 / 19) ∧ 2 / 19 ≤ sarea (0, 1) P Q ∧ 2 * (2 / 19) ≤ Q.1 - P.1 ∧
      3 * (2 / 19) ≤ Q.1 ∧ Q.1 ≤ 1 / 2 - 2 / 19 ∧ Q.1 + 2 / 19 ≤ Q.2 ∧
      Q.2 ≤ 1 - 2 / 19 - Q.1 ∧ 4 * (2 / 19) ≤ Q.2 ∧ Q.2 ≤ 1 - 4 * (2 / 19) := by
  obtain ⟨p1, p2, p3⟩ := hP
  obtain ⟨q1, q2, q3⟩ := hQ
  have hm : (2 / 19 : ℝ) / 2 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q] := by linarith
  have aA : 2 / 19 ≤ |sarea (0, 0) P Q| := OppositeCorners.abs_sarea_ge hm 0 2 3
  have aB : 2 / 19 ≤ |sarea (0, 1) P Q| := OppositeCorners.abs_sarea_ge hm 1 2 3
  have eA : sarea (0, 0) P Q = P.1 * Q.2 - Q.1 * P.2 := by simp only [sarea]; ring
  have eB : sarea (0, 1) P Q = Q.1 * (1 - P.2) - P.1 * (1 - Q.2) := by simp only [sarea]; ring
  have hq : 2 * Q.1 ≤ 1 - 2 * (2 / 19) := by linarith
  have core : P.1 * (1 - (2 / 19) - Q.1) - Q.1 * (P.1 + 2 / 19) < 2 / 19 := by
    nlinarith [mul_le_mul_of_nonneg_right hpq (by linarith : (0 : ℝ) ≤ 1 - 2 / 19 - 2 * Q.1),
      sq_nonneg (Q.1 - (1 - 2 * (2 / 19)) / 4)]
  have b1 : P.1 * Q.2 - Q.1 * P.2 < 2 / 19 := by
    nlinarith [mul_le_mul_of_nonneg_left q3 (by linarith : (0 : ℝ) ≤ P.1),
      mul_le_mul_of_nonneg_left p2 (by linarith : (0 : ℝ) ≤ Q.1)]
  have b2 : P.1 * (1 - Q.2) - Q.1 * (1 - P.2) < 2 / 19 := by
    nlinarith [mul_le_mul_of_nonneg_left q2 (by linarith : (0 : ℝ) ≤ P.1),
      mul_le_mul_of_nonneg_left p3 (by linarith : (0 : ℝ) ≤ Q.1)]
  rw [eA] at aA
  rw [eB] at aB
  have dA : P.1 * Q.2 - Q.1 * P.2 ≤ -(2 / 19) := by
    rcases le_abs'.1 aA with h | h <;> linarith
  have dB : 2 / 19 ≤ Q.1 * (1 - P.2) - P.1 * (1 - Q.2) := by
    rcases le_abs'.1 aB with h | h <;> linarith
  have hd : 2 * (2 / 19) ≤ Q.1 - P.1 := by linarith
  rw [eA, eB]
  exact ⟨dA, dB, hd, by linarith, by linarith, q2, by linarith, by linarith, by linarith⟩

/-- No region contains three points: a pair needs an `x`-span `≥ 2s` (`leftRegion_pair_bounds`),
and the region's span is `1/2 - 2s = 11/38 < 4s`. Stated for every region, by rotation. -/
theorem not_three_mem_fcRegion (k : Fin 4) (P Q R : Point) (hP : P ∈ fcRegion k (2 / 19))
    (hQ : Q ∈ fcRegion k (2 / 19)) (hR : R ∈ fcRegion k (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, R]) : False := by
  have hsub : ∀ X Y : Point, X ∈ fcRegion k (2 / 19) → Y ∈ fcRegion k (2 / 19) →
      1 / 19 ≤ minTriangleArea ![preA k, preB k, X, Y] →
      2 * (2 / 19) ≤ |(rotK k X).1 - (rotK k Y).1| := by
    intro X Y hX hY hm
    rw [← min_rot4] at hm
    have hX' := rotK_region k _ hX
    have hY' := rotK_region k _ hY
    rcases le_total (rotK k X).1 (rotK k Y).1 with h | h
    · have := (leftRegion_pair_bounds _ _ hX' hY' h hm).2.2.1
      rw [abs_of_nonpos (by linarith)]; linarith
    · have := (leftRegion_pair_bounds _ _ hY' hX' h (by rw [min_swap4]; exact hm)).2.2.1
      rw [abs_of_nonneg (by linarith)]; linarith
  have m4 : 1 / 19 ≤ minTriangleArea ![preA k, preB k, P, Q] ∧
      1 / 19 ≤ minTriangleArea ![preA k, preB k, Q, R] ∧
      1 / 19 ≤ minTriangleArea ![preA k, preB k, P, R] := by
    fin_cases k
    · exact ⟨hmin.trans (min_sub4 _ 0 1 4 5 (by decide)), hmin.trans (min_sub4 _ 0 1 5 6 (by decide)),
        hmin.trans (min_sub4 _ 0 1 4 6 (by decide))⟩
    · exact ⟨hmin.trans (min_sub4 _ 1 2 4 5 (by decide)), hmin.trans (min_sub4 _ 1 2 5 6 (by decide)),
        hmin.trans (min_sub4 _ 1 2 4 6 (by decide))⟩
    · exact ⟨hmin.trans (min_sub4 _ 2 3 4 5 (by decide)), hmin.trans (min_sub4 _ 2 3 5 6 (by decide)),
        hmin.trans (min_sub4 _ 2 3 4 6 (by decide))⟩
    · exact ⟨hmin.trans (min_sub4 _ 3 0 4 5 (by decide)), hmin.trans (min_sub4 _ 3 0 5 6 (by decide)),
        hmin.trans (min_sub4 _ 3 0 4 6 (by decide))⟩
  have d1 := hsub P Q hP hQ m4.1
  have d2 := hsub Q R hQ hR m4.2.1
  have d3 := hsub P R hP hR m4.2.2
  obtain ⟨p1, p2, p3⟩ := rotK_region k _ hP
  obtain ⟨q1, q2, q3⟩ := rotK_region k _ hQ
  obtain ⟨r1, r2, r3⟩ := rotK_region k _ hR
  rcases le_abs'.1 d1 with e1 | e1 <;> rcases le_abs'.1 d2 with e2 | e2 <;>
    rcases le_abs'.1 d3 with e3 | e3 <;> linarith

/-! ### The line through the pair -/

/-- The pair line in multiplied-out form: `(q - p) ℓ(x) = (q - p) u + (v - u)(x - p)`, and the
determinant of `PQX` is `(q - p)(y - ℓ(x))`. -/
theorem pairLine_mul {P Q : Point} (h : P.1 ≠ Q.1) (x : ℝ) :
    (Q.1 - P.1) * pairLine P Q x = (Q.1 - P.1) * P.2 + (Q.2 - P.2) * (x - P.1) := by
  have : Q.1 - P.1 ≠ 0 := sub_ne_zero.2 (Ne.symm h)
  simp only [pairLine]; field_simp

theorem sarea_pairLine {P Q : Point} (h : P.1 ≠ Q.1) (X : Point) :
    sarea P Q X = (Q.1 - P.1) * (X.2 - pairLine P Q X.1) := by
  rw [mul_sub, pairLine_mul h]; simp only [sarea]; ring

/-- The band of `pairLine_band` multiplied out by `q - p`: `s ≤ (q - p)ℓ(x) ≤ (q - p) - s` on
`[0, 1]`, and `2s ≤ q - p ≤ 11/38`. -/
theorem line_band_core (P Q : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q]) :
    (∀ x, 0 ≤ x → x ≤ 1 → 2 / 19 ≤ (Q.1 - P.1) * pairLine P Q x ∧
      (Q.1 - P.1) * pairLine P Q x ≤ (Q.1 - P.1) - 2 / 19) ∧
      2 * (2 / 19) ≤ Q.1 - P.1 ∧ Q.1 - P.1 ≤ 11 / 38 := by
  have h4 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q] :=
    hmin.trans (min_sub4 _ 0 1 4 5 (by decide))
  obtain ⟨dA, dB, hd, -, qhalf, qv1, qv2, -, -⟩ := leftRegion_pair_bounds P Q hP hQ hpq h4
  obtain ⟨p1, p2, p3⟩ := hP
  have hd0 : P.1 ≠ Q.1 := by intro h; linarith
  have hm : (2 / 19 : ℝ) / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q] := by
    linarith
  have aD : 2 / 19 ≤ |sarea (1, 0) P Q| := OppositeCorners.abs_sarea_ge hm 3 4 5
  have aC : 2 / 19 ≤ |sarea (1, 1) P Q| := OppositeCorners.abs_sarea_ge hm 2 4 5
  have L0 := pairLine_mul hd0 0
  have L1 := pairLine_mul hd0 1
  have Lq := pairLine_mul hd0 Q.1
  have eD : sarea (1, 0) P Q = -((Q.1 - P.1) * pairLine P Q 1) := by
    rw [L1]; simp only [sarea]; ring
  have eC : sarea (1, 1) P Q = (Q.1 - P.1) - (Q.1 - P.1) * pairLine P Q 1 := by
    rw [L1]; simp only [sarea]; ring
  have eA : sarea (0, 0) P Q = -((Q.1 - P.1) * pairLine P Q 0) := by
    rw [L0]; simp only [sarea]; ring
  have eB : sarea (0, 1) P Q = (Q.1 - P.1) - (Q.1 - P.1) * pairLine P Q 0 := by
    rw [L0]; simp only [sarea]; ring
  rw [eD, abs_neg] at aD
  rw [eC] at aC
  rw [eA] at dA
  rw [eB] at dB
  clear eA eB eC eD hm h4 hmin
  set d := Q.1 - P.1 with hdd
  set z := pairLine P Q 0
  set w := pairLine P Q 1
  have hz1 : 2 / 19 ≤ d * z := by linarith
  have hz2 : d * z ≤ d - 2 / 19 := by linarith
  have hv : d * Q.2 = (1 - Q.1) * (d * z) + Q.1 * (d * w) := by rw [L0, L1]; ring
  have hq : d + 2 / 19 ≤ Q.1 := by linarith
  have quad : 0 < 2 * d ^ 2 - (1 - 3 * (2 / 19)) * d + 2 / 19 := by
    nlinarith [sq_nonneg (d - 13 / 76)]
  have hw : 2 / 19 ≤ d * w ∧ d * w ≤ d - 2 / 19 := by
    rcases le_abs'.1 aD with h1 | h1 <;> rcases le_abs'.1 aC with h2 | h2
    · exfalso
      have k1 := mul_le_mul_of_nonneg_left qv1 (by linarith : (0 : ℝ) ≤ d)
      have k2 := mul_le_mul_of_nonneg_left hz2 (by linarith : (0 : ℝ) ≤ 1 - Q.1)
      have k3 := mul_le_mul_of_nonneg_left hq (by linarith : (0 : ℝ) ≤ d)
      have k4 := mul_le_mul_of_nonneg_left h1 (by linarith : (0 : ℝ) ≤ Q.1)
      linarith
    · exfalso
      have k1 := mul_le_mul_of_nonneg_left qv1 (by linarith : (0 : ℝ) ≤ d)
      have k2 := mul_le_mul_of_nonneg_left hz2 (by linarith : (0 : ℝ) ≤ 1 - Q.1)
      have k3 := mul_le_mul_of_nonneg_left hq (by linarith : (0 : ℝ) ≤ d)
      have k4 := mul_le_mul_of_nonneg_left h1 (by linarith : (0 : ℝ) ≤ Q.1)
      linarith
    · exfalso
      have k1 := mul_le_mul_of_nonneg_left qv2 (by linarith : (0 : ℝ) ≤ d)
      have k2 := mul_le_mul_of_nonneg_left hz1 (by linarith : (0 : ℝ) ≤ 1 - Q.1)
      have k3 := mul_le_mul_of_nonneg_left hq (by linarith : (0 : ℝ) ≤ d)
      have k4 := mul_le_mul_of_nonneg_left (by linarith : d + 2 / 19 ≤ d * w)
        (by linarith : (0 : ℝ) ≤ Q.1)
      linarith
    · exact ⟨by linarith, by linarith⟩
  refine ⟨fun x hx0 hx1 => ?_, hd, by linarith⟩
  have hl : d * pairLine P Q x = (1 - x) * (d * z) + x * (d * w) := by
    rw [pairLine_mul hd0, L0, L1]; ring
  rw [hl]
  constructor
  · nlinarith [mul_le_mul_of_nonneg_left hz1 (by linarith : (0 : ℝ) ≤ 1 - x),
      mul_le_mul_of_nonneg_left hw.1 hx0]
  · nlinarith [mul_le_mul_of_nonneg_left hz2 (by linarith : (0 : ℝ) ≤ 1 - x),
      mul_le_mul_of_nonneg_left hw.2 hx0]

theorem fcRegion_mem (k : Fin 4) {X : Point} (hX : X ∈ fcRegion k (2 / 19)) : X ∈ unitSquare := by
  fin_cases k <;>
    simp only [fcRegion, leftRegion, topRegion, rightRegion, bottomRegion] at hX <;>
    simp at hX <;> obtain ⟨a, b, c⟩ := hX <;> refine ⟨?_, ?_, ?_, ?_⟩ <;> linarith

/-- The inner point of a pair in a region `k ≠ 0` has `y`-coordinate in `[3s, 1 - 3s]`. -/
theorem inner_y (k : Fin 4) (hk : k ≠ 0) {X Y : Point} (hX : X ∈ fcRegion k (2 / 19))
    (hY : Y ∈ fcRegion k (2 / 19)) (hm : 1 / 19 ≤ minTriangleArea ![preA k, preB k, X, Y]) :
    (3 * (2 / 19) ≤ X.2 ∧ X.2 ≤ 1 - 3 * (2 / 19)) ∨
      (3 * (2 / 19) ≤ Y.2 ∧ Y.2 ≤ 1 - 3 * (2 / 19)) := by
  rw [← min_rot4] at hm
  have hX' := rotK_region k _ hX
  have hY' := rotK_region k _ hY
  rcases le_total (rotK k X).1 (rotK k Y).1 with h | h
  · obtain ⟨-, -, -, a1, a2, -, -, a3, a4⟩ := leftRegion_pair_bounds _ _ hX' hY' h hm
    right
    fin_cases k
    · exact absurd rfl hk
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith
  · obtain ⟨-, -, -, a1, a2, -, -, a3, a4⟩ :=
      leftRegion_pair_bounds _ _ hY' hX' h (by rw [min_swap4]; exact hm)
    left
    fin_cases k
    · exact absurd rfl hk
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith
    · simp [rotK] at a1 a2 a3 a4; constructor <;> linarith

/-- For a pair `P, Q` of the left region (`p ≤ q`) with all doubled areas among the corners and
`P, Q` at least `s = 2/19`, put `a = s/(q - p)`. The line `ℓ` through `P, Q` satisfies
`a ≤ ℓ(x) ≤ 1 - a` on `[0, 1]` and `a ≥ 4/11`, and any point `X` of the square with
`|D(P,Q,X)| ≥ s` has `y ≥ ℓ(x) + a ≥ 2a` or `y ≤ ℓ(x) - a ≤ 1 - 2a`. -/
theorem pairLine_band (P Q : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1)
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q]) :
    let a := (2 / 19) / (Q.1 - P.1)
    (∀ x, 0 ≤ x → x ≤ 1 → a ≤ pairLine P Q x ∧ pairLine P Q x ≤ 1 - a) ∧ 4 / 11 ≤ a ∧
      ∀ X : Point, X ∈ unitSquare → 2 / 19 ≤ |sarea P Q X| →
        (pairLine P Q X.1 + a ≤ X.2 ∧ 2 * a ≤ X.2) ∨
          (X.2 ≤ pairLine P Q X.1 - a ∧ X.2 ≤ 1 - 2 * a) := by
  intro a
  obtain ⟨band, hd, hd2⟩ := line_band_core P Q hP hQ hpq hmin
  have hd0 : 0 < Q.1 - P.1 := by linarith
  have hd0' : P.1 ≠ Q.1 := by intro h; linarith
  have ha : a * (Q.1 - P.1) = 2 / 19 := div_mul_cancel₀ _ hd0.ne'
  have key : ∀ x, 0 ≤ x → x ≤ 1 → a ≤ pairLine P Q x ∧ pairLine P Q x ≤ 1 - a := by
    intro x hx0 hx1
    obtain ⟨b1, b2⟩ := band x hx0 hx1
    constructor
    · by_contra hc; push Not at hc
      nlinarith [mul_lt_mul_of_pos_right hc hd0]
    · by_contra hc; push Not at hc
      nlinarith [mul_lt_mul_of_pos_right hc hd0]
  refine ⟨key, ?_, ?_⟩
  · by_contra hc; push Not at hc
    nlinarith [mul_lt_mul_of_pos_right hc hd0]
  · intro X hX hXa
    obtain ⟨x0, x1, -, -⟩ := hX
    obtain ⟨k1, k2⟩ := key X.1 x0 x1
    rw [sarea_pairLine hd0'] at hXa
    rw [abs_mul, abs_of_pos hd0] at hXa
    rcases le_abs'.1 (by
      have : a ≤ |X.2 - pairLine P Q X.1| := by
        by_contra hc; push Not at hc
        nlinarith [mul_lt_mul_of_pos_left hc hd0]
      exact this) with h | h
    · right; constructor <;> linarith
    · left; constructor <;> linarith

/-! ### Exactly one region contains a pair -/

/-- If the left region contains the pair `P, Q`, no other region contains two points: the inner
point `Z` of a second pair would give `|det(Q - P, Z - P)| ≤ 67/722 < s`. Hence the region
counts are exactly `2, 1, 1, 1`. -/
theorem no_pair_in_other_fcRegion (P Q Z₁ Z₂ : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (k : Fin 4) (hk : k ≠ 0) (hZ₁ : Z₁ ∈ fcRegion k (2 / 19))
    (hZ₂ : Z₂ ∈ fcRegion k (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂]) :
    False := by
  have core : ∀ P Q : Point, P ∈ leftRegion (2 / 19) → Q ∈ leftRegion (2 / 19) → P.1 ≤ Q.1 →
      1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂] → False := by
    intro P Q hP hQ hpq hmin
    have h6 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q] := by
      have := le_min_comp (by norm_num) ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂]
        (f := ![(0 : Fin 8), 1, 2, 3, 4, 5]) (by decide)
      refine hmin.trans (this.trans (le_of_eq ?_))
      congr 1; funext i; fin_cases i <;> rfl
    obtain ⟨band, hd, hd2⟩ := line_band_core P Q hP hQ hpq h6
    have hd0' : P.1 ≠ Q.1 := by intro h; linarith
    have hm : (2 / 19 : ℝ) / 2 ≤
        minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂] := by linarith
    have m4 : 1 / 19 ≤ minTriangleArea ![preA k, preB k, Z₁, Z₂] := by
      fin_cases k
      · exact absurd rfl hk
      · exact hmin.trans (min_sub4 _ 1 2 6 7 (by decide))
      · exact hmin.trans (min_sub4 _ 2 3 6 7 (by decide))
      · exact hmin.trans (min_sub4 _ 3 0 6 7 (by decide))
    have bound : ∀ Z : Point, Z ∈ fcRegion k (2 / 19) → 3 * (2 / 19) ≤ Z.2 →
        Z.2 ≤ 1 - 3 * (2 / 19) → |sarea P Q Z| < 2 / 19 := by
      intro Z hZ y1 y2
      obtain ⟨x0, x1, -, -⟩ := fcRegion_mem k hZ
      obtain ⟨b1, b2⟩ := band Z.1 x0 x1
      rw [sarea_pairLine hd0', abs_lt]
      constructor <;> nlinarith
    rcases inner_y k hk hZ₁ hZ₂ m4 with ⟨y1, y2⟩ | ⟨y1, y2⟩
    · have := OppositeCorners.abs_sarea_ge hm 4 5 6
      have := bound Z₁ hZ₁ y1 y2
      simp at *; linarith
    · have := OppositeCorners.abs_sarea_ge hm 4 5 7
      have := bound Z₂ hZ₂ y1 y2
      simp at *; linarith
  rcases le_total P.1 Q.1 with h | h
  · exact core P Q hP hQ h hmin
  · refine core Q P hQ hP h ?_
    have e : ![(0, 0), (0, 1), (1, 1), (1, 0), Q, P, Z₁, Z₂] =
        ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, Z₁, Z₂] ∘ Equiv.swap (4 : Fin 8) 5 := by
      funext i; fin_cases i <;> rfl
    rw [e, minTriangleArea_comp_perm]; exact hmin

/-! ### The corner signs for the top and bottom points -/

/-- The corner signs of `top_bottom_corner_signs` for a point `X` of the top region. -/
theorem top_signs (P Q X : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1) (hX : X ∈ topRegion (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X]) :
    8 / 11 ≤ X.2 ∧ Q.2 < X.2 ∧ 2 / 19 ≤ sarea (0, 0) Q X ∧ 2 / 19 ≤ sarea (0, 1) Q X ∧
      sarea (1, 1) Q X ≤ -(2 / 19) := by
  have h6 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q] := by
    have := le_min_comp (by norm_num) ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X]
      (f := ![(0 : Fin 7), 1, 2, 3, 4, 5]) (by decide)
    refine hmin.trans (this.trans (le_of_eq ?_))
    congr 1; funext i; fin_cases i <;> rfl
  have h4 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q] :=
    h6.trans (min_sub4 _ 0 1 4 5 (by decide))
  have hm : (2 / 19 : ℝ) / 2 ≤
      minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X] := by linarith
  obtain ⟨-, -, -, q3, qh, qv1, qv2, v4, v5⟩ := leftRegion_pair_bounds P Q hP hQ hpq h4
  obtain ⟨-, ha, hband⟩ := pairLine_band P Q hP hQ hpq h6
  obtain ⟨x1, x2, x3⟩ := hX
  have hXsq : X ∈ unitSquare := ⟨by linarith, by linarith, by linarith, by linarith⟩
  have aPQX : 2 / 19 ≤ |sarea P Q X| := OppositeCorners.abs_sarea_ge hm 4 5 6
  have hy : 8 / 11 ≤ X.2 := by
    rcases hband X hXsq aPQX with ⟨-, h⟩ | ⟨-, h⟩
    · linarith
    · exfalso; linarith
  have hvy : Q.2 < X.2 := by linarith
  have aA : 2 / 19 ≤ |sarea (0, 0) Q X| := OppositeCorners.abs_sarea_ge hm 0 5 6
  have aB : 2 / 19 ≤ |sarea (0, 1) Q X| := OppositeCorners.abs_sarea_ge hm 1 5 6
  have aC : 2 / 19 ≤ |sarea (1, 1) Q X| := OppositeCorners.abs_sarea_ge hm 2 5 6
  have eA : sarea (0, 0) Q X = Q.1 * X.2 - Q.2 * X.1 := by simp only [sarea]; ring
  have eB : sarea (0, 1) Q X = (1 - Q.2) * X.1 - Q.1 * (1 - X.2) := by simp only [sarea]; ring
  have eC : sarea (1, 1) Q X = (1 - Q.2) * X.1 - (1 - Q.1) * X.2 + Q.2 - Q.1 := by
    simp only [sarea]; ring
  rw [eA] at aA ⊢
  rw [eB] at aB ⊢
  rw [eC] at aC ⊢
  have bB : -(2 / 19) < (1 - Q.2) * X.1 - Q.1 * (1 - X.2) := by
    nlinarith [mul_le_mul (by linarith : (8 / 19 : ℝ) ≤ 1 - Q.2) (by linarith : (4 / 19 : ℝ) ≤ X.1)
      (by norm_num) (by linarith), mul_le_mul (by linarith : Q.1 ≤ 15 / 38)
      (by linarith : 1 - X.2 ≤ 3 / 11) (by linarith) (by norm_num)]
  have dB : 2 / 19 ≤ (1 - Q.2) * X.1 - Q.1 * (1 - X.2) := by
    rcases le_abs'.1 aB with h | h <;> linarith
  have bC : (1 - Q.2) * X.1 - (1 - Q.1) * X.2 + Q.2 - Q.1 < 2 / 19 := by
    have k1 := mul_le_mul_of_nonneg_left (by linarith : X.1 ≤ X.2 - 2 / 19)
      (by linarith : (0 : ℝ) ≤ 1 - Q.2)
    have k2 := mul_le_mul (by linarith : Q.2 - Q.1 ≤ 1 - 7 * (2 / 19))
      (by linarith : 1 - X.2 ≤ 1 / 2 - 2 / 19) (by linarith) (by norm_num)
    nlinarith
  have dC : (1 - Q.2) * X.1 - (1 - Q.1) * X.2 + Q.2 - Q.1 ≤ -(2 / 19) := by
    rcases le_abs'.1 aC with h | h <;> linarith
  have dA : 2 / 19 ≤ Q.1 * X.2 - Q.2 * X.1 := by
    rcases le_abs'.1 aA with h | h
    · exfalso
      have k1 := mul_le_mul_of_nonneg_left h (by linarith : (0 : ℝ) ≤ 1 - Q.2)
      have k2 := mul_le_mul_of_nonneg_left dC (by linarith : (0 : ℝ) ≤ Q.2)
      have k3 : (Q.2 - Q.1) * (X.2 - Q.2) ≤ (Q.2 - Q.1) * (1 - 2 / 19 - Q.2) :=
        mul_le_mul_of_nonneg_left (by linarith) (by linarith)
      nlinarith [sq_nonneg (Q.2 - Q.1 - (1 - 2 / 19 - Q.2))]
    · exact h
  exact ⟨hy, hvy, dA, dB, dC⟩

/-- The reflection `(x, y) ↦ (x, 1 - y)` across `y = 1/2`. -/
def flipY (p : Point) : Point := (p.1, 1 - p.2)

theorem sarea_flipY (a b c : Point) : sarea (flipY a) (flipY b) (flipY c) = -sarea a b c := by
  simp only [flipY, sarea]; ring

/-- With the pair `P, Q` in the left region (`p ≤ q`), a point `X` of the top region and a point
`Y` of the bottom region, and all doubled areas at least `s = 2/19`: `y_X ≥ 8/11 > v`,
`D_A(Q,X) ≥ s`, `D_B(Q,X) ≥ s`, `D_C(Q,X) ≤ -s`, the reflected signs `D_A(Q,Y) ≤ -s`,
`D_B(Q,Y) ≤ -s`, `D_D(Q,Y) ≥ s`, and, writing `X = (q + ξ, v + h)`, `Y = (q + η, v - k)`, the
bounds `(s - qh)/(1 - v) ≤ ξ ≤ (qh - s)/v`, `(s - qk)/v ≤ η ≤ (qk - s)/(1 - v)` and the height
bounds `h ≤ 1 - s - v`, `k ≤ v - s`. -/
theorem top_bottom_corner_signs (P Q X Y : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1) (hX : X ∈ topRegion (2 / 19))
    (hY : Y ∈ bottomRegion (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]) :
    8 / 11 ≤ X.2 ∧ Q.2 < X.2 ∧ Y.2 ≤ 3 / 11 ∧ Y.2 < Q.2 ∧
      2 / 19 ≤ sarea (0, 0) Q X ∧ 2 / 19 ≤ sarea (0, 1) Q X ∧ sarea (1, 1) Q X ≤ -(2 / 19) ∧
      sarea (0, 0) Q Y ≤ -(2 / 19) ∧ sarea (0, 1) Q Y ≤ -(2 / 19) ∧
      2 / 19 ≤ sarea (1, 0) Q Y ∧
      (2 / 19 - Q.1 * (X.2 - Q.2)) / (1 - Q.2) ≤ X.1 - Q.1 ∧
      X.1 - Q.1 ≤ (Q.1 * (X.2 - Q.2) - 2 / 19) / Q.2 ∧
      (2 / 19 - Q.1 * (Q.2 - Y.2)) / Q.2 ≤ Y.1 - Q.1 ∧
      Y.1 - Q.1 ≤ (Q.1 * (Q.2 - Y.2) - 2 / 19) / (1 - Q.2) ∧
      X.2 - Q.2 ≤ 1 - 2 / 19 - Q.2 ∧ Q.2 - Y.2 ≤ Q.2 - 2 / 19 := by
  have h7X : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X] := by
    have := le_min_comp (by norm_num) ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]
      (f := ![(0 : Fin 8), 1, 2, 3, 4, 5, 6]) (by decide)
    refine hmin.trans (this.trans (le_of_eq ?_))
    congr 1; funext i; fin_cases i <;> rfl
  have h7Y : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), flipY P, flipY Q,
      flipY Y] := by
    have := le_min_comp (by norm_num) ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]
      (f := ![(1 : Fin 8), 0, 3, 2, 4, 5, 7]) (by decide)
    refine hmin.trans (this.trans (le_of_eq ?_))
    have e : ![(0, 0), (0, 1), (1, 1), (1, 0), flipY P, flipY Q, flipY Y] =
        flipY ∘ (![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y] ∘
          ![(1 : Fin 8), 0, 3, 2, 4, 5, 7]) := by
      funext i; fin_cases i <;> simp [flipY]
    rw [e, minTriangleArea_comp_of_area _ flipY fun a b c => by
      rw [triangleArea_eq, triangleArea_eq, sarea_flipY, abs_neg]]
  obtain ⟨p1, p2, p3⟩ := hP
  obtain ⟨q1, q2, q3⟩ := hQ
  have hPf : flipY P ∈ leftRegion (2 / 19) := by
    simp only [flipY, leftRegion, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_⟩ <;> linarith
  have hQf : flipY Q ∈ leftRegion (2 / 19) := by
    simp only [flipY, leftRegion, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_⟩ <;> linarith
  obtain ⟨y1, y2, y3⟩ := hY
  have hYf : flipY Y ∈ topRegion (2 / 19) := by
    simp only [flipY, topRegion, Set.mem_ofPred_eq]; refine ⟨?_, ?_, ?_⟩ <;> linarith
  obtain ⟨tX1, tX2, tXA, tXB, tXC⟩ :=
    top_signs P Q X ⟨p1, p2, p3⟩ ⟨q1, q2, q3⟩ hpq hX h7X
  obtain ⟨tY1, tY2, tYA, tYB, tYC⟩ := top_signs _ _ _ hPf hQf hpq hYf h7Y
  have fA : sarea (0, 0) (flipY Q) (flipY Y) = -sarea (0, 1) Q Y := by
    rw [show ((0 : ℝ), (0 : ℝ)) = flipY (0, 1) by simp [flipY], sarea_flipY]
  have fB : sarea (0, 1) (flipY Q) (flipY Y) = -sarea (0, 0) Q Y := by
    rw [show ((0 : ℝ), (1 : ℝ)) = flipY (0, 0) by simp [flipY], sarea_flipY]
  have fC : sarea (1, 1) (flipY Q) (flipY Y) = -sarea (1, 0) Q Y := by
    rw [show ((1 : ℝ), (1 : ℝ)) = flipY (1, 0) by simp [flipY], sarea_flipY]
  rw [fA] at tYA
  rw [fB] at tYB
  rw [fC] at tYC
  simp only [flipY] at tY1 tY2
  obtain ⟨x1, x2, x3⟩ := hX
  have q4 : 4 * (2 / 19) ≤ Q.2 ∧ Q.2 ≤ 1 - 4 * (2 / 19) := by
    have h4 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q] :=
      h7X.trans (min_sub4 _ 0 1 4 5 (by decide))
    obtain ⟨-, -, -, -, -, -, -, a, b⟩ := leftRegion_pair_bounds P Q ⟨p1, p2, p3⟩ ⟨q1, q2, q3⟩ hpq h4
    exact ⟨a, b⟩
  have eAX : sarea (0, 0) Q X = Q.1 * (X.2 - Q.2) - Q.2 * (X.1 - Q.1) := by
    simp only [sarea]; ring
  have eBX : sarea (0, 1) Q X = (1 - Q.2) * (X.1 - Q.1) + Q.1 * (X.2 - Q.2) := by
    simp only [sarea]; ring
  have eAY : sarea (0, 0) Q Y = -(Q.1 * (Q.2 - Y.2)) - Q.2 * (Y.1 - Q.1) := by
    simp only [sarea]; ring
  have eBY : sarea (0, 1) Q Y = (1 - Q.2) * (Y.1 - Q.1) - Q.1 * (Q.2 - Y.2) := by
    simp only [sarea]; ring
  have hv0 : 0 < Q.2 := by linarith
  have hv1 : 0 < 1 - Q.2 := by linarith
  refine ⟨tX1, tX2, by linarith, by linarith, tXA, tXB, tXC, by linarith, by linarith, by linarith,
    ?_, ?_, ?_, ?_, by linarith, by linarith⟩
  · rw [div_le_iff₀ hv1]; linarith
  · rw [le_div_iff₀ hv0]; linarith
  · rw [div_le_iff₀ hv0]; linarith
  · rw [le_div_iff₀ hv1]; linarith

/-! ### The final triangle -/

/-- The polynomial core of `abs_sarea_inner_top_bottom_le`: from the four corner signs, the height bounds
and the ranges of `q, v`, `|ξk + ηh| ≤ 1095/13718`. -/
theorem final_poly {q v ξ η h k : ℝ} (hq3 : 3 * (2 / 19) ≤ q) (hq : q ≤ 1 / 2 - 2 / 19)
    (hh : 0 < h) (hk : 0 < k)
    (hh0 : h ≤ 1 - 2 / 19 - v) (hk0 : k ≤ v - 2 / 19)
    (i1 : 2 / 19 ≤ q * h - v * ξ) (i2 : 2 / 19 ≤ (1 - v) * ξ + q * h)
    (i3 : -(q * k) - v * η ≤ -(2 / 19)) (i4 : (1 - v) * η - q * k ≤ -(2 / 19)) :
    |ξ * k + η * h| ≤ 1095 / 13718 := by
  have hv0 : 0 < v := by linarith
  have hv1 : 0 < 1 - v := by linarith
  have hD : 0 < v * (1 - v) := mul_pos hv0 hv1
  -- `qh ≥ s` and `qk ≥ s`
  have qh : 2 / 19 ≤ q * h := by
    have k1 := mul_le_mul_of_nonneg_left i1 hv1.le
    have k2 := mul_le_mul_of_nonneg_left i2 hv0.le
    nlinarith
  have qk : 2 / 19 ≤ q * k := by
    have k1 := mul_le_mul_of_nonneg_left i3 hv1.le
    have k2 := mul_le_mul_of_nonneg_left i4 hv0.le
    nlinarith
  -- the bound at the extreme heights `h₀ = 1 - s - v`, `k₀ = v - s`
  have G0 : q * (1 - 2 / 19 - v) * (v - 2 / 19) - 2 / 19 * (1 - v) * (v - 2 / 19) -
      2 / 19 * v * (1 - 2 / 19 - v) ≤ 1095 / 13718 * (v * (1 - v)) := by
    have e : q * (1 - 2 / 19 - v) * (v - 2 / 19) - 2 / 19 * (1 - v) * (v - 2 / 19) -
        2 / 19 * v * (1 - 2 / 19 - v) =
        (q - 2 * (2 / 19)) * (v * (1 - v)) - (q * (2 / 19) * (1 - 2 / 19) - (2 / 19) ^ 2) := by
      ring
    rw [e]
    have hD4 : v * (1 - v) ≤ 1 / 4 := by nlinarith [sq_nonneg (v - 1 / 2)]
    have hN : 0 ≤ q * (2 / 19) * (1 - 2 / 19) - (2 / 19) ^ 2 := by nlinarith
    rcases le_or_gt (q - 2 * (2 / 19) - 1095 / 13718) 0 with hc | hc
    · nlinarith [mul_nonpos_iff.2 (Or.inr ⟨hc, hD.le⟩)]
    · have := mul_le_mul_of_nonneg_left hD4 hc.le
      nlinarith
  have qh0 : q * h ≤ q * (1 - 2 / 19 - v) := mul_le_mul_of_nonneg_left hh0 (by linarith)
  rw [abs_le]
  constructor
  · -- `-(ξk + ηh) ≤ M`
    have k1 := mul_le_mul_of_nonneg_left i2 (mul_nonneg hv0.le hk.le)
    have k2 := mul_le_mul_of_nonneg_left i3 (mul_nonneg hv1.le hh.le)
    have m1 := mul_le_mul_of_nonneg_left hh0
      (by linarith : (0 : ℝ) ≤ q * k - 2 / 19 * (1 - v))
    have m2 := mul_le_mul_of_nonneg_left hk0
      (by linarith : (0 : ℝ) ≤ q * (1 - 2 / 19 - v) - 2 / 19 * v)
    have sq := mul_nonneg (by norm_num : (0 : ℝ) ≤ 2 / 19) (sq_nonneg (2 * v - 1))
    have : v * (1 - v) * (-(ξ * k + η * h)) ≤ v * (1 - v) * (1095 / 13718) := by
      linarith
    linarith [le_of_mul_le_mul_left this hD]
  · -- `ξk + ηh ≤ M`
    have k1 := mul_le_mul_of_nonneg_left i1 (mul_nonneg hv1.le hk.le)
    have k2 := mul_le_mul_of_nonneg_left i4 (mul_nonneg hv0.le hh.le)
    have m1 := mul_le_mul_of_nonneg_left hh0
      (by linarith : (0 : ℝ) ≤ q * k - 2 / 19 * v)
    have m2 := mul_le_mul_of_nonneg_left hk0
      (by linarith : (0 : ℝ) ≤ q * (1 - 2 / 19 - v) - 2 / 19 * (1 - v))
    have : v * (1 - v) * (ξ * k + η * h) ≤ v * (1 - v) * (1095 / 13718) := by
      linarith
    exact le_of_mul_le_mul_left this hD

/-- In the situation of `top_bottom_corner_signs`, `|det(X - Q, Y - Q)| = |ξk + ηh| ≤ 1095/13718 < s`,
so the triangle `QXY` is too small. -/
theorem abs_sarea_inner_top_bottom_le (P Q X Y : Point) (hP : P ∈ leftRegion (2 / 19))
    (hQ : Q ∈ leftRegion (2 / 19)) (hpq : P.1 ≤ Q.1) (hX : X ∈ topRegion (2 / 19))
    (hY : Y ∈ bottomRegion (2 / 19))
    (hmin : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P, Q, X, Y]) :
    |sarea Q X Y| ≤ 1095 / 13718 ∧ (1095 / 13718 : ℝ) < 2 / 19 := by
  refine ⟨?_, by norm_num⟩
  obtain ⟨-, hvx, -, hvy, xA, xB, -, yA, yB, -, -, -, -, -, h11, k11⟩ :=
    top_bottom_corner_signs P Q X Y hP hQ hpq hX hY hmin
  have h4 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), P, Q] :=
    hmin.trans (min_sub4 _ 0 1 4 5 (by decide))
  obtain ⟨-, -, -, q3, qh, -, -, v4, v5⟩ := leftRegion_pair_bounds P Q hP hQ hpq h4
  have eAX : sarea (0, 0) Q X = Q.1 * (X.2 - Q.2) - Q.2 * (X.1 - Q.1) := by
    simp only [sarea]; ring
  have eBX : sarea (0, 1) Q X = (1 - Q.2) * (X.1 - Q.1) + Q.1 * (X.2 - Q.2) := by
    simp only [sarea]; ring
  have eAY : sarea (0, 0) Q Y = -(Q.1 * (Q.2 - Y.2)) - Q.2 * (Y.1 - Q.1) := by
    simp only [sarea]; ring
  have eBY : sarea (0, 1) Q Y = (1 - Q.2) * (Y.1 - Q.1) - Q.1 * (Q.2 - Y.2) := by
    simp only [sarea]; ring
  have eQXY : sarea Q X Y = -((X.1 - Q.1) * (Q.2 - Y.2) + (Y.1 - Q.1) * (X.2 - Q.2)) := by
    simp only [sarea]; ring
  rw [eAX] at xA
  rw [eBX] at xB
  rw [eAY] at yA
  rw [eBY] at yB
  rw [eQXY, abs_neg]
  exact final_poly q3 qh (by linarith) (by linarith) (by linarith) (by linarith) xA xB yA yB

/-! ### Assembly: the nine-point configuration -/

theorem sub_vec {m : ℕ} (hm : 3 ≤ m) (P : Fin 9 → Point) (f : Fin m → Fin 9)
    (hf : Function.Injective f) (V : Fin m → Point) (hV : ∀ x, V x = P (f x)) :
    minTriangleArea P ≤ minTriangleArea V := by
  have := le_min_comp hm P hf
  convert this using 2
  funext x; exact hV x

/-- The corners are not in the left region. -/
theorem corner_not_left {X : Point} (hX : X ∈ leftRegion (2 / 19)) :
    X ≠ (0, 0) ∧ X ≠ (0, 1) ∧ X ≠ (1, 1) ∧ X ≠ (1, 0) := by
  obtain ⟨a, b, c⟩ := hX
  refine ⟨?_, ?_, ?_, ?_⟩ <;> rintro rfl <;> norm_num at *

/-- The theorem once a pair lies in the left region: the other three noncorner points are one in
each of the other regions (`not_three_mem_fcRegion`, `no_pair_in_other_fcRegion`), and the top and
bottom ones form a small triangle with the pair (`abs_sarea_inner_top_bottom_le`). -/
theorem four_left (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) (iA iB iC iD : Fin 9)
    (hA : P iA = (0, 0)) (hB : P iB = (0, 1)) (hC : P iC = (1, 1)) (hD : P iD = (1, 0))
    (hmin : 1 / 19 ≤ minTriangleArea P) (j₁ j₂ : Fin 9) (hj : j₁ ≠ j₂)
    (h₁ : P j₁ ∈ leftRegion (2 / 19)) (h₂ : P j₂ ∈ leftRegion (2 / 19)) : False := by
  have dis : ∀ i j, P i ≠ P j → i ≠ j := fun i j h e => h (e ▸ rfl)
  have hAB : iA ≠ iB := dis _ _ (by rw [hA, hB]; simp)
  have hAC : iA ≠ iC := dis _ _ (by rw [hA, hC]; simp)
  have hAD : iA ≠ iD := dis _ _ (by rw [hA, hD]; simp)
  have hBC : iB ≠ iC := dis _ _ (by rw [hB, hC]; simp)
  have hBD : iB ≠ iD := dis _ _ (by rw [hB, hD]; simp)
  have hCD : iC ≠ iD := dis _ _ (by rw [hC, hD]; simp)
  have notc : ∀ j, P j ∈ leftRegion (2 / 19) → j ≠ iA ∧ j ≠ iB ∧ j ≠ iC ∧ j ≠ iD := by
    intro j hj
    obtain ⟨a, b, c, d⟩ := corner_not_left hj
    exact ⟨dis _ _ (by rw [hA]; exact a), dis _ _ (by rw [hB]; exact b),
      dis _ _ (by rw [hC]; exact c), dis _ _ (by rw [hD]; exact d)⟩
  set N : Finset (Fin 9) := ({iA, iB, iC, iD} : Finset (Fin 9))ᶜ with hN
  have memN : ∀ j, j ∈ N ↔ j ≠ iA ∧ j ≠ iB ∧ j ≠ iC ∧ j ≠ iD := by
    intro j; simp [N]
  have card4 : ({iA, iB, iC, iD} : Finset (Fin 9)).card = 4 := by
    rw [Finset.card_insert_of_notMem (by simp [hAB, hAC, hAD]),
      Finset.card_insert_of_notMem (by simp [hBC, hBD]), Finset.card_pair hCD]
  have cardN : N.card = 5 := by rw [hN, Finset.card_compl, card4]; simp
  have hreg : ∀ j ∈ N, ∃ k : Fin 4, P j ∈ fcRegion k (2 / 19) := by
    intro j hj
    obtain ⟨a, b, c, d⟩ := (memN j).1 hj
    have h5 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P j] :=
      hmin.trans (sub_vec (by norm_num) P ![iA, iB, iC, iD, j] (by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;>
          first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›) _
        (by intro x; fin_cases x <;> simp [hA, hB, hC, hD]))
    exact (exists_mem_fcRegion (P j) (hP j) h5).2.2.2.2.2.2
  choose! reg hreg using hreg
  obtain ⟨a₁, b₁, c₁, d₁⟩ := notc j₁ h₁
  obtain ⟨a₂, b₂, c₂, d₂⟩ := notc j₂ h₂
  set M : Finset (Fin 9) := N \ {j₁, j₂} with hM
  have memM : ∀ j ∈ M, (j ≠ iA ∧ j ≠ iB ∧ j ≠ iC ∧ j ≠ iD) ∧ j ≠ j₁ ∧ j ≠ j₂ := by
    intro j hj
    simp only [hM, Finset.mem_sdiff, Finset.mem_insert, Finset.mem_singleton, not_or] at hj
    exact ⟨(memN j).1 hj.1, hj.2.1, hj.2.2⟩
  have cardM : M.card = 3 := by
    rw [hM, Finset.card_sdiff_of_subset (by
      intro x hx
      simp only [Finset.mem_insert, Finset.mem_singleton] at hx
      rcases hx with rfl | rfl
      · exact (memN _).2 ⟨a₁, b₁, c₁, d₁⟩
      · exact (memN _).2 ⟨a₂, b₂, c₂, d₂⟩), cardN, Finset.card_pair hj]
  have inN : ∀ j ∈ M, j ∈ N := fun j hj => (memN j).2 (memM j hj).1
  have not0 : ∀ j ∈ M, reg j ≠ 0 := by
    intro j hj h0
    obtain ⟨⟨a, b, c, d⟩, e₁, e₂⟩ := memM j hj
    have hjl : P j ∈ fcRegion 0 (2 / 19) := by rw [← h0]; exact hreg j (inN j hj)
    have h7 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P j₁, P j₂, P j] :=
      hmin.trans (sub_vec (by norm_num) P ![iA, iB, iC, iD, j₁, j₂, j] (by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;>
          first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›) _
        (by intro x; fin_cases x <;> simp [hA, hB, hC, hD]))
    exact not_three_mem_fcRegion 0 _ _ _ h₁ h₂ hjl h7
  have notpair : ∀ j ∈ M, ∀ j' ∈ M, j ≠ j' → reg j ≠ reg j' := by
    intro j hj j' hj' hjj' heq
    obtain ⟨⟨a, b, c, d⟩, e₁, e₂⟩ := memM j hj
    obtain ⟨⟨a', b', c', d'⟩, e₁', e₂'⟩ := memM j' hj'
    have h8 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P j₁, P j₂, P j,
        P j'] :=
      hmin.trans (sub_vec (by norm_num) P ![iA, iB, iC, iD, j₁, j₂, j, j'] (by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;>
          first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›) _
        (by intro x; fin_cases x <;> simp [hA, hB, hC, hD]))
    exact no_pair_in_other_fcRegion _ _ _ _ h₁ h₂ (reg j) (not0 j hj) (hreg j (inN j hj))
      (by rw [heq]; exact hreg j' (inN j' hj')) h8
  have exists_reg : ∀ r : Fin 4, r ≠ 0 → ∃ j ∈ M, reg j = r := by
    intro r hr
    by_contra hc; push Not at hc
    obtain ⟨x, hx, y, hy, hxy, he⟩ := Finset.exists_ne_map_eq_of_card_lt_of_maps_to
      (t := (Finset.univ.filter fun r' : Fin 4 => r' ≠ 0 ∧ r' ≠ r))
      (by rw [cardM]; revert hr; fin_cases r <;> decide) (f := reg) (by
        intro j hj
        simp only [Finset.coe_filter, Finset.mem_univ, true_and, Set.mem_ofPred_eq]
        exact ⟨not0 j hj, hc j hj⟩)
    exact notpair x hx y hy hxy he
  obtain ⟨jX, hjX, rX⟩ := exists_reg 1 (by decide)
  obtain ⟨jY, hjY, rY⟩ := exists_reg 3 (by decide)
  have hXY : jX ≠ jY := by intro h; rw [h, rY] at rX; exact absurd rX (by decide)
  have hXt : P jX ∈ topRegion (2 / 19) := by
    have := hreg jX (inN jX hjX); rw [rX] at this; exact this
  have hYb : P jY ∈ bottomRegion (2 / 19) := by
    have := hreg jY (inN jY hjY); rw [rY] at this; exact this
  obtain ⟨⟨aX, bX, cX, dX⟩, eX₁, eX₂⟩ := memM jX hjX
  obtain ⟨⟨aY, bY, cY, dY⟩, eY₁, eY₂⟩ := memM jY hjY
  have fin : ∀ u w : Fin 9, u ≠ w → (u = j₁ ∧ w = j₂ ∨ u = j₂ ∧ w = j₁) →
      (P u).1 ≤ (P w).1 → False := by
    intro u w huw huv hle
    have hu : P u ∈ leftRegion (2 / 19) := by rcases huv with ⟨rfl, -⟩ | ⟨rfl, -⟩ <;> assumption
    have hw : P w ∈ leftRegion (2 / 19) := by rcases huv with ⟨-, rfl⟩ | ⟨-, rfl⟩ <;> assumption
    have hu' : u ≠ iA ∧ u ≠ iB ∧ u ≠ iC ∧ u ≠ iD ∧ u ≠ jX ∧ u ≠ jY := by
      rcases huv with ⟨rfl, -⟩ | ⟨rfl, -⟩ <;> exact ⟨by assumption, by assumption, by assumption,
        by assumption, Ne.symm (by assumption), Ne.symm (by assumption)⟩
    have hw' : w ≠ iA ∧ w ≠ iB ∧ w ≠ iC ∧ w ≠ iD ∧ w ≠ jX ∧ w ≠ jY := by
      rcases huv with ⟨-, rfl⟩ | ⟨-, rfl⟩ <;> exact ⟨by assumption, by assumption, by assumption,
        by assumption, Ne.symm (by assumption), Ne.symm (by assumption)⟩
    obtain ⟨u1, u2, u3, u4, u5, u6⟩ := hu'
    obtain ⟨w1, w2, w3, w4, w5, w6⟩ := hw'
    have h8 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P u, P w, P jX,
        P jY] :=
      hmin.trans (sub_vec (by norm_num) P ![iA, iB, iC, iD, u, w, jX, jY] (by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;>
          first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›) _
        (by intro x; fin_cases x <;> simp [hA, hB, hC, hD]))
    have b := (abs_sarea_inner_top_bottom_le _ _ _ _ hu hw hle hXt hYb h8).1
    have hm : (2 / 19 : ℝ) / 2 ≤ minTriangleArea P := by linarith
    have := OppositeCorners.abs_sarea_ge hm w jX jY w5 hXY w6
    linarith
  rcases le_total (P j₁).1 (P j₂).1 with h | h
  · exact fin j₁ j₂ hj (Or.inl ⟨rfl, rfl⟩) h
  · exact fin j₂ j₁ (Ne.symm hj) (Or.inr ⟨rfl, rfl⟩) h

/-! ### The theorem -/

/-- Nine points of the unit square that include all four corners have minimum triangle area at
most `1/19` (the proof gives a triangle of area `< 1/19`). -/
theorem fourCornersTheorem (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare)
    (hA : ∃ i, P i = (0, 0)) (hB : ∃ i, P i = (0, 1)) (hC : ∃ i, P i = (1, 1))
    (hD : ∃ i, P i = (1, 0)) :
    minTriangleArea P ≤ 1 / 19 := by
  by_contra hlt; push Not at hlt
  have hmin : 1 / 19 ≤ minTriangleArea P := hlt.le
  obtain ⟨iA, hA⟩ := hA
  obtain ⟨iB, hB⟩ := hB
  obtain ⟨iC, hC⟩ := hC
  obtain ⟨iD, hD⟩ := hD
  have dis : ∀ i j, P i ≠ P j → i ≠ j := fun i j h e => h (e ▸ rfl)
  have hAB : iA ≠ iB := dis _ _ (by rw [hA, hB]; simp)
  have hAC : iA ≠ iC := dis _ _ (by rw [hA, hC]; simp)
  have hAD : iA ≠ iD := dis _ _ (by rw [hA, hD]; simp)
  have hBC : iB ≠ iC := dis _ _ (by rw [hB, hC]; simp)
  have hBD : iB ≠ iD := dis _ _ (by rw [hB, hD]; simp)
  have hCD : iC ≠ iD := dis _ _ (by rw [hC, hD]; simp)
  set N : Finset (Fin 9) := ({iA, iB, iC, iD} : Finset (Fin 9))ᶜ with hN
  have memN : ∀ j, j ∈ N ↔ j ≠ iA ∧ j ≠ iB ∧ j ≠ iC ∧ j ≠ iD := by
    intro j; simp [N]
  have card4 : ({iA, iB, iC, iD} : Finset (Fin 9)).card = 4 := by
    rw [Finset.card_insert_of_notMem (by simp [hAB, hAC, hAD]),
      Finset.card_insert_of_notMem (by simp [hBC, hBD]), Finset.card_pair hCD]
  have cardN : N.card = 5 := by rw [hN, Finset.card_compl, card4]; simp
  have hreg : ∀ j ∈ N, ∃ k : Fin 4, P j ∈ fcRegion k (2 / 19) := by
    intro j hj
    obtain ⟨a, b, c, d⟩ := (memN j).1 hj
    have h5 : 1 / 19 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), (1, 0), P j] :=
      hmin.trans (sub_vec (by norm_num) P ![iA, iB, iC, iD, j] (by
        intro x y hxy
        fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;>
          first | exact absurd hxy ‹_› | exact absurd hxy.symm ‹_›) _
        (by intro x; fin_cases x <;> simp [hA, hB, hC, hD]))
    exact (exists_mem_fcRegion (P j) (hP j) h5).2.2.2.2.2.2
  choose! reg hreg using hreg
  obtain ⟨j₁, hj₁, j₂, hj₂, hj, hk⟩ := Finset.exists_ne_map_eq_of_card_lt_of_maps_to
    (t := (Finset.univ : Finset (Fin 4))) (by rw [cardN]; decide) (f := reg)
    (fun j _ => by simp)
  have r₁ := hreg j₁ hj₁
  have r₂ := hreg j₂ hj₂
  rw [← hk] at r₂
  generalize reg j₁ = k at r₁ r₂
  have hrot : minTriangleArea (rotK k ∘ P) = minTriangleArea P :=
    minTriangleArea_comp_of_area _ _ fun a b c => by
      rw [triangleArea_eq, triangleArea_eq, sarea_rotK]
  have hm' : 1 / 19 ≤ minTriangleArea (rotK k ∘ P) := by rw [hrot]; exact hmin
  have l₁ := rotK_region k _ r₁
  have l₂ := rotK_region k _ r₂
  have hP' : ∀ i, (rotK k ∘ P) i ∈ unitSquare := fun i => rotK_mem k (hP i)
  fin_cases k
  · exact four_left _ hP' iA iB iC iD (by simp [rotK, hA]) (by simp [rotK, hB])
      (by simp [rotK, hC]) (by simp [rotK, hD]) hm' j₁ j₂ hj l₁ l₂
  · exact four_left _ hP' iB iC iD iA (by simp [rotK, hB]) (by simp [rotK, hC])
      (by simp [rotK, hD]) (by simp [rotK, hA]) hm' j₁ j₂ hj l₁ l₂
  · exact four_left _ hP' iC iD iA iB (by simp [rotK, hC]) (by simp [rotK, hD])
      (by simp [rotK, hA]) (by simp [rotK, hB]) hm' j₁ j₂ hj l₁ l₂
  · exact four_left _ hP' iD iA iB iC (by simp [rotK, hD]) (by simp [rotK, hA])
      (by simp [rotK, hB]) (by simp [rotK, hC]) hm' j₁ j₂ hj l₁ l₂

end Heilbronn.Nine.FourCorners
