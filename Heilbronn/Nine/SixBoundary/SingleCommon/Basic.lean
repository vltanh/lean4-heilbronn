module

public import Heilbronn.Nine.SixBoundary.Setting
public import Heilbronn.Nine.Corners.OneCornerCompletion
public import Heilbronn.Common.SignTable

/-! # The single-cap configurations: shared geometry

Tools shared by the single-top (`Heilbronn.Nine.SixBoundary.SingleTop`) and single-side
(`Heilbronn.Nine.SixBoundary.SingleSide`) covers: N anchors, one point in a cap and two points
`P, Q` strictly inside the anchor hexagon, with the strictly convex heptagon as hull.

* `hex_*`: the twenty triangles of the anchor hexagon are positively oriented;
* `hullTriples`: the 35 increasing triples of the heptagon; `W_HCDF`, …: the area
  `W = [HCDF] = 1 - (h-d)(c-f)` from each vertex;
* `sep_core`, `diagonal_separation`: the diagonal separation rule in the anchor quadrilateral
  `HCDF`;
* `QuadPair`: `HCDF` with `P, Q` strictly inside the anchor hexagon, its four six-point labellings
  of least area at least `7/128`; `QuadPair.sectors` (no common diagonal sector, by
  `OneCornerCompletion.minTriangleArea_lt_of_centralPair`), `QuadPair.isoHCD`, `isoHDF`, `isoHCF`,
  `isoCDF` (the line `PQ` isolates the vertex cut off by a one-diagonal separation, by
  `OneCornerCompletion.isolates_of_mixed_pair`), `QuadPair.pair_cover`; their Boolean form
  `QuadPair.sector_excl`, `QuadPair.forced_rel` (`ForcedRel`), behind the pair-line signs of
  the certificate models;
* `zeta`: the twelve variables of the certificates; the sign helpers `orient_of_ne`, `sgn_cases`,
  `dec_ne_of_mul_neg`, `mul_neg_of_dec_ne`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySingle

open SixBoundary Cover

/-- The twelve variables `a, h, b, c, d, f, x_X, y_X, p_x, p_y, q_x, q_y` of the certificates. -/
def zeta (a h b c d f : ℝ) (X P Q : Point) : ℕ → ℝ
  | 0 => a
  | 1 => h
  | 2 => b
  | 3 => c
  | 4 => d
  | 5 => f
  | 6 => X.1
  | 7 => X.2
  | 8 => P.1
  | 9 => P.2
  | 10 => Q.1
  | 11 => Q.2
  | _ => 0

variable {a h b c d f : ℝ} {P Q : Point}

/-! ### The anchor hexagon -/

section Anchor

variable (hN : NAnchors a h b c d f)
include hN

theorem hex_ABC : 0 < sarea (ptA a) (ptB b) (ptC c) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos ha (sub_pos.2 hbc)]

theorem hex_ABD : 0 < sarea (ptA a) (ptB b) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_nonneg hb.le (sub_nonneg.2 had)]

theorem hex_ABF : 0 < sarea (ptA a) (ptB b) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos hb (show 0 < 1 - a by linarith), mul_nonneg ha.le (show 0 ≤ f by linarith)]

theorem hex_ABH : 0 < sarea (ptA a) (ptB b) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos hb (sub_pos.2 hah)]

theorem hex_ACD : 0 < sarea (ptA a) (ptC c) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_nonneg (show 0 ≤ c by linarith) (sub_nonneg.2 had)]

theorem hex_ACF : 0 < sarea (ptA a) (ptC c) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - a by linarith),
    mul_nonneg ha.le (show 0 ≤ f by linarith)]

theorem hex_ACH : 0 < sarea (ptA a) (ptC c) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < c by linarith) (sub_pos.2 hah)]

theorem hex_ADF : 0 < sarea (ptA a) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - f by linarith) (sub_nonneg.2 had)]

theorem hex_ADH : 0 < sarea (ptA a) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem hex_AFH : 0 < sarea (ptA a) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < f by linarith) (sub_pos.2 hah)]

theorem hex_BCD : 0 < sarea (ptB b) (ptC c) (ptD d) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < d by linarith) (sub_pos.2 hbc)]

theorem hex_BCF : 0 < sarea (ptB b) (ptC c) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith

theorem hex_BCH : 0 < sarea (ptB b) (ptC c) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (sub_pos.2 hbc)]

theorem hex_BDF : 0 < sarea (ptB b) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (sub_nonneg.2 hbf)]

theorem hex_BDH : 0 < sarea (ptB b) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - b by linarith),
    mul_nonneg hb.le (show 0 ≤ d by linarith)]

theorem hex_BFH : 0 < sarea (ptB b) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ h by linarith) (sub_nonneg.2 hbf)]

theorem hex_CDF : 0 < sarea (ptC c) (ptD d) (ptF f) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ d by linarith) (sub_nonneg.2 hfc)]

theorem hex_CDH : 0 < sarea (ptC c) (ptD d) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < h by linarith) (show 0 < 1 - c by linarith),
    mul_nonneg (show 0 ≤ c by linarith) (show 0 ≤ d by linarith)]

theorem hex_CFH : 0 < sarea (ptC c) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_pos (show 0 < c by linarith) (show 0 < 1 - h by linarith),
    mul_nonneg (show 0 ≤ h by linarith) (show 0 ≤ f by linarith)]

theorem hex_DFH : 0 < sarea (ptD d) (ptF f) (ptH h) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  simp only [sarea]
  nlinarith [mul_nonneg (show 0 ≤ f by linarith) (sub_nonneg.2 hdh)]

end Anchor

/-! ### The hull heptagon -/

/-- The 35 hull triples, lexicographic. -/
def hullTriples : List (ℕ × ℕ × ℕ) :=
  [(0, 1, 2), (0, 1, 3), (0, 1, 4), (0, 1, 5), (0, 1, 6), (0, 2, 3), (0, 2, 4), (0, 2, 5),
    (0, 2, 6), (0, 3, 4), (0, 3, 5), (0, 3, 6), (0, 4, 5), (0, 4, 6), (0, 5, 6), (1, 2, 3),
    (1, 2, 4), (1, 2, 5), (1, 2, 6), (1, 3, 4), (1, 3, 5), (1, 3, 6), (1, 4, 5), (1, 4, 6),
    (1, 5, 6), (2, 3, 4), (2, 3, 5), (2, 3, 6), (2, 4, 5), (2, 4, 6), (2, 5, 6), (3, 4, 5),
    (3, 4, 6), (3, 5, 6), (4, 5, 6)]

theorem mem_hullTriples (i j k : ℕ) (hij : i < j) (hjk : j < k) (hk : k < 7) :
    (i, j, k) ∈ hullTriples := by
  have hi : i < 5 := by omega
  have hj : j < 6 := by omega
  interval_cases i <;> interval_cases j <;> interval_cases k <;> simp [hullTriples]

theorem zero_sarea₁₃ (p q : Point) : 0 ≤ sarea p q p := le_of_eq (by unfold sarea; ring)
theorem zero_sarea₂₃ (p q : Point) : 0 ≤ sarea p q q := le_of_eq (by unfold sarea; ring)

/-- The area `W = [HCDF] = 1 - (h-d)(c-f)`, from each vertex. -/
theorem W_HCDF (h c d f : ℝ) : sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_CDFH (h c d f : ℝ) : sarea (ptC c) (ptD d) (ptF f) + sarea (ptC c) (ptF f) (ptH h) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_DFHC (h c d f : ℝ) : sarea (ptD d) (ptF f) (ptH h) + sarea (ptD d) (ptH h) (ptC c) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_FHCD (h c d f : ℝ) : sarea (ptF f) (ptH h) (ptC c) + sarea (ptF f) (ptC c) (ptD d) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring

/-! ### Signs -/

theorem orient_of_ne {x : ℝ} (hx : x ≠ 0) : OrientHolds (decide (0 < x)) x := by
  rcases hx.lt_or_gt with h | h
  · simp [OrientHolds, not_lt.2 h.le, h]
  · simp [OrientHolds, h]

theorem sgn_cases {x : ℝ} (hx : x ≠ 0) :
    (decide (0 < x) = true ∧ 0 < x) ∨ (decide (0 < x) = false ∧ x < 0) := by
  rcases hx.lt_or_gt with h | h
  · right; exact ⟨by simp [not_lt.2 h.le], h⟩
  · left; exact ⟨by simp [h], h⟩

theorem dec_ne_of_mul_neg {x y : ℝ} (h : x * y < 0) : decide (0 < x) ≠ decide (0 < y) := by
  intro e
  by_cases hx : 0 < x
  · have hy : 0 < y := by simpa [hx] using e.symm
    nlinarith [mul_pos hx hy]
  · have hy : ¬ 0 < y := by simpa [hx] using e.symm
    push Not at hx hy
    nlinarith [mul_nonneg_of_nonpos_of_nonpos hx hy]

theorem mul_neg_of_dec_ne {x y : ℝ} (hx : x ≠ 0) (hy : y ≠ 0)
    (h : decide (0 < x) ≠ decide (0 < y)) : x * y < 0 := by
  rcases sgn_cases hx with ⟨e1, h1⟩ | ⟨e1, h1⟩ <;> rcases sgn_cases hy with ⟨e2, h2⟩ | ⟨e2, h2⟩
  · exact absurd (e1.trans e2.symm) h
  · nlinarith [mul_pos h1 (neg_pos.2 h2)]
  · nlinarith [mul_pos (neg_pos.2 h1) h2]
  · exact absurd (e1.trans e2.symm) h

/-! ### The diagonal separation rule -/

/-- The separation rule for one diagonal `U → V` of a quadrilateral `U W V Z` (counterclockwise,
`W` the vertex before `V`, `Z` the vertex after it), for two points strictly inside it:
if `[UVP] > 0 > [UVQ]` then `[UPQ] < 0 < [VPQ]`. -/
theorem sep_core {U W V Z P Q : Point} (p1 : 0 < sarea U W P) (p2 : 0 < sarea W V P)
    (p3 : 0 < sarea V Z P) (p4 : 0 < sarea Z U P) (q1 : 0 < sarea U W Q)
    (q2 : 0 < sarea W V Q) (_q3 : 0 < sarea V Z Q) (q4 : 0 < sarea Z U Q)
    (hp : 0 < sarea U V P) (hq : sarea U V Q < 0) :
    sarea U P Q < 0 ∧ 0 < sarea V P Q := by
  have fan : sarea U W V + sarea U V Z = sarea U W P + sarea W V P + sarea V Z P + sarea Z U P := by
    simp only [sarea]; ring
  have k1 : sarea U W V * sarea U P Q =
      sarea U W P * sarea U V Q - sarea U W Q * sarea U V P := by simp only [sarea]; ring
  have k2 : sarea U V Z * sarea U P Q =
      sarea U V Q * sarea Z U P - sarea U V P * sarea Z U Q := by simp only [sarea]; ring
  have k3 : sarea U W V * sarea V P Q =
      sarea W V Q * sarea U V P - sarea W V P * sarea U V Q := by simp only [sarea]; ring
  have hneg : (sarea U W V + sarea U V Z) * sarea U P Q < 0 := by
    rw [add_mul, k1, k2]
    nlinarith [mul_pos p1 (neg_pos.2 hq), mul_pos q1 hp, mul_pos p4 (neg_pos.2 hq), mul_pos q4 hp]
  have hW : 0 < sarea U W V + sarea U V Z := by rw [fan]; linarith
  have hPQ : sarea U P Q < 0 := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg hW.le hn]
  have h1 : sarea U W V * sarea U P Q < 0 := by
    rw [k1]; nlinarith [mul_pos p1 (neg_pos.2 hq), mul_pos q1 hp]
  have hUWV : 0 < sarea U W V := by
    by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hn hPQ.le]
  refine ⟨hPQ, pos_of_mul_pos_right ?_ hUWV.le⟩
  rw [k3]; nlinarith [mul_pos q2 hp, mul_pos p2 (neg_pos.2 hq)]

/-- The diagonal separation rule in the anchor quadrilateral `HCDF`: for `P, Q` strictly inside
`HCDF` on opposite sides of an oriented diagonal `U → V` (`H → D` or `C → F`),
`sgn[UPQ] = -sgn[UVP]` and `sgn[VPQ] = sgn[UVP]` (the segment `PQ` meets the diagonal inside the
quadrilateral).

(No convexity hypothesis is needed (`sep_core`): the Plücker relations from `U` give
`[UWV][UPQ] < 0` and `[UVZ][UPQ] < 0`, while `[UWV] + [UVZ]` is the positive fan sum of the
quadrilateral from `P`.) -/
theorem diagonal_separation {h c d f : ℝ} {P Q : Point} (hP : InUpperQuad h c d f P)
    (hQ : InUpperQuad h c d f Q) :
    (sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      (0 < sarea (ptH h) (ptD d) P →
          sarea (ptH h) P Q < 0 ∧ 0 < sarea (ptD d) P Q) ∧
        (sarea (ptH h) (ptD d) P < 0 →
          0 < sarea (ptH h) P Q ∧ sarea (ptD d) P Q < 0)) ∧
    (sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      (0 < sarea (ptC c) (ptF f) P →
          sarea (ptC c) P Q < 0 ∧ 0 < sarea (ptF f) P Q) ∧
        (sarea (ptC c) (ptF f) P < 0 →
          0 < sarea (ptC c) P Q ∧ sarea (ptF f) P Q < 0)) := by
  obtain ⟨p1, p2, p3, p4⟩ := hP
  obtain ⟨q1, q2, q3, q4⟩ := hQ
  have swapPQ : ∀ U : Point, sarea U Q P = -sarea U P Q := fun U => by simp only [sarea]; ring
  refine ⟨fun hsep => ⟨fun hp => ?_, fun hp => ?_⟩, fun hsep => ⟨fun hp => ?_, fun hp => ?_⟩⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    exact sep_core p1 p2 p3 p4 q1 q2 q3 q4 hp hq
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have := sep_core q1 q2 q3 q4 p1 p2 p3 p4 hq hp
    rw [swapPQ, swapPQ] at this
    constructor <;> linarith [this.1, this.2]
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    exact sep_core p2 p3 p4 p1 q2 q3 q4 q1 hp hq
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have := sep_core q2 q3 q4 q1 p2 p3 p4 p1 hq hp
    rw [swapPQ, swapPQ] at this
    constructor <;> linarith [this.1, this.2]

theorem iso_conv {P Q V V₁ V₂ V₃ : Point} (h : OneCornerCompletion.Isolates P Q V V₁ V₂ V₃) :
    sarea V P Q * sarea V₁ P Q < 0 ∧ sarea V P Q * sarea V₂ P Q < 0 ∧
      sarea V P Q * sarea V₃ P Q < 0 := by
  obtain ⟨h1, h2, h3⟩ := h
  have e : ∀ U, sarea P Q U = sarea U P Q := fun U => sarea_cycle U P Q
  rw [e, e] at h1; rw [e, e] at h2; rw [e, e] at h3
  exact ⟨h1, h2, h3⟩

theorem iso_conv_swap {P Q V V₁ V₂ V₃ : Point}
    (h : OneCornerCompletion.Isolates Q P V V₁ V₂ V₃) :
    sarea V P Q * sarea V₁ P Q < 0 ∧ sarea V P Q * sarea V₂ P Q < 0 ∧
      sarea V P Q * sarea V₃ P Q < 0 := by
  obtain ⟨h1, h2, h3⟩ := iso_conv h
  have e : ∀ U, sarea U Q P = -sarea U P Q := fun U => by simp only [sarea]; ring
  rw [e, e] at h1 h2 h3
  refine ⟨?_, ?_, ?_⟩ <;> linarith

/-! ### The anchor quadrilateral `HCDF` with two interior points -/

/-- The Boolean content of `diagonal_separation` and of
`OneCornerCompletion.isolates_of_mixed_pair`, for the diagonal signs `bP6 = [HDP] > 0`, …,
`bQ2 = [CFQ] > 0` and the pair-line signs `s_v = [V_v P Q] > 0` at `H, C, D, F`
(`s6, s2, sD, s5`). -/
def ForcedRel (bP6 bQ6 bP2 bQ2 s6 s2 sD s5 : Bool) : Prop :=
  (bP6 ≠ bQ6 → s6 = !bP6 ∧ sD = bP6) ∧ (bP2 ≠ bQ2 → s2 = !bP2 ∧ s5 = bP2) ∧
  (bP6 = true → bQ6 = true → bP2 ≠ bQ2 → s5 ≠ s6 ∧ s5 ≠ sD ∧ s5 ≠ s2) ∧
  (bP6 = false → bQ6 = false → bP2 ≠ bQ2 → s2 ≠ s6 ∧ s2 ≠ sD ∧ s2 ≠ s5) ∧
  (bP2 = true → bQ2 = true → bP6 ≠ bQ6 → s6 ≠ s2 ∧ s6 ≠ s5 ∧ s6 ≠ sD) ∧
  (bP2 = false → bQ2 = false → bP6 ≠ bQ6 → sD ≠ s2 ∧ sD ≠ s5 ∧ sD ≠ s6)

/-- The anchor quadrilateral `HCDF` of N anchors with two points `P, Q` strictly inside the anchor
hexagon: its four labellings `HCDF`, `CDFH`, `DFHC`, `FHCD` with `P, Q` have least area at least
`7/128`, and the diagonals `HD`, `CF` miss `P` and `Q`. -/
structure QuadPair (a h b c d f : ℝ) (P Q : Point) : Prop where
  hN : NAnchors a h b c d f
  hP : InHexagon a h b c d f P
  hQ : InHexagon a h b c d f Q
  m₁ : 7 / 128 ≤
    minTriangleArea (OneCornerCompletion.quadConfig (ptH h) (ptC c) (ptD d) (ptF f) P Q)
  m₂ : 7 / 128 ≤
    minTriangleArea (OneCornerCompletion.quadConfig (ptC c) (ptD d) (ptF f) (ptH h) P Q)
  m₃ : 7 / 128 ≤
    minTriangleArea (OneCornerCompletion.quadConfig (ptD d) (ptF f) (ptH h) (ptC c) P Q)
  m₄ : 7 / 128 ≤
    minTriangleArea (OneCornerCompletion.quadConfig (ptF f) (ptH h) (ptC c) (ptD d) P Q)
  nHDP : sarea (ptH h) (ptD d) P ≠ 0
  nHDQ : sarea (ptH h) (ptD d) Q ≠ 0
  nCFP : sarea (ptC c) (ptF f) P ≠ 0
  nCFQ : sarea (ptC c) (ptF f) Q ≠ 0

/-- Exchanging `P` and `Q`. -/
theorem QuadPair.swap (H : QuadPair a h b c d f P Q) : QuadPair a h b c d f Q P := by
  refine ⟨H.hN, H.hQ, H.hP, ?_, ?_, ?_, ?_, H.nHDQ, H.nHDP, H.nCFQ, H.nCFP⟩
  · rw [OneCornerCompletion.min_quadConfig_swap]; exact H.m₁
  · rw [OneCornerCompletion.min_quadConfig_swap]; exact H.m₂
  · rw [OneCornerCompletion.min_quadConfig_swap]; exact H.m₃
  · rw [OneCornerCompletion.min_quadConfig_swap]; exact H.m₄

/-- The four signs of the convex quadrilateral `HCDF`. -/
theorem QuadPair.signs (H : QuadPair a h b c d f P Q) :
    0 < sarea (ptH h) (ptC c) (ptD d) ∧ 0 < sarea (ptC c) (ptD d) (ptF f) ∧
      0 < sarea (ptD d) (ptF f) (ptH h) ∧ 0 < sarea (ptF f) (ptH h) (ptC c) := by
  refine ⟨?_, hex_CDF H.hN, hex_DFH H.hN, ?_⟩
  · rw [← sarea_cycle]; exact hex_CDH H.hN
  · rw [sarea_cycle]; exact hex_CFH H.hN

theorem QuadPair.W_le (H : QuadPair a h b c d f P Q) : 1 - (h - d) * (c - f) ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)]

theorem QuadPair.W_nonneg (H : QuadPair a h b c d f P Q) : 0 ≤ 1 - (h - d) * (c - f) := by
  obtain ⟨q1, q2, q3, q4⟩ := H.signs
  have := W_HCDF h c d f
  have e := sarea_cycle (ptH h) (ptD d) (ptF f)
  linarith

/-- `OneCornerCompletion.minTriangleArea_lt_of_centralPair` excludes a central pair of a labelling
`UVWZ` of `HCDF`. -/
theorem QuadPair.central_false (H : QuadPair a h b c d f P Q) {U V W Z : Point}
    (hm : 7 / 128 ≤ minTriangleArea (OneCornerCompletion.quadConfig U V W Z P Q))
    (hq : CornerFamilies.ConvexQuad U V W Z)
    (hW : sarea U V W + sarea U W Z = 1 - (h - d) * (c - f))
    (hc : OneCornerCompletion.CentralPair U V W Z P Q) : False := by
  have k := OneCornerCompletion.minTriangleArea_lt_of_centralPair _ _ _ _ P Q (Or.inl hq) hc
  have h1 := hq.1
  have h3 : 0 < sarea U W Z := by rw [← sarea_cycle]; exact hq.2.2.1
  have hW1 := H.W_le
  unfold OneCornerCompletion.quadArea at k
  rw [hW, abs_of_pos (by linarith)] at k
  linarith

/-- The six-point minimum is at least `7/64` of the area of a labelling `UVWZ` of `HCDF`. -/
theorem QuadPair.quad_hyp (H : QuadPair a h b c d f P Q) {U V W Z : Point}
    (hm : 7 / 128 ≤ minTriangleArea (OneCornerCompletion.quadConfig U V W Z P Q))
    (hW : sarea U V W + sarea U W Z = 1 - (h - d) * (c - f)) :
    7 / 64 * OneCornerCompletion.quadArea U V W Z ≤
      minTriangleArea (OneCornerCompletion.quadConfig U V W Z P Q) := by
  have hW1 := H.W_le
  have hW0 := H.W_nonneg
  unfold OneCornerCompletion.quadArea
  rw [hW, abs_of_nonneg hW0]
  linarith

/-- No common diagonal sector of `HCDF`
(`OneCornerCompletion.minTriangleArea_lt_of_centralPair`). -/
theorem QuadPair.sectors (H : QuadPair a h b c d f P Q) :
    ¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q) := by
  obtain ⟨s1, s2, s3, s4⟩ := H.signs
  have W1 := W_HCDF h c d f; have W2 := W_CDFH h c d f
  have W3 := W_DFHC h c d f; have W4 := W_FHCD h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · rintro ⟨⟨a1, a2⟩, b1, b2⟩
    exact H.central_false H.m₁ Q1 W1 ⟨Or.inl a1, Or.inl a2, Or.inl b1, Or.inl b2⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, a4⟩, ⟨b1, b2, b3⟩, b4⟩
    exact H.central_false H.m₂ Q2 W2
      ⟨Or.inl a4, Or.inl ⟨a2, a3, a1⟩, Or.inl b4, Or.inl ⟨b2, b3, b1⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false H.m₃ Q3 W3
      ⟨Or.inl ⟨a2, a3, a1⟩, Or.inl ⟨a5, a6, a4⟩, Or.inl ⟨b2, b3, b1⟩, Or.inl ⟨b5, b6, b4⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false H.m₄ Q4 W4
      ⟨Or.inl ⟨a6, a4, a5⟩, Or.inl ⟨a3, a1, a2⟩, Or.inl ⟨b6, b4, b5⟩, Or.inl ⟨b3, b1, b2⟩⟩

/-- The isolation table for `HCD`: the line `PQ` isolates `C`
(`OneCornerCompletion.isolates_of_mixed_pair`). -/
theorem QuadPair.isoHCD (H : QuadPair a h b c d f P Q) :
    InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have W1 := W_HCDF h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptH h) (ptC c) (ptD d) (ptF f) P Q
      (Or.inl Q1) (H.quad_hyp H.m₁ W1) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p4, by rw [sw]; linarith⟩) (Or.inl ⟨b1, hq, q5⟩)
    exact iso_conv k
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptH h) (ptC c) (ptD d) (ptF f) Q P
      (Or.inl Q1) (HS.quad_hyp HS.m₁ W1) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q4, by rw [swQ]; linarith⟩) (Or.inl ⟨a1, hp, p5⟩)
    exact iso_conv_swap k

/-- The isolation table for `HDF`: the line `PQ` isolates `F`. -/
theorem QuadPair.isoHDF (H : QuadPair a h b c d f P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have W3 := W_DFHC h c d f
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptD d) (ptF f) (ptH h) (ptC c) Q P
      (Or.inl Q3) (HS.quad_hyp HS.m₃ W3) (Or.inl ⟨b2, b3, b1⟩) (Or.inl ⟨a2, a3, a1⟩)
      (Or.inl ⟨b3, hQup, hq⟩) (Or.inl ⟨a2, by rw [sw]; linarith, p3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptD d) (ptF f) (ptH h) (ptC c) P Q
      (Or.inl Q3) (H.quad_hyp H.m₃ W3) (Or.inl ⟨a2, a3, a1⟩) (Or.inl ⟨b2, b3, b1⟩)
      (Or.inl ⟨a3, hPup, hp⟩) (Or.inl ⟨b2, by rw [swQ]; linarith, q3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩

/-- The isolation table for `HCF`: the line `PQ` isolates `H`. -/
theorem QuadPair.isoHCF (H : QuadPair a h b c d f P Q) :
    InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have W4 := W_FHCD h c d f
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptF f) (ptH h) (ptC c) (ptD d) P Q
      (Or.inl Q4) (H.quad_hyp H.m₄ W4) (Or.inl ⟨a3, a1, a2⟩) (Or.inl ⟨b3, b1, b2⟩)
      (Or.inl ⟨a1, p3, by rw [sw]; linarith⟩) (Or.inl ⟨b3, hq, q4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptF f) (ptH h) (ptC c) (ptD d) Q P
      (Or.inl Q4) (HS.quad_hyp HS.m₄ W4) (Or.inl ⟨b3, b1, b2⟩) (Or.inl ⟨a3, a1, a2⟩)
      (Or.inl ⟨b1, q3, by rw [swQ]; linarith⟩) (Or.inl ⟨a3, hp, p4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩

/-- The isolation table for `CDF`: the line `PQ` isolates `D`. -/
theorem QuadPair.isoCDF (H : QuadPair a h b c d f P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have W2 := W_CDFH h c d f
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptC c) (ptD d) (ptF f) (ptH h) Q P
      (Or.inl Q2) (HS.quad_hyp HS.m₂ W2) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q5, hq⟩) (Or.inl ⟨a1, by rw [sw]; linarith, hPup⟩)
    exact iso_conv_swap k
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.isolates_of_mixed_pair (ptC c) (ptD d) (ptF f) (ptH h) P Q
      (Or.inl Q2) (H.quad_hyp H.m₂ W2) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p5, hp⟩) (Or.inl ⟨b1, by rw [swQ]; linarith, hQup⟩)
    exact iso_conv k

/-- The two upper-pair exclusions: no common diagonal sector, and the line `PQ` isolates the
vertex of `HCDF` cut off by a one-diagonal separation. -/
theorem QuadPair.pair_cover (H : QuadPair a h b c d f P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    (¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q)) ∧
    (InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0) ∧
    (InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0) ∧
    (InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0) ∧
    (InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0) :=
  ⟨H.sectors, H.isoHCD, H.isoHDF hPup hQup, H.isoHCF, H.isoCDF hPup hQup⟩

/-- Two upper points in the same diagonal sector are impossible. -/
theorem QuadPair.sector_excl (H : QuadPair a h b c d f P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q)
    (e6 : decide (0 < sarea (ptH h) (ptD d) P) = decide (0 < sarea (ptH h) (ptD d) Q))
    (e2 : decide (0 < sarea (ptC c) (ptF f) P) = decide (0 < sarea (ptC c) (ptF f) Q)) :
    False := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have Cv := H.sectors
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  rcases sgn_cases H.nHDP with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases sgn_cases H.nHDQ with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;>
    rcases sgn_cases H.nCFP with ⟨c1, c2⟩ | ⟨c1, c2⟩ <;>
    rcases sgn_cases H.nCFQ with ⟨d1, d2⟩ | ⟨d1, d2⟩ <;>
    (try (rw [a1, b1] at e6; exact absurd e6 (by decide))) <;>
    (try (rw [c1, d1] at e2; exact absurd e2 (by decide)))
  · exact Cv.2.2.2 ⟨⟨⟨a2, p4, p5⟩, ⟨hPu, c2, p5⟩⟩, ⟨⟨b2, q4, q5⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.2.1 ⟨⟨⟨a2, p4, p5⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨b2, q4, q5⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩
  · exact Cv.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨hPu, c2, p5⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩

/-- `diagonal_separation` and `OneCornerCompletion.isolates_of_mixed_pair` in Boolean form. -/
theorem QuadPair.forced_rel (H : QuadPair a h b c d f P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) :
    ForcedRel (decide (0 < sarea (ptH h) (ptD d) P)) (decide (0 < sarea (ptH h) (ptD d) Q))
      (decide (0 < sarea (ptC c) (ptF f) P)) (decide (0 < sarea (ptC c) (ptF f) Q))
      (decide (0 < sarea (ptH h) P Q)) (decide (0 < sarea (ptC c) P Q))
      (decide (0 < sarea (ptD d) P Q)) (decide (0 < sarea (ptF f) P Q)) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have E := diagonal_separation ⟨hPu, p3, p4, p5⟩ ⟨hQu, q3, q4, q5⟩
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  have nHDP : sarea (ptH h) (ptD d) P ≠ 0 := H.nHDP
  have nHDQ : sarea (ptH h) (ptD d) Q ≠ 0 := H.nHDQ
  have nCFP : sarea (ptC c) (ptF f) P ≠ 0 := H.nCFP
  have nCFQ : sarea (ptC c) (ptF f) Q ≠ 0 := H.nCFQ
  have dt : ∀ {x : ℝ}, 0 < x → decide (0 < x) = true := fun h => by simp [h]
  have df : ∀ {x : ℝ}, x < 0 → decide (0 < x) = false := fun h => by simp [not_lt.2 h.le]
  have tpos : ∀ {x : ℝ}, decide (0 < x) = true → 0 < x := fun h => of_decide_eq_true h
  have tneg : ∀ {x : ℝ}, x ≠ 0 → decide (0 < x) = false → x < 0 := fun hx h =>
    lt_of_le_of_ne (not_lt.1 (of_decide_eq_false h)) hx
  refine ⟨fun hne => ?_, fun hne => ?_, fun h1 h2 hne => ?_, fun h1 h2 hne => ?_,
    fun h1 h2 hne => ?_, fun h1 h2 hne => ?_⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    rcases sgn_cases nHDP with ⟨e, hp⟩ | ⟨e, hp⟩
    · obtain ⟨k1, k2⟩ := E.1 hsep |>.1 hp
      rw [e, df k1, dt k2]; decide
    · obtain ⟨k1, k2⟩ := E.1 hsep |>.2 hp
      rw [e, dt k1, df k2]; decide
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    rcases sgn_cases nCFP with ⟨e, hp⟩ | ⟨e, hp⟩
    · obtain ⟨k1, k2⟩ := E.2 hsep |>.1 hp
      rw [e, df k1, dt k2]; decide
    · obtain ⟨k1, k2⟩ := E.2 hsep |>.2 hp
      rw [e, dt k1, df k2]; decide
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    obtain ⟨k1, k2, k3⟩ := H.isoHDF hPu hQu ⟨tpos h1, p4, p5⟩ ⟨tpos h2, q4, q5⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nCFP nCFQ hne
    obtain ⟨k1, k2, k3⟩ := H.isoHCD ⟨hPu, p3, by rw [sw]; linarith [tneg nHDP h1]⟩
      ⟨hQu, q3, by rw [sw]; linarith [tneg nHDQ h2]⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    obtain ⟨k1, k2, k3⟩ := H.isoHCF ⟨hPu, tpos h1, p5⟩ ⟨hQu, tpos h2, q5⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩
  · have hsep := mul_neg_of_dec_ne nHDP nHDQ hne
    obtain ⟨k1, k2, k3⟩ := H.isoCDF hPu hQu ⟨p3, p4, by rw [sw]; linarith [tneg nCFP h1]⟩
      ⟨q3, q4, by rw [sw]; linarith [tneg nCFQ h2]⟩ hsep
    exact ⟨dec_ne_of_mul_neg k1, dec_ne_of_mul_neg k2, dec_ne_of_mul_neg k3⟩

end Heilbronn.Nine.SixBoundarySingle
