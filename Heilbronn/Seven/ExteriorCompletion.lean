module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.AdjacentCapsCompletion
public import Heilbronn.Seven.ExteriorCerts

/-! # Completion of the seven-boundary exterior case (`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`)

**Role.** Primary route: `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2` (lines 404–412) uses
Theorem 1 for the exterior part of the seven-boundary theorem (`UNRESTRICTED.md` lines 132–140);
`SIX_BOUNDARY_TWO_SIDE_COMPLETION` (line 413) applies it after a projection; its certificate format
is reused by `SEVEN_BOUNDARY_MIXED_LOWER` (line 255).

**Setting.** The exterior case: `SevenNormal a h b c d e f`, one free point `X = (g,k)` strictly
beyond `EF` (`FarCapPoint e f (g, k)`), the companion point `P = (x,y)` strictly inside the anchor
heptagon; the nine points `sevenConfig a h b c d e f (g, k) P`. At minimum area at least `7/128`
the preceding notes give `b > 3/20`, `k > e, h`, the convex hull octagon `A, B, C, D, E, X, F, H`
and `P` outside its four side quadrilaterals. Doubled threshold `s = 7/64` for the 28
certificates, `A₀` for R3.

**Certificate package.** `hand/seven_boundary_exterior_certificates.json` (checker
`hand/check_seven_boundary_exterior_certificates.py`): 28 records, one per radial word outside
`R1 ∪ R3`, indexed by its block pair (`certificateBlocks`, `certificateWords`); variables
`(a,h,b,c,d,e,f,g,k,x,y)`; terms are positive multiples (`w/4096`) of products of at most three
of the 23 affine factors `l₀, …, l₂₂` of §2 (nonnegative by `claim_common_bounds`) and of the
area costs `q_t = ε_t [V_iV_jV_k] - s` (nonnegative by convexity of the octagon and the radial
word, (11)); each expansion has monomial bound `≤ -3/4` on `[0,1]^11` (4,113 terms in all). Here
only the geometric conclusion is stated (`claim_certificates`).

**Results.**
* `claim_common_bounds` (§1, (2)–(10)): the rational bounds on the anchors, `X` and `P` shared by
  every remaining word;
* `claim_certificate_cover` (§4): the 36 catalogue words are the R1 words, the R3 words and the 28
  certificate words;
* `claim_certificates` (§3): each of the 28 certificate words gives some area `< 7/128`;
* `theorem1`: every exterior configuration has minimum area at most `A₀`; equality forces `k = 1`
  and the construction; every non-R3 radial word gives `< 7/128`.

FLAG (overstatement, line 298): "one of exactly 36 radial words" — the cover gives at most 36
(realizability is not claimed); the statements here use only the cover.
Implicit in the manuscript: Theorem 1's hypotheses are spread over five notes (lines 12–22); here
Theorem 1 assumes only the exterior case (`SevenNormal`, `FarCapPoint`, `P` in the heptagon), the
form in which `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2` applies it after
`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`; the derived conditions are proved in
`SEVEN_BOUNDARY_TOP_CAP` and `SEVEN_BOUNDARY_TOP_CAP_RIGHT`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryExteriorCompletion

open SevenBoundary RadialCatalogue

/-- The block pairs (1-based, first block `(k₀,k₁,k₄,k₅)`, second `(k₂,k₃,k₆,k₇)`) of the 28
certificate records (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` lines 263–278, the `blocks` fields of
`hand/seven_boundary_exterior_certificates.json`). -/
def certificateBlocks : List (ℕ × ℕ) :=
  [(1, 2), (1, 4), (1, 5), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (3, 1), (3, 2), (3, 3),
    (3, 4), (3, 5), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (5, 1), (5, 2), (5, 3), (5, 4),
    (5, 5), (5, 6), (6, 2), (6, 3), (6, 5)]

/-- The 28 radial words closed by certificates. -/
def certificateWords : List Word :=
  certificateBlocks.map fun p => ofBlocks p.1 p.2

/-! ### §1. Common bounds -/

/-- (1)–(2): `R < 5/7` from `R + s/B₀ + s/T ≤ 1` and `B₀, T ≤ 1 - s - s/R`. -/
theorem ec_R {R d e B T : ℝ} (hR : 0 < R) (hRde : R = e - d) (hd : 0 ≤ d) (he : e < 1)
    (hBR : B * R ≤ R * (1 - 7 / 64) - 7 / 64) (hTR : T * R ≤ R * (1 - 7 / 64) - 7 / 64)
    (hdB : 7 / 64 ≤ d * B) (heT : 7 / 64 ≤ (1 - e) * T) : R < 5 / 7 := by
  have h1 : 7 / 64 * R ≤ d * (R * (1 - 7 / 64) - 7 / 64) := by
    have := mul_le_mul_of_nonneg_left hBR hd
    nlinarith
  have h2 : 7 / 64 * R ≤ (1 - e) * (R * (1 - 7 / 64) - 7 / 64) := by
    have := mul_le_mul_of_nonneg_left hTR (show 0 ≤ 1 - e by linarith)
    nlinarith
  have h3 : 2 * (7 / 64) * R ≤ (1 - R) * (R * (1 - 7 / 64) - 7 / 64) := by
    rw [hRde] at h1 h2 ⊢; nlinarith
  by_contra hc; push Not at hc
  nlinarith

/-- `c ≤ 1 - s/R`: `cR ≤ R - s`, and the bound on `c` from `R < r`. -/
theorem ec_c_of_R {c R r : ℝ} (hR : 0 < R) (hRr : R < r) (hr : 0 < r)
    (hcR : 7 / 64 ≤ (1 - c) * R) : c < 1 - 7 / 64 / r := by
  have : 7 / 64 / r < 1 - c := by
    rw [div_lt_iff₀ hr]; nlinarith
  linarith

/-- `a ≥ s/B₀ > s/m` from `aB₀ ≥ s` and `B₀ < m`. -/
theorem ec_low {a B m : ℝ} (hB : 0 < B) (hBm : B < m) (haB : 7 / 64 ≤ a * B) : 7 / 64 / m < a := by
  have hm : 0 < m := by linarith
  rw [div_lt_iff₀ hm]; nlinarith

/-- (6), first half: `h ≥ s/(c-b) + s/b ≥ 4s/c > 33/64`. -/
theorem ec_h {a h b c : ℝ} (hb : 0 < b) (hbc : b < c) (hc : c < 37 / 44)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hh0 : 0 < h) : 33 / 64 < h := by
  have hM : 0 < c - b := by linarith
  have h1 : 7 / 64 * c ≤ h * (b * (c - b)) := by
    have := mul_le_mul_of_nonneg_left hABC hb.le
    have := mul_le_mul_of_nonneg_left hABH hM.le
    nlinarith
  have h2 : b * (c - b) ≤ c ^ 2 / 4 := by nlinarith [sq_nonneg (c - 2 * b)]
  have h3 : h * (b * (c - b)) ≤ h * (c ^ 2 / 4) := mul_le_mul_of_nonneg_left h2 hh0.le
  nlinarith

/-- (6), second half: `e ≥ s/(c-b) + s/(1-c) ≥ 4s/(1-b) > 33/64`. -/
theorem ec_e {b c d e : ℝ} (hb : 7 / 46 < b) (hbc : b < c) (hc : c < 1)
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (he0 : 0 < e) :
    33 / 64 < e := by
  have hM : 0 < c - b := by linarith
  have h1 : 7 / 64 * (1 - b) ≤ e * ((c - b) * (1 - c)) := by
    have := mul_le_mul_of_nonneg_left hBCD (show 0 ≤ 1 - c by linarith)
    have := mul_le_mul_of_nonneg_left hCDE hM.le
    nlinarith
  have h2 : (c - b) * (1 - c) ≤ (1 - b) ^ 2 / 4 := by nlinarith [sq_nonneg (1 - c - (c - b))]
  have h3 : e * ((c - b) * (1 - c)) ≤ e * ((1 - b) ^ 2 / 4) := mul_le_mul_of_nonneg_left h2 he0.le
  nlinarith

/-- The anchor and `X` bounds (2)–(7) of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` from the area
costs, `k > h` and `b > 3/20`. -/
theorem common_bounds_core {a h b c d e f g k : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hb : 0 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hbf : b ≤ f) (hfc : f ≤ c) (hfg : f < g) (hg1 : g < 1) (hek : e < k) (hk1 : k ≤ 1)
    (hkh : h < k) (hb3 : 3 / 20 < b)
    (hABH : 7 / 64 ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b)) (hBCD : 7 / 64 ≤ d * (c - b))
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d)) (hDEX : 7 / 64 ≤ (e - d) * (1 - g))
    (hHFX : 7 / 64 ≤ g * (1 - h) - f * (k - h))
    (hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k)) :
    (e - d < 5 / 7 ∧ c < 271 / 320 ∧ g < 271 / 320) ∧
      (5 / 32 < a ∧ 5 / 32 < d ∧ e < 27 / 32) ∧
      h < 237 / 272 ∧
      (e - d < 11 / 16 ∧ c < 37 / 44 ∧ g < 37 / 44 ∧ h - a < 23 / 32 ∧ 7 / 46 < b) ∧
      (33 / 64 < h ∧ 33 / 64 < e) ∧
      (9 / 40 < g - f ∧ 1 / 8 < k - e) := by
  have hR : 0 < e - d := by linarith
  have hM : 0 < c - b := by linarith
  have hT : 0 < g - f := by linarith
  have hf0 : 0 < f := by linarith
  have h1e : 7 / 64 ≤ (1 - e) * (g - f) := by
    have := mul_nonneg (show 0 ≤ 1 - f by linarith) (show 0 ≤ 1 - k by linarith)
    linarith
  have hgR : 7 / 64 ≤ (1 - g) * (e - d) := by linarith
  -- (1)–(2)
  have hBR : (c - b) * (e - d) ≤ (e - d) * (1 - 7 / 64) - 7 / 64 := by
    have := mul_le_mul_of_nonneg_right hb3.le hR.le
    nlinarith
  have hTR : (g - f) * (e - d) ≤ (e - d) * (1 - 7 / 64) - 7 / 64 := by
    have := mul_le_mul_of_nonneg_right (show 3 / 20 ≤ f by linarith) hR.le
    nlinarith
  have hR57 : e - d < 5 / 7 := ec_R hR rfl hd.le he hBR hTR hBCD h1e
  have hc271 : c < 271 / 320 := by
    have := ec_c_of_R hR hR57 (by norm_num) hCDE; norm_num at this; linarith
  have hg271 : g < 271 / 320 := by
    have := ec_c_of_R hR hR57 (by norm_num) hgR; norm_num at this; linarith
  -- (3)
  have ha532 : 5 / 32 < a := by
    have := ec_low hM (show c - b < 7 / 10 by linarith) hABC; norm_num at this; linarith
  have hd532 : 5 / 32 < d := by
    have := ec_low hM (show c - b < 7 / 10 by linarith) hBCD; norm_num at this; linarith
  have he2732 : e < 27 / 32 := by
    have := ec_low hT (show g - f < 7 / 10 by linarith) h1e; norm_num at this; linarith
  -- (4)
  have hh272 : h < 237 / 272 := by
    have h1 : 7 / 64 < g * (1 - h) := by
      have := mul_pos hf0 (sub_pos.2 hkh)
      linarith
    have h2 : g * (1 - h) < 271 / 320 * (1 - h) :=
      mul_lt_mul_of_pos_right hg271 (by linarith)
    linarith
  -- (5)
  have hR1116 : e - d < 11 / 16 := by linarith
  have hc3744 : c < 37 / 44 := by
    have := ec_c_of_R hR hR1116 (by norm_num) hCDE; norm_num at this; linarith
  have hg3744 : g < 37 / 44 := by
    have := ec_c_of_R hR hR1116 (by norm_num) hgR; norm_num at this; linarith
  have hL2332 : h - a < 23 / 32 := by linarith
  have hb746 : 7 / 46 < b := by
    have := ec_low (by linarith : 0 < h - a) hL2332 (by linarith : 7 / 64 ≤ b * (h - a))
    norm_num at this; linarith
  -- (6)
  have hh3364 : 33 / 64 < h := ec_h hb hbc hc3744 hABH hABC (by linarith)
  have he3364 : 33 / 64 < e := ec_e hb746 hbc hc hBCD hCDE (by linarith)
  -- (7)
  have hgf : 9 / 40 < g - f := by
    have : (1 - e) * (g - f) < 31 / 64 * (g - f) := mul_lt_mul_of_pos_right (by linarith) hT
    linarith
  have hke : 1 / 8 < k - e := by
    have h1 : 7 / 64 ≤ (1 - f) * (k - e) := by
      have := mul_nonneg (show 0 ≤ 1 - g by linarith) (show 0 ≤ 1 - e by linarith)
      nlinarith
    have h2 : (1 - f) * (k - e) < 17 / 20 * (k - e) :=
      mul_lt_mul_of_pos_right (by linarith) (by linarith)
    linarith
  exact ⟨⟨hR57, hc271, hg271⟩, ⟨ha532, hd532, he2732⟩, hh272,
    ⟨hR1116, hc3744, hg3744, hL2332, hb746⟩, ⟨hh3364, he3364⟩, ⟨hgf, hke⟩⟩

/-- The bounds (9)–(10) on the interior point from the side tests (8). -/
theorem ec_point {a h b c d e f g k x y : ℝ} (hbf : b ≤ f) (hek : e < k) (hkh : h < k) (hk1 : k ≤ 1)
    (ha532 : 5 / 32 < a) (hd532 : 5 / 32 < d) (he2732 : e < 27 / 32) (hh272 : h < 237 / 272)
    (hc3744 : c < 37 / 44) (hg3744 : g < 37 / 44) (hx0 : 0 < x) (hx1 : x < 1) (hy0 : 0 < y)
    (tAD : 7 / 64 ≤ y - a - (d - a) * x) (tHE : 7 / 64 ≤ h + (e - h) * x - y)
    (tBF : 7 / 64 ≤ x - b - (f - b) * y) (tCX : 7 / 64 ≤ k * (c - x) + (g - c) * y) :
    (17 / 64 < y ∧ y < 49 / 64 ∧ 7 / 64 < k - y) ∧ (7 / 64 ≤ x - b ∧ x < 3 / 4) := by
  refine ⟨⟨?_, ?_, ?_⟩, ⟨?_, ?_⟩⟩
  · nlinarith [mul_pos hx0 (show (0 : ℝ) < d - 5 / 32 by linarith),
      mul_pos (show (0 : ℝ) < 1 - x by linarith) (show (0 : ℝ) < a - 5 / 32 by linarith)]
  · nlinarith [mul_pos hx0 (show (0 : ℝ) < 7 / 8 - e by linarith),
      mul_pos (show (0 : ℝ) < 1 - x by linarith) (show (0 : ℝ) < 7 / 8 - h by linarith)]
  · nlinarith [mul_pos hx0 (show (0 : ℝ) < k - e by linarith),
      mul_pos (show (0 : ℝ) < 1 - x by linarith) (show (0 : ℝ) < k - h by linarith)]
  · nlinarith [mul_nonneg (show (0 : ℝ) ≤ f - b by linarith) hy0.le]
  · have hyk : y < k := by
      nlinarith [mul_pos hx0 (show (0 : ℝ) < k - e by linarith),
        mul_pos (show (0 : ℝ) < 1 - x by linarith) (show (0 : ℝ) < k - h by linarith)]
    have hk0 : 0 < k := by linarith
    have h1 : k * x ≤ k * (37 / 44) - 7 / 64 := by
      rcases le_total g c with hgc | hgc
      · nlinarith [mul_nonneg (show (0 : ℝ) ≤ c - g by linarith) hy0.le]
      · nlinarith [mul_nonneg (show (0 : ℝ) ≤ g - c by linarith) (show (0 : ℝ) ≤ k - y by linarith)]
    by_contra hcon; push Not at hcon
    nlinarith

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-common-bounds`). In the exterior case at
minimum area at least `7/128`, with `P = (x,y)` and `s = 7/64`:
(2) `e - d < 5/7`, `c, g < 271/320`; (3) `a, d > 5/32`, `e < 27/32`; (4) `h < 237/272`;
(5) `e - d < 11/16`, `c, g < 37/44`, `h - a < 23/32`, `b > 7/46`; (6) `h, e > 33/64`;
(7) `g - f > 9/40`, `k - e > 1/8`; (8) the `AD`, `HE`, `BF`, `CX` side tests
`y - a - (d-a)x ≥ s`, `h + (e-h)x - y ≥ s`, `x - b - (f-b)y ≥ s`, `k(c-x) + (g-c)y ≥ s`;
(9) `17/64 < y < 49/64`, `k - y > s`; (10) `x - b ≥ s`, `x < 3/4`.
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 41–162.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem, SEVEN_BOUNDARY_TOP_CAP:Theorem1,
SEVEN_BOUNDARY_TOP_CAP:Theorem2, SEVEN_BOUNDARY_TOP_CAP:Theorem3. -/
theorem claim_common_bounds {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    (e - d < 5 / 7 ∧ c < 271 / 320 ∧ g < 271 / 320) ∧
      (5 / 32 < a ∧ 5 / 32 < d ∧ e < 27 / 32) ∧
      h < 237 / 272 ∧
      (e - d < 11 / 16 ∧ c < 37 / 44 ∧ g < 37 / 44 ∧ h - a < 23 / 32 ∧ 7 / 46 < b) ∧
      (33 / 64 < h ∧ 33 / 64 < e) ∧
      (9 / 40 < g - f ∧ 1 / 8 < k - e) ∧
      (7 / 64 ≤ P.2 - a - (d - a) * P.1 ∧ 7 / 64 ≤ h + (e - h) * P.1 - P.2 ∧
        7 / 64 ≤ P.1 - b - (f - b) * P.2 ∧ 7 / 64 ≤ k * (c - P.1) + (g - c) * P.2) ∧
      (17 / 64 < P.2 ∧ P.2 < 49 / 64 ∧ 7 / 64 < k - P.2) ∧
      (7 / 64 ≤ P.1 - b ∧ P.1 < 3 / 4) := by
  have hmin₁ := hmin.trans SevenBoundaryCaps.min₁_left
  have hb3 := SevenBoundaryTopCapRight.claim_b_gt_3_20 hN hX hmin₁
  have hkh := SevenBoundaryTopCapRight.claim_k_gt_h hN hX hmin₁
  obtain ⟨sHE, sAD, sBF⟩ := SevenBoundaryTopCap.claim_partial_central hN hX hP hmin
  have hcen := SevenBoundaryTopCapRight.claim_central_region hN hX hP hmin
  have sCX : 0 < sarea (c, 0) (g, k) P := by
    have := hcen.2 1
    simpa [exteriorOctagon, finRotate_apply] using this
  have H := SevenBoundaryCaps.anchorCosts hN.1 (hmin₁.trans SevenBoundaryCaps.minAnchor_of₁)
  have hN' := hN
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN'
  have hX' := hX
  obtain ⟨hfg, hg1, hek, hk1, hFEX⟩ := hX'
  simp only [sarea] at hfg hg1 hek hk1 hFEX
  have hDEX : 7 / 64 ≤ (e - d) * (1 - g) :=
    SevenBoundaryCaps.cost hmin₁ 4 5 7 (by sa_eval) (by nlinarith)
  have hHFX : 7 / 64 ≤ g * (1 - h) - f * (k - h) := by
    have := SevenBoundaryCaps.cost_neg (v := f * (k - h) - g * (1 - h)) hmin₁ 1 6 7 (by sa_eval)
      (by nlinarith)
    linarith
  have hEFX : 7 / 64 ≤ (g - f) * (1 - e) - (1 - f) * (1 - k) :=
    SevenBoundaryCaps.cost hmin₁ 6 5 7 (by sa_eval) (by nlinarith)
  have hcore := common_bounds_core ha hah hh hb hbc hc hd hde he hbf hfc hfg hg1 hek hk1 hkh hb3
    H.ABH H.ABC H.BCD H.CDE hDEX hHFX hEFX
  refine ⟨hcore.1, hcore.2.1, hcore.2.2.1, hcore.2.2.2.1, hcore.2.2.2.2.1, hcore.2.2.2.2.2, ?_⟩
  obtain ⟨-, ⟨ha532, hd532, he2732⟩, hh272, ⟨-, hc3744, hg3744, -, -⟩, -, -⟩ := hcore
  obtain ⟨x, y⟩ := P
  obtain ⟨hAB, hBC, hCD, hDE, hEF, hFH, hHA⟩ := hP
  simp only [sarea] at hAB hBC hCD hDE hEF hFH hHA sHE sAD sBF sCX
  simp only
  have hx0 : 0 < x := by
    have : 0 < (h - a) * x := by linarith
    exact pos_of_mul_pos_right this (by linarith)
  have hy0 : 0 < y := by
    have : 0 < (c - b) * y := by linarith
    exact pos_of_mul_pos_right this (by linarith)
  have hx1 : x < 1 := by
    have : 0 < (e - d) * (1 - x) := by linarith
    linarith [pos_of_mul_pos_right this (by linarith)]
  have tAD : 7 / 64 ≤ y - a - (d - a) * x :=
    SevenBoundaryCaps.cost hmin 0 4 8 (by sa_eval) (by linarith)
  have tHE : 7 / 64 ≤ h + (e - h) * x - y := by
    have := SevenBoundaryCaps.cost_neg (v := (1 - 0) * (y - h) - (e - h) * (x - 0)) hmin 1 5 8
      (by sa_eval) (by linarith)
    linarith
  have tBF : 7 / 64 ≤ x - b - (f - b) * y := by
    have := SevenBoundaryCaps.cost_neg (v := (f - b) * (y - 0) - (1 - 0) * (x - b)) hmin 2 6 8
      (by sa_eval) (by linarith)
    linarith
  have tCX : 7 / 64 ≤ k * (c - x) + (g - c) * y := by
    have := SevenBoundaryCaps.cost (v := (g - c) * (y - 0) - (k - 0) * (x - c)) hmin 3 7 8
      (by sa_eval) (by linarith)
    linarith
  exact ⟨⟨tAD, tHE, tBF, tCX⟩, ec_point hbf hek hkh hk1 ha532 hd532 he2732 hh272 hc3744 hg3744
    hx0 hx1 hy0 tAD tHE tBF tCX⟩

/-! ### §2–3. The certificates -/

section Certs
open SevenBoundaryExteriorCerts

/-- The coordinates `(a, h, b, c, d, e, f, g, k, x, y)` as a point of the cube. -/
def zeta (a h b c d e f g k x y : ℝ) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => e | 6 => f | 7 => g | 8 => k
  | 9 => x | 10 => y | _ => 0

theorem pt_eval (a h b c d e f g k x y : ℝ) (i : Fin 9) :
    (((pt i).1.eval (zeta a h b c d e f g k x y), (pt i).2.eval (zeta a h b c d e f g k x y)) :
      Point) = octConfig (exteriorOctagon a h b c d e f (g, k)) (x, y) i := by
  fin_cases i <;> simp [pt, zeta, octConfig, exteriorOctagon]

theorem octConfig_castSucc (V : Fin 8 → Point) (O : Point) (m : Fin 8) :
    octConfig V O (Fin.castSucc m) = V m := by
  fin_cases m <;> rfl

theorem octConfig_exterior (a h b c d e f g k : ℝ) (P : Point) :
    octConfig (exteriorOctagon a h b c d e f (g, k)) P =
      sevenConfig a h b c d e f (g, k) P ∘ ![0, 2, 3, 4, 5, 7, 6, 1, 8] := by
  funext i; fin_cases i <;> rfl

/-- Reading a radial word: `[O V_p V_q] > 0` when `q - p ≤ k_p` (a copy of
`RadialCatalogue.IsRadialWord.pos_of`). -/
theorem ec_pos_of {V : Fin 8 → Point} {O : Point} {k : Word} (hk : IsRadialWord V O k)
    (p q : Fin 8) (h0 : 0 < ((q - p : Fin 8) : ℕ)) (h : ((q - p : Fin 8) : ℕ) ≤ k p) :
    0 < sarea O (V p) (V q) := by
  have := (hk p (q - p) h0).2 h
  rwa [add_sub_cancel] at this

/-- Reading a radial word: `[O V_p V_q] ≤ 0` when `q - p > k_p`. -/
theorem ec_nonpos_of {V : Fin 8 → Point} {O : Point} {k : Word} (hk : IsRadialWord V O k)
    (p q : Fin 8) (h0 : 0 < ((q - p : Fin 8) : ℕ)) (h : k p < ((q - p : Fin 8) : ℕ)) :
    sarea O (V p) (V q) ≤ 0 := by
  have := hk p (q - p) h0
  rw [add_sub_cancel] at this
  by_contra hc
  push Not at hc
  have := this.1 hc
  omega

/-- Every oriented cost (11) is nonnegative: convexity for the triangles of the octagon, the
radial word for those containing `P`. -/
theorem q_nonneg {V : Fin 8 → Point} {P : Point} {w : Word} (hV : IsConvexPolygon V)
    (hw : IsRadialWord V P w) (hmin : 7 / 128 ≤ minTriangleArea (octConfig V P))
    (t : Fin 9 × Fin 9 × Fin 9) (ht : t.1 < t.2.1 ∧ t.2.1 < t.2.2) :
    0 ≤ (if sgn w t then 1 else -1) *
      sarea (octConfig V P t.1) (octConfig V P t.2.1) (octConfig V P t.2.2) - 7 / 64 := by
  obtain ⟨i, j, l⟩ := t
  obtain ⟨hij, hjl⟩ := ht
  simp only at hij hjl ⊢
  have hij' : (i : ℕ) < j := hij
  have hjl' : (j : ℕ) < l := hjl
  have hl9 := l.isLt
  have hi8 : (i : ℕ) < 8 := by omega
  have hj8 : (j : ℕ) < 8 := by omega
  have eVi : octConfig V P i = V ⟨i, hi8⟩ := octConfig_castSucc V P ⟨i, hi8⟩
  have eVj : octConfig V P j = V ⟨j, hj8⟩ := octConfig_castSucc V P ⟨j, hj8⟩
  have hne1 : i ≠ j := Fin.ne_of_lt hij
  have hne2 : j ≠ l := Fin.ne_of_lt hjl
  have hne3 : i ≠ l := Fin.ne_of_lt (hij.trans hjl)
  by_cases hl : (l : ℕ) < 8
  · have hs : sgn w (i, j, l) = true := by simp [sgn, hl]
    rw [hs, if_pos rfl, one_mul]
    have eVl : octConfig V P l = V ⟨l, hl⟩ := octConfig_castSucc V P ⟨l, hl⟩
    have hpos : 0 < sarea (octConfig V P i) (octConfig V P j) (octConfig V P l) := by
      rw [eVi, eVj, eVl]
      exact hV _ _ _ (Fin.mk_lt_mk.2 hij') (Fin.mk_lt_mk.2 hjl')
    have := SevenBoundaryCaps.cost hmin i j l rfl hpos.le hne1 hne2 hne3
    linarith
  · have hl8 : (l : ℕ) = 8 := by omega
    have eVl : octConfig V P l = P := by
      have : l = 8 := Fin.ext (by simp [hl8])
      rw [this]; rfl
    have hof : (Fin.ofNat 8 (i : ℕ) : Fin 8) = ⟨i, hi8⟩ :=
      Fin.ext (by simp [Nat.mod_eq_of_lt hi8])
    have hsub : (((⟨j, hj8⟩ : Fin 8) - ⟨i, hi8⟩ : Fin 8) : ℕ) = (j : ℕ) - i :=
      Fin.sub_val_of_le (Fin.mk_le_mk.2 hij'.le)
    have hcyc : sarea (V ⟨i, hi8⟩) (V ⟨j, hj8⟩) P = sarea P (V ⟨i, hi8⟩) (V ⟨j, hj8⟩) :=
      sarea_cycle _ _ _
    by_cases hk : (j : ℕ) - i ≤ w ⟨i, hi8⟩
    · have hs : sgn w (i, j, l) = true := by
        unfold sgn; rw [hof]; simp [hl, hk]
      rw [hs, if_pos rfl, one_mul]
      have hpos := ec_pos_of hw ⟨i, hi8⟩ ⟨j, hj8⟩
        (by rw [hsub]; omega) (by rw [hsub]; exact hk)
      have := SevenBoundaryCaps.cost hmin i j l (by rw [eVi, eVj, eVl])
        (by rw [hcyc]; exact hpos.le) hne1 hne2 hne3
      rw [eVi, eVj, eVl]; linarith
    · have hs : sgn w (i, j, l) = false := by
        unfold sgn; rw [hof]; simp [hl, hk]
      rw [hs]
      simp only [Bool.false_eq_true, ↓reduceIte, neg_one_mul]
      have hneg := ec_nonpos_of hw ⟨i, hi8⟩ ⟨j, hj8⟩
        (by rw [hsub]; omega) (by rw [hsub]; omega)
      have := SevenBoundaryCaps.cost_neg hmin i j l (by rw [eVi, eVj, eVl])
        (by rw [hcyc]; exact hneg) hne1 hne2 hne3
      rw [eVi, eVj, eVl]; linarith

end Certs

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificate-cover`). The 28 certificate
words are exactly the catalogue words outside the orbits R1 and R3: every catalogue word is in R1,
in R3, or a certificate word, and no certificate word is in R1 or R3 (`4 + 28 + 4 = 36`).
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 260–278, 302–307.
Uses: RADIAL_CATALOGUE:claim-eight-classes. -/
theorem claim_certificate_cover :
    (∀ w ∈ catalogue, InClass .R1 w ∨ InClass .R3 w ∨ w ∈ certificateWords) ∧
      (∀ w ∈ certificateWords, w ∈ catalogue ∧ ¬ InClass .R1 w ∧ ¬ InClass .R3 w) ∧
      certificateWords.length = 28 := by
  refine ⟨?_, ?_, by decide⟩
  · intro w hw
    revert w
    decide +kernel
  · intro w hw
    revert w
    decide +kernel

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificates`). In the exterior case, if
the radial word of `P` with respect to the octagon `A, B, C, D, E, X, F, H` is one of the 28
certificate words, some triangle has area less than `7/128` (certificate package
`hand/seven_boundary_exterior_certificates.json`).
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 164–292.
Uses: SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-common-bounds,
SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_certificates {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : w ∈ certificateWords) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hmin₁ := hcon.trans SevenBoundaryCaps.min₁_left
  have hb3 := SevenBoundaryTopCapRight.claim_b_gt_3_20 hN hX hmin₁
  have hkh := SevenBoundaryTopCapRight.claim_k_gt_h hN hX hmin₁
  obtain ⟨hV, -, -, -, -, -⟩ := SevenBoundaryTopCapRadial.claim_octagon_cover hN hX hP hcon
  have hB := claim_common_bounds hN hX hP hcon
  have hmo : 7 / 128 ≤ minTriangleArea (octConfig (exteriorOctagon a h b c d e f (g, k)) P) := by
    rw [octConfig_exterior]
    exact hcon.trans (le_min_comp (by norm_num) _ (by decide))
  obtain ⟨x, y⟩ := P
  obtain ⟨⟨hR57, hc271, hg271⟩, ⟨ha532, hd532, he2732⟩, hh272,
    ⟨hR1116, hc3744, hg3744, hL2332, hb746⟩, ⟨hh3364, he3364⟩, ⟨hgf, hke⟩,
    ⟨tAD, tHE, tBF, tCX⟩, ⟨hy1, hy2, hky⟩, ⟨hxb, hx34⟩⟩ := hB
  simp only at tAD tHE tBF tCX hy1 hy2 hky hxb hx34
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc', hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨hfg, hg1, hek, hk1, -⟩ := hX
  simp only at hfg hg1 hek hk1
  set z := zeta a h b c d e f g k x y with hzdef
  have hz : ∀ i, 0 ≤ z i ∧ z i ≤ 1 := by
    intro i
    rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
      simp only [hzdef, zeta] <;> constructor <;> linarith
  have hf : ∀ e ∈ SevenBoundaryExteriorCerts.factors, 0 ≤ e.eval z := by
    intro e he
    simp only [SevenBoundaryExteriorCerts.factors, List.mem_cons, List.not_mem_nil,
      or_false] at he
    rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp [hzdef, zeta] <;> norm_num <;> linarith
  have hq : ∀ t ∈ SevenBoundaryExteriorCerts.triples,
      0 ≤ (SevenBoundaryExteriorCerts.qAtom w t).eval z := by
    intro t ht
    rw [SevenBoundaryExteriorCerts.qAtom_eval, hzdef, pt_eval, pt_eval, pt_eval]
    exact q_nonneg hV hw hmo t (SevenBoundaryExteriorCerts.mem_triples ht)
  simp only [certificateWords, certificateBlocks, List.map_cons, List.map_nil, List.mem_cons,
    List.not_mem_nil, or_false] at hc
  rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_1_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_1_4 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_1_5 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_1 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_3 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_4 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_5 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_2_6 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_3_1 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_3_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_3_3 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_3_4 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_3_5 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_4_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_4_3 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_4_4 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_4_5 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_4_6 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_1 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_3 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_4 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_5 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_5_6 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_6_2 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_6_3 z hz hf hq
  · exact SevenBoundaryExteriorCerts.atoms_false SevenBoundaryExteriorCerts.check_6_5 z hz hf hq

/-- A radial word with entries at most `6` is determined by the geometry. -/
theorem radial_unique {V : Fin 8 → Point} {P : Point} {w w₀ : Word} (hw : IsRadialWord V P w)
    (hw₀ : IsRadialWord V P w₀) (hb : ∀ i, w i ≤ 6) (hb₀ : ∀ i, w₀ i ≤ 6) : w = w₀ := by
  funext i
  by_contra hne
  rcases Nat.lt_or_gt_of_ne hne with hlt | hlt
  · have h1 := hw₀ i ⟨w₀ i, by have := hb₀ i; omega⟩ (by simp; omega)
    have h2 := hw i ⟨w₀ i, by have := hb₀ i; omega⟩ (by simp; omega)
    simp only at h1 h2
    have := h1.2 le_rfl
    have := h2.1 this
    omega
  · have h1 := hw i ⟨w i, by have := hb i; omega⟩ (by simp; omega)
    have h2 := hw₀ i ⟨w i, by have := hb i; omega⟩ (by simp; omega)
    simp only at h1 h2
    have := h1.2 le_rfl
    have := h2.1 this
    omega

theorem catalogue_le_five : ∀ w ∈ catalogue, ∀ i, w i ≤ 5 := by decide +kernel

/-- **Theorem 1** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1`). Every configuration of the
seven-boundary exterior case has minimum triangle area at most `A₀ = (9√65 - 55)/320`; equality
forces `k = 1` and the known eight-boundary configuration up to square symmetry and relabelling;
and every radial word of `P` outside class R3 gives minimum area strictly below `7/128`.
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 24–39, 294–312.
Uses: SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover,
SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-four-R1-words,
SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificate-cover,
SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificates, SEVEN_BOUNDARY_TOP_CAP_RADIAL:Theorem1,
RADIAL_CATALOGUE:claim-eight-classes. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) P) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) P)) ∧
      (∀ w : Word, IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w → ¬ InClass .R3 w →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128) := by
  have hA := A₀_bounds.1
  have part3 : ∀ w : Word, IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w →
      ¬ InClass .R3 w → minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
    intro w hw hR3
    by_contra hcon
    push Not at hcon
    obtain ⟨hV, hO, hnd, hq, hk₀, hcat⟩ :=
      SevenBoundaryTopCapRadial.claim_octagon_cover hN hX hP hcon
    have hear := claim_ear_bounds _ P hV hO hnd hq hw
    have hweq := radial_unique hw hk₀ (fun i => by have := (hear i).2; omega)
      (fun i => by have := catalogue_le_five _ hcat i; omega)
    rw [← hweq] at hcat
    rcases claim_certificate_cover.1 w hcat with h1 | h3 | hc
    · have := SevenBoundaryAdjacentCapsCompletion.claim_four_R1_words hN hX hP hw h1
      linarith
    · exact hR3 h3
    · have := claim_certificates hN hX hP hw hc
      linarith
  refine ⟨?_, ?_, part3⟩
  · rcases lt_or_ge (minTriangleArea (sevenConfig a h b c d e f (g, k) P)) (7 / 128) with hlt | hge
    · linarith
    obtain ⟨-, -, -, -, hk₀, -⟩ := SevenBoundaryTopCapRadial.claim_octagon_cover hN hX hP hge
    by_cases h3 : InClass .R3 (radialWord (exteriorOctagon a h b c d e f (g, k)) P)
    · exact (SevenBoundaryTopCapRadial.theorem1 hN hX hP hk₀ h3).1
    · have := part3 _ hk₀ h3; linarith
  · intro heq
    have hge : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P) := by linarith
    obtain ⟨-, -, -, -, hk₀, -⟩ := SevenBoundaryTopCapRadial.claim_octagon_cover hN hX hP hge
    by_cases h3 : InClass .R3 (radialWord (exteriorOctagon a h b c d e f (g, k)) P)
    · exact (SevenBoundaryTopCapRadial.theorem1 hN hX hP hk₀ h3).2.1 heq
    · have := part3 _ hk₀ h3; linarith

end Heilbronn.SevenBoundaryExteriorCompletion
