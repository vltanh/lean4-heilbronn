module

public import Heilbronn.TypeII.Unbalanced.RightHull

/-! # Complete exclusion of unbalanced right support cell I (`hand/UNBALANCED_CELL_I.md`)

**Role.** Primary route. `UNBALANCED_FINAL_LOWER_WEDGE:Theorem2` cites Theorem 1 for the
one-point upper cut in cell I (the two-point upper cut of cell I is
`UNBALANCED_RIGHT_HULL:Theorem2`), so cell I is excluded from the whole unbalanced row.
`claim_order` (the coordinate order of a quadrilateral right hull) and `lemma2`/`eq10` (the
two-interior-point rigidity inequality) are reused by `UNBALANCED_CELL_III`,
`UNBALANCED_ONE_UPPER_RADIAL` and `UNBALANCED_UPPER_CELL_II`.

**Setting** (lines 5-22): `Row123 l b P Q R S T` (anchors `D, C, E, B`, `0 < b ≤ 1/2`), every
actual doubled area at least `s = 7/64` (`7/128 ≤ minTriangleArea (typeIIConfig …)`), the right
hull is the quadrilateral `B, R, S, C` with `T` inside (`QuadHull`), in support cell I
(`T ∈ int BRS ∩ int BCR`). Write `R = (r, u)`, `S = (k, t)`, `q = 1 - λ`, `w = 1 - b`,
`U = [BRS]`, `V = [CRS]`, `g = [BRC]`, `δ = [EBR]`, `J = [ERS]`, `α = [ERC]`.

**Results.**
* `claim_order`: `r > u`, `b < r < k ≤ 1`, `0 ≤ u < t < 1` for every quadrilateral right hull.
* `claim_b_range` (2)-(3): `13/100 < b < 3/16`, `w ≥ Ks > 13/16`.
* `claim_empty_EBR` (4)-(5): `δ < 3s`, so `EBR` contains no further actual point.
* `claim_ERS_cap` (6): `J < Ks` for every right quadrilateral, so `ERS` has capacity one.
* `claim_J` (7): `J < 39/64` in cell I.
* `claim_containments` (8): a central point `Q` below `CE` lies in `ECR ∩ ECS`, and
  `T ∈ ECR ∩ BRS ∩ ERS`.
* `claim_alpha` (9): `r < 1 - 2s` and `α < 335/384 < 8s`.
* `eq10` and `lemma2`: the rigidity inequality for two interior points of a triangle whose line
  isolates a vertex.
* `claim_RCT` (13), `claim_ERT` (14)-(15): `[RCT], [ERT] < 2s`.
* `theorem1`: no central point lies below `CE` in cell I.

Implicit in the manuscript: Theorem 1 concerns either central point; by the symmetric roles of
`P` and `Q` in the setting it is stated for `Q`. `lemma2` is stated for a counterclockwise
triangle `VAB` (relabel `A, B` otherwise).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.UnbalancedCellI

open UnbalancedRightHull

/-! ### Helpers -/

section Helpers

open TypeII

/-- A point inside a triangle on whose vertices the affine function `sarea U V ·` is nonnegative,
and somewhere positive, has a positive value. -/
theorem bary_pos {A B C X U V : Point} (hX : InTriangle X A B C) (hA : 0 ≤ sarea U V A)
    (hB : 0 ≤ sarea U V B) (hC : 0 ≤ sarea U V C)
    (h : 0 < sarea U V A + sarea U V B + sarea U V C) : 0 < sarea U V X := by
  have hid := sarea_bary A B C X U V
  have hsum := sarea_add_sarea_add_sarea A B C X
  obtain ⟨x1, x2, x3⟩ := hX
  have hABC : 0 < sarea A B C := by linarith
  have m1 := mul_nonneg x2.le hA
  have m2 := mul_nonneg x3.le hB
  have m3 := mul_nonneg x1.le hC
  have key : 0 < sarea B C X * sarea U V A + sarea C A X * sarea U V B +
      sarea A B X * sarea U V C := by
    rcases lt_or_eq_of_le hA with hA' | hA'
    · nlinarith [mul_pos x2 hA']
    rcases lt_or_eq_of_le hB with hB' | hB'
    · nlinarith [mul_pos x3 hB']
    have hC' : 0 < sarea U V C := by linarith
    nlinarith [mul_pos x1 hC']
  by_contra hcon
  push Not at hcon
  nlinarith [mul_nonpos_of_nonneg_of_nonpos hABC.le hcon]

/-- The scalar core of (5): if `c - 2d - 2√(cd)` has `c ≤ C₀`, `d ≥ d₀ > 0`, `d ≤ c`, `d₀ ≤ C₀`,
then it is below `C₀ - 2d₀ - 2√(C₀d₀)` (monotone in both arguments), strictly if `d > d₀`. -/
theorem ear_mono {c d C₀ d₀ : ℝ} (hd₀ : 0 < d₀) (hdd : d₀ < d) (hdc : d ≤ c) (hc : c ≤ C₀) :
    c - 2 * d - 2 * Real.sqrt (c * d) < C₀ - 2 * d₀ - 2 * Real.sqrt (C₀ * d₀) := by
  have hd0 : 0 ≤ d := by linarith
  have hc0 : 0 ≤ c := by linarith
  have hC0 : 0 ≤ C₀ := by linarith
  rw [Real.sqrt_mul hc0, Real.sqrt_mul hC0]
  have sc := Real.sq_sqrt hc0
  have sd := Real.sq_sqrt hd0
  have sC := Real.sq_sqrt hC0
  have sd₀ := Real.sq_sqrt hd₀.le
  have h1 : Real.sqrt c ≤ Real.sqrt C₀ := Real.sqrt_le_sqrt hc
  have h2 : Real.sqrt d₀ < Real.sqrt d := Real.sqrt_lt_sqrt hd₀.le hdd
  have h3 : Real.sqrt d ≤ Real.sqrt c := Real.sqrt_le_sqrt hdc
  have g0 := Real.sqrt_nonneg d₀
  -- `c - 2√c√d ≤ C₀ - 2√C₀√d`: `(√C₀ - √c)(√C₀ + √c - 2√d) ≥ 0`
  have k1 : c - 2 * (Real.sqrt c * Real.sqrt d) ≤ C₀ - 2 * (Real.sqrt C₀ * Real.sqrt d) := by
    nlinarith [mul_nonneg (sub_nonneg.2 h1) (by linarith : (0:ℝ) ≤ Real.sqrt C₀ + Real.sqrt c -
      2 * Real.sqrt d)]
  have k2 : Real.sqrt C₀ * Real.sqrt d₀ ≤ Real.sqrt C₀ * Real.sqrt d :=
    mul_le_mul_of_nonneg_left h2.le (Real.sqrt_nonneg _)
  linarith

/-- `1/z + z/b ≥ 2/√b`. -/
theorem amgm_inv {z b : ℝ} (hz : 0 < z) (hb : 0 < b) :
    2 / Real.sqrt b ≤ 1 / z + z / b := by
  have hsb := Real.sqrt_pos.2 hb
  have sq := Real.sq_sqrt hb.le
  rw [div_add_div _ _ hz.ne' hb.ne', div_le_div_iff₀ hsb (by positivity)]
  nlinarith [sq_nonneg (z - Real.sqrt b), mul_pos hz hsb]

/-- The scalar core of (6): `J ≤ 1 + s - s(1/z + z/b)` with `z = 1 - r`. -/
theorem ERS_alg {b l r u k t s : ℝ} (hb : 0 < b) (hl : 0 < l) (hr1 : r < 1)
    (hur : u < r) (hu : 0 ≤ u) (hk : k ≤ 1)
    (hRSC : s ≤ (k - r) * (1 - u) - (t - u) * (1 - r)) (hDEB : s ≤ b * (1 - l)) :
    r * (t - l) - (u - l) * k ≤ 1 + s - s * (1 / (1 - r) + (1 - r) / b) := by
  have hz : 0 < 1 - r := by linarith
  have hr0 : 0 < r := by linarith
  have h1 : (1 - r) * t ≤ (1 - r) - s - (1 - u) * (1 - k) := by linarith
  have p1 := mul_le_mul_of_nonneg_left h1 (mul_nonneg hb.le hr0.le)
  have p2 : 0 ≤ b * ((1 - k) * (r - u + (1 - r) * l)) :=
    mul_nonneg hb.le (mul_nonneg (by linarith) (by nlinarith))
  have p3 : 0 ≤ b * (u * (1 - r)) := mul_nonneg hb.le (mul_nonneg hu hz.le)
  have p4 := mul_le_mul_of_nonneg_left hDEB (sq_nonneg (1 - r))
  have key : b * (1 - r) * (r * (t - l) - (u - l) * k) ≤
      b * (1 - r) * (1 + s) - b * s - s * (1 - r) ^ 2 := by linarith
  have e : 1 + s - s * (1 / (1 - r) + (1 - r) / b) =
      (b * (1 - r) * (1 + s) - b * s - s * (1 - r) ^ 2) / (b * (1 - r)) := by
    field_simp; ring
  rw [e, le_div_iff₀ (mul_pos hb hz)]
  linarith



/-- The scalar core of (11)-(13) in the support frame of cell I (`UNBALANCED_CELL_I.md` §6.1):
`x₁ = [EFX], x₂ = [FHX], x₃ = [HEX]` are the subareas of `X` in `E, F, H`, all at least `σ ≥ 1/8`,
`hf ≥ σ`, and `g = [FAX]` satisfies `(1-h)(1-f) g = (1-f)x₂ - fhx₁`. Then `g < 1/4`. -/
theorem rct_alg {h f σ g x1 x2 x3 : ℝ} (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 1 / 8 ≤ σ) (h1 : σ ≤ x1) (h2 : σ ≤ x2) (h3 : σ ≤ x3)
    (hsum : x1 + x2 + x3 = (1 - h) * (1 - f)) (hhf : σ ≤ h * f)
    (hg : (1 - h) * (1 - f) * g = (1 - f) * x2 - f * h * x1) : g < 1 / 4 := by
  set α := 1 - h with hα
  set β := 1 - f with hβ
  have hα0 : 0 < α := by linarith
  have hβ0 : 0 < β := by linarith
  have hαβ : 3 / 8 ≤ α * β := by linarith
  have hab : 1 / 8 ≤ (1 - α) * (1 - β) := by rw [hα, hβ]; nlinarith
  -- `αβ g ≤ αβ² - (2β + fh)/8`
  have hgb : α * β * g ≤ α * β ^ 2 - (2 * β + (1 - α) * (1 - β)) / 8 := by
    have e1 : (1 - f) * x2 - f * h * x1 = β * (α * β - x3 - x1) - (1 - α) * (1 - β) * x1 := by
      rw [hα, hβ]; nlinarith
    have m1 := mul_le_mul_of_nonneg_left (hσ.trans h3) hβ0.le
    have m2 := mul_le_mul_of_nonneg_left (hσ.trans h1)
      (add_nonneg hβ0.le (by nlinarith : (0:ℝ) ≤ (1 - α) * (1 - β)))
    nlinarith
  -- `β ∈ [1/2, 3/4]`
  have hb1 : (β - 1 / 2) * (β - 3 / 4) ≤ 0 := by
    have k1 := mul_le_mul_of_nonneg_left hab hβ0.le
    have k2 := mul_le_mul_of_nonneg_left hαβ (by linarith : (0:ℝ) ≤ 1 - β)
    nlinarith
  have hβlo : 1 / 2 ≤ β := by nlinarith
  have hβhi : β ≤ 3 / 4 := by nlinarith
  have hcub : 0 < 64 * β ^ 3 - 88 * β ^ 2 + 29 * β + 1 := by
    rcases le_total β (5 / 8) with hb5 | hb5
    · have h0 : 0 ≤ β - 1 / 2 := by linarith
      have h1 : 0 ≤ 5 / 8 - β := by linarith
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3),
        mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1),
        mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
    · have h0 : 0 ≤ β - 5 / 8 := by linarith
      have h1 : 0 ≤ 3 / 4 - β := by linarith
      nlinarith [mul_nonneg (pow_nonneg h0 0) (pow_nonneg h1 3),
        mul_nonneg (pow_nonneg h0 1) (pow_nonneg h1 2), mul_nonneg (pow_nonneg h0 2) (pow_nonneg h1 1),
        mul_nonneg (pow_nonneg h0 3) (pow_nonneg h1 0)]
  have hP : 0 < α * β / 4 - α * β ^ 2 + (2 * β + (1 - α) * (1 - β)) / 8 := by
    have key : (1 - β) * (α * β / 4 - α * β ^ 2 + (2 * β + (1 - α) * (1 - β)) / 8) =
        (64 * β ^ 3 - 88 * β ^ 2 + 29 * β + 1) / 64 +
          ((1 - α) * (1 - β) - 1 / 8) * (β ^ 2 - 3 * β / 8 + 1 / 8) := by ring
    have hq : 0 ≤ ((1 - α) * (1 - β) - 1 / 8) * (β ^ 2 - 3 * β / 8 + 1 / 8) :=
      mul_nonneg (by linarith) (by nlinarith [sq_nonneg (β - 3 / 16)])
    have hpos : 0 < (1 - β) * (α * β / 4 - α * β ^ 2 + (2 * β + (1 - α) * (1 - β)) / 8) := by
      rw [key]; positivity
    exact (pos_iff_pos_of_mul_pos hpos).1 (by linarith)
  by_contra hcon
  push Not at hcon
  have := mul_le_mul_of_nonneg_left hcon (mul_pos hα0 hβ0).le
  linarith

/-- Three nonzero values of an affine function at the vertices of a triangle containing a zero
of it are not all of one sign: the zero line isolates exactly one vertex. -/
theorem isolates_trichotomy {X Y A B C : Point} (hX : InTriangle X A B C)
    (hA : sarea X Y A ≠ 0) (hB : sarea X Y B ≠ 0) (hC : sarea X Y C ≠ 0) :
    LineIsolates X Y A B C ∨ LineIsolates X Y B C A ∨ LineIsolates X Y C A B := by
  have hid := sarea_bary A B C X X Y
  have h0 : sarea X Y X = 0 := by unfold sarea; ring
  rw [h0, mul_zero] at hid
  obtain ⟨x1, x2, x3⟩ := hX
  rcases lt_or_gt_of_ne hA with a | a <;> rcases lt_or_gt_of_ne hB with b | b <;>
    rcases lt_or_gt_of_ne hC with c | c
  · exfalso; nlinarith [mul_pos x2 (neg_pos.2 a), mul_pos x3 (neg_pos.2 b), mul_pos x1 (neg_pos.2 c)]
  · exact Or.inr (Or.inr (Or.inl ⟨c, a, b⟩))
  · exact Or.inr (Or.inl (Or.inl ⟨b, c, a⟩))
  · exact Or.inl (Or.inr ⟨a, b, c⟩)
  · exact Or.inl (Or.inl ⟨a, b, c⟩)
  · exact Or.inr (Or.inl (Or.inr ⟨b, c, a⟩))
  · exact Or.inr (Or.inr (Or.inr ⟨c, a, b⟩))
  · exfalso; nlinarith [mul_pos x2 a, mul_pos x3 b, mul_pos x1 c]

/-- Equation (10) in the orientation `[XYV] > 0 > [XYA], [XYB]`. -/
theorem eq10_oriented {s : ℝ} {V A B X Y : Point} (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y]) (hA : sarea X Y A < 0) (hB : sarea X Y B < 0) :
    sarea X Y V * sarea V A B = (sarea X Y V - sarea X Y A) * (sarea X Y V - sarea X Y B) +
        (sarea X Y V - sarea X Y B) * sarea V A X + (sarea X Y V - sarea X Y A) * sarea B V Y ∧
      s ≤ -sarea X Y A ∧ s ≤ -sarea X Y B ∧ s ≤ sarea V A X ∧ s ≤ sarea B V Y ∧
      sarea A B X * sarea X Y V = sarea B V X * (-sarea X Y A) + sarea V A X * (-sarea X Y B) ∧
      sarea A B Y * sarea X Y V = sarea B V Y * (-sarea X Y A) + sarea V A Y * (-sarea X Y B) ∧
      s ≤ sarea B V X ∧ s ≤ sarea V A Y := by
  have e1 : s ≤ |sarea X Y A| := le_abs_sarea_of_le_min hmin 3 4 1
  have e2 : s ≤ |sarea X Y B| := le_abs_sarea_of_le_min hmin 3 4 2
  have e3 : s ≤ |sarea V A X| := le_abs_sarea_of_le_min hmin 0 1 3
  have e4 : s ≤ |sarea B V Y| := le_abs_sarea_of_le_min hmin 2 0 4
  have e5 : s ≤ |sarea B V X| := le_abs_sarea_of_le_min hmin 2 0 3
  have e6 : s ≤ |sarea V A Y| := le_abs_sarea_of_le_min hmin 0 1 4
  obtain ⟨x1, x2, x3⟩ := hX
  obtain ⟨y1, y2, y3⟩ := hY
  rw [abs_of_neg hA] at e1; rw [abs_of_neg hB] at e2; rw [abs_of_pos x1] at e3
  rw [abs_of_pos y3] at e4; rw [abs_of_pos x3] at e5; rw [abs_of_pos y1] at e6
  have i1 := sarea_bary V A B X X Y
  have i2 := sarea_bary V A B Y X Y
  have z1 : sarea X Y X = 0 := by unfold sarea; ring
  have z2 : sarea X Y Y = 0 := by unfold sarea; ring
  rw [z1, mul_zero] at i1
  rw [z2, mul_zero] at i2
  refine ⟨by unfold sarea; ring, e1, e2, e3, e4, by linarith, by linarith, e5, e6⟩

/-- `H ≥ (a+c)(a+d)/a + s((a+c)/a + (a+d)/a) ≥ a + 4s + 3s²/a` and `[ABX], [ABY] ≥ Hs/(a+s)`,
from the oriented data. -/
theorem eq10_alg {s a c d H X1 X2 Y1 Y2 W1 W2 : ℝ} (hs : 0 < s) (ha : 0 < a)
    (hid : a * H = (a + c) * (a + d) + (a + d) * X1 + (a + c) * Y1)
    (hc : s ≤ c) (hd : s ≤ d) (hX1 : s ≤ X1) (hY1 : s ≤ Y1)
    (hW1 : W1 * a = X2 * c + X1 * d) (hW2 : W2 * a = Y1 * c + Y2 * d)
    (hX2 : s ≤ X2) (hY2 : s ≤ Y2) (hsumX : W1 + X2 + X1 = H) (hsumY : W2 + Y1 + Y2 = H) :
    (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ≤ H ∧
      a + 4 * s + 3 * s ^ 2 / a ≤ (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ∧
      H * s / (a + s) ≤ W1 ∧ H * s / (a + s) ≤ W2 := by
  refine ⟨?_, ?_, ?_, ?_⟩
  · have : (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) =
        ((a + c) * (a + d) + s * (a + c) + s * (a + d)) / a := by field_simp; ring
    rw [this, div_le_iff₀ ha]
    nlinarith [mul_le_mul_of_nonneg_left hX1 (by linarith : (0:ℝ) ≤ a + d),
      mul_le_mul_of_nonneg_left hY1 (by linarith : (0:ℝ) ≤ a + c)]
  · have e : a + 4 * s + 3 * s ^ 2 / a = (a ^ 2 + 4 * s * a + 3 * s ^ 2) / a := by field_simp
    have e2 : (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) =
        ((a + c) * (a + d) + s * (a + c) + s * (a + d)) / a := by field_simp; ring
    rw [e, e2, div_le_div_iff_of_pos_right ha]
    nlinarith [mul_le_mul (by linarith : a + s ≤ a + c) (by linarith : a + s ≤ a + d)
      (by linarith) (by linarith)]
  · rw [div_le_iff₀ (by linarith)]
    nlinarith [mul_le_mul_of_nonneg_left hc (by linarith : (0:ℝ) ≤ X2),
      mul_le_mul_of_nonneg_left hd (by linarith : (0:ℝ) ≤ X1)]
  · rw [div_le_iff₀ (by linarith)]
    nlinarith [mul_le_mul_of_nonneg_left hc (by linarith : (0:ℝ) ≤ Y1),
      mul_le_mul_of_nonneg_left hd (by linarith : (0:ℝ) ≤ Y2)]

end Helpers

open TypeII

variable {l b : ℝ} {P Q R S T : Point}

/-- **Claim** (`UNBALANCED_CELL_I:claim-order`). For every quadrilateral right hull `B, R, S, C`
with `R = (r, u)`, `S = (k, t)` in the right container: `r > u`, `b < r < k ≤ 1` and
`0 ≤ u < t < 1` (from the identity `V/w = ((x-y)(z-x) - (1-x)U/w)/x`).
`hand/UNBALANCED_CELL_I.md`, lines 40-49. -/
theorem claim_order (h : Row123 l b P Q R S T) (hq : QuadHull (ptB b) R S ptC T) :
    R.2 < R.1 ∧ b < R.1 ∧ R.1 < S.1 ∧ S.1 ≤ 1 ∧ 0 ≤ R.2 ∧ R.2 < S.2 ∧ S.2 < 1 := by
  exact quad_order h.b_pos (by linarith [h.b_le]) h.R_mem h.S_mem hq.1

/-- `bq ≥ s` (the actual triangle `DEB`), in every cut. -/
theorem DEB_ge (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T)) :
    7 / 64 ≤ b * (1 - l) := by
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hDEB : 7 / 64 ≤ |sarea ptD (ptE l) (ptB b)| := le_abs_sarea_of_le_min hm 0 2 3
  have e : sarea ptD (ptE l) (ptB b) = b * (1 - l) := by simp only [sarea, ptD, ptE, ptB]; ring
  have := h.b_pos
  have := h.l_lt
  rw [e, abs_of_pos (by nlinarith)] at hDEB
  exact hDEB

/-- `UNBALANCED_RIGHT_HULL.md` §4.2 (cut-independent): in cells I and III, `b > 13/100`. -/
theorem b_gt_13_100 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T)
    (hc : CellI (ptB b) R S ptC T ∨ CellIII (ptB b) R S ptC T) : 13 / 100 < b := by
  have hDEB := DEB_ge h hmin
  have hb := h.b_pos
  have hl1 := h.l_lt
  have hN := claim_Nb h hmin hq hc
  by_contra hcon
  push Not at hcon
  have hsb : 7 / 64 ≤ b := by nlinarith [mul_pos hb h.l_pos]
  have hb0 : b ≠ 0 := hb.ne'
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

/-- A right point is strictly below `CE` (`UNBALANCED_CELL_I.md` §3: the container is below `BC`,
and `CE` is above `BC` for `x < 1`). -/
theorem below_CE_of_right {l b : ℝ} {X : Point} (hb : 0 < b) (hb1 : b < 1) (hl : 0 < l)
    (hl1 : l < 1) (hX : X ∈ unitSquare) (hr : 0 < sarea (ptB b) X ptC) :
    sarea (ptE l) ptC X < 0 := by
  obtain ⟨-, x1, -, -⟩ := hX
  simp only [sarea, ptB, ptC, ptE] at hr ⊢
  nlinarith [mul_nonneg (by nlinarith : (0:ℝ) ≤ 1 - (1 - b) * (1 - l)) (sub_nonneg.2 x1)]

/-- **Claim** (`UNBALANCED_CELL_I:claim-b-range`), equations (2)-(3). In cell I:
`w ≥ Ks > 13/16`, `b < 3/16` and `b > 13/100` (`s = 7/64`).
`hand/UNBALANCED_CELL_I.md`, lines 51-69.
Uses: UNBALANCED_RIGHT_HULL:claim-outer-cell-scale, UNBALANCED_RIGHT_HULL:claim-Nb (the
cut-independent §4.2 argument of that note). -/
theorem claim_b_range (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    Kc * (7 / 64) ≤ 1 - b ∧ 13 / 16 < Kc * (7 / 64) ∧ b < 3 / 16 ∧ 13 / 100 < b := by
  obtain ⟨-, h1, h2, h3⟩ := claim_outer_cell_scale h hmin hq (Or.inl hc)
  exact ⟨h1, h2, h3, b_gt_13_100 h hmin hq (Or.inl hc)⟩

/-- **Claim** (`UNBALANCED_CELL_I:claim-empty-EBR`), equations (4)-(5). In cell I,
`δ = [EBR] < C₀ - 2d₀ - 2√(C₀d₀) < 3s` with `C₀ = 101/192`, `d₀ = 1/64` (`s = 7/64`); hence
`EBR` contains no further actual point. `hand/UNBALANCED_CELL_I.md`, lines 71-90.
Uses: UNBALANCED_RIGHT_HULL:claim-ear-root, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_empty_EBR (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptE l) (ptB b) R < 101 / 192 - 2 * (1 / 64) - 2 * Real.sqrt (101 / 192 * (1 / 64)) ∧
      101 / 192 - 2 * (1 / 64) - 2 * Real.sqrt (101 / 192 * (1 / 64)) < 3 * (7 / 64) ∧
      NoPointInside (typeIIConfig l b P Q R S T) (ptE l) (ptB b) R := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨-, -, h316, h13⟩ := claim_b_range h hmin hq hc
  have hroot := (claim_ear_root h hmin hq (Or.inl hc)).2.2.2.1
  have hDEB := DEB_ge h hmin
  -- `c ≤ 1 + s - s/b < 101/192`, `d > 1/64`, `d ≤ c`
  have hcC : b + l * (1 - b) < 101 / 192 := by
    have : 7 / 64 / b ≤ 1 - l := by rw [div_le_iff₀ hb]; linarith
    have h2 : 7 / 12 < 7 / 64 / b := by rw [lt_div_iff₀ hb]; linarith
    nlinarith
  have hd : 1 / 64 < b * (7 / 64) / (1 - b) := by rw [lt_div_iff₀ hw]; nlinarith
  have hdc : b * (7 / 64) / (1 - b) ≤ b + l * (1 - b) := by
    rw [div_le_iff₀ hw]
    nlinarith [mul_nonneg hb.le (by linarith : (0:ℝ) ≤ 1 - b - 7 / 64),
      mul_nonneg hl.le (mul_nonneg hw.le hw.le)]
  have h1 := ear_mono (c := b + l * (1 - b)) (d := b * (7 / 64) / (1 - b)) (C₀ := 101 / 192)
    (d₀ := 1 / 64) (by norm_num) hd hdc hcC.le
  have h2 : 101 / 192 - 2 * (1 / 64) - 2 * Real.sqrt (101 / 192 * (1 / 64)) < 3 * (7 / 64 : ℝ) := by
    have : (1 / 12 : ℝ) < Real.sqrt (101 / 192 * (1 / 64)) := by
      rw [Real.lt_sqrt (by norm_num)]; norm_num
    linarith
  have hδ : sarea (ptE l) (ptB b) R < 101 / 192 - 2 * (1 / 64) -
      2 * Real.sqrt (101 / 192 * (1 / 64)) := lt_of_le_of_lt hroot h1
  refine ⟨hδ, h2, ?_⟩
  rw [typeIIConfig_eq] at hmin ⊢
  exact noPointInside_of_lt (a := 2) (b := 3) (c := 6) (by linarith) (hδ.trans h2)

/-- **Claim** (`UNBALANCED_CELL_I:claim-ERS-cap`), equation (6). For every right quadrilateral
(any cell, `b ≤ 1/2`), with `z = 1 - r`, `s = 7/64`:
`J = [ERS] ≤ 1 + s - s(1/z + z/b) ≤ 1 + s - 2s/√b < Ks`, so `ERS` contains at most one further
actual point. `hand/UNBALANCED_CELL_I.md`, lines 92-116.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_ERS_cap (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) :
    let s : ℝ := 7 / 64
    let z := 1 - R.1
    sarea (ptE l) R S ≤ 1 + s - s * (1 / z + z / b) ∧
      1 + s - s * (1 / z + z / b) ≤ 1 + s - 2 * s / Real.sqrt b ∧
      1 + s - 2 * s / Real.sqrt b < Kc * s ∧
      AtMostOneInside (typeIIConfig l b P Q R S T) (ptE l) R S := by
  intro s z
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hDEB := DEB_ge h hmin
  rw [typeIIConfig_eq] at hmin ⊢
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hRSC : 7 / 64 ≤ |sarea R S ptC| := le_abs_sarea_of_le_min hm 6 7 1
  rw [abs_of_pos hq.1.2.1] at hRSC
  simp only [sarea, ptC] at hRSC
  have hz : 0 < z := by simp only [z]; linarith
  have hJ : sarea (ptE l) R S ≤ 1 + s - s * (1 / z + z / b) := by
    simp only [sarea, ptE, s, z]
    have := ERS_alg (l := l) (r := R.1) (u := R.2) (k := S.1) (t := S.2) (s := 7 / 64) hb hl
      (by linarith) hur hu hk1 (by linarith) hDEB
    linarith
  have h2 : 1 + s - s * (1 / z + z / b) ≤ 1 + s - 2 * s / Real.sqrt b := by
    have := amgm_inv hz hb
    have : s * (2 / Real.sqrt b) ≤ s * (1 / z + z / b) :=
      mul_le_mul_of_nonneg_left this (by norm_num)
    have e : 2 * s / Real.sqrt b = s * (2 / Real.sqrt b) := by ring
    rw [e]; linarith
  have h3 : 1 + s - 2 * s / Real.sqrt b < Kc * s := by
    have hsb := Real.sqrt_pos.2 hb
    have hsq := Real.sq_sqrt hb.le
    have hb2 := h.b_le
    have h2g := TypeII.sqrt_two_gt
    have h3g := TypeII.sqrt_three_gt
    have hs2 := Real.sq_sqrt (show (0:ℝ) ≤ 2 by norm_num)
    -- `2s/√b ≥ 2√2 s` since `√b · √2 ≤ 1`
    have hle : Real.sqrt b * Real.sqrt 2 ≤ 1 := by
      rw [← Real.sqrt_mul hb.le]
      rw [Real.sqrt_le_one]; linarith
    have hge : Real.sqrt 2 ≤ 1 / Real.sqrt b := by rw [le_div_iff₀ hsb]; linarith
    have : 2 * s / Real.sqrt b = 2 * s * (1 / Real.sqrt b) := by ring
    rw [this]
    unfold Kc
    simp only [s]
    nlinarith
  refine ⟨hJ, h2, h3, ?_⟩
  exact atMostOneInside_of_lt (a := 2) (b := 6) (c := 7) (by norm_num) hm
    (lt_of_le_of_lt (hJ.trans h2) h3)

/-- **Claim** (`UNBALANCED_CELL_I:claim-J`), equation (7). In cell I, `J = [ERS] < 1/2 + s =
39/64`. `hand/UNBALANCED_CELL_I.md`, lines 117-121.
Uses: UNBALANCED_CELL_I:claim-ERS-cap, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_J (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptE l) R S < 39 / 64 := by
  have hb := h.b_pos
  obtain ⟨hJ, h2, -, -⟩ := claim_ERS_cap h hmin hq
  obtain ⟨-, -, h316, -⟩ := claim_b_range h hmin hq hc
  have hsb : Real.sqrt b < 7 / 16 := by
    rw [Real.sqrt_lt' (by norm_num)]; linarith
  have hsb0 := Real.sqrt_pos.2 hb
  have : 1 / 2 < 2 * (7 / 64) / Real.sqrt b := by rw [lt_div_iff₀ hsb0]; linarith
  linarith

/-- **Claim** (`UNBALANCED_CELL_I:claim-containments`), equation (8). The right points are below
`CE`. In cell I, if the central point `Q` is below `CE`, then `Q, T ∈ int ECR`, `Q ∈ int ECS`,
and `T ∈ int BRS ∩ int ERS` (counterclockwise orders `E, R, C`; `E, S, C`; `B, R, S`;
`E, R, S`). `hand/UNBALANCED_CELL_I.md`, lines 123-143.
Uses: UNBALANCED_CELL_I:claim-empty-EBR, UNBALANCED_CELL_I:claim-ERS-cap. -/
theorem claim_containments (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T)
    (hQ : sarea (ptE l) ptC Q < 0) :
    sarea (ptE l) ptC R < 0 ∧ sarea (ptE l) ptC S < 0 ∧ sarea (ptE l) ptC T < 0 ∧
      InTriangle Q (ptE l) R ptC ∧ InTriangle T (ptE l) R ptC ∧ InTriangle Q (ptE l) S ptC ∧
      InTriangle T (ptB b) R S ∧ InTriangle T (ptE l) R S := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  have hR := below_CE_of_right hb hb1 hl hl1 h.R_mem h.R_right
  have hS := below_CE_of_right hb hb1 hl hl1 h.S_mem h.S_right
  have hT := below_CE_of_right hb hb1 hl hl1 h.T_mem h.T_right
  refine ⟨hR, hS, hT, ?_⟩
  obtain ⟨-, -, hEBR⟩ := claim_empty_EBR h hmin hq hc
  obtain ⟨-, -, -, hERS⟩ := claim_ERS_cap h hmin hq
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  have hmin' := hmin
  rw [typeIIConfig_eq] at hmin'
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have hQE := (claim_central_cut hb hb1 hl hl1 h.Q_central).2.2 hQ
  obtain ⟨⟨q1, q2, q3, q4⟩, t1, t2, t3, t4⟩ := hq
  have hBRC : 0 < sarea (ptB b) R ptC := h.R_right
  have hERC : 0 < sarea (ptE l) R ptC := by
    have : sarea (ptE l) R ptC = -sarea (ptE l) ptC R := by unfold sarea; ring
    linarith
  have hESC : 0 < sarea (ptE l) S ptC := by
    have : sarea (ptE l) S ptC = -sarea (ptE l) ptC S := by unfold sarea; ring
    linarith
  have hEBR' : 0 < sarea (ptE l) (ptB b) R := by
    simp only [sarea, ptE, ptB]; nlinarith [mul_pos hl (sub_pos.2 hbr)]
  have hEBC : 0 < sarea (ptE l) (ptB b) ptC := by
    simp only [sarea, ptE, ptB, ptC]; nlinarith
  have hJ : 0 < sarea (ptE l) R S := by
    simp only [sarea, ptE]
    simp only [sarea, ptB] at q1
    nlinarith [mul_pos hl (sub_pos.2 hrk), mul_pos hb (sub_pos.2 hut)]
  have hEBS : 0 < sarea (ptE l) (ptB b) S := by
    have := h.S_mem.2.2.1
    simp only [sarea, ptE, ptB]; nlinarith [mul_pos hl (sub_pos.2 (hbr.trans hrk))]
  have hCEQ : 0 < sarea ptC (ptE l) Q := by
    have : sarea ptC (ptE l) Q = -sarea (ptE l) ptC Q := by unfold sarea; ring
    linarith
  have hCET : 0 < sarea ptC (ptE l) T := by
    have : sarea ptC (ptE l) T = -sarea (ptE l) ptC T := by unfold sarea; ring
    linarith
  -- `Q ∈ ECR`
  have hRCQ : 0 < sarea R ptC Q := by
    apply bary_pos hQE
    · rw [show sarea R ptC (ptE l) = sarea (ptE l) R ptC by unfold sarea; ring]; exact hERC.le
    · rw [show sarea R ptC (ptB b) = sarea (ptB b) R ptC by unfold sarea; ring]; exact hBRC.le
    · rw [show sarea R ptC ptC = 0 by unfold sarea; ring]
    · rw [show sarea R ptC (ptE l) = sarea (ptE l) R ptC by unfold sarea; ring,
        show sarea R ptC (ptB b) = sarea (ptB b) R ptC by unfold sarea; ring,
        show sarea R ptC ptC = 0 by unfold sarea; ring]; linarith
  have hBRQ : 0 < sarea (ptB b) R Q := by
    apply bary_pos hQE
    · rw [show sarea (ptB b) R (ptE l) = sarea (ptE l) (ptB b) R by unfold sarea; ring]
      exact hEBR'.le
    · rw [show sarea (ptB b) R (ptB b) = 0 by unfold sarea; ring]
    · exact hBRC.le
    · rw [show sarea (ptB b) R (ptE l) = sarea (ptE l) (ptB b) R by unfold sarea; ring,
        show sarea (ptB b) R (ptB b) = 0 by unfold sarea; ring]; linarith
  have hERQ : 0 < sarea (ptE l) R Q := by
    have nz : sarea (ptE l) R Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 6 5
    rcases lt_or_gt_of_ne nz with hneg | hpos'
    · exfalso
      exact hEBR 5 (show InTriangle Q (ptE l) (ptB b) R from ⟨hQE.1, hBRQ, by
        rw [show sarea R (ptE l) Q = -sarea (ptE l) R Q by unfold sarea; ring]; linarith⟩)
    · exact hpos'
  have hQ1 : InTriangle Q (ptE l) R ptC := ⟨hERQ, hRCQ, hCEQ⟩
  -- `T ∈ ECR`
  have hEBT : 0 < sarea (ptE l) (ptB b) T := by
    apply bary_pos hc.2
    · rw [show sarea (ptE l) (ptB b) (ptB b) = 0 by unfold sarea; ring]
    · exact hEBR'.le
    · exact hEBC.le
    · rw [show sarea (ptE l) (ptB b) (ptB b) = 0 by unfold sarea; ring]; linarith
  have hERT : 0 < sarea (ptE l) R T := by
    have nz : sarea (ptE l) R T ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 6 8
    rcases lt_or_gt_of_ne nz with hneg | hpos'
    · exfalso
      exact hEBR 8 (show InTriangle T (ptE l) (ptB b) R from ⟨hEBT, t1, by
        rw [show sarea R (ptE l) T = -sarea (ptE l) R T by unfold sarea; ring]; linarith⟩)
    · exact hpos'
  have hT1 : InTriangle T (ptE l) R ptC := ⟨hERT, hc.2.2.1, hCET⟩
  -- `T ∈ ERS`
  have hSET : 0 < sarea S (ptE l) T := by
    apply bary_pos hc.1
    · rw [show sarea S (ptE l) (ptB b) = sarea (ptE l) (ptB b) S by unfold sarea; ring]
      exact hEBS.le
    · rw [show sarea S (ptE l) R = sarea (ptE l) R S by unfold sarea; ring]; exact hJ.le
    · rw [show sarea S (ptE l) S = 0 by unfold sarea; ring]
    · rw [show sarea S (ptE l) (ptB b) = sarea (ptE l) (ptB b) S by unfold sarea; ring,
        show sarea S (ptE l) R = sarea (ptE l) R S by unfold sarea; ring,
        show sarea S (ptE l) S = 0 by unfold sarea; ring]; linarith
  have hT2 : InTriangle T (ptE l) R S := ⟨hERT, t2, hSET⟩
  -- `Q ∈ ECS`
  have hSr := h.S_right
  have hSCQ : 0 < sarea S ptC Q := by
    apply bary_pos hQE
    · rw [show sarea S ptC (ptE l) = sarea (ptE l) S ptC by unfold sarea; ring]; exact hESC.le
    · rw [show sarea S ptC (ptB b) = sarea (ptB b) S ptC by unfold sarea; ring]
      exact h.S_right.le
    · rw [show sarea S ptC ptC = 0 by unfold sarea; ring]
    · rw [show sarea S ptC (ptE l) = sarea (ptE l) S ptC by unfold sarea; ring,
        show sarea S ptC (ptB b) = sarea (ptB b) S ptC by unfold sarea; ring,
        show sarea S ptC ptC = 0 by unfold sarea; ring]; linarith
  have hESQ : 0 < sarea (ptE l) S Q := by
    have nz : sarea (ptE l) S Q ≠ 0 := sarea_ne_zero_of_min_pos hpos 2 7 5
    rcases lt_or_gt_of_ne nz with hneg | hpos'
    · exfalso
      have hRSQ : 0 < sarea R S Q := by
        apply bary_pos hQ1
        · rw [show sarea R S (ptE l) = sarea (ptE l) R S by unfold sarea; ring]; exact hJ.le
        · rw [show sarea R S R = 0 by unfold sarea; ring]
        · exact q2.le
        · rw [show sarea R S (ptE l) = sarea (ptE l) R S by unfold sarea; ring,
            show sarea R S R = 0 by unfold sarea; ring]; linarith
      have hQ2 : InTriangle Q (ptE l) R S := ⟨hERQ, hRSQ, by
        rw [show sarea S (ptE l) Q = -sarea (ptE l) S Q by unfold sarea; ring]; linarith⟩
      rw [typeIIConfig_eq] at hERS
      exact absurd (hERS 5 8 hQ2 hT2) (by decide)
    · exact hpos'
  exact ⟨hQ1, hT1, ⟨hESQ, hSCQ, hCEQ⟩, hc.1, hT2⟩

/-- **Claim** (`UNBALANCED_CELL_I:claim-alpha`), equation (9). In cell I, `r < 1 - 2s` and
`α = [ERC] = 1 - u - q(1-r) < 335/384 < 8s` (`s = 7/64`). `hand/UNBALANCED_CELL_I.md`,
lines 145-162.
Uses: UNBALANCED_RIGHT_HULL:claim-lower-vertex, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_alpha (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    R.1 < 1 - 2 * (7 / 64) ∧ sarea (ptE l) R ptC < 335 / 384 ∧ (335 / 384 : ℝ) < 8 * (7 / 64) := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  have hw : 0 < 1 - b := by linarith
  obtain ⟨-, -, h316, h13⟩ := claim_b_range h hmin hq hc
  obtain ⟨hx0, hx1, hu, hux, ha, -, hI, -⟩ := quad_ears h hmin hq
  have hear := hI hc
  have hDEB := DEB_ge h hmin
  -- `F(r) = (r - b)(1 - r) - s(3 - b - 2r) ≥ 0`
  have hF : 7 / 64 * (3 - b - 2 * R.1) ≤ (R.1 - b) * (1 - R.1) := by
    have e1 : 7 / 64 / (1 - b) * (1 * ((R.1 - b) / (1 - b)) + 3 * (1 - (R.1 - b) / (1 - b))) =
        7 / 64 * (3 - b - 2 * R.1) / (1 - b) ^ 2 := by field_simp; ring
    have e2 : ((R.1 - b) / (1 - b) - R.2) * (1 - (R.1 - b) / (1 - b)) =
        (R.1 - b - (1 - b) * R.2) * (1 - R.1) / (1 - b) ^ 2 := by field_simp; ring
    rw [e1, e2, div_le_div_iff_of_pos_right (by positivity)] at hear
    have hr1 : R.1 < 1 := by
      have := (div_lt_one hw).1 hx1; linarith
    nlinarith [mul_nonneg (mul_nonneg hw.le hu) (by linarith : (0:ℝ) ≤ 1 - R.1)]
  have hr : R.1 < 1 - 2 * (7 / 64) := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ R.1 - 25 / 32) (by linarith : (0:ℝ) ≤ 11 / 32 - b)]
  refine ⟨hr, ?_, by norm_num⟩
  have e : sarea (ptE l) R ptC = 1 - R.2 - (1 - l) * (1 - R.1) := by
    simp only [sarea, ptE, ptC]; ring
  rw [e]
  have hq7 : 7 / 12 < 1 - l := by
    by_contra hcon; push Not at hcon
    nlinarith [mul_le_mul_of_nonneg_left hcon hb.le]
  nlinarith [mul_le_mul_of_nonneg_left (by linarith : (2:ℝ) * (7 / 64) ≤ 1 - R.1)
    (by linarith : (0:ℝ) ≤ 1 - l)]

/-- **Equation (10)** of UNBALANCED_CELL_I:Lemma2 (the line-coordinate inequality). Let `X, Y`
lie strictly inside the counterclockwise triangle `VAB`, every doubled triangle on these five
points be at least `s > 0`, and `XY` isolate `V` from `A, B`. With `H = [VAB]`, `a = |[VXY]|`,
`c = |[AXY]|`, `d = |[BXY]|`:
`H ≥ (a+c)(a+d)/a + s((a+c)/a + (a+d)/a) ≥ a + 4s + 3s²/a`, and each interior point has opposite
subtriangle area at least `Hs/(a+s)` (`aθ ≥ s(1-θ)` for the barycentric weight `θ` of `V`).
`hand/UNBALANCED_CELL_I.md`, lines 173-196. -/
theorem eq10 {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) :
    let H := sarea V A B
    let a := |sarea X Y V|
    let c := |sarea X Y A|
    let d := |sarea X Y B|
    (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ≤ H ∧
      a + 4 * s + 3 * s ^ 2 / a ≤ (a + c) * (a + d) / a + s * ((a + c) / a + (a + d) / a) ∧
      H * s / (a + s) ≤ sarea A B X ∧ H * s / (a + s) ≤ sarea A B Y := by
  intro H a c d
  have hpos : 0 < minTriangleArea ![V, A, B, X, Y] := by linarith
  have nV : sarea X Y V ≠ 0 := sarea_ne_zero_of_min_pos hpos 3 4 0
  have hsw : s / 2 ≤ minTriangleArea ![V, A, B, Y, X] := by
    rw [show ![V, A, B, Y, X] = ![V, A, B, X, Y] ∘ Equiv.swap (3 : Fin 5) 4 by
      funext m; fin_cases m <;> rfl, minTriangleArea_comp_perm]; exact hmin
  have cV : sarea Y X V = -sarea X Y V := by unfold sarea; ring
  have cA : sarea Y X A = -sarea X Y A := by unfold sarea; ring
  have cB : sarea Y X B = -sarea X Y B := by unfold sarea; ring
  have hsumX := sarea_add_sarea_add_sarea V A B X
  have hsumY := sarea_add_sarea_add_sarea V A B Y
  rcases hiso with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
  · obtain ⟨i1, e1, e2, e3, e4, i2, i3, e5, e6⟩ := eq10_oriented hX hY hmin h2 h3
    have ha : a = sarea X Y V := abs_of_pos h1
    have hc : c = -sarea X Y A := abs_of_neg h2
    have hd : d = -sarea X Y B := abs_of_neg h3
    rw [ha, hc, hd]
    exact eq10_alg hs h1 (by rw [i1]; ring) e1 e2 e3 e4 i2 i3 e5 e6 (by linarith) (by linarith)
  · obtain ⟨i1, e1, e2, e3, e4, i2, i3, e5, e6⟩ := eq10_oriented hY hX hsw
      (by rw [cA]; linarith) (by rw [cB]; linarith)
    have ha : a = sarea Y X V := by rw [cV]; exact abs_of_neg h1
    have hc : c = -sarea Y X A := by rw [cA, neg_neg]; exact abs_of_pos h2
    have hd : d = -sarea Y X B := by rw [cB, neg_neg]; exact abs_of_pos h3
    rw [ha, hc, hd]
    obtain ⟨k1, k2, k3, k4⟩ := eq10_alg hs (by rw [cV]; linarith) (by rw [i1]; ring) e1 e2 e3 e4
      i2 i3 e5 e6 (by linarith) (by linarith)
    exact ⟨k1, k2, k4, k3⟩

/-- **Lemma 2** (`UNBALANCED_CELL_I:Lemma2`). Suppose the (counterclockwise) actual triangle
`VAB` contains two actual points `X, Y`, every doubled triangle on these five points is at least
`s > 0`, its doubled area `H` is less than `8s`, and `XY` isolates `V` from `A, B`. Then both
opposite areas `[ABX]`, `[ABY]` are greater than `2s`; the proof also gives `a = |[VXY]| < 3s`.
`hand/UNBALANCED_CELL_I.md`, lines 164-203. -/
theorem lemma2 {s : ℝ} {V A B X Y : Point} (hs : 0 < s) (hX : InTriangle X V A B)
    (hY : InTriangle Y V A B) (hmin : s / 2 ≤ minTriangleArea ![V, A, B, X, Y])
    (hiso : LineIsolates X Y V A B) (hH : sarea V A B < 8 * s) :
    |sarea X Y V| < 3 * s ∧ 2 * s < sarea A B X ∧ 2 * s < sarea A B Y := by
  obtain ⟨k1, k2, k3, k4⟩ := eq10 hs hX hY hmin hiso
  have hpos : 0 < minTriangleArea ![V, A, B, X, Y] := by linarith
  have nV : sarea X Y V ≠ 0 := sarea_ne_zero_of_min_pos hpos 3 4 0
  set a := |sarea X Y V| with ha_def
  have ha : 0 < a := abs_pos.2 nV
  have hlow : a + 4 * s + 3 * s ^ 2 / a < 8 * s := by linarith
  have ha3 : a < 3 * s := by
    by_contra hcon
    push Not at hcon
    have : (a - s) * (a - 3 * s) / a ≤ a + 4 * s + 3 * s ^ 2 / a - 8 * s := by
      rw [le_sub_iff_add_le]; field_simp; nlinarith
    have : 0 ≤ (a - s) * (a - 3 * s) / a :=
      div_nonneg (mul_nonneg (by linarith) (by linarith)) ha.le
    linarith
  have hH : a + 4 * s + 3 * s ^ 2 / a ≤ sarea V A B := k2.trans k1
  have key : 2 * s < sarea V A B * s / (a + s) := by
    rw [lt_div_iff₀ (by linarith)]
    have e : (a + 4 * s + 3 * s ^ 2 / a) * s = s * (a + s) * (a + 3 * s) / a := by
      field_simp; ring
    have h1 : 2 * s * (a + s) < s * (a + s) * (a + 3 * s) / a := by
      rw [lt_div_iff₀ ha]; nlinarith [mul_pos hs (by linarith : (0:ℝ) < a + s)]
    nlinarith [mul_le_mul_of_nonneg_right hH hs.le]
  exact ⟨ha3, key.trans_le k3, key.trans_le k4⟩

/-- **Claim** (`UNBALANCED_CELL_I:claim-RCT`), equation (13). In cell I,
`[RCT] < Ω/4 ≤ w/4 < 2s`, where `Ω ≤ w` is the area scale of the right support normalization
(`s = 7/64`). `hand/UNBALANCED_CELL_I.md`, lines 207-247.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_I:claim-b-range. -/
theorem claim_RCT (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea R ptC T < (1 - b) / 4 ∧ (1 - b) / 4 < 2 * (7 / 64) := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨-, -, h316, h13⟩ := claim_b_range h hmin hq hc
  refine ⟨?_, by linarith⟩
  obtain ⟨Ω, hh, f, m, hΩ, hΩ1, hm, mC, mB, mS, mR, hN⟩ := quad_support hb1 h.R_mem h.S_mem hq
  rw [typeIIConfig_eq] at hmin
  have hm5 : 7 / 128 ≤ minTriangleArea ![ptC, ptB b, S, R, T] :=
    hmin.trans (min_le_min_reindex (by norm_num) _ _ ![1, 3, 7, 6, 8] (by decide)
      (by funext x; fin_cases x <;> rfl))
  have hmin' : 7 / 128 / Ω ≤ minTriangleArea (hsConfig hh f (m T)) :=
    min_transfer (by norm_num) hΩ m hm (fun i => by
      fin_cases i <;> simp [hsConfig, mC, mB, mS, mR]) hm5
  set σ := 7 / (64 * Ω) with hσ
  have hσ8 : 1 / 8 ≤ σ := by
    rw [hσ, le_div_iff₀ (by positivity)]; linarith
  have hσm : σ / 2 ≤ minTriangleArea (hsConfig hh f (m T)) := by
    have : σ / 2 = 7 / 128 / Ω := by rw [hσ]; field_simp; ring
    rw [this]; exact hmin'
  obtain ⟨hh0, hh1, hf0, hf1, -⟩ := hN
  have a1 : σ ≤ |sarea hsE (hsF f) (m T)| := le_abs_sarea_of_le_min hσm 1 3 4
  have a2 : σ ≤ |sarea (hsF f) (hsH hh) (m T)| := le_abs_sarea_of_le_min hσm 3 2 4
  have a3 : σ ≤ |sarea (hsH hh) hsE (m T)| := le_abs_sarea_of_le_min hσm 2 1 4
  have a4 : σ ≤ |sarea hsA (hsH hh) (hsF f)| := le_abs_sarea_of_le_min hσm 0 2 3
  have p1 : sarea hsE (hsF f) (m T) = sarea (ptB b) R T / Ω := by rw [← mB, ← mR, hm]
  have p2 : sarea (hsF f) (hsH hh) (m T) = sarea R S T / Ω := by rw [← mR, ← mS, hm]
  have p3 : sarea (hsH hh) hsE (m T) = sarea S (ptB b) T / Ω := by rw [← mS, ← mB, hm]
  have p4 : sarea (hsF f) hsA (m T) = sarea R ptC T / Ω := by rw [← mR, ← mC, hm]
  have q1 : 0 < sarea (ptB b) R T := hq.2.1
  have q2 : 0 < sarea R S T := hq.2.2.1
  have q3 : 0 < sarea S (ptB b) T := hc.1.2.2
  rw [abs_of_pos (by rw [p1]; positivity)] at a1
  rw [abs_of_pos (by rw [p2]; positivity)] at a2
  rw [abs_of_pos (by rw [p3]; positivity)] at a3
  have e4 : sarea hsA (hsH hh) (hsF f) = -(hh * f) := by simp only [sarea, hsA, hsH, hsF]; ring
  rw [e4, abs_neg, abs_of_pos (by positivity)] at a4
  have hsum : sarea hsE (hsF f) (m T) + sarea (hsF f) (hsH hh) (m T) +
      sarea (hsH hh) hsE (m T) = (1 - hh) * (1 - f) := by
    rw [sarea_add_sarea_add_sarea]; simp only [sarea, hsE, hsF, hsH]; ring
  have hg : (1 - hh) * (1 - f) * sarea (hsF f) hsA (m T) =
      (1 - f) * sarea (hsF f) (hsH hh) (m T) - f * hh * sarea hsE (hsF f) (m T) := by
    simp only [sarea, hsE, hsF, hsH, hsA]; ring
  have hlt := rct_alg hh0 hh1 hf0 hf1 hσ8 a1 a2 a3 hsum a4 hg
  rw [p4, div_lt_iff₀ hΩ] at hlt
  linarith

/-- **Claim** (`UNBALANCED_CELL_I:claim-ERT`), equations (14)-(15). In cell I,
`U = [BRS] < 1521/4096` and `[ERT] < 21239/97344 = 2s - 55/97344 < 2s` (`s = 7/64`).
`hand/UNBALANCED_CELL_I.md`, lines 249-273.
Uses: TYPE_II:claim-support-normalization, UNBALANCED_CELL_I:claim-J,
UNBALANCED_CELL_I:claim-empty-EBR. -/
theorem claim_ERT (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T) :
    sarea (ptB b) R S < 1521 / 4096 ∧ sarea (ptE l) R T < 21239 / 97344 ∧
      (21239 / 97344 : ℝ) < 2 * (7 / 64) := by
  have hb := h.b_pos
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨-, -, h316, h13⟩ := claim_b_range h hmin hq hc
  have hJ := claim_J h hmin hq hc
  have hsq := sqrt_U_add_sqrt_V hb1 h.R_mem h.S_mem hq
  obtain ⟨hsEBR, -, -, -, -⟩ := claim_ear_root h hmin hq (Or.inl hc)
  obtain ⟨hur, hbr, hrk, hk1, hu, hut, ht1⟩ := quad_order hb hb1 h.R_mem h.S_mem hq.1
  rw [typeIIConfig_eq] at hmin
  have hm : (7 / 64 : ℝ) / 2 ≤ minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by
    linarith
  have hV : 7 / 64 ≤ |sarea ptC R S| := le_abs_sarea_of_le_min hm 1 6 7
  have cV : sarea ptC R S = sarea R S ptC := by unfold sarea; ring
  rw [abs_of_pos (by rw [cV]; exact hq.1.2.1)] at hV
  have hU3 : 3 * (7 / 64) ≤ sarea (ptB b) R S :=
    three_le_of_inside (X := ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T]) (i := 8)
      (a := 3) (b := 6) (c := 7) hm hc.1
  -- (14): `√U < 39/64`
  have hU : sarea (ptB b) R S < 1521 / 4096 := by
    have h1 : Real.sqrt (1 - b) < 15 / 16 := by rw [Real.sqrt_lt' (by norm_num)]; linarith
    have h2 : 21 / 64 < Real.sqrt (sarea ptC R S) := by
      rw [Real.lt_sqrt (by norm_num)]; linarith
    have h3 : Real.sqrt (sarea (ptB b) R S) < 39 / 64 := by linarith
    have h4 := Real.sq_sqrt (show 0 ≤ sarea (ptB b) R S by linarith)
    nlinarith [Real.sqrt_nonneg (sarea (ptB b) R S)]
  refine ⟨hU, ?_, by norm_num⟩
  -- the barycentric identity in `BRS`
  have hid := sarea_bary (ptB b) R S T (ptE l) R
  have z : sarea (ptE l) R R = 0 := by unfold sarea; ring
  have cB : sarea (ptE l) R (ptB b) = -sarea (ptE l) (ptB b) R := by unfold sarea; ring
  rw [z, mul_zero, add_zero, cB] at hid
  have hsum := sarea_add_sarea_add_sarea (ptB b) R S T
  obtain ⟨t1, t2, t3⟩ := hc.1
  have e1 : 7 / 64 ≤ |sarea R S T| := le_abs_sarea_of_le_min hm 6 7 8
  have e2 : 7 / 64 ≤ |sarea S (ptB b) T| := le_abs_sarea_of_le_min hm 7 3 8
  rw [abs_of_pos t2] at e1
  rw [abs_of_pos t3] at e2
  have hJpos : 0 < sarea (ptE l) R S := by
    simp only [sarea, ptE]
    have hU' := hq.1.1
    simp only [sarea, ptB] at hU'
    nlinarith [mul_pos h.l_pos (sub_pos.2 hrk), mul_pos hb (sub_pos.2 hut)]
  have k1 := mul_le_mul_of_nonneg_left e1 (by linarith : (0:ℝ) ≤ sarea (ptE l) (ptB b) R)
  have k2 : sarea (ptE l) R S * sarea (ptB b) R T ≤ 39 / 64 * (sarea (ptB b) R S - 2 * (7 / 64)) := by
    have : sarea (ptB b) R T ≤ sarea (ptB b) R S - 2 * (7 / 64) := by linarith
    nlinarith [mul_le_mul_of_nonneg_left this hJpos.le]
  have k3 := mul_le_mul_of_nonneg_left hsEBR (by norm_num : (0:ℝ) ≤ 7 / 64)
  have hUpos : 0 < sarea (ptB b) R S := by linarith
  by_contra hcon
  push Not at hcon
  have k4 := mul_le_mul_of_nonneg_right hcon hUpos.le
  nlinarith

/-- **Theorem 1** (`UNBALANCED_CELL_I:Theorem1`). In support cell I no central point lies below
`CE`. With UNBALANCED_RIGHT_HULL:Theorem2 (and the unbalanced cut lemma), cell I is excluded
in every cut. `hand/UNBALANCED_CELL_I.md`, lines 24-30, 275-291.
Uses: UNBALANCED_CELL_I:claim-containments, UNBALANCED_CELL_I:claim-alpha,
UNBALANCED_CELL_I:Lemma2, UNBALANCED_CELL_I:claim-RCT, UNBALANCED_CELL_I:claim-ERT. -/
theorem theorem1 (h : Row123 l b P Q R S T)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b P Q R S T))
    (hq : QuadHull (ptB b) R S ptC T) (hc : CellI (ptB b) R S ptC T)
    (hQ : sarea (ptE l) ptC Q < 0) : False := by
  have hb := h.b_pos
  have hl := h.l_pos
  have hl1 := h.l_lt
  have hb1 : b < 1 := by linarith [h.b_le]
  obtain ⟨-, -, -, hQ1, hT1, hQ3, hT2, -⟩ := claim_containments h hmin hq hc hQ
  obtain ⟨-, hα, hα8⟩ := claim_alpha h hmin hq hc
  obtain ⟨hRCT, hRCT2⟩ := claim_RCT h hmin hq hc
  obtain ⟨-, hERT, hERT2⟩ := claim_ERT h hmin hq hc
  rw [typeIIConfig_eq] at hmin
  have hpos : 0 < minTriangleArea ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] := by linarith
  have m5 : ∀ (f : Fin 5 → Fin 9) (Y : Fin 5 → Point), Function.Injective f →
      Y = ![ptD, ptC, ptE l, ptB b, P, Q, R, S, T] ∘ f → (7 / 64 : ℝ) / 2 ≤ minTriangleArea Y :=
    fun f Y hf hY => by
      have := hmin.trans (min_le_min_reindex (by norm_num) _ _ f hf hY); linarith
  have nE : sarea Q T (ptE l) ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 2
  have nR : sarea Q T R ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 6
  have nC : sarea Q T ptC ≠ 0 := sarea_ne_zero_of_min_pos hpos 5 8 1
  have rot : ∀ {X A B C : Point}, InTriangle X A B C → InTriangle X C A B :=
    fun ⟨a1, a2, a3⟩ => ⟨a3, a1, a2⟩
  rcases isolates_trichotomy hQ1 nE nR nC with hiso | hiso | hiso
  · -- `E` isolated: `[RCT] > 2s`
    have := lemma2 (s := 7 / 64) (by norm_num) hQ1 hT1
      (m5 ![2, 6, 1, 5, 8] _ (by decide) (by funext x; fin_cases x <;> rfl)) hiso
      (by linarith)
    linarith [this.2.2]
  · -- `R` isolated: a sign contradiction through `B` and `S`
    have hQE := (claim_central_cut hb hb1 hl hl1 h.Q_central).2.2 hQ
    have i1 := sarea_bary (ptE l) (ptB b) ptC Q Q T
    have i2 := sarea_bary (ptB b) R S T Q T
    have i3 := sarea_bary (ptE l) S ptC Q Q T
    have z1 : sarea Q T Q = 0 := by unfold sarea; ring
    have z2 : sarea Q T T = 0 := by unfold sarea; ring
    rw [z1, mul_zero] at i1 i3
    rw [z2, mul_zero] at i2
    obtain ⟨e1, e2, e3⟩ := hQE
    obtain ⟨b1, b2, b3⟩ := hT2
    obtain ⟨c1, c2, c3⟩ := hQ3
    rcases hiso with ⟨hR, hC, hE⟩ | ⟨hR, hC, hE⟩
    · have hB : 0 < sarea Q T (ptB b) := by nlinarith [mul_pos e2 (neg_pos.2 hE), mul_pos e1 (neg_pos.2 hC)]
      have hS : sarea Q T S < 0 := by nlinarith [mul_pos b2 hB, mul_pos b3 hR]
      nlinarith [mul_pos c2 (neg_pos.2 hE), mul_pos c1 (neg_pos.2 hC), mul_pos c3 (neg_pos.2 hS)]
    · have hB : sarea Q T (ptB b) < 0 := by nlinarith [mul_pos e2 hE, mul_pos e1 hC]
      have hS : 0 < sarea Q T S := by nlinarith [mul_pos b2 (neg_pos.2 hB), mul_pos b3 (neg_pos.2 hR)]
      nlinarith [mul_pos c2 hE, mul_pos c1 hC, mul_pos c3 hS]
  · -- `C` isolated: `[ERT] > 2s`
    have := lemma2 (s := 7 / 64) (by norm_num) (rot hQ1) (rot hT1)
      (m5 ![1, 2, 6, 5, 8] _ (by decide) (by funext x; fin_cases x <;> rfl)) hiso
      (by rw [show sarea ptC (ptE l) R = sarea (ptE l) R ptC by unfold sarea; ring]; linarith)
    linarith [this.2.2]

end Heilbronn.UnbalancedCellI
