module

public import Heilbronn.Nine.TypeII.TypeII.Basic

/-! # Type II: the two-point chamber lemma and the central-pair line table
(`docs/proof/nine/TYPE_II.md`, §§6 and 12)

Two central points `P, Q` strictly inside both `DCB` and `DCE` (`TYPE_II.md` lines 406–535 and
1141–1211).

* `twoPointChamberLemma` (**Two-point chamber lemma**, §6): with `b ≤ 1/2`, the orientations
  `[BPQ] > 0`, `[EPQ] < 0` (13) force a triangle of area `< 7/128` among `D, C, B, E, P, Q`.
* `chamberG`, `claim_chamber_general`: the proof of §6 only uses `b ≤ 1/2` to show that the
  polynomial `G(b, z)` of (20) is positive at `z = 1 - λ`; the derivative bound (18)–(19) holds
  for every `b ≥ 0` (`TYPE_II.md` §9 lines 855–877 and `TYPE_II_COMPLETION.md` §8.3, lines
  890–905, use this form).
* `claim_PQ_line_table` (§12 table): when `B, E` are on the same side of `PQ`, at a general
  positive doubled threshold `s`, the three positions of `D, C` and their necessary quadratic
  inequalities `A² ≥ 4sq(1+bq)`, `A > 0`. Stated, as `TYPE_II_COMPLETION.md` §8.2 and
  `TYPE_II_BALANCED.md` §6 use it, at a general threshold, for `0 < b < 1`, with the same-side
  hypothesis on `B, E` (no `b ≤ 1/2`, no appeal to §6).
* `claim_b_le_two_sevenths` ((36)): at doubled threshold `7/64` and `b ≤ 1/2`, if `D, C` are on
  opposite sides of `PQ` then `b ≤ 2/7`.

The brackets `[BPQ]` of (13) are signed ordinary areas; only their signs are used, so they are
written `sarea`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

/-! ### Scalar and coordinate helpers -/

/-- If `k ≤ t (A - c t)` with `k, c, t > 0`, then `A > 0` and `4kc ≤ A²` (maximizing the
quadratic). -/
theorem quad_bound {k c t A : ℝ} (hk : 0 < k) (hc : 0 < c) (ht : 0 < t)
    (h : k ≤ t * (A - c * t)) : 0 < A ∧ 4 * k * c ≤ A ^ 2 := by
  constructor
  · by_contra hA
    push Not at hA
    nlinarith [mul_pos (mul_pos hc ht) ht, mul_nonpos_of_nonneg_of_nonpos ht.le hA]
  · nlinarith [sq_nonneg (A - 2 * c * t), mul_le_mul_of_nonneg_left h (by positivity : (0:ℝ) ≤ 4 * c)]

theorem sarea_PQ_D (P Q : Point) : sarea P Q ptD = Q.1 * (1 - P.2) - P.1 * (1 - Q.2) := by
  simp only [sarea, ptD]; ring

theorem sarea_PQ_C (P Q : Point) :
    sarea P Q ptC = Q.1 * (1 - P.2) - P.1 * (1 - Q.2) - ((1 - P.2) - (1 - Q.2)) := by
  simp only [sarea, ptC]; ring

/-- The weighted identity behind the row "D isolated" (`u = 1 - y`):
`u_P σ_E + (q - u_P) σ_C = [ECP] (u_Q - u_P)`. -/
theorem pq_identity_E (l : ℝ) (P Q : Point) :
    (1 - P.2) * sarea P Q (ptE l) + ((1 - l) - (1 - P.2)) * sarea P Q ptC =
      ((1 - l) - (1 - P.2) - (1 - l) * P.1) * ((1 - Q.2) - (1 - P.2)) := by
  simp only [sarea, ptE, ptC]; ring

/-- The weighted identity behind the row "C isolated":
`u_Q [QPB] + (1 - u_Q) [QPD] = [DBQ] (u_Q - u_P)`. -/
theorem pq_identity_B (b : ℝ) (P Q : Point) :
    (1 - Q.2) * sarea Q P (ptB b) + (1 - (1 - Q.2)) * sarea Q P ptD =
      (Q.1 - b * (1 - Q.2)) * ((1 - Q.2) - (1 - P.2)) := by
  simp only [sarea, ptB, ptD]; ring

/-- The facts used about a point `P = (x, 1 - u)` strictly inside `DCB` and `DCE` whose areas
with `D, C`, with `D, B` and with `E, C` are at least `s`. -/
theorem pq_point_facts {l b s : ℝ} {P : Point} (hb : 0 < b) (hs : 0 < s)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (h1 : s ≤ |sarea ptD ptC P|) (h2 : s ≤ |sarea ptD (ptB b) P|)
    (h3 : s ≤ |sarea (ptE l) ptC P|) :
    s ≤ 1 - P.2 ∧ 1 - P.2 < 1 ∧ s + b * (1 - P.2) ≤ P.1 ∧
      s ≤ (1 - l) - (1 - P.2) - (1 - l) * P.1 ∧ 0 < P.1 := by
  obtain ⟨a1, a2, a3⟩ := hPB
  obtain ⟨b1, b2, b3⟩ := hPE
  rw [abs_of_neg (by simp only [sarea, ptD, ptC] at a3 ⊢; linarith)] at h1
  rw [abs_of_pos a1] at h2
  rw [abs_of_pos b2] at h3
  simp only [sarea, ptD, ptC, ptB, ptE] at h1 h2 h3 a1 a2 a3 b1 b2 b3
  refine ⟨by linarith, by linarith, by linarith, by linarith, ?_⟩
  nlinarith

/-- Row "D, C on the same side" of the line table, in coordinates (`u = 1 - y`, `q = 1 - λ`), in
the orientation `σ_D, σ_C < 0`. -/
theorem pq_row1 {s b q : ℝ} (hs : 0 < s) (hq : 0 < q) (x₁ u₁ x₂ u₂ : ℝ) (hu₁ : s ≤ u₁)
    (hu₂ : s ≤ u₂) (hx₁ : s ≤ q - u₁ - q * x₁) (hx₂ : s + b * u₂ ≤ x₂)
    (hD : x₂ * u₁ - x₁ * u₂ ≤ -s) (hC : x₂ * u₁ - x₁ * u₂ - (u₁ - u₂) ≤ -s) (hb : 0 ≤ b) :
    0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2 := by
  have key : ∀ t, 0 < t → s * q ≤ t * ((q - s * (q + 1)) - (1 + b * q) * t) →
      0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2 := by
    intro t ht h
    have := quad_bound (mul_pos hs hq) (by positivity) ht h
    exact ⟨this.1, by linarith [this.2]⟩
  rcases le_total u₁ u₂ with h12 | h12
  · refine key u₁ (by linarith) ?_
    nlinarith [mul_le_mul_of_nonneg_left hx₂ (by nlinarith : (0:ℝ) ≤ q * u₁),
      mul_le_mul_of_nonneg_right hx₁ (by linarith : (0:ℝ) ≤ u₂),
      mul_le_mul_of_nonneg_right h12 (add_nonneg (by linarith)
        (mul_nonneg (mul_nonneg hq.le hb) (by linarith)) : (0:ℝ) ≤ u₁ + s + q * b * u₁),
      mul_le_mul_of_nonneg_left hC hq.le]
  · refine key u₂ (by linarith) ?_
    nlinarith [mul_le_mul_of_nonneg_left hx₂ (by nlinarith : (0:ℝ) ≤ q * u₁),
      mul_le_mul_of_nonneg_right hx₁ (by linarith : (0:ℝ) ≤ u₂),
      mul_le_mul_of_nonneg_right h12 (add_nonneg (by nlinarith)
        (mul_nonneg (mul_nonneg hq.le hb) (by linarith)) : (0:ℝ) ≤ u₂ + q * s + q * b * u₂),
      mul_le_mul_of_nonneg_left hD hq.le]

/-- Row "D isolated" of the line table, in coordinates, orientation `σ_C, σ_E < 0 < σ_D`, with the
weighted identity `u₁ σ_E + (q - u₁) σ_C = [ECP] (u₂ - u₁)`. -/
theorem pq_row2 {s b q : ℝ} (hs : 0 < s) (hq : 0 < q) (hb : 0 ≤ b) (x₁ u₁ u₂ σE σC : ℝ)
    (hu₂ : s ≤ u₂) (hu₁ : 0 ≤ u₁) (he : s ≤ q - u₁ - q * x₁) (hx : s + b * u₁ ≤ x₁)
    (hx0 : 0 < x₁) (hE : σE ≤ -s) (hC : σC ≤ -s)
    (hid : u₁ * σE + (q - u₁) * σC = (q - u₁ - q * x₁) * (u₂ - u₁)) :
    0 < q - s * (1 + (1 + b) * q) ∧
      4 * s * q * (1 + b * q) ≤ (q - s * (1 + (1 + b) * q)) ^ 2 := by
  have hq1 : u₁ ≤ q := by nlinarith
  have h1 : s * q ≤ (q - u₁ - q * x₁) * (u₁ - u₂) := by
    nlinarith [mul_le_mul_of_nonneg_left hE hu₁,
      mul_le_mul_of_nonneg_left hC (by linarith : (0:ℝ) ≤ q - u₁)]
  have h12 : u₂ < u₁ := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ q - u₁ - q * x₁) (sub_nonneg.2 hcon),
      mul_pos hs hq]
  have key := quad_bound (k := s * q) (c := 1 + b * q) (A := q - s * (1 + (1 + b) * q))
    (t := u₁ - s) (mul_pos hs hq) (by positivity) (by linarith) (by
      nlinarith [mul_le_mul_of_nonneg_left (by linarith : u₁ - u₂ ≤ u₁ - s)
          (by linarith : (0:ℝ) ≤ q - u₁ - q * x₁),
        mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_left hx hq.le)
          (by linarith : (0:ℝ) ≤ u₁ - s)])
  exact ⟨key.1, by linarith [key.2]⟩

/-- Row "C isolated" of the line table, in coordinates, orientation `σ_B, σ_D < 0 < σ_C`, with the
weighted identity `u₂ [QPB] + (1 - u₂) [QPD] = [DBQ] (u₂ - u₁)`. -/
theorem pq_row3 {s b q : ℝ} (hs : 0 < s) (hq : 0 < q) (hb : 0 ≤ b) (u₁ x₂ u₂ σB σD : ℝ)
    (hu₁ : s ≤ u₁) (hu₂1 : u₂ ≤ 1) (hu₂ : s ≤ u₂) (he : s ≤ q - u₂ - q * x₂)
    (hx : s + b * u₂ ≤ x₂) (hB : s ≤ σB) (hD : s ≤ σD)
    (hid : u₂ * σB + (1 - u₂) * σD = (x₂ - b * u₂) * (u₂ - u₁)) :
    0 < q - s * (2 + b * q) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (2 + b * q)) ^ 2 := by
  have h1 : s ≤ (x₂ - b * u₂) * (u₂ - u₁) := by
    nlinarith [mul_le_mul_of_nonneg_left hB (by linarith : (0:ℝ) ≤ u₂),
      mul_le_mul_of_nonneg_left hD (by linarith : (0:ℝ) ≤ 1 - u₂)]
  have h12 : u₁ < u₂ := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ x₂ - b * u₂) (sub_nonneg.2 hcon)]
  have hqx : q * (x₂ - b * u₂) ≤ q - u₂ - s - q * b * u₂ := by nlinarith
  have key := quad_bound (k := s * q) (c := 1 + b * q) (A := q - s * (2 + b * q))
    (t := u₂ - s) (mul_pos hs hq) (by positivity) (by linarith) (by
      nlinarith [mul_le_mul_of_nonneg_left (by linarith : u₂ - u₁ ≤ u₂ - s)
          (by linarith : (0:ℝ) ≤ x₂ - b * u₂),
        mul_le_mul_of_nonneg_left h1 hq.le,
        mul_le_mul_of_nonneg_right hqx (by linarith : (0:ℝ) ≤ u₂ - s)])
  exact ⟨key.1, by linarith [key.2]⟩

/-- Three nonzero signs `d, e, c` with a positive combination `w₁ d + w₂ e + w₃ c = 0`: exactly the
three "not all equal" patterns relative to `e`. -/
theorem sign_trichotomy {d c e w₁ w₂ w₃ : ℝ} (h1 : 0 < w₁) (h2 : 0 < w₂) (h3 : 0 < w₃)
    (hbary : w₁ * d + w₂ * e + w₃ * c = 0) (nd : d ≠ 0) (nc : c ≠ 0) (ne : e ≠ 0) :
    (0 < d * c ∧ d * e < 0) ∨ (d * e < 0 ∧ 0 < c * e) ∨ (c * e < 0 ∧ 0 < d * e) := by
  rcases lt_or_gt_of_ne nd with hd | hd <;> rcases lt_or_gt_of_ne nc with hc | hc <;>
    rcases lt_or_gt_of_ne ne with he | he
  · nlinarith [mul_pos h1 (neg_pos.2 hd), mul_pos h2 (neg_pos.2 he), mul_pos h3 (neg_pos.2 hc)]
  · exact Or.inl ⟨mul_pos_of_neg_of_neg hd hc, mul_neg_of_neg_of_pos hd he⟩
  · exact Or.inr (Or.inr ⟨mul_neg_of_pos_of_neg hc he, mul_pos_of_neg_of_neg hd he⟩)
  · exact Or.inr (Or.inl ⟨mul_neg_of_neg_of_pos hd he, mul_pos hc he⟩)
  · exact Or.inr (Or.inl ⟨mul_neg_of_pos_of_neg hd he, mul_pos_of_neg_of_neg hc he⟩)
  · exact Or.inr (Or.inr ⟨mul_neg_of_neg_of_pos hc he, mul_pos hd he⟩)
  · exact Or.inl ⟨mul_pos hd hc, mul_neg_of_pos_of_neg hd he⟩
  · nlinarith [mul_pos h1 hd, mul_pos h2 he, mul_pos h3 hc]

section PQTable

variable {l b s : ℝ} {P Q : Point}

theorem pq_table_row1 (hs : 0 < s) (hb : 0 < b) (hq : 0 < 1 - l)
    (pu : s ≤ 1 - P.2) (pe : s ≤ 1 - l - (1 - P.2) - (1 - l) * P.1)
    (px : s + b * (1 - P.2) ≤ P.1) (qu : s ≤ 1 - Q.2)
    (qe : s ≤ 1 - l - (1 - Q.2) - (1 - l) * Q.1) (qx : s + b * (1 - Q.2) ≤ Q.1)
    (eD : s ≤ |sarea P Q ptD|) (eC : s ≤ |sarea P Q ptC|) :
    0 < sarea P Q ptD * sarea P Q ptC ∧ sarea P Q ptD * sarea P Q (ptB b) < 0 →
      0 < (1 - l) - s * ((1 - l) + 1) ∧
        4 * s * (1 - l) * (1 + b * (1 - l)) ≤ ((1 - l) - s * ((1 - l) + 1)) ^ 2 := by
  rintro ⟨hDC, -⟩
  rw [sarea_PQ_C] at eC hDC
  rw [sarea_PQ_D] at eD hDC
  rcases pos_and_pos_or_neg_and_neg_of_mul_pos hDC with ⟨hD, hC⟩ | ⟨hD, hC⟩
  · rw [abs_of_pos hD] at eD
    rw [abs_of_pos hC] at eC
    exact pq_row1 hs hq Q.1 (1 - Q.2) P.1 (1 - P.2) qu pu qe px (by linarith) (by linarith)
      hb.le
  · rw [abs_of_neg hD] at eD
    rw [abs_of_neg hC] at eC
    exact pq_row1 hs hq P.1 (1 - P.2) Q.1 (1 - Q.2) pu qu pe qx (by linarith) (by linarith)
      hb.le

theorem pq_table_row2 (hs : 0 < s) (hb : 0 < b) (hq : 0 < 1 - l)
    (pu : s ≤ 1 - P.2) (px : s + b * (1 - P.2) ≤ P.1)
    (pe : s ≤ 1 - l - (1 - P.2) - (1 - l) * P.1) (px0 : 0 < P.1) (qu : s ≤ 1 - Q.2)
    (qx : s + b * (1 - Q.2) ≤ Q.1) (qe : s ≤ 1 - l - (1 - Q.2) - (1 - l) * Q.1) (qx0 : 0 < Q.1)
    (eE : s ≤ |sarea P Q (ptE l)|) (eC : s ≤ |sarea P Q ptC|)
    (hBE : 0 < sarea P Q (ptB b) * sarea P Q (ptE l)) :
    sarea P Q ptD * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptC * sarea P Q (ptB b) →
      0 < (1 - l) - s * (1 + (1 + b) * (1 - l)) ∧
        4 * s * (1 - l) * (1 + b * (1 - l)) ≤ ((1 - l) - s * (1 + (1 + b) * (1 - l))) ^ 2 := by
  rintro ⟨-, hCB⟩
  have swap : ∀ X, sarea Q P X = -sarea P Q X := fun X => by unfold sarea; ring
  rcases pos_and_pos_or_neg_and_neg_of_mul_pos hCB with ⟨hC, hB⟩ | ⟨hC, hB⟩
  · have hE : 0 < sarea P Q (ptE l) := pos_of_mul_pos_right hBE hB.le
    rw [abs_of_pos hE] at eE
    rw [abs_of_pos hC] at eC
    exact pq_row2 hs hq hb.le Q.1 (1 - Q.2) (1 - P.2) _ _ pu (by linarith) qe qx qx0
      (by rw [swap]; linarith) (by rw [swap]; linarith) (pq_identity_E l Q P)
  · have hE : sarea P Q (ptE l) < 0 := neg_of_mul_pos_right hBE hB.le
    rw [abs_of_neg hE] at eE
    rw [abs_of_neg hC] at eC
    exact pq_row2 hs hq hb.le P.1 (1 - P.2) (1 - Q.2) _ _ qu (by linarith) pe px px0
      (by linarith) (by linarith) (pq_identity_E l P Q)

theorem pq_table_row3 (hs : 0 < s) (hb : 0 < b) (hq : 0 < 1 - l)
    (pu : s ≤ 1 - P.2) (pu1 : 1 - P.2 < 1) (px : s + b * (1 - P.2) ≤ P.1)
    (pe : s ≤ 1 - l - (1 - P.2) - (1 - l) * P.1) (qu : s ≤ 1 - Q.2) (qu1 : 1 - Q.2 < 1)
    (qx : s + b * (1 - Q.2) ≤ Q.1) (qe : s ≤ 1 - l - (1 - Q.2) - (1 - l) * Q.1)
    (eD : s ≤ |sarea P Q ptD|) (eB : s ≤ |sarea P Q (ptB b)|) :
    sarea P Q ptC * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptD * sarea P Q (ptB b) →
      0 < (1 - l) - s * (2 + b * (1 - l)) ∧
        4 * s * (1 - l) * (1 + b * (1 - l)) ≤ ((1 - l) - s * (2 + b * (1 - l))) ^ 2 := by
  rintro ⟨-, hDB⟩
  have swap : ∀ X, sarea Q P X = -sarea P Q X := fun X => by unfold sarea; ring
  rcases pos_and_pos_or_neg_and_neg_of_mul_pos hDB with ⟨hD, hB⟩ | ⟨hD, hB⟩
  · rw [abs_of_pos hB] at eB
    rw [abs_of_pos hD] at eD
    exact pq_row3 hs hq hb.le (1 - Q.2) P.1 (1 - P.2) _ _ qu pu1.le pu pe px
      (by linarith) (by linarith) (pq_identity_B b Q P)
  · rw [abs_of_neg hB] at eB
    rw [abs_of_neg hD] at eD
    exact pq_row3 hs hq hb.le (1 - P.2) Q.1 (1 - Q.2) _ _ pu qu1.le qu qe qx
      (by rw [swap]; linarith) (by rw [swap]; linarith) (pq_identity_B b P Q)

end PQTable

/-- The polynomial `G(b, z)` of `TYPE_II.md` (20), with `F(q₀) = -z G(b,z) / (4096 (1+bz)²)`. -/
def chamberG (b z : ℝ) : ℝ :=
  448 * b ^ 3 * z ^ 3 + b ^ 2 * z ^ 2 * (1890 - 3648 * z) +
    b * z * (3648 * z ^ 2 - 5293 * z + 2135) + 399 * z ^ 2 - 847 * z + 644

/-- The scalar core of §6, for `λ ∈ [0, 1/4]`: with `σ = 7/64`, `z = 1 - λ ≥ 3/4`, `G(b,z) > 0`
and `q ≥ q₀` (15), the quadratic `F(q)` of (17) is negative. Here
`(1+bz)² F(q) = -z G(b,z)/4096 + d M/64 - a d²`, `d = (1+bz)(q - q₀)`, `M = 64(1+bz)F'(q₀)` of
(18), `a = bz + λ`. -/
theorem chamber_core {b l q : ℝ} (hb : 0 ≤ b) (hz : 3 / 4 ≤ 1 - l) (hl : 0 ≤ l)
    (hG : 0 < chamberG b (1 - l))
    (hq0 : l + (2 - l) * (7 / 64) + b * (1 - l) ≤ q * (1 + b * (1 - l)))
    (hF : 0 ≤ (1 - 7 / 64 - q) * ((b * (1 - l) + l) * (q - l) - l * (7 / 64)) -
      (1 - l) * (7 / 64) * (2 * q - l)) : False := by
  set z := 1 - l with hzdef
  have hz1 : z ≤ 1 := by linarith
  have h1 : 495 / 16 ≤ z ^ 2 * (64 * z + 7) := by nlinarith
  have h2 : z * (64 * z ^ 2 - 28 * z - 21) ≤ 15 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hz1) (by positivity : (0:ℝ) ≤ 64 * z ^ 2 + 36 * z + 15)]
  have h3 : 37 / 8 ≤ 50 * z ^ 2 - 50 * z + 14 := by nlinarith
  have hM : -b ^ 2 * z ^ 2 * (64 * z + 7) + b * z * (64 * z ^ 2 - 28 * z - 21) -
      (50 * z ^ 2 - 50 * z + 14) < 0 := by
    nlinarith [mul_le_mul_of_nonneg_left h1 (sq_nonneg b), mul_le_mul_of_nonneg_left h2 hb,
      sq_nonneg (b - 8 / 33)]
  obtain ⟨d, hd⟩ : ∃ d, d = q * (1 + b * z) - (l + (2 - l) * (7 / 64) + b * z) := ⟨_, rfl⟩
  have hd0 : 0 ≤ d := by rw [hd]; linarith
  have hid : (1 + b * z) ^ 2 * ((1 - 7 / 64 - q) * ((b * z + l) * (q - l) - l * (7 / 64)) -
      z * (7 / 64) * (2 * q - l)) = -z * chamberG b z / 4096 +
      d * (-b ^ 2 * z ^ 2 * (64 * z + 7) + b * z * (64 * z ^ 2 - 28 * z - 21) -
        (50 * z ^ 2 - 50 * z + 14)) / 64 - (b * z + l) * d ^ 2 := by
    rw [hd, hzdef]; unfold chamberG; ring
  have hpos := mul_nonneg (sq_nonneg (1 + b * z)) hF
  rw [hid] at hpos
  nlinarith [mul_pos (by linarith : (0:ℝ) < z) hG, mul_nonpos_of_nonneg_of_nonpos hd0 hM.le,
    mul_nonneg (by positivity : (0:ℝ) ≤ b * z + l) (sq_nonneg d)]

/-- `G(b, z) > 0` for `0 ≤ b ≤ 1/2`, `3/4 ≤ z ≤ 1` (`TYPE_II.md` lines 509–532): `G` lies above
its chord in `b`, `G(0,z) ≥ 196` and `G(1/2,z) > 0`. -/
theorem chamberG_pos {b z : ℝ} (hb : 0 ≤ b) (hb2 : b ≤ 1 / 2) (hz : 3 / 4 ≤ z) (hz1 : z ≤ 1) :
    0 < chamberG b z := by
  have hG0 : 0 < 399 * z ^ 2 - 847 * z + 644 := by nlinarith [sq_nonneg (z - 847 / 798)]
  have hGh : 0 < 115 / 2 + 851 / 2 * (1 - z) + 1129 * (1 - z) ^ 2 - 968 * (1 - z) ^ 3 := by
    nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 hz1) (sub_nonneg.2 hz1))
      (by linarith : (0:ℝ) ≤ 1 / 4 - (1 - z))]
  have hchord : chamberG b z = (1 - 2 * b) * (399 * z ^ 2 - 847 * z + 644) +
      2 * b * (115 / 2 + 851 / 2 * (1 - z) + 1129 * (1 - z) ^ 2 - 968 * (1 - z) ^ 3) +
      b * (1 / 2 - b) * z ^ 2 * (3424 * z - 1890 - 448 * z * b) := by
    unfold chamberG; ring
  rw [hchord]
  have e1 : 0 ≤ b * (1 / 2 - b) * z ^ 2 * (3424 * z - 1890 - 448 * z * b) := by
    apply mul_nonneg (mul_nonneg (mul_nonneg hb (by linarith)) (sq_nonneg z))
    nlinarith
  rcases eq_or_lt_of_le hb with h0 | h0
  · subst h0; nlinarith
  · nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 1 - 2 * b) hG0.le, mul_pos h0 hGh]

/-- In the chamber setting with least area at least `7/128`, the two-interior-point lemma on `DCE`
gives `z = 1 - λ ≥ (4+2√3)(7/64) > 13/16` ((14)). -/
theorem chamber_z_bound {l b : ℝ} {P Q : Point}
    (hPE : InTriangle P ptD (ptE l) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q]) :
    13 / 16 ≤ 1 - l := by
  have hsub : 7 / 128 ≤ minTriangleArea ![ptD, ptE l, ptC, P, Q] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![0, 2, 1, 4, 5] (by decide)
      (by funext m; fin_cases m <;> rfl))
  have h2 := CornerFamilies.twoInteriorPointLemma ptD (ptE l) ptC P Q (Or.inl hPE) (Or.inl hQE)
    (7 / 128) (by norm_num) hsub
  have hpos : 0 < sarea ptD (ptE l) ptC := by
    have := sarea_add_sarea_add_sarea ptD (ptE l) ptC P
    obtain ⟨a1, a2, a3⟩ := hPE
    linarith
  rw [triangleArea_eq, abs_of_pos hpos] at h2
  simp only [sarea, ptD, ptE, ptC] at h2
  nlinarith [sqrt_three_gt]

/-- **Claim** (`TYPE_II:claim-chamber-general`, made up). The proof of the chamber lemma for a
general bottom parameter: for `0 < b < 1`, `0 ≤ λ < 1`, the hypotheses of the chamber lemma and
`G(b, 1-λ) > 0` already give a triangle of area less than `7/128`. The derivative bound
(18)–(19) needs no bound on `b` (completion of the square), and `z = 1` (`λ = 0`) is included.
`docs/proof/nine/TYPE_II.md`, lines 422–535, with the remarks at lines 855–857, 915–917, and
`docs/proof/nine/TYPE_II_COMPLETION.md` lines 890–905.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_chamber_general {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb1 : b < 1)
    (hl : 0 ≤ l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0)
    (hG : 0 < chamberG b (1 - l)) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hz := chamber_z_bound hPE hQE hcon
  have hmin : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by
    linarith
  have eDCP : 7 / 64 ≤ |sarea ptD ptC P| := le_abs_sarea_of_le_min hmin 0 1 4
  have eDBQ : 7 / 64 ≤ |sarea ptD (ptB b) Q| := le_abs_sarea_of_le_min hmin 0 3 5
  have eECQ : 7 / 64 ≤ |sarea (ptE l) ptC Q| := le_abs_sarea_of_le_min hmin 2 1 5
  have eBPQ : 7 / 64 ≤ |sarea (ptB b) P Q| := le_abs_sarea_of_le_min hmin 3 4 5
  have eEPQ : 7 / 64 ≤ |sarea (ptE l) P Q| := le_abs_sarea_of_le_min hmin 2 4 5
  have hid : (Q.2 - l) * sarea (ptB b) P Q + Q.2 * (-sarea (ptE l) P Q) =
      (b * (Q.2 - l) + l * Q.1) * (P.2 - Q.2) := by
    simp only [sarea, ptB, ptE]; ring
  obtain ⟨-, -, p3⟩ := hPB
  obtain ⟨q1, -, q3⟩ := hQB
  obtain ⟨-, q2, -⟩ := hQE
  rw [abs_of_neg (by simp only [sarea, ptD, ptC] at p3 ⊢; linarith)] at eDCP
  rw [abs_of_pos q1] at eDBQ
  rw [abs_of_pos q2] at eECQ
  rw [abs_of_pos hBPQ] at eBPQ
  rw [abs_of_neg hEPQ] at eEPQ
  have hG' := hG
  clear hcon hmin hPE hG
  simp only [sarea, ptD, ptC, ptB, ptE] at eDCP eDBQ eECQ p3 q3
  have hQ2 : Q.2 < 1 := by linarith
  have hQ1 : 0 < Q.1 := by nlinarith
  have hQl : 7 / 64 ≤ Q.2 - l := by nlinarith
  have hDQ : 0 < b * (Q.2 - l) + l * Q.1 := by
    nlinarith [mul_pos hb (by linarith : (0:ℝ) < Q.2 - l), mul_nonneg hl hQ1.le]
  have hzD : (1 - l) * (b * (Q.2 - l) + l * Q.1) ≤
      (b * (1 - l) + l) * (Q.2 - l) - l * (7 / 64) := by
    nlinarith [mul_le_mul_of_nonneg_left eECQ hl]
  have hpq : 7 / 64 * (2 * Q.2 - l) ≤ (b * (Q.2 - l) + l * Q.1) * (P.2 - Q.2) := by
    nlinarith [mul_le_mul_of_nonneg_left eBPQ (by linarith : (0:ℝ) ≤ Q.2 - l),
      mul_le_mul_of_nonneg_left eEPQ (by linarith : (0:ℝ) ≤ Q.2)]
  have hpq' : 0 < P.2 - Q.2 := by
    by_contra hc; push Not at hc
    nlinarith [mul_nonpos_of_nonneg_of_nonpos hDQ.le hc]
  refine chamber_core (q := Q.2) hb.le (by linarith) hl hG' ?_ ?_
  · nlinarith
  · nlinarith [mul_le_mul_of_nonneg_left hpq (by linarith : (0:ℝ) ≤ 1 - l),
      mul_le_mul_of_nonneg_right hzD (by linarith : (0:ℝ) ≤ P.2 - Q.2),
      mul_le_mul_of_nonneg_left (by linarith : P.2 - Q.2 ≤ 1 - 7 / 64 - Q.2)
        (by nlinarith : (0:ℝ) ≤ (b * (1 - l) + l) * (Q.2 - l) - l * (7 / 64))]

/-- **Two-point chamber lemma** (`TYPE_II:TwoPointChamberLemma`). In the notation (5) with
`b ≤ 1/2`, if two further points `P, Q` lie strictly inside both `DCB` and `DCE` and
`[BPQ] > 0`, `[EPQ] < 0` (13), then some triangle determined by `D, C, E, B, P, Q` has area less
than `7/128`. `docs/proof/nine/TYPE_II.md`, lines 406–535.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:claim-chamber-general. -/
theorem twoPointChamberLemma {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hBPQ : 0 < sarea (ptB b) P Q) (hEPQ : sarea (ptE l) P Q < 0) :
    minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hz := chamber_z_bound hPE hQE hcon
  exact absurd (claim_chamber_general hb (by linarith) hl.le hl1 hPB hPE hQB hQE hBPQ hEPQ
    (chamberG_pos hb.le hb2 (by linarith) (by linarith))) (not_lt.2 hcon)

/-- **Claim** (`TYPE_II:claim-PQ-line-table`). Let `P, Q` be strictly inside both `DCB` and
`DCE`, every doubled area of `D, C, E, B, P, Q` at least `s > 0`, `0 < b < 1`, `0 < λ < 1`,
`q = 1 - λ`, and let `B, E` be on the same side of the line `PQ`. Writing `σ_X = [PQX]`, exactly
one of three positions occurs:

* `D, C` on the same side (opposite to `B, E`): `A = q - s(q+1) > 0` and `A² ≥ 4sq(1+bq)`;
* `D` isolated from `B, C, E`: `A = q - s[1 + (1+b)q] > 0` and `A² ≥ 4sq(1+bq)`;
* `C` isolated from `B, D, E`: `A = q - s(2 + bq) > 0` and `A² ≥ 4sq(1+bq)`.

The calculation is the one of `OPPOSITE_CORNERS.md` (21)–(22), (24)–(25), after the map
`(x,y) ↦ (x, x + (1-b)(1-y))` (`h = (1-b)q`, `β = 1-b`, `f = b`, `σ = (1-b)s`), valid at a general
positive threshold. `docs/proof/nine/TYPE_II.md`, lines 1141–1187.

Implicit in the manuscript: in §12 the same-side position of `B, E` comes from §6 (at `7/64` and
`b ≤ 1/2`); here it is a hypothesis, as `TYPE_II_COMPLETION.md` §8.2 and `TYPE_II_BALANCED.md`
§6 use the table. -/
theorem claim_PQ_line_table {l b s : ℝ} {P Q : Point} (hs : 0 < s) (hb : 0 < b) (_hb1 : b < 1)
    (_hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q])
    (hBE : 0 < sarea P Q (ptB b) * sarea P Q (ptE l)) :
    let q := 1 - l
    let σD := sarea P Q ptD
    let σC := sarea P Q ptC
    let σB := sarea P Q (ptB b)
    ((0 < σD * σC ∧ σD * σB < 0) ∨ (σD * σB < 0 ∧ 0 < σC * σB) ∨
        (σC * σB < 0 ∧ 0 < σD * σB)) ∧
      (0 < σD * σC ∧ σD * σB < 0 →
        0 < q - s * (q + 1) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (q + 1)) ^ 2) ∧
      (σD * σB < 0 ∧ 0 < σC * σB →
        0 < q - s * (1 + (1 + b) * q) ∧
          4 * s * q * (1 + b * q) ≤ (q - s * (1 + (1 + b) * q)) ^ 2) ∧
      (σC * σB < 0 ∧ 0 < σD * σB →
        0 < q - s * (2 + b * q) ∧ 4 * s * q * (1 + b * q) ≤ (q - s * (2 + b * q)) ^ 2) := by
  dsimp only
  have hmin' : s / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := hmin
  obtain ⟨pu, pu1, px, pe, px0⟩ := pq_point_facts hb hs hPB hPE
    (le_abs_sarea_of_le_min hmin' 0 1 4) (le_abs_sarea_of_le_min hmin' 0 3 4)
    (le_abs_sarea_of_le_min hmin' 2 1 4)
  obtain ⟨qu, qu1, qx, qe, qx0⟩ := pq_point_facts hb hs hQB hQE
    (le_abs_sarea_of_le_min hmin' 0 1 5) (le_abs_sarea_of_le_min hmin' 0 3 5)
    (le_abs_sarea_of_le_min hmin' 2 1 5)
  have eD : s ≤ |sarea P Q ptD| := le_abs_sarea_of_le_min hmin' 4 5 0
  have eC : s ≤ |sarea P Q ptC| := le_abs_sarea_of_le_min hmin' 4 5 1
  have eE : s ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hmin' 4 5 2
  have eB : s ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hmin' 4 5 3
  have hq : 0 < 1 - l := by linarith
  have nD : sarea P Q ptD ≠ 0 := fun h0 => by rw [h0, abs_zero] at eD; linarith
  have nC : sarea P Q ptC ≠ 0 := fun h0 => by rw [h0, abs_zero] at eC; linarith
  have nB : sarea P Q (ptB b) ≠ 0 := fun h0 => by rw [h0, abs_zero] at eB; linarith
  have hbary : sarea (ptB b) ptC P * sarea P Q ptD + sarea ptC ptD P * sarea P Q (ptB b) +
      sarea ptD (ptB b) P * sarea P Q ptC = 0 := by
    simp only [sarea, ptB, ptC, ptD]; ring
  obtain ⟨w1, w2, w3⟩ := hPB
  exact ⟨sign_trichotomy w2 w3 w1 hbary nD nC nB,
    pq_table_row1 hs hb hq pu pe px qu qe qx eD eC,
    pq_table_row2 hs hb hq pu px pe px0 qu qx qe qx0 eE eC hBE,
    pq_table_row3 hs hb hq pu pu1 px pe qu qu1 qx qe eD eB⟩

/-- The root location of (36) in the row "C isolated": `A > 0`, `F(q) ≥ 0`, `q ≤ 1` give
`F(1) ≥ 0` (at `s = 7/64`). -/
theorem F1_of_row3 {b q : ℝ} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hq1 : q ≤ 1)
    (hA : 0 < q - 7 / 64 * (2 + b * q))
    (hFq : 4 * (7 / 64) * q * (1 + b * q) ≤ (q - 7 / 64 * (2 + b * q)) ^ 2) :
    0 ≤ (1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b) := by
  have hid : (1 - 7 / 64 * b) * (q - 7 / 64 * (2 + b * q)) *
      ((1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b)) =
      (1 - 7 / 64 * b) * (1 - 7 / 64 * b - 2 * (7 / 64)) *
        ((q - 7 / 64 * (2 + b * q)) ^ 2 - 4 * (7 / 64) * q * (1 + b * q)) +
      ((1 - 7 / 64 * b) ^ 2 - 4 * (7 / 64) * b) * (q - 7 / 64 * (2 + b * q)) *
        (1 - 7 / 64 * b - 2 * (7 / 64)) * (1 - q) +
      8 * (7 / 64) ^ 2 * (1 - q) * (b * (7 / 64) + 1) := by ring
  have hR : 0 ≤ (1 - 7 / 64 * b) * (1 - 7 / 64 * b - 2 * (7 / 64)) *
        ((q - 7 / 64 * (2 + b * q)) ^ 2 - 4 * (7 / 64) * q * (1 + b * q)) +
      ((1 - 7 / 64 * b) ^ 2 - 4 * (7 / 64) * b) * (q - 7 / 64 * (2 + b * q)) *
        (1 - 7 / 64 * b - 2 * (7 / 64)) * (1 - q) +
      8 * (7 / 64) ^ 2 * (1 - q) * (b * (7 / 64) + 1) := by
    have e1 : 0 < (1 - 7 / 64 * b) * (1 - 7 / 64 * b - 2 * (7 / 64)) := by nlinarith
    have e2 : 0 < (1 - 7 / 64 * b) ^ 2 - 4 * (7 / 64) * b := by nlinarith
    have e3 : 0 < 1 - 7 / 64 * b - 2 * (7 / 64) := by nlinarith
    have := mul_nonneg e1.le (sub_nonneg.2 hFq)
    have := mul_nonneg (mul_nonneg (mul_nonneg e2.le hA.le) e3.le) (sub_nonneg.2 hq1)
    have := mul_nonneg (sub_nonneg.2 hq1) (by positivity : (0:ℝ) ≤ b * (7 / 64) + 1)
    nlinarith
  rw [← hid] at hR
  have hmA : 0 < (1 - 7 / 64 * b) * (q - 7 / 64 * (2 + b * q)) :=
    mul_pos (by nlinarith) hA
  exact nonneg_of_mul_nonneg_right (by linarith) hmA

/-- The root location of (36) in the row "D isolated". -/
theorem F1_of_row2 {b q : ℝ} (hb : 0 < b) (hb2 : b ≤ 1 / 2) (hq1 : q ≤ 1)
    (hA : 0 < q - 7 / 64 * (1 + (1 + b) * q))
    (hFq : 4 * (7 / 64) * q * (1 + b * q) ≤ (q - 7 / 64 * (1 + (1 + b) * q)) ^ 2) :
    0 ≤ (1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b) := by
  have hid : (1 - 7 / 64 * (1 + b)) * (q - 7 / 64 * (1 + (1 + b) * q)) *
      ((1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b)) =
      (1 - 7 / 64 * (1 + b)) * (1 - 7 / 64 * (1 + b) - 7 / 64) *
        ((q - 7 / 64 * (1 + (1 + b) * q)) ^ 2 - 4 * (7 / 64) * q * (1 + b * q)) +
      ((1 - 7 / 64 * (1 + b)) ^ 2 - 4 * (7 / 64) * b) * (q - 7 / 64 * (1 + (1 + b) * q)) *
        (1 - 7 / 64 * (1 + b) - 7 / 64) * (1 - q) +
      4 * (7 / 64) ^ 2 * (1 - q) * (1 - 7 / 64) := by ring
  have hR : 0 ≤ (1 - 7 / 64 * (1 + b)) * (1 - 7 / 64 * (1 + b) - 7 / 64) *
        ((q - 7 / 64 * (1 + (1 + b) * q)) ^ 2 - 4 * (7 / 64) * q * (1 + b * q)) +
      ((1 - 7 / 64 * (1 + b)) ^ 2 - 4 * (7 / 64) * b) * (q - 7 / 64 * (1 + (1 + b) * q)) *
        (1 - 7 / 64 * (1 + b) - 7 / 64) * (1 - q) +
      4 * (7 / 64) ^ 2 * (1 - q) * (1 - 7 / 64) := by
    have e1 : 0 < (1 - 7 / 64 * (1 + b)) * (1 - 7 / 64 * (1 + b) - 7 / 64) := by nlinarith
    have e2 : 0 < (1 - 7 / 64 * (1 + b)) ^ 2 - 4 * (7 / 64) * b := by nlinarith
    have e3 : 0 < 1 - 7 / 64 * (1 + b) - 7 / 64 := by nlinarith
    have := mul_nonneg e1.le (sub_nonneg.2 hFq)
    have := mul_nonneg (mul_nonneg (mul_nonneg e2.le hA.le) e3.le) (sub_nonneg.2 hq1)
    nlinarith
  rw [← hid] at hR
  have hmA : 0 < (1 - 7 / 64 * (1 + b)) * (q - 7 / 64 * (1 + (1 + b) * q)) :=
    mul_pos (by nlinarith) hA
  exact nonneg_of_mul_nonneg_right (by linarith) hmA

/-- **Equation (36)** (`TYPE_II:claim-b-le-2/7`). At doubled threshold `7/64`, with
`0 < b ≤ 1/2` and `P, Q` strictly inside both `DCB` and `DCE`: if `D, C` lie on opposite sides
of `PQ`, then `b ≤ 2/7` (`F(1) = (7b-2)(7b-354)/4096 ≥ 0`). `docs/proof/nine/TYPE_II.md`, lines 1189–1211.

Uses: TYPE_II:TwoPointChamberLemma (both orientations, so `B, E` are on the same side),
TYPE_II:claim-PQ-line-table. -/
theorem claim_b_le_two_sevenths {l b : ℝ} {P Q : Point} (hb : 0 < b) (hb2 : b ≤ 1 / 2)
    (hl : 0 < l) (hl1 : l < 1)
    (hPB : InTriangle P ptD (ptB b) ptC) (hPE : InTriangle P ptD (ptE l) ptC)
    (hQB : InTriangle Q ptD (ptB b) ptC) (hQE : InTriangle Q ptD (ptE l) ptC)
    (hmin : 7 / 128 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q])
    (hDC : sarea P Q ptD * sarea P Q ptC < 0) :
    b ≤ 2 / 7 := by
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q] := by
    linarith
  -- `B, E` on the same side of `PQ`, by the chamber lemma in both orientations
  have eB : 7 / 64 ≤ |sarea P Q (ptB b)| := le_abs_sarea_of_le_min hmin' 4 5 3
  have eE : 7 / 64 ≤ |sarea P Q (ptE l)| := le_abs_sarea_of_le_min hmin' 4 5 2
  have cB : sarea P Q (ptB b) = sarea (ptB b) P Q := by unfold sarea; ring
  have cE : sarea P Q (ptE l) = sarea (ptE l) P Q := by unfold sarea; ring
  have hBE : 0 < sarea P Q (ptB b) * sarea P Q (ptE l) := by
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
  obtain ⟨-, -, h2, h3⟩ := claim_PQ_line_table (s := 7 / 64) (by norm_num) hb (by linarith) hl
    hl1 hPB hPE hQB hQE hmin' hBE

  have hq : 0 < 1 - l := by linarith
  have hq1 : 1 - l ≤ 1 := by linarith
  -- `F(1) = (7b-2)(7b-354)/4096 ≥ 0` from `A > 0, F(q) ≥ 0, q ≤ 1`
  have hF1 : 0 ≤ (1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b) := by
    have nB : sarea P Q (ptB b) ≠ 0 := fun h0 => by rw [h0, abs_zero] at eB; linarith
    have eD : 7 / 64 ≤ |sarea P Q ptD| := le_abs_sarea_of_le_min hmin' 4 5 0
    have eC : 7 / 64 ≤ |sarea P Q ptC| := le_abs_sarea_of_le_min hmin' 4 5 1
    have nD : sarea P Q ptD ≠ 0 := fun h0 => by rw [h0, abs_zero] at eD; linarith
    have nC : sarea P Q ptC ≠ 0 := fun h0 => by rw [h0, abs_zero] at eC; linarith
    have R3 : sarea P Q ptC * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptD * sarea P Q (ptB b) →
        0 ≤ (1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b) := fun hc =>
      F1_of_row3 hb hb2 hq1 (h3 hc).1 (h3 hc).2
    have R2 : sarea P Q ptD * sarea P Q (ptB b) < 0 ∧ 0 < sarea P Q ptC * sarea P Q (ptB b) →
        0 ≤ (1 - 7 / 64 * (2 + b)) ^ 2 - 4 * (7 / 64) * (1 + b) := fun hc =>
      F1_of_row2 hb hb2 hq1 (h2 hc).1 (h2 hc).2
    rcases lt_or_gt_of_ne nD with hD | hD <;> rcases lt_or_gt_of_ne nB with hB | hB
    · have hC : 0 < sarea P Q ptC := by nlinarith
      exact R3 ⟨mul_neg_of_pos_of_neg hC hB, mul_pos_of_neg_of_neg hD hB⟩
    · have hC : 0 < sarea P Q ptC := by nlinarith
      exact R2 ⟨mul_neg_of_neg_of_pos hD hB, mul_pos hC hB⟩
    · have hC : sarea P Q ptC < 0 := by nlinarith
      exact R2 ⟨mul_neg_of_pos_of_neg hD hB, mul_pos_of_neg_of_neg hC hB⟩
    · have hC : sarea P Q ptC < 0 := by nlinarith
      exact R3 ⟨mul_neg_of_neg_of_pos hC hB, mul_pos hD hB⟩
  nlinarith

end Heilbronn.Nine.TypeII
