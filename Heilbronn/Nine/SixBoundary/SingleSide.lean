module

public import Heilbronn.Nine.SixBoundary.TwoSideProjection
public import Heilbronn.Nine.SixBoundary.SingleSide.Basic
public import Heilbronn.Nine.SixBoundary.SingleSide.Words
public import Heilbronn.Nine.SixBoundary.SingleSide.Trees
public import Heilbronn.Nine.Hulls.QuadrilateralHull
public import Heilbronn.Nine.Corners.OneCornerCompletion
public import Heilbronn.Nine.TypeII.TypeII.EndpointTriangle

/-! # N with one exterior side-cap point and two anchor-interior points
(`docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`)

Role: primary route. Theorem 1 closes the occupancy N6-01 `(0,0,1;2)` of
`docs/proof/nine/UNRESTRICTED.md`, Section 4, and by transposition `(1,0,0;2)` (`n6_01`).

Setting: `nConfig a h b c d f X P Q` with `NAnchors a h b c d f` (no order between `f` and `d`),
`X = (x, y)` in the closed cap `CD(1,0)` (`x = 1` allowed), `P = (p_x, p_y)` and
`Q = (q_x, q_y)` strictly inside the anchor hexagon. Contradiction hypothesis: every doubled area
is at least `s = 7/64` (`7/128 ≤ minTriangleArea`); `ρ = 13/16 < (4 + 2√3)s`. The hull is the
strictly convex heptagon (2) `(V₀, …, V₆) = (A, B, C, X, D, F, H)` with `P, Q` interior.

Certificate package (`docs/proof/nine/six_boundary_single_side_certificates.json`, checker
`docs/proof/nine/check_six_boundary_single_side.py`): the radial words (14) of `P, Q` on the heptagon lie
among 43 words (12 below `HC`, 31 above); the mixed and upper pair classes, the ear, sector and
sign exclusions and five sign splits give 543 cells, covered by 300 cubic certificates (40,480
terms) in the 27 factors of `claim_factors_costs` and the area costs of Section 4. Its geometric
conclusion is `claim_certificates`: no pair of radial words is realizable in the competitive
setting.

Results:
* `claim_heptagon`: the hull is the heptagon (2), `P, Q` interior;
* `claim_common_bounds`: the affine bounds (3)-(10);
* `claim_empties_and_classes`: the empty triangles (11), the ear capacities (12), the two pair
  classes (mixed, upper) with `W ≥ 4s` resp. `W ≥ 8s`, and `hc > 7/11` (13) in the mixed class;
* `claim_543_cell_cover`: the 57 / 43 / 12 / 31 word counts, and the words of `P, Q` lie among
  the 43 words, with the class given by `r₆ < 3` (below `HC`);
* `claim_factors_costs`: the 27 affine factors are nonnegative;
* `claim_certificates`: the package excludes every pair of radial words;
* `theorem1`: least area `< 7/128` (and transposed for a point in `FH(0,1)`);
* `n6_01`: the assembly form for N6-01 with exactly six contacts.

**Proof organization.** The geometric claims are proved for the structure `Conf`
(`Heilbronn.Nine.SixBoundary.SingleSide.Basic`), with the points indexed as in the certificate model
(`cfg`: `A, B, C, X, D, F, H, P, Q`). The finite part of the words is
`Heilbronn.Nine.SixBoundary.SingleSide.Words`. The certificate package is the cover of
`Heilbronn.Nine.SixBoundary.SingleSide.Model` (a computable mirror of
`docs/proof/nine/check_six_boundary_single_side.py`), whose 536 base cases and 543 cells are checked by the
kernel in `Heilbronn.Nine.SixBoundary.SingleSide.Trees*` (44,012 terms: each cell carries the
applicable record of the package with the fewest terms, by the checker's reuse rule; a reused record
whose cost has a larger threshold on its target cell is rewritten there with `q_ref = q_tgt + δ`, so
its expansion is unchanged); here `Cell.false` proves the soundness of the cover
(`Cover.checkTree_sound`). The hull-triangle signs summarized in the manuscript as "the full hull
is the strictly convex heptagon (2)" are derived from the coordinates in `Conf.hull` (the anchor
triangles directly, the triangles with `X` through the cap combination `capR_nonneg`).
`claim_certificates` does not need its two word hypotheses: the words of `P, Q` are produced by
`claim_543_cell_cover`, and every possible pair of them is a cell of the cover.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundarySingleSide

open SixBoundary Cover Cert Cert.Expr

/-- The hull heptagon (2) `(A, B, C, X, D, F, H)`. -/
def heptagonX (a h b c d f : ℝ) (X : Point) : Fin 7 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, ptF f, ptH h]

/-- The 43 words of Section 3: radial words on the heptagon (complement relation (15)) with the
inside-`CD` test `r₂ ≥ 2` and (16) `2 ≤ r₁ ≤ 4` (not in `ABH`, not in `BCX`). Among them,
`r₆ < 3` means below `HC` and `r₆ ≥ 3` above `HC`. -/
def singleSideWords : Finset (Fin 7 → Fin 7) :=
  (radialWords 7).filter fun r => 2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 4

variable {a h b c d f : ℝ} {X P Q : Point}

theorem Conf.of (hN : NAnchors a h b c d f) (hX : InCapR c d X) (hP : P ∈ unitSquare)
    (hQ : Q ∈ unitSquare) (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) : Conf a h b c d f X P Q :=
  ⟨hN, hX, hP, hQ, hPI, hQI, hmin⟩

theorem heptagonX_eq (i : Fin 7) : heptagonX a h b c d f X i = cfg a h b c d f X P Q i := by
  fin_cases i <;> rfl

/-! ### The hull heptagon (2) -/

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

/-- **The hull signs**: the 35 triangles of the heptagon are positively oriented (the twenty
anchor triangles directly; the fifteen with `X` from the cap combination). -/
theorem Conf.hull (H : Conf a h b c d f X P Q) :
    ∀ t ∈ hullTriples, 0 < sarea (cfg a h b c d f X P Q t.1) (cfg a h b c d f X P Q t.2.1)
      (cfg a h b c d f X P Q t.2.2) := by
  have hN := H.hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  have hd0 : 0 < d := by linarith
  have hX := H.hX
  have cyc2 : ∀ {p q r : Point}, 0 < sarea p q r → 0 ≤ sarea q r p := fun h => by
    rw [sarea_cycle]; exact h.le
  have cyc1 : ∀ {p q r : Point}, 0 < sarea p q r → 0 ≤ sarea r p q := fun h => by
    rw [← sarea_cycle]; exact h.le
  -- the triangles with `X`, as `[U W X] ≥ 0`
  have n013 := capR_nonneg hc hd0 hX (hex_ABC hN).le (hex_ABD hN).le (K_AB hN)
  have n023 := capR_nonneg hc hd0 hX (zero_sarea₂₃ _ _) (hex_ACD hN).le (K_AC hN)
  have n123 := capR_nonneg hc hd0 hX (zero_sarea₂₃ _ _) (hex_BCD hN).le (K_BC hN)
  have n034 := capR_nonneg hc hd0 hX (cyc1 (hex_ACD hN)) (zero_sarea₁₃ _ _) (K_DA hN)
  have n035 := capR_nonneg hc hd0 hX (cyc1 (hex_ACF hN)) (cyc1 (hex_ADF hN)) (K_FA hN)
  have n036 := capR_nonneg hc hd0 hX (cyc1 (hex_ACH hN)) (cyc1 (hex_ADH hN)) (K_HA hN)
  have n134 := capR_nonneg hc hd0 hX (cyc1 (hex_BCD hN)) (zero_sarea₁₃ _ _) (K_DB hN)
  have n135 := capR_nonneg hc hd0 hX (cyc1 (hex_BCF hN)) (cyc1 (hex_BDF hN)) (K_FB hN)
  have n136 := capR_nonneg hc hd0 hX (cyc1 (hex_BCH hN)) (cyc1 (hex_BDH hN)) (K_HB hN)
  have n235 := capR_nonneg hc hd0 hX (zero_sarea₂₃ _ _) (cyc1 (hex_CDF hN)) (K_FC hN)
  have n236 := capR_nonneg hc hd0 hX (zero_sarea₂₃ _ _) (cyc1 (hex_CDH hN)) (K_HC hN)
  have n345 := capR_nonneg hc hd0 hX (cyc2 (hex_CDF hN)) (zero_sarea₁₃ _ _) (K_DF hN)
  have n346 := capR_nonneg hc hd0 hX (cyc2 (hex_CDH hN)) (zero_sarea₁₃ _ _) (K_DH hN)
  have n356 := capR_nonneg hc hd0 hX (cyc2 (hex_CFH hN)) (cyc2 (hex_DFH hN)) (K_FH hN)
  have n234 : 0 ≤ sarea (ptC c) X (ptD d) := by rw [sarea_swap₂₃]; linarith [hX.2]
  simp only [hullTriples, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true]
  refine ⟨hex_ABC hN, H.pos 0 1 3 (hpos := n013), hex_ABD hN, hex_ABF hN, hex_ABH hN,
    H.pos 0 2 3 (hpos := n023), hex_ACD hN, hex_ACF hN, hex_ACH hN,
    H.pos 0 3 4 (hpos := by rw [sarea_cycle]; exact n034),
    H.pos 0 3 5 (hpos := by rw [sarea_cycle]; exact n035),
    H.pos 0 3 6 (hpos := by rw [sarea_cycle]; exact n036),
    hex_ADF hN, hex_ADH hN, hex_AFH hN,
    H.pos 1 2 3 (hpos := n123), hex_BCD hN, hex_BCF hN, hex_BCH hN,
    H.pos 1 3 4 (hpos := by rw [sarea_cycle]; exact n134),
    H.pos 1 3 5 (hpos := by rw [sarea_cycle]; exact n135),
    H.pos 1 3 6 (hpos := by rw [sarea_cycle]; exact n136),
    hex_BDF hN, hex_BDH hN, hex_BFH hN,
    H.pos 2 3 4 (hpos := n234),
    H.pos 2 3 5 (hpos := by rw [sarea_cycle]; exact n235),
    H.pos 2 3 6 (hpos := by rw [sarea_cycle]; exact n236),
    hex_CDF hN, hex_CDH hN, hex_CFH hN,
    H.pos 3 4 5 (hpos := by rw [← sarea_cycle]; exact n345),
    H.pos 3 4 6 (hpos := by rw [← sarea_cycle]; exact n346),
    H.pos 3 5 6 (hpos := by rw [← sarea_cycle]; exact n356),
    hex_DFH hN⟩

theorem Conf.convex (H : Conf a h b c d f X P Q) : IsConvexCCW (heptagonX a h b c d f X) := by
  intro i j k hij hjk
  rw [heptagonX_eq (P := P) (Q := Q), heptagonX_eq (P := P) (Q := Q),
    heptagonX_eq (P := P) (Q := Q)]
  exact H.hull _ (mem_hullTriples i j k hij hjk k.isLt)

/-- The two edges `CX`, `XD` of the heptagon keep `P` on their inner side. -/
theorem Conf.edgesP (H : Conf a h b c d f X P Q) :
    0 < sarea (ptC c) X P ∧ 0 < sarea X (ptD d) P := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨px0, px1, py0, py1⟩ := H.sqP
  have hd0 : 0 < d := by linarith
  constructor
  · have n := capR_nonneg (U := P) (W := ptC c) hc hd0 H.hX (zero_sarea₂₃ _ _)
      (by rw [← sarea_cycle]; exact p3.le)
      (by simp only [sarea]; nlinarith [mul_nonneg py0 (show 0 ≤ 1 - c by linarith)])
    exact H.pos 2 3 7 (hpos := by rw [sarea_cycle]; exact n)
  · have n := capR_nonneg (U := ptD d) (W := P) hc hd0 H.hX (by rw [sarea_cycle]; exact p3.le)
      (zero_sarea₁₃ _ _)
      (by simp only [sarea]; nlinarith [mul_nonneg hd0.le (show 0 ≤ 1 - P.1 by linarith)])
    exact H.pos 3 4 7 (hpos := by rw [← sarea_cycle]; exact n)

theorem Conf.polyP (H : Conf a h b c d f X P Q) : InPolygon (heptagonX a h b c d f X) P := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨e1, e2⟩ := H.edgesP
  intro i
  fin_cases i
  exacts [p1, p2, e1, e2, p4, p5, p6]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon`). With every doubled area at least
`7/64`, `X` in the cap `CD(1,0)` and `P, Q` strictly inside the anchor hexagon, the full hull is
the strictly convex heptagon (2) `A, B, C, X, D, F, H` (counterclockwise) with `P, Q` interior.
`docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 44-51. -/
theorem claim_heptagon {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (heptagonX a h b c d f X) ∧ InPolygon (heptagonX a h b c d f X) P ∧
      InPolygon (heptagonX a h b c d f X) Q := by
  have H := Conf.of hN hX hP hQ hPI hQI hmin
  exact ⟨H.convex, H.polyP, H.swap.polyP⟩

/-! ### Section 1: common affine bounds -/

/-- The projection identities (9), for every point `R`. -/
theorem eq9 (h c d f : ℝ) (R : Point) :
    (1 - f) * sarea (ptC c) (ptD d) R + (1 - c) * sarea (ptD d) (ptF f) R =
        sarea (ptC c) (ptD d) (ptF f) * (1 - R.1) ∧
      (1 - d) * sarea (ptF f) (ptH h) R + (1 - h) * sarea (ptD d) (ptF f) R =
        sarea (ptD d) (ptF f) (ptH h) * (1 - R.2) := by
  constructor <;> simp only [sarea] <;> ring

/-- The interior box (10) of `P`. -/
theorem Conf.boxP (H : Conf a h b c d f X P Q) :
    7 / 64 ≤ P.1 ∧ P.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ P.2 ∧ P.2 ≤ 1 - 7 / 64 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨px0, px1, py0, py1⟩ := H.sqP
  have hHA : 7 / 64 ≤ sarea (ptH h) (ptA a) P := H.ge 6 0 7 (hpos := p6.le)
  have hBC : 7 / 64 ≤ sarea (ptB b) (ptC c) P := H.ge 1 2 7 (hpos := p2.le)
  have hCD : 7 / 64 ≤ sarea (ptC c) (ptD d) P := H.ge 2 4 7 (hpos := p3.le)
  have hDF : 7 / 64 ≤ sarea (ptD d) (ptF f) P := H.ge 4 5 7 (hpos := p4.le)
  have hFH : 7 / 64 ≤ sarea (ptF f) (ptH h) P := H.ge 5 6 7 (hpos := p5.le)
  obtain ⟨e1, e2⟩ := eq9 h c d f P
  have hCDF := hex_CDF H.hN
  have hDFH := hex_DFH H.hN
  have b1 : sarea (ptC c) (ptD d) (ptF f) ≤ (1 - f) + (1 - c) := by
    simp only [sarea]
    nlinarith [mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ c - f by linarith)]
  have b2 : sarea (ptD d) (ptF f) (ptH h) ≤ (1 - d) + (1 - h) := by
    simp only [sarea]
    nlinarith [mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ h - d by linarith)]
  simp only [sarea] at hHA hBC
  refine ⟨?_, ?_, ?_, ?_⟩
  · nlinarith [mul_nonneg (show 0 ≤ 1 - (h - a) by linarith) px0]
  · nlinarith [mul_le_mul_of_nonneg_left hCD (show 0 ≤ 1 - f by linarith),
      mul_le_mul_of_nonneg_left hDF (show 0 ≤ 1 - c by linarith)]
  · nlinarith [mul_nonneg (show 0 ≤ 1 - (c - b) by linarith) py0]
  · nlinarith [mul_le_mul_of_nonneg_left hFH (show 0 ≤ 1 - d by linarith),
      mul_le_mul_of_nonneg_left hDF (show 0 ≤ 1 - h by linarith)]

/-- The five area costs behind (3)-(8): `[ABC], [ABH], [BCX], [CXD], [DFH], [CDF] ≥ s`. -/
theorem Conf.areas (H : Conf a h b c d f X P Q) :
    7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧ 7 / 64 ≤ (f - 1) * (h - d) + (1 - d) ∧
      7 / 64 ≤ (1 - c) + d * (c - f) := by
  have hl := H.hull
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · have := H.ge 0 1 2 (hpos := (hex_ABC H.hN).le)
    simp only [cfg, sarea] at this; linarith
  · have := H.ge 0 1 6 (hpos := (hex_ABH H.hN).le)
    simp only [cfg, sarea] at this; linarith
  · have := H.ge 1 2 3 (hpos := (hl (1, 2, 3) (mem_hullTriples 1 2 3 (by norm_num) (by norm_num)
      (by norm_num))).le)
    simp only [cfg, sarea] at this; linarith
  · have := H.ge 2 3 4 (hpos := (hl (2, 3, 4) (mem_hullTriples 2 3 4 (by norm_num) (by norm_num)
      (by norm_num))).le)
    simp only [cfg, sarea] at this; linarith
  · have := H.ge 4 5 6 (hpos := (hex_DFH H.hN).le)
    simp only [cfg, sarea] at this; linarith
  · have := H.ge 2 4 5 (hpos := (hex_CDF H.hN).le)
    simp only [cfg, sarea] at this; linarith

/-- (4): the cap bounds, from `[CXD] ≥ s`. -/
theorem bounds_cap {c d x y : ℝ} (hd0 : 0 < d) (hd1 : d < 1) (hc : c < 1) (y0 : 0 ≤ y)
    (x1 : x ≤ 1) (e4 : 7 / 64 ≤ d * (x - c) - (1 - c) * y) :
    7 / 64 ≤ x - c ∧ 7 / 64 + d * (1 - x) ≤ (1 - c) * (d - y) ∧ c ≤ 1 - 7 / 64 ∧
      0 < d - y := by
  have hy : 0 ≤ (1 - c) * y := mul_nonneg (by linarith) y0
  have hxc : 0 ≤ x - c := by
    by_contra hn; push Not at hn
    have := mul_pos hd0 (show 0 < -(x - c) by linarith)
    linarith
  have hxs : 7 / 64 ≤ x - c := by
    have := mul_le_mul_of_nonneg_right hd1.le hxc
    linarith
  have hcap : 7 / 64 + d * (1 - x) ≤ (1 - c) * (d - y) := by linarith
  have hdx : 0 ≤ d * (1 - x) := mul_nonneg hd0.le (by linarith)
  have hdy : 0 < d - y := by
    by_contra hn; push Not at hn
    have := mul_nonneg (show 0 ≤ 1 - c by linarith) (show 0 ≤ -(d - y) by linarith)
    linarith
  have hc1 : c ≤ 1 - 7 / 64 := by
    have := mul_le_mul_of_nonneg_left (show d - y ≤ 1 by linarith) (show 0 ≤ 1 - c by linarith)
    linarith
  exact ⟨hxs, hcap, hc1, hdy⟩

/-- (5): `a ≥ 7/50`, `b ≥ 175/1376`, `a, y ≥ 1/7`, `b ≥ 1/8`. -/
theorem bounds_ab {a h b c y : ℝ} (ha : 0 < a) (hh : h < 1) (hb : 0 < b) (y0 : 0 ≤ y)
    (hc1 : c ≤ 1 - 7 / 64) (e1 : 7 / 64 ≤ a * (c - b))
    (e2 : 7 / 64 ≤ b * (h - a)) (e3 : 7 / 64 ≤ (c - b) * y) :
    7 / 50 ≤ a ∧ 175 / 1376 ≤ b ∧ 1 / 7 ≤ a ∧ 1 / 7 ≤ y ∧ 1 / 8 ≤ b := by
  have hbs : 7 / 64 ≤ b := by
    have := mul_le_mul_of_nonneg_left (show h - a ≤ 1 by linarith) hb.le
    linarith
  have ha50 : 7 / 50 ≤ a := by
    have := mul_le_mul_of_nonneg_left (show c - b ≤ 1 - 2 * (7 / 64) by linarith) ha.le
    linarith
  have hb1376 : 175 / 1376 ≤ b := by
    have := mul_le_mul_of_nonneg_left (show h - a ≤ 43 / 50 by linarith) hb.le
    linarith
  have ha7 : 1 / 7 ≤ a := by
    have := mul_le_mul_of_nonneg_left (show c - b ≤ 49 / 64 by linarith) ha.le
    linarith
  have hy7 : 1 / 7 ≤ y := by
    have := mul_le_mul_of_nonneg_right (show c - b ≤ 49 / 64 by linarith) y0
    linarith
  exact ⟨ha50, hb1376, ha7, hy7, by linarith⟩

/-- (6): `h ≥ s/M + s/b`, `hc ≥ 4s`, `c ≥ 4s`. -/
theorem bounds_hc {a h b c : ℝ} (hh : h < 1) (hb : 0 < b) (hbc : b < c)
    (e1 : 7 / 64 ≤ a * (c - b)) (e2 : 7 / 64 ≤ b * (h - a)) :
    7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧ 4 * (7 / 64) ≤ h * c ∧ 4 * (7 / 64) ≤ c := by
  have hM : 0 < c - b := by linarith
  have hhM : 7 / 64 / (c - b) + 7 / 64 / b ≤ h := by
    have h1 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
    have h2 : 7 / 64 / b ≤ h - a := by rw [div_le_iff₀ hb]; linarith
    linarith
  have hhc : 4 * (7 / 64) ≤ h * c := by
    have k1 : 7 / 64 * b ≤ a * (c - b) * b := mul_le_mul_of_nonneg_right e1 hb.le
    have k2 : 7 / 64 * (c - b) ≤ b * (h - a) * (c - b) := mul_le_mul_of_nonneg_right e2 hM.le
    have k3 : 7 / 64 * c * c ≤ h * c * (b * (c - b)) := by
      have := mul_le_mul_of_nonneg_left (add_le_add k1 k2) (show 0 ≤ c by linarith)
      linarith
    have k4 : 4 * (b * (c - b)) ≤ c * c := by linarith [sq_nonneg (b - (c - b))]
    have hbM : 0 < b * (c - b) := mul_pos hb hM
    by_contra hn; push Not at hn
    have := mul_lt_mul_of_pos_right hn hbM
    linarith
  have hc4 : 4 * (7 / 64) ≤ c := by
    have := mul_le_mul_of_nonneg_right hh.le (show 0 ≤ c by linarith)
    linarith
  exact ⟨hhM, hhc, hc4⟩

/-- (7): `d > 1/2`, by Cauchy–Schwarz on `My ≥ s`, `(1-c)(d-y) ≥ s` with `M + 1 - c = 1 - b`. -/
theorem bounds_d {b c d y : ℝ} (hbc : b < c) (hc : c < 1) (hb : 175 / 1376 ≤ b)
    (e3 : 7 / 64 ≤ (c - b) * y) (hw2 : 7 / 64 ≤ (1 - c) * (d - y)) : 1 / 2 < d := by
  have hM : 0 < c - b := by linarith
  have hw : 0 < 1 - c := by linarith
  have m1 : 7 / 64 * (1 - c) ≤ (c - b) * y * (1 - c) := mul_le_mul_of_nonneg_right e3 hw.le
  have m2 : 7 / 64 * (c - b) ≤ (1 - c) * (d - y) * (c - b) :=
    mul_le_mul_of_nonneg_right hw2 hM.le
  have m3 : 7 / 64 * ((c - b) + (1 - c)) ≤ d * ((c - b) * (1 - c)) := by linarith
  have m4 : 4 * ((c - b) * (1 - c)) ≤ ((c - b) + (1 - c)) ^ 2 := by
    linarith [sq_nonneg ((c - b) - (1 - c))]
  have huw : 0 < (c - b) * (1 - c) := mul_pos hM hw
  have m5 : 4 * (7 / 64) * ((c - b) * (1 - c)) ≤
      d * ((c - b) + (1 - c)) * ((c - b) * (1 - c)) := by
    have := mul_le_mul_of_nonneg_left m3 (show 0 ≤ (c - b) + (1 - c) by linarith)
    linarith
  have m6 : 4 * (7 / 64) ≤ d * ((c - b) + (1 - c)) := le_of_mul_le_mul_right m5 huw
  by_contra hn; push Not at hn
  have := mul_nonneg (show 0 ≤ 1 / 2 - d by linarith) (show 0 ≤ 1 - b by linarith)
  linarith

/-- The anchor and cap bounds (3)-(8). -/
theorem Conf.anchor (H : Conf a h b c d f X P Q) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2) ∧
    (7 / 64 ≤ X.1 - c ∧ 7 / 64 + d * (1 - X.1) ≤ (1 - c) * (d - X.2) ∧ c ≤ 1 - 7 / 64) ∧
    (7 / 50 ≤ a ∧ 175 / 1376 ≤ b ∧ 1 / 7 ≤ a ∧ 1 / 7 ≤ X.2 ∧ 1 / 8 ≤ b) ∧
    (7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧ 4 * (7 / 64) ≤ h * c ∧ 4 * (7 / 64) ≤ c) ∧
    (1 / 2 < d ∧ 1 / 2 < h ∧ d ≤ 1 - 7 / 64 ∧ f ≤ 1 - 7 / 64) ∧
    7 / 36 ≤ d - X.2 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := H.hX
  obtain ⟨e1, e2, e3, e4, e5, e6⟩ := H.areas
  obtain ⟨k1, k2, k3, k4⟩ := bounds_cap (show 0 < d by linarith) (show d < 1 by linarith) hc y0
    x1 e4
  have hdx : 0 ≤ d * (1 - X.1) := mul_nonneg (by linarith) (by linarith)
  obtain ⟨b1, b2, b3, b4, b5⟩ := bounds_ab ha hh hb y0 k3 e1 e2 e3
  obtain ⟨c1, c2, c3⟩ := bounds_hc hh hb hbc e1 e2
  have hd2 := bounds_d (d := d) hbc hc b2 e3 (by linarith)
  have hd1 : d ≤ 1 - 7 / 64 := by
    have := mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ h - d by linarith)
    linarith
  have hf1 : f ≤ 1 - 7 / 64 := by
    have := mul_nonneg (show 0 ≤ 1 - d by linarith) (show 0 ≤ c - f by linarith)
    linarith
  have hdy36 : 7 / 36 ≤ d - X.2 := by
    have := mul_le_mul_of_nonneg_right (show 1 - c ≤ 36 / 64 by linarith) k4.le
    linarith
  exact ⟨⟨e1, e2, e3, e4⟩, ⟨k1, k2, k3⟩, ⟨b1, b2, b3, b4, b5⟩, ⟨c1, c2, c3⟩,
    ⟨hd2, by linarith, hd1, hf1⟩, hdy36⟩

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-common-bounds`). In the setting with every doubled
area at least `s = 7/64` (`L = h - a`, `M = c - b`, `X = (x, y)`): (3) `aM, bL, My ≥ s`,
`[CXD] = d(x - c) - (1 - c)y ≥ s`; (4) `x - c ≥ s`, `(1 - c)(d - y) ≥ s + d(1 - x)`,
`c ≤ 1 - s`; (5) `a ≥ 7/50`, `b ≥ 175/1376`, `a, y ≥ 1/7`, `b ≥ 1/8`; (6) `h ≥ s/M + s/b`,
`hc ≥ 4s`, `c ≥ 4s`; (7) `d > 1/2`, `h > 1/2`, `d, f ≤ 1 - s`; (8) `d - y ≥ 7/36`;
(10) `s ≤ p_x, p_y, q_x, q_y ≤ 1 - s`. `docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 54-135. -/
theorem claim_common_bounds {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2) ∧
    (7 / 64 ≤ X.1 - c ∧ 7 / 64 + d * (1 - X.1) ≤ (1 - c) * (d - X.2) ∧ c ≤ 1 - 7 / 64) ∧
    (7 / 50 ≤ a ∧ 175 / 1376 ≤ b ∧ 1 / 7 ≤ a ∧ 1 / 7 ≤ X.2 ∧ 1 / 8 ≤ b) ∧
    (7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧ 4 * (7 / 64) ≤ h * c ∧ 4 * (7 / 64) ≤ c) ∧
    (1 / 2 < d ∧ 1 / 2 < h ∧ d ≤ 1 - 7 / 64 ∧ f ≤ 1 - 7 / 64) ∧
    7 / 36 ≤ d - X.2 ∧
    (7 / 64 ≤ P.1 ∧ P.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ P.2 ∧ P.2 ≤ 1 - 7 / 64 ∧
      7 / 64 ≤ Q.1 ∧ Q.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ Q.2 ∧ Q.2 ≤ 1 - 7 / 64) := by
  have H := Conf.of hN hX hP hQ hPI hQI hmin
  obtain ⟨k1, k2, k3, k4, k5, k6⟩ := H.anchor
  obtain ⟨p1, p2, p3, p4⟩ := H.boxP
  obtain ⟨q1, q2, q3, q4⟩ := H.swap.boxP
  exact ⟨k1, k2, k3, k4, k5, k6, p1, p2, p3, p4, q1, q2, q3, q4⟩

/-! ### Section 2: empty triangles, capacities and the two pair classes -/

/-- (11): `[ABH] < 3s` (`SIX_BOUNDARY_EXTERIOR` Theorem 5) and `[BCX] < 3s`
(`SIX_BOUNDARY_TWO_SIDE_PROJECTION` Lemma 2); neither contains `P` or `Q`. -/
theorem Conf.empties (H : Conf a h b c d f X P Q) :
    (sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧ ¬ InTriangle P (ptA a) (ptB b) (ptH h) ∧
        ¬ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
      (sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧ ¬ InTriangle P (ptB b) (ptC c) X ∧
        ¬ InTriangle Q (ptB b) (ptC c) X) :=
  ⟨(SixBoundaryExterior.theorem5 H.hN H.hX.1 H.sqP H.sqQ H.hmin).1 H.hX,
    (SixBoundaryTwoSideProjection.lemma2 H.hN H.hX.1 H.sqP H.sqQ H.hmin).1 H.hX⟩

/-- The ears (12) (`SIX_BOUNDARY_HULL` Theorem 1). -/
theorem Conf.ears (H : Conf a h b c d f X P Q) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
    ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
    ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
    ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
    ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a)) := by
  have k := SixBoundaryHull.theorem1 H.hN H.hX.1 H.sqP H.sqQ H.hmin
  obtain ⟨e, ⟨-, -, m1⟩, ⟨-, -, m2⟩, ⟨-, -, m3⟩, ⟨-, -, m4⟩, ⟨-, -, m5⟩, ⟨-, -, m6⟩⟩ := k
  exact ⟨e, m1, m2, m3, m4, m5, m6⟩

/-- At most one interior point below `HC` (`QUADRILATERAL_HULL` Theorem 4). -/
theorem Conf.one_below (H : Conf a h b c d f X P Q) :
    ¬ (sarea (ptH h) (ptC c) P < 0 ∧ sarea (ptH h) (ptC c) Q < 0) := by
  rintro ⟨hPl, hQl⟩
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨p0, -, p2, -⟩ := H.sqP
  obtain ⟨q0, -, q2, -⟩ := H.sqQ
  have hT : ∀ R : Point, sarea (ptH h) (ptC c) R < 0 → 0 ≤ R.1 → 0 ≤ R.2 →
      QuadrilateralHull.InT0 h c R := fun R hR h1 h2 =>
    ⟨h1, h2, by simp only [sarea] at hR; nlinarith⟩
  have k := QuadrilateralHull.theorem4 H.hN H.hX.1 H.sqP H.sqQ
    (Or.inr (Or.inr ⟨hT P hPl p0 p2, hT Q hQl q0 q2⟩))
  have hhc : h * c < 1 := by
    have := mul_lt_of_lt_one_left (show 0 < c by linarith) hh
    linarith
  linarith [k.1, H.hmin]

/-- Each interior point lies in `HCDF` (above `HC`) or in `HABC` (below `HC`). -/
theorem Conf.upper_or_lower (H : Conf a h b c d f X P Q) :
    (0 < sarea (ptH h) (ptC c) P ∧ InUpperQuad h c d f P) ∨
      (sarea (ptH h) (ptC c) P < 0 ∧ InLowerQuad a h b c P) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  have hne : sarea (ptH h) (ptC c) P ≠ 0 := H.ne 6 2 7
  rcases hne.lt_or_gt with hl | hu
  · right
    refine ⟨hl, p6, p1, p2, ?_⟩
    have := sarea_swap₁₂ (ptH h) (ptC c) P
    linarith
  · left; exact ⟨hu, hu, p3, p4, p5⟩

theorem lowerQuad_neg {R : Point} (hR : InLowerQuad a h b c R) : sarea (ptH h) (ptC c) R < 0 := by
  have := sarea_swap₁₂ (ptH h) (ptC c) R
  linarith [hR.2.2.2]

/-- The fan subdivision of `HCDF` from an upper point. -/
theorem Conf.fanP (H : Conf a h b c d f X P Q) (hu : 0 < sarea (ptH h) (ptC c) P) :
    4 * (7 / 64) ≤ 1 - (h - d) * (c - f) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  have s1 : 7 / 64 ≤ sarea (ptH h) (ptC c) P := H.ge 6 2 7 (hpos := hu.le)
  have s2 : 7 / 64 ≤ sarea (ptC c) (ptD d) P := H.ge 2 4 7 (hpos := p3.le)
  have s3 : 7 / 64 ≤ sarea (ptD d) (ptF f) P := H.ge 4 5 7 (hpos := p4.le)
  have s4 : 7 / 64 ≤ sarea (ptF f) (ptH h) P := H.ge 5 6 7 (hpos := p5.le)
  have e : sarea (ptH h) (ptC c) P + sarea (ptC c) (ptD d) P + sarea (ptD d) (ptF f) P +
      sarea (ptF f) (ptH h) P = 1 - (h - d) * (c - f) := by simp only [sarea]; ring
  linarith

/-- The upper class: `W ≥ 8s` by `QUADRILATERAL_HULL` Theorem 1. -/
theorem Conf.W_upper (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) : 8 * (7 / 64) ≤ 1 - (h - d) * (c - f) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have hq : QuadrilateralHull.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := by
    refine ⟨?_, hex_CDF H.hN, hex_DFH H.hN, ?_⟩
    · rw [← sarea_cycle]; exact hex_CDH H.hN
    · rw [sarea_cycle]; exact hex_CFH H.hN
  have k := (QuadrilateralHull.theorem1 hq ⟨hPu.le, p3.le, p4.le, p5.le⟩
    ⟨hQu.le, q3.le, q4.le, q5.le⟩).1
  have hm := H.sub (by norm_num) ![6, 2, 4, 5, 7, 8] (by intro x; fin_cases x <;> decide)
    (by decide)
  have e : (fun x => cfg a h b c d f X P Q (![6, 2, 4, 5, 7, 8] x)) =
      ![ptH h, ptC c, ptD d, ptF f, P, Q] := by funext x; fin_cases x <;> rfl
  rw [e] at hm
  have hA : QuadrilateralHull.quadArea (ptH h) (ptC c) (ptD d) (ptF f) =
      (1 - (h - d) * (c - f)) / 2 := by
    simp only [QuadrilateralHull.quadArea, sarea]; ring
  rw [hA] at k
  linarith

/-- `7/11 < s/(3 - 2√2)`, i.e. `8 > (31/11)²`. -/
theorem seven_eleven_lt : (7 / 11 : ℝ) < 7 / 64 / (3 - 2 * Real.sqrt 2) := by
  have h2 : (14142 / 10000 : ℝ) < Real.sqrt 2 := by
    rw [Real.lt_sqrt (by norm_num)]; norm_num
  have h2' : Real.sqrt 2 < 3 / 2 := by
    rw [Real.sqrt_lt' (by norm_num)]; norm_num
  rw [lt_div_iff₀ (by linarith)]
  linarith

/-- The endpoint bound (13) for a lower point `P` (`TYPE_II` §1, the five points `H, C, A, B, P`
in the virtual triangle `(0,0)HC`). -/
theorem Conf.hc_endpoint (H : Conf a h b c d f X P Q) (hlow : sarea (ptH h) (ptC c) P < 0) :
    7 / 64 / (3 - 2 * Real.sqrt 2) ≤ h * c := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  have bP := H.boxP
  have hO : 0 < sarea ((0 : ℝ), (0 : ℝ)) (ptC c) (ptH h) := by
    simp only [sarea]; nlinarith [mul_pos (show 0 < h by linarith) (show 0 < c by linarith)]
  have hset : ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) =
      {((0 : ℝ), (0 : ℝ)), ptC c, ptH h} := by
    ext x; simp only [Set.mem_insert_iff, Set.mem_singleton_iff]; tauto
  have mA : ptA a ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < c by linarith) (show 0 < h - a by linarith),
        mul_pos (show 0 < c by linarith) ha]
  have mB : ptB b ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < h by linarith) (show 0 < c - b by linarith),
        mul_pos (show 0 < h by linarith) hb]
  have mP : P ∈ convexHull ℝ ({ptH h, ptC c, ((0 : ℝ), (0 : ℝ))} : Set Point) := by
    rw [hset]
    simp only [sarea] at hlow
    refine mem_convexHull_of_sarea' hO ?_ ?_ ?_ <;> simp only [sarea] <;>
      nlinarith [mul_pos (show 0 < h by linarith) (show 0 < P.1 by linarith),
        mul_pos (show 0 < c by linarith) (show 0 < P.2 by linarith)]
  have k := TypeII.endpointTriangleTheorem (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) (ptA a) (ptB b) P
    mA mB mP
  have hm := H.sub (by norm_num) ![6, 2, 0, 1, 7] (by intro x; fin_cases x <;> decide)
    (by decide)
  have e : (fun x => cfg a h b c d f X P Q (![6, 2, 0, 1, 7] x)) =
      ![ptH h, ptC c, ptA a, ptB b, P] := by funext x; fin_cases x <;> rfl
  rw [e] at hm
  have hT : triangleArea (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) = h * c / 2 := by
    rw [triangleArea_eq]
    have : sarea (ptH h) (ptC c) ((0 : ℝ), (0 : ℝ)) = -(h * c) := by simp only [sarea]; ring
    rw [this, abs_neg, abs_of_pos (by nlinarith)]
  rw [hT] at k
  have hk : TypeII.kEnd = 3 - 2 * Real.sqrt 2 := rfl
  have kpos : 0 < 3 - 2 * Real.sqrt 2 := by
    have : Real.sqrt 2 < 3 / 2 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
    linarith
  rw [hk] at k
  rw [div_le_iff₀ kpos]
  nlinarith

/-- The mixed class: `W ≥ 4s` (fan from the upper point `Q`) and `hc > 7/11` (13) from the lower
point `P`. -/
theorem Conf.mixed_costs (H : Conf a h b c d f X P Q) (hPl : sarea (ptH h) (ptC c) P < 0) :
    4 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 7 / 11 < h * c := by
  have hQu : 0 < sarea (ptH h) (ptC c) Q := by
    rcases (H.ne 6 2 8).lt_or_gt with hl | hu
    · exact absurd ⟨hPl, hl⟩ H.one_below
    · exact hu
  exact ⟨H.swap.fanP hQu, lt_of_lt_of_le seven_eleven_lt (H.hc_endpoint hPl)⟩

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes`). In the setting with every
doubled area at least `s = 7/64` (`ρ = 13/16`, `W = 1 - (h - d)(c - f)`):
(11) `[ABH] < 3s` and `[BCX] < 3s`, and neither triangle contains `P` or `Q`;
(12) the six ears have doubled area `< ρ` and none contains both `P` and `Q`;
at most one of `P, Q` is below `HC` (else least area `≤ 7hc/128 < 7/128`), so the pair is
*mixed* (one in `HABC`, one in `HCDF`) or *upper* (both in `HCDF`); the mixed class has
`W ≥ 4s` and `hc > 7/11` (13), the upper class `W ≥ 8s` and `hc ≥ 4s`.
`docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 137-203.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem5, SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2,
SIX_BOUNDARY_HULL:Theorem1, QUADRILATERAL_HULL:Theorem4, QUADRILATERAL_HULL:Theorem1,
TYPE_II:EndpointTriangleTheorem, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_empties_and_classes {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧ sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
      ¬ InTriangle P (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Q (ptA a) (ptB b) (ptH h) ∧
      ¬ InTriangle P (ptB b) (ptC c) X ∧ ¬ InTriangle Q (ptB b) (ptC c) X) ∧
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    (¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
      ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
      ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
      ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
      ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
      ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a))) ∧
    ((InLowerQuad a h b c P ∧ InUpperQuad h c d f Q) ∨
      (InUpperQuad h c d f P ∧ InLowerQuad a h b c Q) ∨
      (InUpperQuad h c d f P ∧ InUpperQuad h c d f Q)) ∧
    ((InLowerQuad a h b c P ∨ InLowerQuad a h b c Q) →
      4 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 7 / 11 < h * c) ∧
    ((InUpperQuad h c d f P ∧ InUpperQuad h c d f Q) →
      8 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 4 * (7 / 64) ≤ h * c) := by
  have H := Conf.of hN hX hP hQ hPI hQI hmin
  obtain ⟨⟨t1, t2, t3⟩, ⟨u1, u2, u3⟩⟩ := H.empties
  obtain ⟨e, m⟩ := H.ears
  refine ⟨⟨t1, u1, t2, t3, u2, u3⟩, e, m, ?_, ?_, ?_⟩
  · rcases H.upper_or_lower with ⟨hPu, uP⟩ | ⟨hPl, lP⟩ <;>
      rcases H.swap.upper_or_lower with ⟨hQu, uQ⟩ | ⟨hQl, lQ⟩
    · exact Or.inr (Or.inr ⟨uP, uQ⟩)
    · exact Or.inr (Or.inl ⟨uP, lQ⟩)
    · exact Or.inl ⟨lP, uQ⟩
    · exact absurd ⟨hPl, hQl⟩ H.one_below
  · rintro (lP | lQ)
    · exact H.mixed_costs (lowerQuad_neg lP)
    · obtain ⟨k1, k2⟩ := H.swap.mixed_costs (lowerQuad_neg lQ)
      exact ⟨k1, k2⟩
  · rintro ⟨uP, uQ⟩
    exact ⟨H.W_upper uP.1 uQ.1, H.anchor.2.2.2.1.2.1⟩

/-! ### Section 3: the words -/

/-- The word of `P`: one of the 43 words, with `r₆ < 3` exactly below `HC`. -/
theorem Conf.wordP (H : Conf a h b c d f X P Q) :
    ∃ r ∈ singleSideWords, HasRadialWord (heptagonX a h b c d f X) P (fun i => (r i : ℕ)) ∧
      ((r 6 : ℕ) < 3 ↔ InLowerQuad a h b c P) := by
  have hgen : ∀ i j : Fin 7, i ≠ j → sarea (heptagonX a h b c d f X i)
      (heptagonX a h b c d f X j) P ≠ 0 := by
    intro i j hij
    rw [heptagonX_eq (P := P) (Q := Q), heptagonX_eq (P := P) (Q := Q)]
    exact H.ne i j 7 (by have := i.isLt; omega) (by have := j.isLt; omega) (by norm_num)
      (fun e => hij (Fin.ext e)) (by have := j.isLt; omega) (by have := i.isLt; omega)
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ P (by norm_num) H.convex H.polyP hgen
  have hlt : ∀ i, r i < 7 := fun i => by have := (hrw.1 i).2; omega
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨e1, e2⟩ := H.edgesP
  obtain ⟨⟨-, nABH, -⟩, ⟨-, nBCX, -⟩⟩ := H.empties
  have r2 : 2 ≤ r 2 := (hr 2 2 (by norm_num) (by norm_num)).1 p3
  have r1lo : 2 ≤ r 1 := by
    have hBX : 0 < sarea (ptB b) X P := by
      have hn : ¬ 0 < sarea X (ptB b) P := fun hh => nBCX ⟨p2, e1, hh⟩
      have := sarea_swap₁₂ (ptB b) X P
      exact H.pos 1 3 7 (hpos := by
        show 0 ≤ sarea (ptB b) X P
        linarith [not_lt.1 hn])
    exact (hr 1 2 (by norm_num) (by norm_num)).1 hBX
  have r1hi : r 1 ≤ 4 := by
    by_contra hn; push Not at hn
    have hBH : 0 < sarea (ptB b) (ptH h) P := (hr 1 5 (by norm_num) (by norm_num)).2 (by omega)
    exact nABH ⟨p1, hBH, p6⟩
  refine ⟨fun i => ⟨r i, hlt i⟩, ?_, hr, ?_⟩
  · simp only [singleSideWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
    exact ⟨hrw, r2, r1lo, r1hi⟩
  · have h6 := hr 6 3 (by norm_num) (by norm_num)
    have hne : sarea (ptH h) (ptC c) P ≠ 0 := H.ne 6 2 7
    have hsw := sarea_swap₁₂ (ptH h) (ptC c) P
    show r 6 < 3 ↔ InLowerQuad a h b c P
    constructor
    · intro hlt3
      have hnp : ¬ 0 < sarea (ptH h) (ptC c) P := fun hh => by
        have : 3 ≤ r 6 := h6.1 hh
        omega
      have hneg : sarea (ptH h) (ptC c) P < 0 := lt_of_le_of_ne (not_lt.1 hnp) hne
      exact ⟨p6, p1, p2, by linarith⟩
    · intro hL
      have := lowerQuad_neg hL
      by_contra hn; push Not at hn
      have h' : 0 < sarea (ptH h) (ptC c) P := h6.2 hn
      linarith

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-543-cell-cover`). The finite word cover of
Section 3: exactly 57 words satisfy (15) on the heptagon, 43 of them satisfy `r₂ ≥ 2` and (16),
12 of these are below `HC` (`r₆ < 3`) and 31 above. In the setting with every doubled area at
least `7/64`, the radial words (14) of `P` and `Q` on the heptagon are among the 43 words, and a
word has `r₆ < 3` exactly when its point is below `HC`. (The ear, common-sector and sign-conflict
exclusions and the five sign splits refine the `12·31 + 31·32/2` word pairs into the 543 cells
of the certificate checker.) `docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 205-318.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon,
SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes, ONE_CORNER_COMPLETION:Theorem2,
ONE_CORNER_COMPLETION:Theorem3, SIX_BOUNDARY_SINGLE_SIDE:claim-pair-line-sign -/
theorem claim_543_cell_cover :
    (radialWords 7).card = 57 ∧ singleSideWords.card = 43 ∧
    (singleSideWords.filter fun r => (r 6 : ℕ) < 3).card = 12 ∧
    (singleSideWords.filter fun r => 3 ≤ (r 6 : ℕ)).card = 31 ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, NAnchors a h b c d f → InCapR c d X →
      P ∈ unitSquare → Q ∈ unitSquare → InHexagon a h b c d f P → InHexagon a h b c d f Q →
      7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      ∀ R ∈ ({P, Q} : Set Point), ∃ r ∈ singleSideWords,
        HasRadialWord (heptagonX a h b c d f X) R (fun i => (r i : ℕ)) ∧
          ((r 6 : ℕ) < 3 ↔ InLowerQuad a h b c R) := by
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · rw [Words.radialWords_eq]; exact Words.card_radialWords
  · rw [singleSideWords, Words.radialWords_eq]; exact Words.card_side
  · rw [singleSideWords, Words.radialWords_eq]; exact Words.card_lower
  · rw [singleSideWords, Words.radialWords_eq]; exact Words.card_upper
  · intro a h b c d f X P Q hN hX hP hQ hPI hQI hmin R hR
    have H := Conf.of hN hX hP hQ hPI hQI hmin
    rcases hR with rfl | hR
    · exact H.wordP
    · rw [Set.mem_singleton_iff] at hR; subst hR
      exact H.swap.wordP

/-! ### The pair-line signs (17), (18) and the upper-pair exclusions -/

/-- The separation rule for one diagonal `U → V` of a quadrilateral `U W V Z` (counterclockwise,
`W` the vertex before `V`, `Z` the vertex after it), for two points strictly inside it:
if `[UVP] > 0 > [UVQ]` then `[UPQ] < 0 < [VPQ]`. -/
theorem sep_core {U W V Z P Q : Point} (p1 : 0 < sarea U W P) (p2 : 0 < sarea W V P)
    (p3 : 0 < sarea V Z P) (p4 : 0 < sarea Z U P) (q1 : 0 < sarea U W Q)
    (q2 : 0 < sarea W V Q) (_q3 : 0 < sarea V Z Q) (q4 : 0 < sarea Z U Q)
    (hp : 0 < sarea U V P) (hq : sarea U V Q < 0) :
    sarea U P Q < 0 ∧ 0 < sarea V P Q := by
  have fan : sarea U W V + sarea U V Z =
      sarea U W P + sarea W V P + sarea V Z P + sarea Z U P := by
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

/-- **(18)**: the diagonal separation rule in the anchor quadrilateral `HCDF`: for `P, Q`
strictly inside `HCDF` on opposite sides of an oriented diagonal `U → V` (`H → D` or `C → F`),
`sgn[UPQ] = -sgn[UVP]` and `sgn[VPQ] = sgn[UVP]`. -/
theorem eq18 {h c d f : ℝ} {P Q : Point} (hP : InUpperQuad h c d f P)
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

/-- The six points of a labelling of `HCDF` with `P, Q` have least area at least `7/128`. -/
theorem Conf.quad_min (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8]) :
    7 / 128 ≤ minTriangleArea (OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0)
      (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) := by
  have hm := H.sub (by norm_num) ![i0, i1, i2, i3, 7, 8] hlt hinj
  have e : (fun x => cfg a h b c d f X P Q (![i0, i1, i2, i3, 7, 8] x)) =
      OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
        (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q := by
    funext x; fin_cases x <;> rfl
  rwa [e] at hm

/-- The four signs of the convex quadrilateral `HCDF`. -/
theorem Conf.quad_signs (H : Conf a h b c d f X P Q) :
    0 < sarea (ptH h) (ptC c) (ptD d) ∧ 0 < sarea (ptC c) (ptD d) (ptF f) ∧
      0 < sarea (ptD d) (ptF f) (ptH h) ∧ 0 < sarea (ptF f) (ptH h) (ptC c) := by
  refine ⟨?_, hex_CDF H.hN, hex_DFH H.hN, ?_⟩
  · rw [← sarea_cycle]; exact hex_CDH H.hN
  · rw [sarea_cycle]; exact hex_CFH H.hN

theorem Conf.W_le (H : Conf a h b c d f X P Q) : 1 - (h - d) * (c - f) ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  nlinarith [mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)]

/-- Theorem 2 of `ONE_CORNER_COMPLETION` excludes a central pair of a labelling of `HCDF`. -/
theorem Conf.central_false (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8])
    (hq : CornerFamilies.ConvexQuad (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3))
    (hW : sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) +
      sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) =
        1 - (h - d) * (c - f))
    (hc : OneCornerCompletion.CentralPair (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) : False := by
  have k := OneCornerCompletion.theorem2 _ _ _ _ P Q (Or.inl hq) hc
  have hm := H.quad_min i0 i1 i2 i3 hlt hinj
  have h1 := hq.1
  have h3 : 0 < sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2)
      (cfg a h b c d f X P Q i3) := by rw [← sarea_cycle]; exact hq.2.2.1
  have hW1 := H.W_le
  unfold OneCornerCompletion.quadArea at k
  rw [hW, abs_of_pos (by linarith)] at k
  linarith

/-- The six-point minimum is at least `7/64` of the area of `HCDF`. -/
theorem Conf.quad_hyp (H : Conf a h b c d f X P Q) (i0 i1 i2 i3 : ℕ)
    (hlt : ∀ x, ![i0, i1, i2, i3, 7, 8] x < 9) (hinj : Function.Injective ![i0, i1, i2, i3, 7, 8])
    (hW : sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) +
      sarea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) =
        1 - (h - d) * (c - f)) :
    7 / 64 * OneCornerCompletion.quadArea (cfg a h b c d f X P Q i0) (cfg a h b c d f X P Q i1)
      (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) ≤
      minTriangleArea (OneCornerCompletion.quadConfig (cfg a h b c d f X P Q i0)
        (cfg a h b c d f X P Q i1) (cfg a h b c d f X P Q i2) (cfg a h b c d f X P Q i3) P Q) := by
  have hm := H.quad_min i0 i1 i2 i3 hlt hinj
  have hW1 := H.W_le
  have hW0 : 0 ≤ 1 - (h - d) * (c - f) := by
    obtain ⟨q1, q2, q3, q4⟩ := H.quad_signs
    have : sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) =
        1 - (h - d) * (c - f) := by simp only [sarea]; ring
    have e := sarea_cycle (ptH h) (ptD d) (ptF f)
    linarith
  unfold OneCornerCompletion.quadArea
  rw [hW, abs_of_nonneg hW0]
  linarith

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

theorem lt_6245 : ∀ x, ![(6 : ℕ), 2, 4, 5, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_2456 : ∀ x, ![(2 : ℕ), 4, 5, 6, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_4562 : ∀ x, ![(4 : ℕ), 5, 6, 2, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem lt_5624 : ∀ x, ![(5 : ℕ), 6, 2, 4, 7, 8] x < 9 := by intro x; fin_cases x <;> decide
theorem inj_6245 : Function.Injective ![(6 : ℕ), 2, 4, 5, 7, 8] := by decide
theorem inj_2456 : Function.Injective ![(2 : ℕ), 4, 5, 6, 7, 8] := by decide
theorem inj_4562 : Function.Injective ![(4 : ℕ), 5, 6, 2, 7, 8] := by decide
theorem inj_5624 : Function.Injective ![(5 : ℕ), 6, 2, 4, 7, 8] := by decide

theorem W_HCDF (h c d f : ℝ) : sarea (ptH h) (ptC c) (ptD d) + sarea (ptH h) (ptD d) (ptF f) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_CDFH (h c d f : ℝ) : sarea (ptC c) (ptD d) (ptF f) + sarea (ptC c) (ptF f) (ptH h) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_DFHC (h c d f : ℝ) : sarea (ptD d) (ptF f) (ptH h) + sarea (ptD d) (ptH h) (ptC c) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring
theorem W_FHCD (h c d f : ℝ) : sarea (ptF f) (ptH h) (ptC c) + sarea (ptF f) (ptC c) (ptD d) =
    1 - (h - d) * (c - f) := by simp only [sarea]; ring

/-- No common diagonal sector of `HCDF` (`ONE_CORNER_COMPLETION` Theorem 2). -/
theorem Conf.sectors (H : Conf a h b c d f X P Q) :
    ¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q) := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  have hl := lt_6245; have hl2 := lt_2456; have hl3 := lt_4562; have hl4 := lt_5624
  have hi := inj_6245; have hi2 := inj_2456; have hi3 := inj_4562; have hi4 := inj_5624
  have W1 := W_HCDF h c d f; have W2 := W_CDFH h c d f
  have W3 := W_DFHC h c d f; have W4 := W_FHCD h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · rintro ⟨⟨a1, a2⟩, b1, b2⟩
    exact H.central_false 6 2 4 5 hl hi Q1 W1 ⟨Or.inl a1, Or.inl a2, Or.inl b1, Or.inl b2⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, a4⟩, ⟨b1, b2, b3⟩, b4⟩
    exact H.central_false 2 4 5 6 hl2 hi2 Q2 W2
      ⟨Or.inl a4, Or.inl ⟨a2, a3, a1⟩, Or.inl b4, Or.inl ⟨b2, b3, b1⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false 4 5 6 2 hl3 hi3 Q3 W3
      ⟨Or.inl ⟨a2, a3, a1⟩, Or.inl ⟨a5, a6, a4⟩, Or.inl ⟨b2, b3, b1⟩, Or.inl ⟨b5, b6, b4⟩⟩
  · rintro ⟨⟨⟨a1, a2, a3⟩, ⟨a4, a5, a6⟩⟩, ⟨b1, b2, b3⟩, ⟨b4, b5, b6⟩⟩
    exact H.central_false 5 6 2 4 hl4 hi4 Q4 W4
      ⟨Or.inl ⟨a6, a4, a5⟩, Or.inl ⟨a3, a1, a2⟩, Or.inl ⟨b6, b4, b5⟩, Or.inl ⟨b3, b1, b2⟩⟩

/-- The table of Section 3 for `HCD`: the line `PQ` isolates `C` (`ONE_CORNER_COMPLETION`
Theorem 3). -/
theorem Conf.isoHCD (H : Conf a h b c d f X P Q) :
    InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl := lt_6245; have hi := inj_6245; have W1 := W_HCDF h c d f
  have Q1 : CornerFamilies.ConvexQuad (ptH h) (ptC c) (ptD d) (ptF f) := ⟨s1, s2, s3, s4⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptH h) (ptC c) (ptD d) (ptF f) P Q (Or.inl Q1)
      (H.quad_hyp 6 2 4 5 hl hi W1) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p4, by rw [sw]; linarith⟩) (Or.inl ⟨b1, hq, q5⟩)
    exact iso_conv k
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptH h) (ptC c) (ptD d) (ptF f) Q P (Or.inl Q1)
      (HS.quad_hyp 6 2 4 5 hl hi W1) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q4, by rw [swQ]; linarith⟩) (Or.inl ⟨a1, hp, p5⟩)
    exact iso_conv_swap k

/-- The table of Section 3 for `HDF`: the line `PQ` isolates `F`. -/
theorem Conf.isoHDF (H : Conf a h b c d f X P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl3 := lt_4562; have hi3 := inj_4562; have W3 := W_DFHC h c d f
  have Q3 : CornerFamilies.ConvexQuad (ptD d) (ptF f) (ptH h) (ptC c) := ⟨s3, s4, s1, s2⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptC c) (ptF f) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptC c) (ptF f) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptD d) (ptF f) (ptH h) (ptC c) Q P (Or.inl Q3)
      (HS.quad_hyp 4 5 6 2 hl3 hi3 W3) (Or.inl ⟨b2, b3, b1⟩) (Or.inl ⟨a2, a3, a1⟩)
      (Or.inl ⟨b3, hQup, hq⟩) (Or.inl ⟨a2, by rw [sw]; linarith, p3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptC c) (ptF f) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptD d) (ptF f) (ptH h) (ptC c) P Q (Or.inl Q3)
      (H.quad_hyp 4 5 6 2 hl3 hi3 W3) (Or.inl ⟨a2, a3, a1⟩) (Or.inl ⟨b2, b3, b1⟩)
      (Or.inl ⟨a3, hPup, hp⟩) (Or.inl ⟨b2, by rw [swQ]; linarith, q3⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩

/-- The table of Section 3 for `HCF`: the line `PQ` isolates `H`. -/
theorem Conf.isoHCF (H : Conf a h b c d f X P Q) :
    InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl4 := lt_5624; have hi4 := inj_5624; have W4 := W_FHCD h c d f
  have Q4 : CornerFamilies.ConvexQuad (ptF f) (ptH h) (ptC c) (ptD d) := ⟨s4, s1, s2, s3⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptF f) (ptH h) (ptC c) (ptD d) P Q (Or.inl Q4)
      (H.quad_hyp 5 6 2 4 hl4 hi4 W4) (Or.inl ⟨a3, a1, a2⟩) (Or.inl ⟨b3, b1, b2⟩)
      (Or.inl ⟨a1, p3, by rw [sw]; linarith⟩) (Or.inl ⟨b3, hq, q4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv k
    exact ⟨k2, k1, k3⟩
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptF f) (ptH h) (ptC c) (ptD d) Q P (Or.inl Q4)
      (HS.quad_hyp 5 6 2 4 hl4 hi4 W4) (Or.inl ⟨b3, b1, b2⟩) (Or.inl ⟨a3, a1, a2⟩)
      (Or.inl ⟨b1, q3, by rw [swQ]; linarith⟩) (Or.inl ⟨a3, hp, p4⟩)
    obtain ⟨k1, k2, k3⟩ := iso_conv_swap k
    exact ⟨k2, k1, k3⟩

/-- The table of Section 3 for `CDF`: the line `PQ` isolates `D`. -/
theorem Conf.isoCDF (H : Conf a h b c d f X P Q) (hPup : 0 < sarea (ptH h) (ptC c) P)
    (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0 := by
  obtain ⟨s1, s2, s3, s4⟩ := H.quad_signs
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have HS := H.swap
  have sw : ∀ U V : Point, sarea V U P = -sarea U V P := fun U V => by simp only [sarea]; ring
  have swQ : ∀ U V : Point, sarea V U Q = -sarea U V Q := fun U V => by simp only [sarea]; ring
  have hl2 := lt_2456; have hi2 := inj_2456; have W2 := W_CDFH h c d f
  have Q2 : CornerFamilies.ConvexQuad (ptC c) (ptD d) (ptF f) (ptH h) := ⟨s2, s3, s4, s1⟩
  rintro ⟨a1, a2, a3⟩ ⟨b1, b2, b3⟩ hsep
  have hne : sarea (ptH h) (ptD d) P ≠ 0 := fun e => by
    rw [e, zero_mul] at hsep; exact lt_irrefl _ hsep
  rcases hne.lt_or_gt with hp | hp
  · have hq : 0 < sarea (ptH h) (ptD d) Q := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptC c) (ptD d) (ptF f) (ptH h) Q P (Or.inl Q2)
      (HS.quad_hyp 2 4 5 6 hl2 hi2 W2) (Or.inl ⟨b1, b2, b3⟩) (Or.inl ⟨a1, a2, a3⟩)
      (Or.inl ⟨b2, q5, hq⟩) (Or.inl ⟨a1, by rw [sw]; linarith, hPup⟩)
    exact iso_conv_swap k
  · have hq : sarea (ptH h) (ptD d) Q < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hp.le hn]
    have k := OneCornerCompletion.theorem3 (ptC c) (ptD d) (ptF f) (ptH h) P Q (Or.inl Q2)
      (H.quad_hyp 2 4 5 6 hl2 hi2 W2) (Or.inl ⟨a1, a2, a3⟩) (Or.inl ⟨b1, b2, b3⟩)
      (Or.inl ⟨a2, p5, hp⟩) (Or.inl ⟨b1, by rw [swQ]; linarith, hQup⟩)
    exact iso_conv k

/-! ### Sections 4–5: the certificate package -/

/-- The variables `a, h, b, c, d, f, x, y, p_x, p_y, q_x, q_y` of the certificates. -/
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

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f X P Q) Model.pt i = cfg a h b c d f X P Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;> simp [ptEval, Model.pt, cfg, zeta]

theorem Conf.zeta_mem (H : Conf a h b c d f X P Q) (v : ℕ) :
    0 ≤ zeta a h b c d f X P Q v ∧ zeta a h b c d f X P Q v ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := H.hX
  obtain ⟨p0, p1, p2, p3⟩ := H.sqP
  obtain ⟨q0, q1, q2, q3⟩ := H.sqQ
  rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;> simp only [zeta] <;>
    constructor <;> linarith

/-- A signed triangle of the table holds, with increasing indices below `9`. -/
def FHolds (Pt : ℕ → Point) (g : SFact) : Prop :=
  g.1.1 < g.1.2.1 ∧ g.1.2.1 < g.1.2.2 ∧ g.1.2.2 < 9 ∧ SFact.Holds Pt g

/-- The point `Pt m` has the word `w` of the model (14): `[VᵢVⱼR] > 0` exactly when
`wsign w i j`. -/
def WordAt (Pt : ℕ → Point) (m w : ℕ) : Prop :=
  ∀ i j : ℕ, i < 7 → j < 7 → i ≠ j → (0 < sarea (Pt i) (Pt j) (Pt m) ↔ Model.wsign w i j = true)

theorem wordAt_of_radial {m w : ℕ} {R : Point} (hm : cfg a h b c d f X P Q m = R)
    (hr : HasRadialWord (heptagonX a h b c d f X) R (fun i => Model.wordAt w i)) :
    WordAt (cfg a h b c d f X P Q) m w := by
  intro i j hi hj hij
  have h1 : 1 ≤ (j + 7 - i) % 7 := by omega
  have h2 : (j + 7 - i) % 7 < 7 := Nat.mod_lt _ (by norm_num)
  have e : cyc (⟨i, hi⟩ : Fin 7) ((j + 7 - i) % 7) = ⟨j, hj⟩ :=
    Fin.ext (by show (i + (j + 7 - i) % 7) % 7 = j; omega)
  have := hr ⟨i, hi⟩ ((j + 7 - i) % 7) h1 h2
  rw [e, heptagonX_eq (P := P) (Q := Q), heptagonX_eq (P := P) (Q := Q)] at this
  rw [hm]
  refine this.trans ?_
  simp only [Model.wsign, Nat.ble_eq]

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_of_ne {x : ℝ} (hx : x ≠ 0) : OrientHolds (decide (0 < x)) x := by
  rcases hx.lt_or_gt with h | h
  · simp [OrientHolds, not_lt.2 h.le, h]
  · simp [OrientHolds, h]

theorem WordAt.orient (H : Conf a h b c d f X P Q) {m w : ℕ} (hm : m = 7 ∨ m = 8)
    (W : WordAt (cfg a h b c d f X P Q) m w) {i j : ℕ} (hi : i < 7) (hj : j < 7) (hij : i ≠ j) :
    OrientHolds (Model.wsign w i j)
      (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q m)) := by
  have hne := H.ne i j m (by omega) (by omega) (by omega) hij (by omega) (by omega)
  cases hw : Model.wsign w i j
  · have : ¬ 0 < sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
        (cfg a h b c d f X P Q m) := fun h => by
      rw [W i j hi hj hij, hw] at h; exact absurd h (by simp)
    simp only [OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 this) hne
  · simp only [OrientHolds, ite_true]
    exact (W i j hi hj hij).2 hw

/-! #### The strengthened triangle costs -/

/-- An oriented actual triangle has oriented doubled area at least `s`. -/
theorem Conf.orient_area (H : Conf a h b c d f X P Q) {sg : Bool} {i j l : ℕ} (hi : i < 9)
    (hj : j < 9) (hl : l < 9)
    (hs : OrientHolds sg (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l))) :
    7 / 64 ≤ sgArea sg (sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)) := by
  have hne := orient_ne_zero hs
  rw [sgArea_eq_abs hs]
  refine H.area i j l hi hj hl ?_ ?_ ?_ <;> rintro rfl <;> exact hne (by unfold sarea; ring)

theorem orient_idx_ne {Pt : ℕ → Point} {sg : Bool} {i j l : ℕ}
    (hs : OrientHolds sg (sarea (Pt i) (Pt j) (Pt l))) : i ≠ j ∧ j ≠ l ∧ i ≠ l := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> exact hne (by unfold sarea; ring)

/-- `ρ = 13/16 < (4 + 2√3)s`: an actual triangle with two further points inside. -/
theorem Conf.two_inside (H : Conf a h b c d f X P Q) {i j l j₁ j₂ : ℕ} (hi : i < 9) (hj : j < 9)
    (hl : l < 9) (hj₁ : j₁ < 9) (hj₂ : j₂ < 9) (hd : [i, j, l, j₁, j₂].Nodup)
    (h₁ : CornerFamilies.InsideTriangle (cfg a h b c d f X P Q j₁) (cfg a h b c d f X P Q i)
      (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q l))
    (h₂ : CornerFamilies.InsideTriangle (cfg a h b c d f X P Q j₂) (cfg a h b c d f X P Q i)
      (cfg a h b c d f X P Q j) (cfg a h b c d f X P Q l)) :
    13 / 16 ≤ |sarea (cfg a h b c d f X P Q i) (cfg a h b c d f X P Q j)
      (cfg a h b c d f X P Q l)| := by
  have hm := H.sub (by norm_num) ![i, j, l, j₁, j₂] (by intro x; fin_cases x <;> simpa)
    (by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega)
  have e1 : (fun x => cfg a h b c d f X P Q (![i, j, l, j₁, j₂] x)) =
      ![cfg a h b c d f X P Q i, cfg a h b c d f X P Q j, cfg a h b c d f X P Q l,
        cfg a h b c d f X P Q j₁, cfg a h b c d f X P Q j₂] := by
    funext x; fin_cases x <;> rfl
  rw [e1] at hm
  have := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ h₁ h₂ (7 / 128) (by norm_num) hm
  rw [triangleArea_eq] at this
  have h3 : (1.732 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  nlinarith

/-- The strengthened cost of every signed triangle of the table is nonnegative: `s` for no
certified inside point, `3s` for one (subdivision), `ρ` for two (the two-interior-point
lemma). -/
theorem Conf.cost_nonneg (H : Conf a h b c d f X P Q) {tb : List SFact}
    (htb : AllHold (FHolds (cfg a h b c d f X P Q)) tb) {g : SFact} (hg : g ∈ tb) :
    0 ≤ (costAtom Model.pt Model.bnd g (insideList tb [7, 8] g).length).eval
      (zeta a h b c d f X P Q) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  obtain ⟨g1, g2, g3, gs⟩ := htb g hg
  have htb' : AllHold (SFact.Holds (cfg a h b c d f X P Q)) tb := fun x hx => (htb x hx).2.2.2
  have harea := H.orient_area (by omega) (by omega) g3 gs
  have hLnd : (insideList tb [7, 8] g).Nodup := List.Nodup.filter _ (by decide)
  have hmem : ∀ j ∈ insideList tb [7, 8] g, j < 9 := by
    intro j hj
    have := (insideList_sound htb' hj).1
    simp only [List.mem_cons, List.not_mem_nil, or_false] at this; omega
  rcases hn : (insideList tb [7, 8] g).length with _ | _ | n
  · simp only [Model.bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb [7, 8] g).length
      by omega)
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj
    have hj9 := hmem j hj
    have q1 := H.orient_area (by omega) (by omega) hj9 o1
    have q2 := H.orient_area (by omega) g3 hj9 o2
    have q3 := H.orient_area g3 (by omega) hj9 o3
    rw [sgArea_eq_abs o1] at q1; rw [sgArea_eq_abs o2] at q2; rw [sgArea_eq_abs o3] at q3
    have := three_le_sgArea (e := 7 / 64) o1 o2 o3 q1 q2 q3
    simp only [Model.bnd]; norm_num; linarith
  · obtain ⟨j₁, j₂, rest, hL⟩ : ∃ j₁ j₂ rest, insideList tb [7, 8] g = j₁ :: j₂ :: rest := by
      rcases hL : insideList tb [7, 8] g with _ | ⟨j₁, _ | ⟨j₂, rest⟩⟩
      · rw [hL] at hn; simp at hn
      · rw [hL] at hn; simp at hn
      · exact ⟨j₁, j₂, rest, rfl⟩
    have hj₁ : j₁ ∈ insideList tb [7, 8] g := by rw [hL]; simp
    have hj₂ : j₂ ∈ insideList tb [7, 8] g := by rw [hL]; simp
    have h12 : j₁ ≠ j₂ := by
      rw [hL] at hLnd; simp only [List.nodup_cons, List.mem_cons, not_or] at hLnd
      exact hLnd.1.1
    obtain ⟨-, o1, o2, o3⟩ := insideList_sound htb' hj₁
    obtain ⟨-, p1, p2, p3⟩ := insideList_sound htb' hj₂
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    obtain ⟨-, m1, m2⟩ := orient_idx_ne p1
    obtain ⟨-, m3, -⟩ := orient_idx_ne p2
    have := H.two_inside (by omega) (by omega) g3 (hmem _ hj₁) (hmem _ hj₂)
      (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true, not_false_eq_true]; omega)
      (inTriangle_of_orient o1 o2 o3) (inTriangle_of_orient p1 p2 p3)
    rw [← sgArea_eq_abs gs] at this
    simp only [Model.bnd]; norm_num; linarith

/-! #### Cells -/

/-- A cell of the cover: a configuration of N6-01 whose interior points have the words of a base
case, with its initial signs. -/
structure Cell (a h b c d f : ℝ) (X P Q : Point) (p q : ℕ) : Prop where
  conf : Conf a h b c d f X P Q
  key : (p, q) ∈ Model.cases
  wp : WordAt (cfg a h b c d f X P Q) 7 p
  wq : WordAt (cfg a h b c d f X P Q) 8 q
  base : AllHold (FHolds (cfg a h b c d f X P Q)) (Model.baseSigns p q)

variable {p q : ℕ}

theorem mem_cases_iff :
    (p, q) ∈ Model.cases ↔ p < 43 ∧ q < 43 ∧ Model.filterOK p q = true := by
  simp only [Model.cases, List.mem_flatMap, List.mem_map, List.mem_filter, List.mem_range,
    Prod.mk.injEq]
  constructor
  · rintro ⟨i, hi, j, ⟨hj, hf⟩, rfl, rfl⟩; exact ⟨hi, hj, hf⟩
  · rintro ⟨hi, hj, hf⟩; exact ⟨p, hi, q, ⟨hj, hf⟩, rfl, rfl⟩

/-- The upper test of a word (`[HCR] > 0` exactly when `upper w`). -/
theorem WordAt.upper {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) :
    0 < sarea (Pt 6) (Pt 2) (Pt m) ↔ Model.upper w = true :=
  W 6 2 (by norm_num) (by norm_num) (by norm_num)

theorem Cell.upperP (C : Cell a h b c d f X P Q p q) :
    0 < sarea (ptH h) (ptC c) P ↔ Model.upper p = true := C.wp.upper

theorem Cell.upperQ (C : Cell a h b c d f X P Q p q) :
    0 < sarea (ptH h) (ptC c) Q ↔ Model.upper q = true := C.wq.upper

theorem Cell.lowP (C : Cell a h b c d f X P Q p q) (hu : Model.upper p = false) :
    sarea (ptH h) (ptC c) P < 0 := by
  have hne := C.conf.ne 6 2 7
  have : ¬ 0 < sarea (ptH h) (ptC c) P := fun h => by
    rw [C.upperP, hu] at h; exact absurd h (by simp)
  exact lt_of_le_of_ne (not_lt.1 this) hne

/-- The second word of a base case is upper (the first filter). -/
theorem Cell.qup (C : Cell a h b c d f X P Q p q) : Model.upper q = true := by
  have := (mem_cases_iff.1 C.key).2.2
  simp only [Model.filterOK, Bool.and_eq_true] at this
  exact this.1.1.1.1

/-! #### The atoms are nonnegative -/

theorem Cell.common_nonneg (C : Cell a h b c d f X P Q p q) :
    ∀ e ∈ Model.factors, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  have H := C.conf
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := H.hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := H.hX
  obtain ⟨⟨e1, e2, -, -⟩, ⟨k1, -, k3⟩, ⟨-, -, a3, a4, a5⟩, ⟨-, -, c4⟩, ⟨d1, d2, d3, d4⟩, dy⟩ :=
    H.anchor
  obtain ⟨p1, p2, p3, p4⟩ := H.boxP
  obtain ⟨q1, q2, q3, q4⟩ := H.swap.boxP
  have hL : 7 / 64 ≤ h - a := by
    nlinarith [mul_le_mul_of_nonneg_right (show b ≤ 1 by linarith) (show 0 ≤ h - a by linarith)]
  have hM : 7 / 64 ≤ c - b := by
    nlinarith [mul_le_mul_of_nonneg_left (show a ≤ 1 by linarith) (show 0 ≤ c - b by linarith)]
  simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
    implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, zeta, Model.sS]
  push_cast
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem Cell.extra_nonneg (C : Cell a h b c d f X P Q p q) :
    ∀ e ∈ Model.extra p q, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  have H := C.conf
  obtain ⟨⟨e1, e2, e3, e4, e5, e6⟩, -⟩ := H.ears
  obtain ⟨⟨t1, -, -⟩, ⟨t2, -, -⟩⟩ := H.empties
  have hW : (Model.mixed p q = true → 4 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 7 / 11 ≤ h * c) ∧
      (Model.mixed p q = false →
        8 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 4 * (7 / 64) ≤ h * c) := by
    constructor
    · intro hm
      have hp : Model.upper p = false := by simpa [Model.mixed] using hm
      obtain ⟨k1, k2⟩ := H.mixed_costs (C.lowP hp)
      exact ⟨k1, k2.le⟩
    · intro hm
      have hp : Model.upper p = true := by simpa [Model.mixed] using hm
      exact ⟨H.W_upper (C.upperP.2 hp) (C.upperQ.2 C.qup), H.anchor.2.2.2.1.2.1⟩
  simp only [sarea] at e1 e2 e3 e4 e5 e6 t1 t2
  simp only [Model.extra, Model.ears, List.map_cons, List.map_nil, List.cons_append,
    List.nil_append, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_minus, eval_times, eval_v, eval_k, eval_one, eval_esarea, Model.pt, eval_zero,
    zeta, Model.sS]
  simp only [sarea]
  cases hm : Model.mixed p q
  · obtain ⟨w1, w2⟩ := hW.2 hm
    simp only [Bool.false_eq_true, ite_false]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith
  · obtain ⟨w1, w2⟩ := hW.1 hm
    simp only [ite_true]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith

theorem Cell.atoms_nonneg (C : Cell a h b c d f X P Q p q) (fs : List SFact)
    (hfs : AllHold (FHolds (cfg a h b c d f X P Q)) fs) :
    ∀ e ∈ Model.atoms p q fs, 0 ≤ e.eval (zeta a h b c d f X P Q) := by
  intro e he
  simp only [Model.atoms, List.mem_append, List.mem_map] at he
  rcases he with (he | ⟨g, hg, rfl⟩) | he
  · exact C.common_nonneg e he
  · exact C.conf.cost_nonneg (C.base.append hfs) (List.mem_append.2 hg)
  · exact C.extra_nonneg e he

theorem Cell.branch (C : Cell a h b c d f X P Q p q) (fs : List SFact) (s : Model.Split) :
    ∃ br ∈ (Model.spec p q).branches fs s, AllHold (FHolds (cfg a h b c d f X P Q)) br := by
  cases s with
  | tri i j l =>
    simp only [Model.spec, Model.branches]
    split_ifs with hv
    · obtain ⟨hij, hjl, hl9⟩ := hv
      have hne := C.conf.ne i j l (by omega) (by omega) hl9 (by omega) (by omega) (by omega)
      obtain ⟨br, hbr, hall⟩ := signBranches_exhaustive (P := cfg a h b c d f X P Q)
        (t := (i, j, l)) hne
      refine ⟨br, hbr, ?_⟩
      intro g hg
      refine ⟨?_, ?_, ?_, hall g hg⟩ <;>
      · simp only [signBranches, List.mem_cons, List.not_mem_nil, or_false] at hbr
        rcases hbr with rfl | rfl <;> simp at hg <;> subst hg <;> simp <;> omega
    · exact ⟨[], by simp, by simp [AllHold]⟩

/-- **The certificate package**: every cell is impossible. The kernel has checked the cell tree
of every base case (`Trees.allCases_ok`); the atoms are nonnegative and the splits exhaustive at
every cell, so `Cover.checkTree_sound` applies. -/
theorem Cell.false (C : Cell a h b c d f X P Q p q) : False := by
  have hk : (p, q) ∈ Trees.allCases.map Prod.fst := Trees.allCases_keys ▸ C.key
  obtain ⟨x, hx, hxk⟩ := List.mem_map.1 hk
  have hT : checkTree (Model.spec p q) [] x.2 = true := by
    have := Trees.allCases_ok x hx
    rw [hxk] at this; exact this
  have hcl : ∀ (fs : List SFact) (tag : ℕ), AllHold (FHolds (cfg a h b c d f X P Q)) fs →
      (Model.spec p q).closedOK fs tag = true → False := by
    intro fs tag _ h; exact absurd h (by simp [Model.spec])
  exact checkTree_sound (σ := Model.spec p q) (Holds := FHolds (cfg a h b c d f X P Q))
    C.conf.zeta_mem (fun fs hfs => C.atoms_nonneg fs hfs) (fun fs s _ => C.branch fs s) hcl
    (fs := []) (fun _ h => absurd h List.not_mem_nil) hT

/-! #### The initial signs of a base case -/

theorem lexTriples_valid : ∀ t ∈ Model.lexTriples, t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  decide +kernel

/-- `Model.forced` as a function of the four diagonal signs. -/
def forcedB (pHD qHD pCF qCF : Bool) (v : ℕ) : Option Bool :=
  if pHD == qHD && pCF == qCF then none
  else if pHD != qHD && pCF != qCF then
    if v = 6 then some (!pHD) else if v = 4 then some pHD else if v = 2 then some (!pCF)
    else if v = 5 then some pCF else none
  else if pHD == qHD then
    let iso := if pHD then 5 else 2
    let side := if iso = 5 then pCF else !pCF
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 4 ∨ v = 5 then some (!side) else none
  else
    let iso := if pCF then 6 else 4
    let side := if iso = 6 then !pHD else pHD
    if v = iso then some side else if v = 6 ∨ v = 2 ∨ v = 4 ∨ v = 5 then some (!side) else none

theorem forced_eq (p q v : ℕ) : Model.forced p q v = forcedB (Model.wsign p 6 4)
    (Model.wsign q 6 4) (Model.wsign p 2 5) (Model.wsign q 2 5) v := rfl

theorem forcedB_none {b1 b2 b3 b4 : Bool} {v : ℕ} (h6 : v ≠ 6) (h2 : v ≠ 2) (h4 : v ≠ 4)
    (h5 : v ≠ 5) : forcedB b1 b2 b3 b4 v = none := by
  unfold forcedB
  cases b1 <;> cases b2 <;> cases b3 <;> cases b4 <;> simp [h6, h2, h4, h5]

/-- The Boolean content of (18) and of Theorem 3 of `ONE_CORNER_COMPLETION`, for the diagonal
signs `bP6 = [HDP] > 0`, …, `bQ2 = [CFQ] > 0` and the pair-line signs `s_v = [V_v P Q] > 0`. -/
def ForcedRel (bP6 bQ6 bP2 bQ2 s6 s2 s4 s5 : Bool) : Prop :=
  (bP6 ≠ bQ6 → s6 = !bP6 ∧ s4 = bP6) ∧ (bP2 ≠ bQ2 → s2 = !bP2 ∧ s5 = bP2) ∧
  (bP6 = true → bQ6 = true → bP2 ≠ bQ2 → s5 ≠ s6 ∧ s5 ≠ s4 ∧ s5 ≠ s2) ∧
  (bP6 = false → bQ6 = false → bP2 ≠ bQ2 → s2 ≠ s6 ∧ s2 ≠ s4 ∧ s2 ≠ s5) ∧
  (bP2 = true → bQ2 = true → bP6 ≠ bQ6 → s6 ≠ s2 ∧ s6 ≠ s5 ∧ s6 ≠ s4) ∧
  (bP2 = false → bQ2 = false → bP6 ≠ bQ6 → s4 ≠ s2 ∧ s4 ≠ s5 ∧ s4 ≠ s6)

set_option synthInstance.maxSize 2048 in
/-- The forced signs are the true pair-line signs (a finite check; the `Decidable` instance of the
unfolded relation exceeds the default instance size). -/
theorem forced_bool : ∀ bP6 bQ6 bP2 bQ2 s6 s2 s4 s5 : Bool,
    ForcedRel bP6 bQ6 bP2 bQ2 s6 s2 s4 s5 →
    (∀ sg, forcedB bP6 bQ6 bP2 bQ2 6 = some sg → sg = s6) ∧
    (∀ sg, forcedB bP6 bQ6 bP2 bQ2 2 = some sg → sg = s2) ∧
    (∀ sg, forcedB bP6 bQ6 bP2 bQ2 4 = some sg → sg = s4) ∧
    (∀ sg, forcedB bP6 bQ6 bP2 bQ2 5 = some sg → sg = s5) := by
  intro bP6 bQ6 bP2 bQ2 s6 s2 s4 s5
  cases bP6 <;> cases bQ6 <;> cases bP2 <;> cases bQ2 <;> cases s6 <;> cases s2 <;> cases s4 <;>
    cases s5 <;> unfold ForcedRel <;> decide

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

/-- Two upper points in the same diagonal sector are impossible. -/
theorem Conf.sector_excl (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q)
    (e6 : decide (0 < sarea (ptH h) (ptD d) P) = decide (0 < sarea (ptH h) (ptD d) Q))
    (e2 : decide (0 < sarea (ptC c) (ptF f) P) = decide (0 < sarea (ptC c) (ptF f) Q)) :
    False := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have Cv := H.sectors
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  rcases sgn_cases (H.ne 6 4 7) with ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
    rcases sgn_cases (H.ne 6 4 8) with ⟨b1, b2⟩ | ⟨b1, b2⟩ <;>
    rcases sgn_cases (H.ne 2 5 7) with ⟨c1, c2⟩ | ⟨c1, c2⟩ <;>
    rcases sgn_cases (H.ne 2 5 8) with ⟨d1, d2⟩ | ⟨d1, d2⟩ <;>
    simp only [cfg] at a1 a2 b1 b2 c1 c2 d1 d2 <;>
    (try (rw [a1, b1] at e6; exact absurd e6 (by decide))) <;>
    (try (rw [c1, d1] at e2; exact absurd e2 (by decide)))
  · exact Cv.2.2.2 ⟨⟨⟨a2, p4, p5⟩, ⟨hPu, c2, p5⟩⟩, ⟨⟨b2, q4, q5⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.2.1 ⟨⟨⟨a2, p4, p5⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨b2, q4, q5⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩
  · exact Cv.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨hPu, c2, p5⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨hQu, d2, q5⟩⟩⟩
  · exact Cv.2.1 ⟨⟨⟨hPu, p3, by rw [sw]; linarith⟩, ⟨p3, p4, by rw [sw]; linarith⟩⟩,
      ⟨⟨hQu, q3, by rw [sw]; linarith⟩, ⟨q3, q4, by rw [sw]; linarith⟩⟩⟩

/-- (18) and Theorem 3 in Boolean form. -/
theorem Conf.forced_rel (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) :
    ForcedRel (decide (0 < sarea (ptH h) (ptD d) P)) (decide (0 < sarea (ptH h) (ptD d) Q))
      (decide (0 < sarea (ptC c) (ptF f) P)) (decide (0 < sarea (ptC c) (ptF f) Q))
      (decide (0 < sarea (ptH h) P Q)) (decide (0 < sarea (ptC c) P Q))
      (decide (0 < sarea (ptD d) P Q)) (decide (0 < sarea (ptF f) P Q)) := by
  obtain ⟨p1, p2, p3, p4, p5, p6⟩ := H.hP
  obtain ⟨q1, q2, q3, q4, q5, q6⟩ := H.hQ
  have E := eq18 ⟨hPu, p3, p4, p5⟩ ⟨hQu, q3, q4, q5⟩
  have sw : ∀ (U V R : Point), sarea V U R = -sarea U V R := fun U V R => by
    simp only [sarea]; ring
  have nHDP : sarea (ptH h) (ptD d) P ≠ 0 := H.ne 6 4 7
  have nHDQ : sarea (ptH h) (ptD d) Q ≠ 0 := H.ne 6 4 8
  have nCFP : sarea (ptC c) (ptF f) P ≠ 0 := H.ne 2 5 7
  have nCFQ : sarea (ptC c) (ptF f) Q ≠ 0 := H.ne 2 5 8
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

theorem wsign_eq {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) {i j : ℕ} (hi : i < 7)
    (hj : j < 7) (hij : i ≠ j) : Model.wsign w i j = decide (0 < sarea (Pt i) (Pt j) (Pt m)) :=
  Bool.eq_iff_iff.2 (by rw [decide_eq_true_iff]; exact (W i j hi hj hij).symm)

/-- The forced signs are true. -/
theorem Conf.forced_sound (H : Conf a h b c d f X P Q) (hPu : 0 < sarea (ptH h) (ptC c) P)
    (hQu : 0 < sarea (ptH h) (ptC c) Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q) {v : ℕ} {sg : Bool}
    (hf : Model.forced p q v = some sg) :
    sg = decide (0 < sarea (cfg a h b c d f X P Q v) P Q) := by
  rw [forced_eq, wsign_eq WP (i := 6) (j := 4) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WQ (i := 6) (j := 4) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WP (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num),
    wsign_eq WQ (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num)] at hf
  have k := forced_bool _ _ _ _ _ _ _ _ (H.forced_rel hPu hQu)
  by_cases h6 : v = 6
  · subst h6; exact k.1 sg hf
  by_cases h2 : v = 2
  · subst h2; exact k.2.1 sg hf
  by_cases h4 : v = 4
  · subst h4; exact k.2.2.1 sg hf
  by_cases h5 : v = 5
  · subst h5; exact k.2.2.2 sg hf
  rw [forcedB_none h6 h2 h4 h5] at hf
  exact absurd hf (by simp)

/-- (17): the pair-line sign from the word entries. -/
theorem Conf.radial_pair (H : Conf a h b c d f X P Q)
    (RP : HasRadialWord (heptagonX a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagonX a h b c d f X) Q fun i => Model.wordAt q i) {v : ℕ}
    (hv : v < 7) :
    (Model.wordAt p v < Model.wordAt q v → 0 < sarea (cfg a h b c d f X P Q v) P Q) ∧
      (Model.wordAt q v < Model.wordAt p v → sarea (cfg a h b c d f X P Q v) P Q < 0) := by
  have k := claim_pair_line_sign _ P Q (by norm_num) H.convex H.polyP H.swap.polyP _ _ RP RQ
    ⟨v, hv⟩
  rw [heptagonX_eq (P := P) (Q := Q)] at k
  exact k

theorem Conf.pair_sound (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagonX a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagonX a h b c d f X) Q fun i => Model.wordAt q i) {v : ℕ}
    (hv : v < 7) {sg : Bool} (hs : Model.pairSign p q v = some sg) :
    OrientHolds sg (sarea (cfg a h b c d f X P Q v) P Q) := by
  unfold Model.pairSign at hs
  split_ifs at hs with h1 h2 h3
  · cases hs
    exact (H.radial_pair RP RQ hv).1 h1
  · cases hs
    exact (H.radial_pair RP RQ hv).2 h2
  · simp only [Bool.and_eq_true] at h3
    rw [H.forced_sound (WP.upper.2 h3.1) (WQ.upper.2 h3.2) WP WQ hs]
    exact orient_of_ne (H.ne v 7 8 (by omega) (by norm_num) (by norm_num) (by omega) (by norm_num)
      (by omega))

/-- **The initial signs**: every signed triangle of `baseSigns p q` holds. -/
theorem Conf.base_sound (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagonX a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagonX a h b c d f X) Q fun i => Model.wordAt q i) :
    AllHold (FHolds (cfg a h b c d f X P Q)) (Model.baseSigns p q) := by
  intro g hg
  simp only [Model.baseSigns, List.mem_filterMap, Option.map_eq_some_iff] at hg
  obtain ⟨t, ht, sg, hsg, rfl⟩ := hg
  obtain ⟨t1, t2, t3⟩ := lexTriples_valid t ht
  refine ⟨t1, t2, t3, ?_⟩
  show OrientHolds sg (sarea (cfg a h b c d f X P Q t.1) (cfg a h b c d f X P Q t.2.1)
    (cfg a h b c d f X P Q t.2.2))
  unfold Model.baseSign at hsg
  split_ifs at hsg with a1 a2 a3
  · cases hsg
    show 0 < _
    exact H.hull t (mem_hullTriples _ _ _ t1 t2 a1)
  · cases hsg
    have h7 : t.2.2 = 7 := a3
    have := WP.orient H (Or.inl rfl) (i := t.1) (j := t.2.1) (by omega) a2 (by omega)
    rw [h7]; exact this
  · cases hsg
    have h8 : t.2.2 = 8 := by omega
    have := WQ.orient H (Or.inr rfl) (i := t.1) (j := t.2.1) (by omega) a2 (by omega)
    rw [h8]; exact this
  · have e1 : t.2.1 = 7 := by omega
    have e2 : t.2.2 = 8 := by omega
    rw [e1, e2]
    exact H.pair_sound WP WQ RP RQ (by omega) hsg

/-! #### The filters of Section 3 -/

theorem WordAt.inTri {Pt : ℕ → Point} {m w : ℕ} (W : WordAt Pt m w) {i j l : ℕ} (hi : i < 7)
    (hj : j < 7) (hl : l < 7) (hij : i ≠ j) (hjl : j ≠ l) (hil : i ≠ l)
    (h : Model.inside w (i, j, l) = true) : InTriangle (Pt m) (Pt i) (Pt j) (Pt l) := by
  simp only [Model.inside, Bool.and_eq_true] at h
  exact ⟨(W i j hi hj hij).2 h.1.1, (W j l hj hl hjl).2 h.1.2, (W l i hl hi (Ne.symm hil)).2 h.2⟩

/-- The words of `P, Q` pass the filters of Section 3. -/
theorem Conf.filterOK (H : Conf a h b c d f X P Q) (WP : WordAt (cfg a h b c d f X P Q) 7 p)
    (WQ : WordAt (cfg a h b c d f X P Q) 8 q)
    (RP : HasRadialWord (heptagonX a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagonX a h b c d f X) Q fun i => Model.wordAt q i)
    (hqu : Model.upper q = true) (hord : Model.upper p = false ∨ p ≤ q) :
    Model.filterOK p q = true := by
  have h1 : (!Model.upper p || decide (p ≤ q)) = true := by
    rcases hord with h | h
    · simp [h]
    · simp [h]
  have h2 : (Model.ears.any fun t => Model.inside p t && Model.inside q t) = false := by
    rw [List.any_eq_false]
    intro t ht hin
    simp only [Bool.and_eq_true] at hin
    obtain ⟨hpt, hqt⟩ := hin
    obtain ⟨-, m1, m2, m3, m4, m5, m6⟩ := H.ears
    simp only [Model.ears, List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with rfl | rfl | rfl | rfl | rfl | rfl
    · exact m1 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m2 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m3 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m4 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · exact m5 ⟨WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) hpt, WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt⟩
    · obtain ⟨x1, x2, x3⟩ := WP.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hpt
      obtain ⟨y1, y2, y3⟩ := WQ.inTri (by norm_num) (by norm_num) (by norm_num) (by norm_num)
        (by norm_num) (by norm_num) hqt
      exact m6 ⟨⟨x2, x3, x1⟩, ⟨y2, y3, y1⟩⟩
  have h3 : (Model.upper p && Model.sameSector p q) = false := by
    cases hu : Model.upper p
    · rfl
    · simp only [Bool.true_and]
      cases hs : Model.sameSector p q
      · rfl
      · exfalso
        simp only [Model.sameSector, Bool.and_eq_true, beq_iff_eq] at hs
        rw [wsign_eq WP (i := 6) (j := 4) (by norm_num) (by norm_num) (by norm_num),
          wsign_eq WQ (i := 6) (j := 4) (by norm_num) (by norm_num) (by norm_num),
          wsign_eq WP (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num),
          wsign_eq WQ (i := 2) (j := 5) (by norm_num) (by norm_num) (by norm_num)] at hs
        exact H.sector_excl (WP.upper.2 hu) (WQ.upper.2 hqu) hs.1 hs.2
  have h4 : (Model.upper p && Model.conflict p q) = false := by
    cases hu : Model.upper p
    · rfl
    · simp only [Bool.true_and]
      unfold Model.conflict
      rw [List.any_eq_false]
      intro v hv7 hc
      simp only [List.mem_range] at hv7
      simp only [Bool.and_eq_true, bne_iff_ne, ne_eq] at hc
      obtain ⟨hne, hm⟩ := hc
      rcases hf : Model.forced p q v with _ | sg
      · rw [hf] at hm; exact absurd hm (by simp)
      · rw [hf] at hm
        have e1 := H.forced_sound (WP.upper.2 hu) (WQ.upper.2 hqu) WP WQ hf
        simp only [bne_iff_ne, ne_eq] at hm
        rcases lt_or_gt_of_ne hne with hl | hl
        · have := (H.radial_pair RP RQ hv7).1 hl
          rw [decide_eq_true hl, e1, decide_eq_true this] at hm
          exact hm rfl
        · have := (H.radial_pair RP RQ hv7).2 hl
          rw [decide_eq_false (not_lt.2 hl.le), e1, decide_eq_false (not_lt.2 this.le)] at hm
          exact hm rfl
  simp only [Model.filterOK, hqu, h1, h2, h3, h4, Bool.not_false, Bool.and_self]

/-- A configuration whose interior points have the words `p, q` of a base case (`q` upper; `p`
lower, or upper with `p ≤ q`) is a cell of the cover, hence impossible. -/
theorem Conf.main (H : Conf a h b c d f X P Q) (hp : p < 43) (hq : q < 43)
    (hqu : Model.upper q = true) (hord : Model.upper p = false ∨ p ≤ q)
    (RP : HasRadialWord (heptagonX a h b c d f X) P fun i => Model.wordAt p i)
    (RQ : HasRadialWord (heptagonX a h b c d f X) Q fun i => Model.wordAt q i) : False := by
  have WP : WordAt (cfg a h b c d f X P Q) 7 p := wordAt_of_radial rfl RP
  have WQ : WordAt (cfg a h b c d f X P Q) 8 q := wordAt_of_radial rfl RQ
  exact (Cell.mk H (mem_cases_iff.2 ⟨hp, hq, H.filterOK WP WQ RP RQ hqu hord⟩) WP WQ
    (H.base_sound WP WQ RP RQ)).false

/-- The base-case counts of Section 3: 536 base cases, 348 mixed and 188 upper. -/
theorem cases_length : Model.cases.length = 536 := by decide +kernel

theorem cases_mixed : (Model.cases.filter fun x => Model.mixed x.1 x.2).length = 348 := by
  decide +kernel

/-- The words of `P, Q` as model indices. -/
theorem Conf.index (H : Conf a h b c d f X P Q) :
    ∃ w, w < 43 ∧ HasRadialWord (heptagonX a h b c d f X) P (fun i => Model.wordAt w i) := by
  obtain ⟨r, hr, R, -⟩ := H.wordP
  obtain ⟨w, hw, e⟩ := Words.exists_index (Finset.mem_filter.1 hr).1 (Finset.mem_filter.1 hr).2
  refine ⟨w, hw, ?_⟩
  have : (fun i : Fin 7 => Model.wordAt w i) = fun i => (r i : ℕ) := funext e
  rw [this]; exact R

/-- The contradiction: no configuration of the setting exists. -/
theorem Conf.false (H : Conf a h b c d f X P Q) : False := by
  obtain ⟨wp, hwp, RP⟩ := H.index
  obtain ⟨wq, hwq, RQ⟩ := H.swap.index
  have WP : WordAt (cfg a h b c d f X P Q) 7 wp := wordAt_of_radial rfl RP
  have WQ : WordAt (cfg a h b c d f X P Q) 8 wq := wordAt_of_radial rfl RQ
  cases hup : Model.upper wp <;> cases huq : Model.upper wq
  · have lp : sarea (ptH h) (ptC c) P < 0 := by
      have : ¬ 0 < sarea (ptH h) (ptC c) P := fun hh => by
        rw [show (0 < sarea (ptH h) (ptC c) P) = _ from propext WP.upper, hup] at hh
        exact absurd hh (by simp)
      exact lt_of_le_of_ne (not_lt.1 this) (H.ne 6 2 7)
    have lq : sarea (ptH h) (ptC c) Q < 0 := by
      have : ¬ 0 < sarea (ptH h) (ptC c) Q := fun hh => by
        rw [show (0 < sarea (ptH h) (ptC c) Q) = _ from propext WQ.upper, huq] at hh
        exact absurd hh (by simp)
      exact lt_of_le_of_ne (not_lt.1 this) (H.ne 6 2 8)
    exact H.one_below ⟨lp, lq⟩
  · exact H.main hwp hwq huq (Or.inl hup) RP RQ
  · exact H.swap.main hwq hwp hup (Or.inl huq) RQ RP
  · rcases le_total wp wq with hle | hle
    · exact H.main hwp hwq huq (Or.inr hle) RP RQ
    · exact H.swap.main hwq hwp hup (Or.inr hle) RQ RP

/-- The 27 affine factors `l₀, …, l₂₆` of Section 4, in coefficient-file order, at the
coordinates `(a, h, b, c, d, f, x, y, p_x, p_y, q_x, q_y)` (`s = 7/64`). -/
def singleSideFactors (a h b c d f : ℝ) (X P Q : Point) : Fin 27 → ℝ :=
  ![a - 1 / 7, b - 1 / 8, h - 1 / 2, c - 4 * (7 / 64), d - 1 / 2, 1 - h, 1 - 7 / 64 - c,
    1 - 7 / 64 - d, 1 - 7 / 64 - f, d - a, h - d, f - b, c - f, h - a - 7 / 64,
    c - b - 7 / 64, 1 - X.1, X.1 - c - 7 / 64, X.2 - 1 / 7, d - X.2 - 7 / 36,
    P.1 - 7 / 64, 1 - 7 / 64 - P.1, P.2 - 7 / 64, 1 - 7 / 64 - P.2,
    Q.1 - 7 / 64, 1 - 7 / 64 - Q.1, Q.2 - 7 / 64, 1 - 7 / 64 - Q.2]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-factors-costs`). In the setting with every doubled
area at least `7/64`, the 27 affine factors of Section 4 are nonnegative (by (3)-(10), the N
normalization and the square). (The quadratic costs `ε[V_iV_jV_k] - T`, `T = s, 3s, ρ` for zero,
one or two certified interior points, and the appended costs `W - 4s` or `W - 8s`,
`hc - 7/11` or `hc - 4s`, `3s - [ABH]`, `3s - [BCX]`, `ρ - [T]` are nonnegative by the threshold,
subdivision, the two-interior-point theorem and `claim_empties_and_classes`.)
`docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 320-396.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-common-bounds -/
theorem claim_factors_costs {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i : Fin 27, 0 ≤ singleSideFactors a h b c d f X P Q i := by
  have H := Conf.of hN hX hP hQ hPI hQI hmin
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hX
  obtain ⟨⟨e1, e2, -, -⟩, ⟨k1, -, k3⟩, ⟨-, -, a3, a4, a5⟩, ⟨-, -, c4⟩, ⟨d1, d2, d3, d4⟩, dy⟩ :=
    H.anchor
  obtain ⟨p1, p2, p3, p4⟩ := H.boxP
  obtain ⟨q1, q2, q3, q4⟩ := H.swap.boxP
  have hL : 7 / 64 ≤ h - a := by
    nlinarith [mul_le_mul_of_nonneg_right (show b ≤ 1 by linarith) (show 0 ≤ h - a by linarith)]
  have hM : 7 / 64 ≤ c - b := by
    nlinarith [mul_le_mul_of_nonneg_left (show a ≤ 1 by linarith) (show 0 ≤ c - b by linarith)]
  intro i
  fin_cases i <;> simp [singleSideFactors] <;> linarith

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-certificates`). Geometric conclusion of the
certificate package: in the setting with every doubled area at least `7/64`, no pair of radial
words of `P, Q` on the heptagon is realizable. (Each of the 543 cells is covered by one of the 300
fixed cubic certificates, 40,480 positive terms, whose cube bounds are at most
`-81664995001/82678120448 < -3/4`.) `docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 398-452.
(The two word hypotheses are not needed: the words of `P, Q` among the 43 words are produced by
`claim_543_cell_cover`, and every possible pair of them is a cell of the kernel-checked cover.)
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-543-cell-cover, SIX_BOUNDARY_SINGLE_SIDE:claim-factors-costs,
SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificates {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) (_p _q : Fin 7 → ℕ)
    (_hp : HasRadialWord (heptagonX a h b c d f X) P _p)
    (_hq : HasRadialWord (heptagonX a h b c d f X) Q _q) :
    False :=
  (Conf.of hN hX hP hQ hPI hQI hmin).false

/-- **Theorem 1** (`SIX_BOUNDARY_SINGLE_SIDE:Theorem1`). Every N configuration with one free point
`X` in the side cap `CD(1,0)` and two free points `P, Q` strictly inside the anchor hexagon has
least area strictly below `7/128 < A₀` (both the mixed and the upper placement; no order between
`f` and `d`). Transposition gives the same for `X` in the side cap `FH(0,1)`.
`docs/proof/nine/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 20-37, 398-452.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon, SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word,
SIX_BOUNDARY_SINGLE_SIDE:claim-certificates, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1 {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X ∨ InCapL f h X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  rcases hX with hR | hL
  · exact (Conf.of hN hR hP hQ hPI hQI hcon).false
  · obtain ⟨t1, -, t3, -, -, -, t7, -, -, -, -, -, -⟩ := claim_transposition a h b c d f X P Q
    obtain ⟨-, tPs, -, -, -, -, -, -, -, tPh, -, -, -⟩ := claim_transposition a h b c d f P P P
    obtain ⟨-, tQs, -, -, -, -, -, -, -, tQh, -, -, -⟩ := claim_transposition a h b c d f Q Q Q
    exact (Conf.of (t1.1 hN) (t7.1 hL) (tPs.1 hP) (tQs.1 hQ) (tPh.1 hPI) (tQh.1 hQI)
      (by rw [t3]; exact hcon)).false

/-- **Case N6-01** (`(n_L, n_T, n_R; n_I) = (0,0,1;2)`, and its transpose `(1,0,0;2)`,
`docs/proof/nine/UNRESTRICTED.md`, Section 4), assembly form: an N configuration with exactly six contacts,
one free point in a side cap and two strictly inside the anchor hexagon, cannot have least area
at least `A₀`.
Uses: SIX_BOUNDARY_SINGLE_SIDE:Theorem1 -/
theorem n6_01 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X ∨ InCapL f h X) (hYsq : Y ∈ unitSquare) (hZsq : Z ∈ unitSquare)
    (hY : InHexagon a h b c d f Y) (hZ : InHexagon a h b c d f Z)
    (_hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    False := by
  have := theorem1 hN hX hYsq hZsq hY hZ
  linarith [A₀_bounds.1]

end Heilbronn.Nine.SixBoundarySingleSide
