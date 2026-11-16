module

public import Heilbronn.Nine.SixBoundary.TwoSideCompletion
public import Heilbronn.Nine.SixBoundary.TwoSideUpperTrees
public import Heilbronn.Nine.SixBoundary.ThreeCaps
public import Heilbronn.Nine.Sharp.BEMoving

/-! # Completion of the two-side-cap N family with an upper point
(`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`)

Role: primary route. Theorem 1 closes the occupancy N6-02 `(1,0,1;1)` of
`docs/proof/nine/UNRESTRICTED.md`, Section 4, when the anchor-interior point is in the upper quadrilateral
`HCDF`; with `SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` (point below `HC`) it closes N6-02
(`n6_02`). N6-05 `(1,1,1;0)` is closed by `SixBoundaryThreeCaps.three_caps` (`n6_05`).

Setting (1): `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed
cap `CD(1,0)`, `Y = (z, w)` in the closed cap `FH(0,1)` (square-side positions allowed),
`Q = (r, t)` strictly inside `HCDF`. Competitive: every doubled area at least `s = 7/64`.
Normalization (2) `f ≤ d` by transposition (Sections 1-5). The hull is the strictly convex
octagon (3) `(V₀, …, V₇) = (A, B, C, X, D, F, Y, H)` with `Q` its sole interior point.

Certificate package (`docs/proof/nine/six_boundary_two_side_upper_certificates.json`, checker
`docs/proof/nine/check_six_boundary_two_side_upper.py`): the radial word of `Q` (11) lies among 82 words;
80 cubic certificates (14,253 terms) exclude all of them except `q* = (4,3,3,2,3,4,5,4)`. Its
geometric conclusion is `claim_80_certificates`: in the competitive normalized setting, the word
of `Q` is `q*`. The word `q*` is the simultaneous B/E sharp chamber (`claim_sharp_word`).

Results:
* `claim_octagon`: the hull is the octagon (3), `Q` interior (the 56 hull signs `Oct.t*` are
  linear combinations of products of the N and cap orders, found by linear programming);
* `claim_common_bounds`: the bounds (4)-(10);
* `claim_82_words`: the word of `Q` exists and is one of the words of Section 2;
* `claim_80_certificates`: the word of `Q` is `q*` (the word cover `Trees.tree`, kernel-checked
  in `Heilbronn.Nine.SixBoundary.TwoSideUpperTrees*`, and `Cover.checkTree_sound`);
* `claim_sharp_word`: in the word `q*`, `SHARP_B_E_MOVING.md` Theorem 1 (after the rotation
  `R(u, v) = (v, 1 - u)`) gives the sharp bound, and least area at least `A₀` forces `x = w = 1`;
* `theorem1`: occupancy (1) has least area at most `A₀`, and at least `A₀` forces `x = w = 1`;
* `n6_02`, `n6_05`: the assembly forms for N6-02 and N6-05 with exactly six contacts (N6-05 by
  `SixBoundaryThreeCaps.three_caps`; Corollary 2 and its convex-nonagon route are not used).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoSideUpper

open SixBoundary Cert Cert.Expr Cover

/-- The hull octagon (3) `(A, B, C, X, D, F, Y, H)`. -/
def octagonXY (a h b c d f : ℝ) (X Y : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, ptF f, Y, ptH h]

/-- The sharp word (14) `q* = (4, 3, 3, 2, 3, 4, 5, 4)`. -/
def qStar : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-- The 82 words of Section 2: radial words on the octagon (complement relation (12)) with the
three `HCDF` tests (13) `q₇ ≥ 3` (`[HCQ] > 0`), `q₂ ≥ 2` (`[CDQ] > 0`), `q₅ ≥ 2`
(`[FHQ] > 0`). -/
def upperWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun q => 3 ≤ (q 7 : ℕ) ∧ 2 ≤ (q 2 : ℕ) ∧ 2 ≤ (q 5 : ℕ)

/-! ### The hull octagon -/

/-- The sign data of the octagon `A, B, C, X, D, F, Y, H`: the N orders and the two caps. -/
structure Oct (a h b c d f x y z w : ℝ) : Prop where
  ha : 0 < a
  hha : 0 < h - a
  hh1 : 0 < 1 - h
  hb : 0 < b
  hcb : 0 < c - b
  hc1 : 0 < 1 - c
  hda : 0 ≤ d - a
  hhd : 0 ≤ h - d
  hfb : 0 ≤ f - b
  hcf : 0 ≤ c - f
  hxc : 0 < x - c
  hx1 : 0 ≤ 1 - x
  hy : 0 < y
  hdy : 0 < d - y
  hz : 0 < z
  hfz : 0 < f - z
  hwh : 0 < w - h
  hw1 : 0 ≤ 1 - w
  hCDX : 0 < d * (x - c) - (1 - c) * y
  hFHY : 0 < (1 - h) * (f - z) - f * (1 - w)

theorem Oct.t012 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (c, 0) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb]

theorem Oct.t013 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (x, y) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb, mul_pos ha hxc, mul_pos hb hy]

theorem Oct.t014 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb, mul_pos ha hc1, mul_pos hb hy, mul_pos hb hdy]

theorem Oct.t015 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos ha hfz, mul_pos hha hb, mul_pos hb hwh, mul_nonneg hb.le hw1]

theorem Oct.t016 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos hha hb, mul_pos hb hwh]

theorem Oct.t017 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (b, 0) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hb]

theorem Oct.t023 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (c, 0) (x, y) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hb hy, mul_pos hcb hy]

theorem Oct.t024 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (c, 0) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hc1, mul_pos hb hy, mul_pos hb hdy, mul_pos hcb hy, mul_pos hcb hdy]

theorem Oct.t025 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (c, 0) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos ha hfz, mul_pos hha hb, mul_pos hha hcb, mul_pos hh1 hb,
    mul_pos hh1 hcb]

theorem Oct.t026 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (c, 0) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos hha hb, mul_pos hha hcb, mul_pos hb hwh, mul_pos hcb hwh]

theorem Oct.t027 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (c, 0) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hb, mul_pos hha hcb]

theorem Oct.t034 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (x, y) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg ha.le hx1, mul_pos hb hdy, mul_pos hcb hdy]

theorem Oct.t035 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (x, y) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg hha.le hcf, mul_pos hha hxc, mul_pos hh1 hb, mul_pos hh1 hcb, mul_nonneg
    hhd hz.le, mul_nonneg hhd hfz.le, mul_pos hxc hwh, mul_nonneg hxc.le hw1, mul_pos hdy hz,
    mul_pos hdy hfz]

theorem Oct.t036 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (x, y) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg hha.le hcf, mul_pos hha hxc, mul_pos hha hfz, mul_pos hb hwh, mul_pos hcb
    hwh, mul_nonneg hhd hz.le, mul_pos hxc hwh, mul_pos hdy hz]

theorem Oct.t037 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (x, y) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hb, mul_pos hha hcb, mul_pos hha hxc]

theorem Oct.t045 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (1, d) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hc1, mul_nonneg hha.le hcf, mul_pos hh1 hb, mul_pos hh1 hcb, mul_pos hh1
    hc1, mul_nonneg hhd hz.le, mul_nonneg hhd hfz.le]

theorem Oct.t046 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (1, d) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hwh, mul_pos hha hc1, mul_nonneg hha.le hcf, mul_pos hha hfz, mul_pos hha
    hwh, mul_nonneg hhd hz.le, mul_pos hwh hwh, mul_nonneg hwh.le hw1]

theorem Oct.t047 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (1, d) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hha, mul_pos hha hha, mul_pos hha hh1]

theorem Oct.t056 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (f, 1) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hfz]

theorem Oct.t057 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (f, 1) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hz, mul_pos hha hfz]

theorem Oct.t067 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (0, a) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hha hz]

theorem Oct.t123 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (c, 0) (x, y) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hcb hy]

theorem Oct.t124 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (c, 0) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hcb hy, mul_pos hcb hdy]

theorem Oct.t125 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (c, 0) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hb hcb, mul_pos hcb hcb, mul_pos hcb hc1]

theorem Oct.t126 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (c, 0) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb, mul_pos hha hcb, mul_pos hcb hwh]

theorem Oct.t127 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (c, 0) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb, mul_pos hha hcb]

theorem Oct.t134 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (x, y) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hcb hdy]

theorem Oct.t135 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (x, y) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hha hxc, mul_pos hh1 hcb, mul_nonneg hcb.le hhd, mul_pos hcb
    hdy, mul_nonneg hcf hy.le, mul_pos hxc hwh, mul_nonneg hxc.le hw1]

theorem Oct.t136 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (x, y) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hha hxc, mul_nonneg hcb.le hhd, mul_pos hcb hdy, mul_pos hcb
    hwh, mul_nonneg hcf hy.le, mul_pos hxc hwh, mul_pos hy hfz]

theorem Oct.t137 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (x, y) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hcb, mul_pos ha hxc, mul_pos hha hcb, mul_pos hha hxc, mul_pos hb hy]

theorem Oct.t145 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (1, d) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hh1 hcb, mul_pos hb hc1, mul_pos hcb hc1, mul_nonneg hcb.le hhd, mul_pos hc1
    hc1, mul_nonneg hcf hy.le, mul_nonneg hcf hdy.le]

theorem Oct.t146 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (1, d) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hc1, mul_nonneg ha.le hcf, mul_pos hha hc1, mul_nonneg hcb.le hhd,
    mul_pos hcb hwh, mul_pos hc1 hwh, mul_nonneg hda hcf, mul_pos hy hfz, mul_pos hdy hfz]

theorem Oct.t147 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (1, d) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hc1, mul_pos hha hc1, mul_pos hb hy, mul_pos hb hdy, mul_nonneg hcb.le
    hhd, mul_pos hcb hy, mul_pos hcb hdy]

theorem Oct.t156 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (f, 1) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hfz, mul_pos hha hfz, mul_nonneg hb.le hw1]

theorem Oct.t157 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (f, 1) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos ha hfz, mul_pos hha hz, mul_pos hha hfz, mul_pos hb hwh,
    mul_nonneg hb.le hw1]

theorem Oct.t167 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (b, 0) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos hha hz, mul_pos hb hwh]

theorem Oct.t234 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (x, y) (1, d) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith []

theorem Oct.t235 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (x, y) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hha hxc, mul_nonneg hcf hy.le, mul_pos hxc hwh, mul_nonneg
    hxc.le hw1]

theorem Oct.t236 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (x, y) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hha hxc, mul_nonneg hcf hy.le, mul_pos hxc hwh, mul_pos hy
    hfz]

theorem Oct.t237 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (x, y) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hxc, mul_pos hha hxc, mul_pos hb hy, mul_pos hcb hy]

theorem Oct.t245 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (1, d) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hb hc1, mul_pos hcb hc1, mul_pos hc1 hc1, mul_nonneg hcf hy.le, mul_nonneg
    hcf hdy.le]

theorem Oct.t246 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (1, d) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hc1, mul_nonneg ha.le hcf, mul_pos hha hc1, mul_pos hc1 hwh, mul_nonneg
    hda hcf, mul_pos hy hfz, mul_pos hdy hfz]

theorem Oct.t247 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (1, d) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hc1, mul_pos hha hc1, mul_pos hb hy, mul_pos hb hdy, mul_pos hcb hy,
    mul_pos hcb hdy]

theorem Oct.t256 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (f, 1) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hfz, mul_pos hha hfz, mul_pos hh1 hfz, mul_nonneg hcf hw1]

theorem Oct.t257 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (f, 1) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos ha hfz, mul_pos hha hz, mul_pos hha hfz, mul_pos hh1 hb,
    mul_pos hh1 hcb]

theorem Oct.t267 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (c, 0) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hz, mul_pos hha hz, mul_nonneg hcf hwh.le, mul_pos hz hwh, mul_pos hfz
    hwh]

theorem Oct.t345 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (1, d) (f, 1) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg hcf hdy.le]

theorem Oct.t346 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (1, d) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hc1 hdy, mul_nonneg hhd hx1, mul_nonneg hcf hdy.le, mul_nonneg hx1 hwh.le,
    mul_pos hdy hfz]

theorem Oct.t347 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (1, d) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hdy, mul_pos hha hdy, mul_pos hh1 hdy, mul_nonneg hhd hx1]

theorem Oct.t356 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (f, 1) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hh1 hfz, mul_nonneg hhd hfz.le, mul_nonneg hcf hw1, mul_nonneg hxc.le hw1,
    mul_pos hdy hfz]

theorem Oct.t357 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (f, 1) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hh1 hb, mul_pos hh1 hcb, mul_nonneg hhd hz.le, mul_nonneg hhd hfz.le,
    mul_pos hxc hwh, mul_nonneg hxc.le hw1, mul_pos hdy hz, mul_pos hdy hfz]

theorem Oct.t367 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (x, y) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg hhd hz.le, mul_nonneg hcf hwh.le, mul_pos hxc hwh, mul_pos hdy hz,
    mul_pos hz hwh, mul_pos hfz hwh]

theorem Oct.t456 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (1, d) (f, 1) (z, w) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_nonneg hhd hfz.le]

theorem Oct.t457 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (1, d) (f, 1) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos hh1 hb, mul_pos hh1 hcb, mul_pos hh1 hc1, mul_nonneg hhd hz.le, mul_nonneg
    hhd hfz.le]

theorem Oct.t467 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (1, d) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith [mul_pos ha hwh, mul_pos hha hwh, mul_nonneg hhd hz.le, mul_pos hwh hwh, mul_nonneg
    hwh.le hw1]

theorem Oct.t567 {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    0 < sarea (f, 1) (z, w) (0, h) := by
  obtain ⟨ha, hha, hh1, hb, hcb, hc1, hda, hhd, hfb, hcf, hxc, hx1, hy, hdy, hz, hfz, hwh, hw1,
    hCDX, hFHY⟩ := H
  simp only [sarea]
  linarith []

theorem Oct.convex {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) :
    IsConvexCCW (octagonXY a h b c d f (x, y) (z, w)) := by
  intro i j k hij hjk
  fin_cases i <;> fin_cases j <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hij ⊢ <;>
    fin_cases k <;> simp only [Fin.reduceFinMk, Fin.reduceLT, Fin.isValue] at hjk ⊢
  · exact H.t012
  · exact H.t013
  · exact H.t014
  · exact H.t015
  · exact H.t016
  · exact H.t017
  · exact H.t023
  · exact H.t024
  · exact H.t025
  · exact H.t026
  · exact H.t027
  · exact H.t034
  · exact H.t035
  · exact H.t036
  · exact H.t037
  · exact H.t045
  · exact H.t046
  · exact H.t047
  · exact H.t056
  · exact H.t057
  · exact H.t067
  · exact H.t123
  · exact H.t124
  · exact H.t125
  · exact H.t126
  · exact H.t127
  · exact H.t134
  · exact H.t135
  · exact H.t136
  · exact H.t137
  · exact H.t145
  · exact H.t146
  · exact H.t147
  · exact H.t156
  · exact H.t157
  · exact H.t167
  · exact H.t234
  · exact H.t235
  · exact H.t236
  · exact H.t237
  · exact H.t245
  · exact H.t246
  · exact H.t247
  · exact H.t256
  · exact H.t257
  · exact H.t267
  · exact H.t345
  · exact H.t346
  · exact H.t347
  · exact H.t356
  · exact H.t357
  · exact H.t367
  · exact H.t456
  · exact H.t457
  · exact H.t467
  · exact H.t567

/-- The barycentric identity of an affine function `sarea U W ·` over a triangle. -/
theorem sarea_bary (U W P₁ P₂ P₃ Q : Point) :
    sarea U W Q * sarea P₁ P₂ P₃ = sarea U W P₁ * sarea P₂ P₃ Q + sarea U W P₂ * sarea P₃ P₁ Q +
      sarea U W P₃ * sarea P₁ P₂ Q := by
  simp only [sarea]; ring

/-- An edge `UW` of the octagon has the whole upper quadrilateral `HCDF` on its inner side. -/
theorem edge_pos {U W H C D F Q : Point} (gH : 0 ≤ sarea U W H) (gC : 0 ≤ sarea U W C)
    (gD : 0 ≤ sarea U W D) (gF : 0 ≤ sarea U W F) (gHD : 0 < sarea U W H ∨ 0 < sarea U W D)
    (hHCQ : 0 < sarea H C Q) (hCDQ : 0 < sarea C D Q) (hDFQ : 0 < sarea D F Q)
    (hFHQ : 0 < sarea F H Q) (hHCD : 0 < sarea H C D) (hHDF : 0 < sarea H D F) :
    0 < sarea U W Q := by
  rcases le_or_gt 0 (sarea H D Q) with hq | hq
  · have e := sarea_bary U W H D F Q
    have : 0 < sarea U W Q * sarea H D F := by
      rw [e]
      rcases gHD with g | g
      · nlinarith [mul_pos g hDFQ, mul_nonneg gD hFHQ.le, mul_nonneg gF hq]
      · nlinarith [mul_nonneg gH hDFQ.le, mul_pos g hFHQ, mul_nonneg gF hq]
    exact pos_of_mul_pos_left this hHDF.le
  · have e := sarea_bary U W H C D Q
    have hDHQ : 0 < sarea D H Q := by have := sarea_swap₁₂ H D Q; linarith
    have : 0 < sarea U W Q * sarea H C D := by
      rw [e]
      rcases gHD with g | g
      · nlinarith [mul_pos g hCDQ, mul_nonneg gC hDHQ.le, mul_nonneg gD hHCQ.le]
      · nlinarith [mul_nonneg gH hCDQ.le, mul_nonneg gC hDHQ.le, mul_pos g hHCQ]
    exact pos_of_mul_pos_left this hHCD.le

theorem Oct.inPolygon {a h b c d f x y z w : ℝ} (H : Oct a h b c d f x y z w) {Q : Point}
    (hQ : InUpperQuad h c d f Q) : InPolygon (octagonXY a h b c d f (x, y) (z, w)) Q := by
  obtain ⟨hHCQ, hCDQ, hDFQ, hFHQ⟩ := hQ
  have hHCD : 0 < sarea (0, h) (c, 0) (1, d) := by
    rw [show sarea (0, h) (c, 0) (1, d) = sarea (c, 0) (1, d) (0, h) by simp only [sarea]; ring]
    exact H.t247
  have hHDF : 0 < sarea (0, h) (1, d) (f, 1) := by
    rw [show sarea (0, h) (1, d) (f, 1) = sarea (1, d) (f, 1) (0, h) by simp only [sarea]; ring]
    exact H.t457
  intro i
  fin_cases i
  · show 0 < sarea (0, a) (b, 0) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t017.le)
      (by exact H.t012.le)
      (by exact H.t014.le)
      (by exact H.t015.le)
      (Or.inl (by exact H.t017))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (b, 0) (c, 0) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t127.le)
      (le_of_eq (by simp only [sarea]; ring))
      (by exact H.t124.le)
      (by exact H.t125.le)
      (Or.inl (by exact H.t127))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (c, 0) (x, y) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t237.le)
      (le_of_eq (by simp only [sarea]; ring))
      (by exact H.t234.le)
      (by exact H.t235.le)
      (Or.inl (by exact H.t237))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (x, y) (1, d) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t347.le)
      (by rw [show sarea (x, y) (1, d) (c, 0) = sarea (c, 0) (x, y) (1, d) by simp only [sarea]; ring]; exact H.t234.le)
      (le_of_eq (by simp only [sarea]; ring))
      (by exact H.t345.le)
      (Or.inl (by exact H.t347))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (1, d) (f, 1) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t457.le)
      (by rw [show sarea (1, d) (f, 1) (c, 0) = sarea (c, 0) (1, d) (f, 1) by simp only [sarea]; ring]; exact H.t245.le)
      (le_of_eq (by simp only [sarea]; ring))
      (le_of_eq (by simp only [sarea]; ring))
      (Or.inl (by exact H.t457))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (f, 1) (z, w) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (by exact H.t567.le)
      (by rw [show sarea (f, 1) (z, w) (c, 0) = sarea (c, 0) (f, 1) (z, w) by simp only [sarea]; ring]; exact H.t256.le)
      (by rw [show sarea (f, 1) (z, w) (1, d) = sarea (1, d) (f, 1) (z, w) by simp only [sarea]; ring]; exact H.t456.le)
      (le_of_eq (by simp only [sarea]; ring))
      (Or.inl (by exact H.t567))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (z, w) (0, h) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (le_of_eq (by simp only [sarea]; ring))
      (by rw [show sarea (z, w) (0, h) (c, 0) = sarea (c, 0) (z, w) (0, h) by simp only [sarea]; ring]; exact H.t267.le)
      (by rw [show sarea (z, w) (0, h) (1, d) = sarea (1, d) (z, w) (0, h) by simp only [sarea]; ring]; exact H.t467.le)
      (by rw [show sarea (z, w) (0, h) (f, 1) = sarea (f, 1) (z, w) (0, h) by simp only [sarea]; ring]; exact H.t567.le)
      (Or.inr (by rw [show sarea (z, w) (0, h) (1, d) = sarea (1, d) (z, w) (0, h) by simp only [sarea]; ring]; exact H.t467))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF
  · show 0 < sarea (0, h) (0, a) Q
    exact edge_pos (H := (0, h)) (C := (c, 0)) (D := (1, d)) (F := (f, 1))
      (le_of_eq (by simp only [sarea]; ring))
      (by rw [show sarea (0, h) (0, a) (c, 0) = sarea (0, a) (c, 0) (0, h) by simp only [sarea]; ring]; exact H.t027.le)
      (by rw [show sarea (0, h) (0, a) (1, d) = sarea (0, a) (1, d) (0, h) by simp only [sarea]; ring]; exact H.t047.le)
      (by rw [show sarea (0, h) (0, a) (f, 1) = sarea (0, a) (f, 1) (0, h) by simp only [sarea]; ring]; exact H.t057.le)
      (Or.inr (by rw [show sarea (0, h) (0, a) (1, d) = sarea (0, a) (1, d) (0, h) by simp only [sarea]; ring]; exact H.t047))
      hHCQ hCDQ hDFQ hFHQ hHCD hHDF

/-! ### The certificate cover -/

/-- The coordinates `a, h, b, c, d, f, x, y, z, w, r, t` as a point of the cube (the variables
beyond the twelfth are `0`). -/
def zeta (a h b c d f x y z w r t : ℝ) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => f | 6 => x | 7 => y
  | 8 => z | 9 => w | 10 => r | 11 => t | _ => 0

/-- The nine points `A, B, C, X, D, F, Y, H, Q`, indexed by `ℕ` as in the model. -/
def cfg (a h b c d f : ℝ) (X Y Q : Point) : ℕ → Point
  | 0 => (0, a) | 1 => (b, 0) | 2 => (c, 0) | 3 => X | 4 => (1, d) | 5 => (f, 1) | 6 => Y
  | 7 => (0, h) | 8 => Q | _ => (0, 0)

/-- The position in `nConfig` of the point `i` of the model. -/
def nIdx : Fin 9 → Fin 9 := ![0, 2, 3, 6, 4, 5, 7, 1, 8]

theorem nIdx_injective : Function.Injective nIdx := by decide

theorem cfg_eq (a h b c d f : ℝ) (X Y Q : Point) (i : Fin 9) :
    cfg a h b c d f X Y Q i = nConfig a h b c d f X Y Q (nIdx i) := by
  fin_cases i <;> rfl

theorem cfg_oct (a h b c d f : ℝ) (X Y Q : Point) (i : Fin 8) :
    cfg a h b c d f X Y Q i = octagonXY a h b c d f X Y i := by
  fin_cases i <;> rfl

section Sound

variable {a h b c d f : ℝ} {X Y Q : Point}

theorem ptEval_zeta (i : ℕ) :
    ptEval (zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2) Model.pt i = cfg a h b c d f X Y Q i := by
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp [ptEval, Model.pt, zeta, cfg]

/-- Every triangle of three distinct model points has doubled area at least `7/64`. -/
theorem cfg_area (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) {i j k : ℕ}
    (hi : i < 9) (hj : j < 9) (hk : k < 9) (hij : i ≠ j) (hjk : j ≠ k) (hik : i ≠ k) :
    7 / 64 ≤ |sarea (cfg a h b c d f X Y Q i) (cfg a h b c d f X Y Q j)
      (cfg a h b c d f X Y Q k)| := by
  have e := fun (n : ℕ) (hn : n < 9) => cfg_eq a h b c d f X Y Q ⟨n, hn⟩
  simp only at e
  rw [e i hi, e j hj, e k hk]
  have hne : ∀ {m n : ℕ} (hm : m < 9) (hn : n < 9), m ≠ n →
      nIdx ⟨m, hm⟩ ≠ nIdx ⟨n, hn⟩ := fun hm hn hmn h =>
    hmn (by have := nIdx_injective h; simpa using this)
  have := area_of_le_min hmin _ _ _ (hne hi hj hij) (hne hj hk hjk) (hne hi hk hik)
  rw [triangleArea_eq] at this
  linarith

theorem mem_lexTriples {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) :
    t.1 < t.2.1 ∧ t.2.1 < t.2.2 ∧ t.2.2 < 9 := by
  simp only [Model.lexTriples, List.mem_flatMap, List.mem_range, List.mem_filterMap,
    Option.ite_none_right_eq_some, Option.some.injEq] at ht
  obtain ⟨a, _, b, _, c, hc, ⟨hab, hbc⟩, rfl⟩ := ht
  exact ⟨hab, hbc, hc⟩

theorem orient_ne_zero {sg : Bool} {x : ℝ} (h : OrientHolds sg x) : x ≠ 0 := by
  cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h <;>
    [exact h.ne; exact h.ne']

theorem orient_idx_ne {P : ℕ → Point} {sg : Bool} {i j k : ℕ}
    (hs : OrientHolds sg (sarea (P i) (P j) (P k))) : i ≠ j ∧ j ≠ k ∧ i ≠ k := by
  have hne := orient_ne_zero hs
  refine ⟨?_, ?_, ?_⟩ <;> rintro rfl <;> apply hne <;> simp only [sarea] <;> ring

/-- The strengthened cost of a known triangle is nonnegative (`s`, or `3s` with `Q` certified
inside, by subdivision). -/
theorem cost_nonneg (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    {tb : List SFact} (htb : AllHold (SFact.Holds (cfg a h b c d f X Y Q)) tb)
    {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) {sg : Bool} (hl : lookup tb t = some sg) :
    0 ≤ (costAtom Model.pt Model.bnd (t, sg) (insideList tb [8] (t, sg)).length).eval
      (zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2) := by
  rw [eval_costAtom]
  simp only [ptEval_zeta]
  set P := cfg a h b c d f X Y Q
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  have hs := lookup_sound htb hl
  have harea := cfg_area hmin (i := t.1) (j := t.2.1) (k := t.2.2) (by omega) (by omega) h3
    (by omega) (by omega) (by omega)
  rw [← sgArea_eq_abs hs] at harea
  have hlen : (insideList tb [8] (t, sg)).length ≤ 1 :=
    (List.length_filter_le _ _).trans (by simp)
  rcases hn : (insideList tb [8] (t, sg)).length with _ | n
  · simp only [Model.bnd, ite_true]; push_cast; linarith
  · obtain ⟨j, hj⟩ := List.exists_mem_of_length_pos (show 0 < (insideList tb [8] (t, sg)).length
      by omega)
    obtain ⟨hj8, o1, o2, o3⟩ := insideList_sound htb hj
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hj8
    subst hj8
    obtain ⟨-, n1, n2⟩ := orient_idx_ne o1
    obtain ⟨-, n3, -⟩ := orient_idx_ne o2
    have q1 := cfg_area hmin (i := t.1) (j := t.2.1) (k := 8) (by omega) (by omega) (by omega)
      (by omega) n1 n2
    have q2 := cfg_area hmin (i := t.2.1) (j := t.2.2) (k := 8) (by omega) h3 (by omega)
      (by omega) n3 (by omega)
    have q3 := cfg_area hmin (i := t.2.2) (j := t.1) (k := 8) h3 (by omega) (by omega)
      (by omega) (by omega) (by omega)
    have := three_le_sgArea (e := 7 / 64) o1 o2 o3 q1 q2 q3
    have hn0 : n + 1 ≠ 0 := by omega
    simp only [Model.bnd, hn0, ite_false]; push_cast; linarith

/-- The plain cost of a known triangle is nonnegative. -/
theorem plain_nonneg (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    {tb : List SFact} (htb : AllHold (SFact.Holds (cfg a h b c d f X Y Q)) tb)
    {t : ℕ × ℕ × ℕ} (ht : t ∈ Model.lexTriples) {sg : Bool} (hl : lookup tb t = some sg) :
    0 ≤ (Model.plainAtom (t, sg)).eval (zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2) := by
  have e : (Model.plainAtom (t, sg)).eval (zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2) =
      (costAtom Model.pt (fun _ => 7 / 64) (t, sg) 0).eval
        (zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2) := by
    unfold Model.plainAtom costAtom; rfl
  rw [e, eval_costAtom]
  simp only [ptEval_zeta]
  obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
  have hs := lookup_sound htb hl
  have harea := cfg_area hmin (i := t.1) (j := t.2.1) (k := t.2.2) (by omega) (by omega) h3
    (by omega) (by omega) (by omega)
  rw [← sgArea_eq_abs hs] at harea
  push_cast; linarith

/-- The facts of the radial word entry hold. -/
theorem holds_orient {P : ℕ → Point} {i j k : ℕ} {sg : Bool} (_hij : i ≠ j) (_hjk : j ≠ k)
    (_hik : i ≠ k) : SFact.Holds P (Model.orient i j k sg) ↔ OrientHolds sg (sarea (P i) (P j) (P k)) := by
  unfold Model.orient
  have c1 := sarea_cycle (P i) (P j) (P k)
  have c2 := sarea_cycle (P j) (P k) (P i)
  have s1 := sarea_swap₁₂ (P i) (P j) (P k)
  have s2 := sarea_swap₂₃ (P i) (P j) (P k)
  have s3 := sarea_swap₁₃ (P i) (P j) (P k)
  split_ifs <;> simp only [SFact.Holds] <;>
    first
    | rw [c1]
    | rw [c2, c1]
    | rw [s1, orientHolds_not]
    | rw [s2, orientHolds_not]
    | rw [s3, orientHolds_not]

theorem consistent_of_holds {P : ℕ → Point} {tb b : List SFact} (htb : AllHold (SFact.Holds P) tb)
    (hb : AllHold (SFact.Holds P) b) : Model.consistent tb b = true := by
  unfold Model.consistent
  rw [List.all_eq_true]
  intro f hf
  rcases hl : lookup tb f.1 with _ | sg
  · rfl
  · have h1 := lookup_sound htb hl
    have h2 := hb f hf
    simp only [SFact.Holds] at h2
    cases sg <;> cases hsg : f.2 <;> rw [hsg] at h2 <;>
      simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at h1 h2 <;>
      first | rfl | (exfalso; linarith)

end Sound

section Word

variable {a h b c d f : ℝ} {X Y Q : Point}

/-- The facts of the word entry `q_i` of `Q` hold. -/
theorem branch_holds {q : Fin 8 → ℕ} (hq : HasRadialWord (octagonXY a h b c d f X Y) Q q)
    (hne : ∀ i j : Fin 8, i ≠ j → sarea (octagonXY a h b c d f X Y i) (octagonXY a h b c d f X Y j) Q ≠ 0)
    (i : ℕ) (hi : i < 8) :
    AllHold (SFact.Holds (cfg a h b c d f X Y Q)) (Model.branchFacts i (q ⟨i, hi⟩)) := by
  intro f hf
  simp only [Model.branchFacts, List.mem_map, List.mem_range] at hf
  obtain ⟨j, hj, rfl⟩ := hf
  have hm : (i + (j + 1)) % 8 < 8 := Nat.mod_lt _ (by norm_num)
  have him : i ≠ (i + (j + 1)) % 8 := by omega
  rw [holds_orient him (by omega) (by omega)]
  have e1 := cfg_oct a h b c d f X Y Q ⟨i, hi⟩
  have e2 := cfg_oct a h b c d f X Y Q (cyc ⟨i, hi⟩ (j + 1))
  simp only [cyc_val] at e1 e2
  rw [e1, e2, show cfg a h b c d f X Y Q 8 = Q from rfl]
  have k := hq ⟨i, hi⟩ (j + 1) (by omega) (by omega)
  have hne' := hne ⟨i, hi⟩ (cyc ⟨i, hi⟩ (j + 1)) (fun e => by
    have := congrArg Fin.val e; simp only [cyc_val] at this; omega)
  by_cases hjq : j + 1 ≤ q ⟨i, hi⟩
  · simp only [hjq, decide_true, OrientHolds, ite_true]
    exact k.2 hjq
  · simp only [hjq, decide_false, OrientHolds, Bool.false_eq_true, ite_false]
    exact lt_of_le_of_ne (not_lt.1 fun h => hjq (k.1 h)) hne'

/-- The facts of a word entry `val` determine the entry. -/
theorem word_of_branch {q : Fin 8 → ℕ} (hq : HasRadialWord (octagonXY a h b c d f X Y) Q q)
    (i : ℕ) (hi : i < 8) {val : ℕ} (hv1 : 1 ≤ val) (hv6 : val ≤ 6)
    (hb : AllHold (SFact.Holds (cfg a h b c d f X Y Q)) (Model.branchFacts i val)) :
    q ⟨i, hi⟩ = val := by
  have get : ∀ j : ℕ, j < 7 → OrientHolds (decide (j + 1 ≤ val))
      (sarea (octagonXY a h b c d f X Y ⟨i, hi⟩) (octagonXY a h b c d f X Y (cyc ⟨i, hi⟩ (j + 1))) Q) := by
    intro j hj
    have hm : (i + (j + 1)) % 8 < 8 := Nat.mod_lt _ (by norm_num)
    have := hb _ (List.mem_map.2 ⟨j, List.mem_range.2 hj, rfl⟩)
    rw [holds_orient (by omega) (by omega) (by omega)] at this
    have e1 := cfg_oct a h b c d f X Y Q ⟨i, hi⟩
    have e2 := cfg_oct a h b c d f X Y Q (cyc ⟨i, hi⟩ (j + 1))
    simp only [cyc_val] at e1 e2
    rwa [e1, e2] at this
  have g1 := get (val - 1) (by omega)
  have g2 := get val (by omega)
  rw [show val - 1 + 1 = val by omega] at g1
  simp only [le_refl, decide_true, OrientHolds, ite_true, show ¬ (val + 1 ≤ val) by omega,
    decide_false, Bool.false_eq_true, ite_false] at g1 g2
  have k1 := (hq ⟨i, hi⟩ val hv1 (by omega)).1 g1
  have k2 : ¬ val + 1 ≤ q ⟨i, hi⟩ := fun h => by
    have := (hq ⟨i, hi⟩ (val + 1) (by omega) (by omega)).2 h; linarith
  omega

end Word

/-! ### The claims -/

section Claims

variable {a h b c d f : ℝ} {X Y Q : Point}

/-- The orders of the two cap points, from a positive least area: `c < x`, `0 < y < d`,
`[CDX] < 0`; `0 < z < f`, `h < w`, `[FHY] < 0`. -/
theorem cap_orders (hN : NAnchors a h b c d f) (hX : InCapR c d X) (hY : InCapL f h Y)
    (hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q)) :
    (c < X.1 ∧ 0 < X.2 ∧ X.2 < d ∧ 0 < d * (X.1 - c) - (1 - c) * X.2) ∧
      (0 < Y.1 ∧ Y.1 < f ∧ h < Y.2 ∧ 0 < (1 - h) * (f - Y.1) - f * (1 - Y.2)) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, cY⟩ := hY
  have nBCX := sarea_ne_zero_of_min_pos hpos 2 3 6
  have nCDX := sarea_ne_zero_of_min_pos hpos 3 4 6
  have nAHY := sarea_ne_zero_of_min_pos hpos 0 1 7
  have nFHY := sarea_ne_zero_of_min_pos hpos 5 1 7
  change sarea (b, 0) (c, 0) X ≠ 0 at nBCX
  change sarea (c, 0) (1, d) X ≠ 0 at nCDX
  change sarea (0, a) (0, h) Y ≠ 0 at nAHY
  change sarea (f, 1) (0, h) Y ≠ 0 at nFHY
  simp only [sarea] at cX cY nBCX nCDX nAHY nFHY
  have y0' : 0 < X.2 := lt_of_le_of_ne y0 (fun e => nBCX (by rw [← e]; ring))
  have z0' : 0 < Y.1 := lt_of_le_of_ne z0 (fun e => nAHY (by rw [← e]; ring))
  have cX' : (1 - c) * (X.2 - 0) - (d - 0) * (X.1 - c) < 0 := lt_of_le_of_ne cX nCDX
  have cY' : (0 - f) * (Y.2 - 1) - (h - 1) * (Y.1 - f) < 0 := lt_of_le_of_ne cY nFHY
  refine ⟨⟨by nlinarith, y0', by nlinarith, by linarith⟩, ⟨z0', by nlinarith, by nlinarith, by linarith⟩⟩

/-- The sign data of the octagon, from the setting. -/
theorem oct_of_setting (hN : NAnchors a h b c d f) (hX : InCapR c d X) (hY : InCapL f h Y)
    (hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q)) :
    Oct a h b c d f X.1 X.2 Y.1 Y.2 := by
  obtain ⟨⟨hxc, hy, hyd, hCDX⟩, ⟨hz, hzf, hwh, hFHY⟩⟩ := cap_orders hN hX hY hpos
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  exact ⟨ha, by linarith, by linarith, hb, by linarith, by linarith, by linarith, by linarith,
    by linarith, by linarith, by linarith, by linarith [hX.1.2.1], hy, by linarith, hz,
    by linarith, by linarith, by linarith [hY.1.2.2.2], hCDX, hFHY⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon`). In the occupancy (1) with every
doubled area at least `7/64`, the full hull is the strictly convex octagon (3)
`A, B, C, X, D, F, Y, H` (counterclockwise) and `Q` is strictly inside it.
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 71-81. -/
theorem claim_octagon (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (_hQ : Q ∈ unitSquare) (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    IsConvexCCW (octagonXY a h b c d f X Y) ∧ InPolygon (octagonXY a h b c d f X Y) Q := by
  have H := oct_of_setting hN hX hY (Q := Q) (by linarith)
  exact ⟨H.convex, H.inPolygon hQu⟩

/-- (8): `d ≥ s/M + s/(1-c) ≥ 4s/(1-b) > 1/2` in polynomial form. -/
theorem half_lt_of_caps {m α d y b : ℝ} (hm : 0 < m) (hα : 0 < α) (hsum : m + α = 1 - b)
    (hb : 7 / 50 ≤ b) (hmy : 7 / 64 ≤ m * y) (hdy : 7 / 64 ≤ α * (d - y)) : 1 / 2 < d := by
  have h1 : 7 / 64 * (m + α) ≤ d * (m * α) := by
    nlinarith [mul_le_mul_of_nonneg_left hmy hα.le, mul_le_mul_of_nonneg_left hdy hm.le]
  have h2 : 4 * (m * α) ≤ (m + α) ^ 2 := by nlinarith [sq_nonneg (m - α)]
  have hmα : 0 < m * α := mul_pos hm hα
  have h3 : 4 * (7 / 64) ≤ d * (m + α) := by
    have : 7 / 64 * (m + α) * (m + α) ≤ d * (m * α) * (m + α) :=
      mul_le_mul_of_nonneg_right h1 (by linarith)
    nlinarith
  have hd0 : 0 < d := by nlinarith
  nlinarith

/-- (10): from `(1 - f)[CDQ] + (1 - c)[DFQ] = [CDF](1 - r)` with `[CDF] ≤ 1 - f`, `r ≤ 1 - s`. -/
theorem upper_le {f c K r S1 S2 : ℝ} (hS1 : 7 / 64 ≤ S1) (hS2 : 7 / 64 ≤ S2)
    (i9 : (1 - f) * S1 + (1 - c) * S2 = K * (1 - r)) (hK1 : K ≤ 1 - f) (hK : 0 < K)
    (_hf1 : f ≤ 1) (hc1 : c < 1) : r ≤ 1 - 7 / 64 := by
  by_contra hcon
  push Not at hcon
  have m1 := mul_le_mul_of_nonneg_left hS1 (show (0:ℝ) ≤ 1 - f by linarith)
  have m2 := mul_le_mul_of_nonneg_left hS2 (show (0:ℝ) ≤ 1 - c by linarith)
  have m4 := mul_lt_mul_of_pos_right (show 1 - r < 7 / 64 by linarith) hK
  nlinarith

/-- The cap and anchor consequences (6)-(7). -/
theorem common_scalar_a {a h b c d f x y z w : ℝ} (hN : NAnchors a h b c d f)
    (x1 : x ≤ 1) (y0 : 0 ≤ y) (z0 : 0 ≤ z) (w1 : w ≤ 1) (hxc : c < x) (hwh : h < w)
    (hABC : 7 / 64 ≤ a * (c - b)) (hABH : 7 / 64 ≤ b * (h - a))
    (hMy : 7 / 64 ≤ (c - b) * y) (hLz : 7 / 64 ≤ (h - a) * z)
    (e5a : 7 / 64 ≤ d * (x - c) - (1 - c) * y) (e5b : 7 / 64 ≤ (1 - h) * (f - z) - f * (1 - w)) :
    7 / 64 ≤ x - c ∧ 7 / 64 ≤ w - h ∧ 7 / 64 ≤ d - y ∧ 7 / 64 ≤ f - z ∧
      7 / 64 ≤ y ∧ 7 / 64 ≤ z ∧ h ≤ 1 - 7 / 64 ∧ c ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ a ∧
      7 / 64 ≤ b ∧ 7 / 50 ≤ a ∧ 7 / 50 ≤ b ∧ 7 / 64 ≤ (1 - c) * (d - y) ∧
      7 / 64 ≤ (1 - h) * (f - z) := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hd0 : 0 ≤ d := by linarith
  have hf0 : 0 ≤ f := by linarith
  have k1 := mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hxc.le)
  have k2 := mul_nonneg (show (0:ℝ) ≤ 1 - c by linarith) y0
  have hxc' : 7 / 64 ≤ x - c := by linarith
  have e5b' : (1 - h) * (f - z) - f * (1 - w) = f * (w - h) - (1 - h) * z := by ring
  have k3 := mul_le_mul_of_nonneg_right (show f ≤ 1 by linarith) (sub_nonneg.2 hwh.le)
  have k4 := mul_nonneg (show (0:ℝ) ≤ 1 - h by linarith) z0
  have hwh' : 7 / 64 ≤ w - h := by linarith
  have k5 := mul_nonneg hd0 (sub_nonneg.2 x1)
  have q1' : 7 / 64 ≤ (1 - c) * (d - y) := by linarith
  have hdy0 : 0 < d - y := pos_of_mul_pos_right (by linarith) (show (0:ℝ) ≤ 1 - c by linarith)
  have k6 := mul_nonneg (show (0:ℝ) ≤ c by linarith) hdy0.le
  have hdy' : 7 / 64 ≤ d - y := by linarith
  have k7 := mul_nonneg hf0 (sub_nonneg.2 w1)
  have q2' : 7 / 64 ≤ (1 - h) * (f - z) := by linarith
  have hfz0 : 0 < f - z := pos_of_mul_pos_right (by linarith) (show (0:ℝ) ≤ 1 - h by linarith)
  have k8 := mul_nonneg (show (0:ℝ) ≤ h by linarith) hfz0.le
  have hfz' : 7 / 64 ≤ f - z := by linarith
  have k9 := mul_le_mul_of_nonneg_right (show c - b ≤ 1 by linarith) y0
  have k10 := mul_le_mul_of_nonneg_right (show h - a ≤ 1 by linarith) z0
  have k11 := mul_le_mul_of_nonneg_left (show c - b ≤ 1 by linarith) ha.le
  have k12 := mul_le_mul_of_nonneg_left (show h - a ≤ 1 by linarith) hb.le
  have has : 7 / 64 ≤ a := by linarith
  have hbs : 7 / 64 ≤ b := by linarith
  have k13 := mul_le_mul_of_nonneg_left (show c - b ≤ 1 - 2 * (7 / 64) by linarith) ha.le
  have k14 := mul_le_mul_of_nonneg_left (show h - a ≤ 1 - 2 * (7 / 64) by linarith) hb.le
  exact ⟨hxc', hwh', hdy', hfz', by linarith, by linarith, by linarith, by linarith, has, hbs,
    by linarith, by linarith, q1', q2'⟩

/-- The scalar part of the common bounds (6)-(10). -/
theorem common_scalar {a h b c d f x y z w r t S1 S2 S3 : ℝ} (hN : NAnchors a h b c d f)
    (_x0 : 0 ≤ x) (x1 : x ≤ 1) (y0 : 0 ≤ y) (z0 : 0 ≤ z) (w1 : w ≤ 1) (q0 : 0 ≤ r) (_q1 : r ≤ 1)
    (q2 : 0 ≤ t) (_q3 : t ≤ 1) (hxc : c < x) (hwh : h < w)
    (hABC : 7 / 64 ≤ a * (c - b)) (hABH : 7 / 64 ≤ b * (h - a))
    (hHDF : 7 / 64 ≤ 1 - h + f * (h - d)) (hCDF : 7 / 64 ≤ 1 - c + d * (c - f))
    (hMy : 7 / 64 ≤ (c - b) * y) (hLz : 7 / 64 ≤ (h - a) * z)
    (e5a : 7 / 64 ≤ d * (x - c) - (1 - c) * y) (e5b : 7 / 64 ≤ (1 - h) * (f - z) - f * (1 - w))
    (hQ1 : 7 / 64 ≤ (h - a) * r) (hQ2 : 7 / 64 ≤ (c - b) * t) (hS1 : 7 / 64 ≤ S1)
    (hS2 : 7 / 64 ≤ S2) (hS3 : 7 / 64 ≤ S3)
    (i9a : (1 - f) * S1 + (1 - c) * S2 = (1 - c + d * (c - f)) * (1 - r))
    (i9b : (1 - d) * S3 + (1 - h) * S2 = (1 - h + f * (h - d)) * (1 - t)) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * y ∧
      7 / 64 ≤ (h - a) * z) ∧
    (7 / 64 ≤ d * (x - c) - (1 - c) * y ∧ 7 / 64 ≤ (1 - h) * (f - z) - f * (1 - w)) ∧
    (7 / 64 ≤ x - c ∧ 7 / 64 ≤ w - h ∧ 7 / 64 ≤ d - y ∧ 7 / 64 ≤ f - z ∧
      7 / 64 ≤ y ∧ 7 / 64 ≤ z ∧ h ≤ 1 - 7 / 64 ∧ c ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ a ∧
      7 / 64 ≤ b) ∧
    (7 / 50 ≤ a ∧ 7 / 50 ≤ b) ∧
    (1 / 2 < d ∧ 1 / 2 < f ∧ 1 / 2 < h ∧ 1 / 2 < c ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b) ∧
    (7 / 64 ≤ r ∧ r ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ t ∧ t ≤ 1 - 7 / 64) := by
  obtain ⟨hxc', hwh', hdy', hfz', hy', hz', hh', hc', has, hbs, ha7, hb7, q1', q2'⟩ :=
    common_scalar_a hN x1 y0 z0 w1 hxc hwh hABC hABH hMy hLz e5a e5b
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hd2 : 1 / 2 < d := half_lt_of_caps (m := c - b) (α := 1 - c) (y := y) (b := b)
    (by linarith) (by linarith) (by ring) hb7 hMy q1'
  have hf2 : 1 / 2 < f := half_lt_of_caps (m := h - a) (α := 1 - h) (y := z) (b := a)
    (by linarith) (by linarith) (by ring) ha7 hLz q2'
  have hCDF1 : 1 - c + d * (c - f) ≤ 1 - f := by
    have := mul_le_mul_of_nonneg_right (show d ≤ 1 by linarith) (sub_nonneg.2 hfc); linarith
  have hDFH1 : 1 - h + f * (h - d) ≤ 1 - d := by
    have := mul_le_mul_of_nonneg_right (show f ≤ 1 by linarith) (sub_nonneg.2 hdh); linarith
  have hr1 : r ≤ 1 - 7 / 64 := upper_le hS1 hS2 i9a hCDF1 (by linarith) (by linarith) (by linarith)
  have ht1 : t ≤ 1 - 7 / 64 := upper_le hS3 hS2 i9b hDFH1 (by linarith) (by linarith) (by linarith)
  have k15 := mul_le_mul_of_nonneg_right (show h - a ≤ 1 by linarith) q0
  have k16 := mul_le_mul_of_nonneg_right (show c - b ≤ 1 by linarith) q2
  have k17 := mul_le_mul_of_nonneg_left (show b ≤ 1 by linarith) (show (0:ℝ) ≤ h - a by linarith)
  have k18 := mul_le_mul_of_nonneg_left (show a ≤ 1 by linarith) (show (0:ℝ) ≤ c - b by linarith)
  exact ⟨⟨hABC, hABH, hMy, hLz⟩, ⟨e5a, e5b⟩, ⟨hxc', hwh', hdy', hfz', hy', hz', hh', hc', has, hbs⟩,
    ⟨ha7, hb7⟩, ⟨hd2, hf2, by linarith, by linarith, by linarith, by linarith⟩,
    ⟨by linarith, hr1, by linarith, ht1⟩⟩

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-common-bounds`). In the occupancy (1) with every
doubled area at least `s = 7/64` (`L = h - a`, `M = c - b`, `X = (x, y)`, `Y = (z, w)`,
`Q = (r, t)`): (4) `aM, bL, My, Lz ≥ s`; (5) `[CXD] = d(x-c) - (1-c)y ≥ s`,
`[FYH] = (1-h)(f-z) - f(1-w) ≥ s`; (6) `x - c, w - h, d - y, f - z, y, z ≥ s`, `h, c ≤ 1 - s`,
`a, b ≥ s`; (7) `a, b ≥ 7/50`; (8) `d, f > 1/2`, `h, c > 1/2`, `L, M ≥ s`;
(10) `s ≤ r, t ≤ 1 - s`. `docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 83-159. -/
theorem claim_common_bounds (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ (h - a) * Y.1) ∧
    (7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧ 7 / 64 ≤ (1 - h) * (f - Y.1) - f * (1 - Y.2)) ∧
    (7 / 64 ≤ X.1 - c ∧ 7 / 64 ≤ Y.2 - h ∧ 7 / 64 ≤ d - X.2 ∧ 7 / 64 ≤ f - Y.1 ∧
      7 / 64 ≤ X.2 ∧ 7 / 64 ≤ Y.1 ∧ h ≤ 1 - 7 / 64 ∧ c ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ a ∧
      7 / 64 ≤ b) ∧
    (7 / 50 ≤ a ∧ 7 / 50 ≤ b) ∧
    (1 / 2 < d ∧ 1 / 2 < f ∧ 1 / 2 < h ∧ 1 / 2 < c ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b) ∧
    (7 / 64 ≤ Q.1 ∧ Q.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ Q.2 ∧ Q.2 ≤ 1 - 7 / 64) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨⟨hxc, hy, hyd, -⟩, ⟨hz, hzf, hwh, -⟩⟩ := cap_orders hN hX hY hpos
  obtain ⟨hABC, hABH, hHDF, hCDF⟩ := SixBoundaryHull.anchor_areas hN hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, cY⟩ := hY
  obtain ⟨q0, q1, q2, q3⟩ := hQ
  obtain ⟨hHCQ, hCDQ, hDFQ, hFHQ⟩ := hQu
  have hMy : 7 / 64 ≤ (c - b) * X.2 := by
    have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := X)
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 2 3 6)
    simp only [sarea] at this; linarith
  have hLz : 7 / 64 ≤ (h - a) * Y.1 := by
    have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := Y)
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 1 7)
    simp only [sarea] at this; linarith
  have e5a : 7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 := by
    have := sarea_le_of_nonpos hp (p := (c, 0)) (q := (1, d)) (r := X) cX
      (area_of_le_min hmin 3 4 6)
    simp only [sarea] at this; linarith
  have e5b : 7 / 64 ≤ (1 - h) * (f - Y.1) - f * (1 - Y.2) := by
    have := sarea_le_of_nonpos hp (p := (f, 1)) (q := (0, h)) (r := Y) cY
      (area_of_le_min hmin 5 1 7)
    simp only [sarea] at this; linarith
  have hQ1 : 7 / 64 ≤ (h - a) * Q.1 := by
    have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := Q)
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 0 1 8)
    simp only [sarea] at this; linarith
  have hQ2 : 7 / 64 ≤ (c - b) * Q.2 := by
    have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := Q)
      (by simp only [sarea]; nlinarith) (area_of_le_min hmin 2 3 8)
    simp only [sarea] at this; linarith
  have hCDQ' : 7 / 64 ≤ sarea (c, 0) (1, d) Q := by
    have := two_mul_le_sarea_of_nonneg hp hCDQ.le (area_of_le_min hmin 3 4 8); linarith
  have hDFQ' : 7 / 64 ≤ sarea (1, d) (f, 1) Q := by
    have := two_mul_le_sarea_of_nonneg hp hDFQ.le (area_of_le_min hmin 4 5 8); linarith
  have hFHQ' : 7 / 64 ≤ sarea (f, 1) (0, h) Q := by
    have := two_mul_le_sarea_of_nonneg hp hFHQ.le (area_of_le_min hmin 5 1 8); linarith
  clear hmin hpos
  exact common_scalar hN x0 x1 y0 z0 w1 q0 q1 q2 q3 hxc hwh hABC hABH hHDF hCDF hMy hLz e5a e5b
    hQ1 hQ2 hCDQ' hDFQ' hFHQ' (by simp only [sarea]; ring) (by simp only [sarea]; ring)

/-- The radial word of `Q` takes its values in `1, …, 6`. -/
theorem word_range {q : Fin 8 → ℕ} (hpoly : InPolygon (octagonXY a h b c d f X Y) Q)
    (hq : HasRadialWord (octagonXY a h b c d f X Y) Q q) (i : Fin 8) : 1 ≤ q i ∧ q i ≤ 6 := by
  constructor
  · exact (hq i 1 le_rfl (by norm_num)).1 (hpoly i)
  · by_contra hc
    push Not at hc
    have h1 := (hq i 7 (by norm_num) (by norm_num)).2 (by omega)
    have h2 := neg_pred hpoly i (by norm_num)
    have := sarea_swap₂₃ (octagonXY a h b c d f X Y i) Q (octagonXY a h b c d f X Y (cyc i (8 - 1)))
    simp only [show (8 - 1 : ℕ) = 7 by norm_num] at h2 this
    linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-80-certificates`). Geometric conclusion of the
certificate package: in the occupancy (1) with every doubled area at least `7/64` and the
normalization `f ≤ d`, the radial word of `Q` on the octagon (3) is `q*`. (Eighty fixed cubic
certificates, 14,253 positive terms, with cube bounds at most `-661437830559/671088640000`,
exclude the other 81 words; none applies to `q*`. The kernel checks the word cover
`Trees.tree`, whose splits are the word entries of `Q` and whose leaves are the certificates
and the sharp word.)
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 210-307.
Uses: SIX_BOUNDARY_TWO_SIDE_UPPER:claim-common-bounds, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words,
SIX_BOUNDARY_SINGLE_SIDE:claim-pair-line-sign -/
theorem claim_80_certificates (hN : NAnchors a h b c d f)
    (hfd : f ≤ d) (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) (q : Fin 8 → ℕ)
    (hq : HasRadialWord (octagonXY a h b c d f X Y) Q q) :
    q = fun i => (qStar i : ℕ) := by
  by_contra hne
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨hconv, hpoly⟩ := claim_octagon hN hX hY hQ hQu hmin
  obtain ⟨-, -, ⟨hxc, hwh, hdy, hfz, hy, hz, hh1, hc1, has, hbs⟩, ⟨ha7, hb7⟩,
    ⟨hd2, hf2, hh2, hc2, hL, hM⟩, ⟨hr1, hr2, ht1, ht2⟩⟩ :=
    claim_common_bounds hN hX hY hQ hQu hmin
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, -⟩ := hY
  obtain ⟨q0, q1, q2, q3⟩ := hQ
  set P := cfg a h b c d f X Y Q with hP
  set z := zeta a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2 with hzdef
  have hne0 : ∀ i j : Fin 8, i ≠ j →
      sarea (octagonXY a h b c d f X Y i) (octagonXY a h b c d f X Y j) Q ≠ 0 := by
    intro i j hij h0
    have := cfg_area hmin (i := i.val) (j := j.val) (k := 8) (by omega) (by omega) (by norm_num)
      (fun e => hij (Fin.ext e)) (by omega) (by omega)
    rw [cfg_oct a h b c d f X Y Q i, cfg_oct a h b c d f X Y Q j,
      show cfg a h b c d f X Y Q 8 = Q from rfl, h0, abs_zero] at this
    norm_num at this
  -- the initial facts
  have hbase : AllHold (SFact.Holds P) Model.base := by
    intro g hg
    simp only [Model.base, List.mem_append, List.mem_filterMap, List.mem_cons,
      List.not_mem_nil, or_false] at hg
    rcases hg with ⟨t, ht, e⟩ | rfl | rfl | rfl
    · split_ifs at e with h8
      cases e
      obtain ⟨h1, h2, h3⟩ := mem_lexTriples ht
      have := hconv ⟨t.1, by omega⟩ ⟨t.2.1, by omega⟩ ⟨t.2.2, h8⟩ (by simp [Fin.lt_def]; omega)
        (by simp [Fin.lt_def]; omega)
      simp only [SFact.Holds, OrientHolds, ite_true]
      rwa [← cfg_oct a h b c d f X Y Q, ← cfg_oct a h b c d f X Y Q,
        ← cfg_oct a h b c d f X Y Q] at this
    · show sarea (c, 0) (0, h) Q < 0
      have := sarea_swap₁₂ (0, h) (c, 0) Q; linarith [hQu.1]
    · exact hQu.2.1
    · exact hQu.2.2.2
  have hz : ∀ v, 0 ≤ z v ∧ z v ≤ 1 := by
    intro v
    rcases v with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | v <;>
      simp only [hzdef, zeta] <;> constructor <;> linarith
  have hfac : ∀ e ∈ Model.factors, 0 ≤ e.eval z := by
    simp only [Model.factors, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff,
      implies_true, and_true, eval_minus, eval_v, eval_k, eval_one, hzdef, zeta]
    push_cast
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
      ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> linarith
  refine checkTree_sound (σ := Model.spec) (Holds := SFact.Holds P) (z := z) hz ?_ ?_ ?_
    (fs := []) (by simp [AllHold]) Trees.tree_ok
  · intro fs hfs e he
    have htb := hbase.append hfs
    simp only [Model.spec, Model.atoms, List.mem_append] at he
    rcases he with (he | he) | he
    · exact hfac e he
    · simp only [Model.costs, List.mem_map] at he
      obtain ⟨t, ht, rfl⟩ := he
      rcases hl : lookup (Model.base ++ fs) t with _ | sg
      · simp
      · exact cost_nonneg hmin htb ht hl
    · simp only [Model.plains, List.mem_map] at he
      obtain ⟨t, ht, rfl⟩ := he
      rcases hl : lookup (Model.base ++ fs) t with _ | sg
      · simp
      · exact plain_nonneg hmin htb ht hl
  · intro fs s hfs
    cases s with
    | vertex i =>
      simp only [Model.spec, Model.branches]
      split_ifs with hi
      · have hb := branch_holds hq hne0 i hi
        refine ⟨Model.branchFacts i (q ⟨i, hi⟩), ?_, hb⟩
        rw [List.mem_filterMap]
        obtain ⟨r1, r6⟩ := word_range hpoly hq ⟨i, hi⟩
        refine ⟨q ⟨i, hi⟩, List.mem_map.2 ⟨q ⟨i, hi⟩ - 1, List.mem_range.2 (by omega), by omega⟩, ?_⟩
        rw [ite_eq_left (consistent_of_holds (hbase.append hfs) hb)]
      · exact ⟨[], by simp, by simp [AllHold]⟩
  · intro fs tag hfs hc
    simp only [Model.spec, Bool.and_eq_true, beq_iff_eq] at hc
    obtain ⟨-, hs⟩ := hc
    simp only [Model.sharpTest, List.all_eq_true, List.mem_range, beq_iff_eq] at hs
    have htb := hbase.append hfs
    apply hne
    funext i
    have hall : AllHold (SFact.Holds P) (Model.branchFacts i.val (Model.qStarL.getD i.val 0)) :=
      fun g hg => lookup_sound htb (hs i.val i.isLt g hg)
    have key := word_of_branch hq i.val i.isLt (val := Model.qStarL.getD i.val 0)
      (by fin_cases i <;> decide) (by fin_cases i <;> decide) hall
    rw [show (⟨i.val, i.isLt⟩ : Fin 8) = i from rfl] at key
    rw [key]
    fin_cases i <;> rfl

/-- No two octagon vertices are collinear with `Q`. -/
theorem oct_gen (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ i j : Fin 8, i ≠ j →
      sarea (octagonXY a h b c d f X Y i) (octagonXY a h b c d f X Y j) Q ≠ 0 := by
  intro i j hij h0
  have := cfg_area hmin (i := i.val) (j := j.val) (k := 8) (by omega) (by omega) (by norm_num)
    (fun e => hij (Fin.ext e)) (by omega) (by omega)
  rw [cfg_oct a h b c d f X Y Q i, cfg_oct a h b c d f X Y Q j,
    show cfg a h b c d f X Y Q 8 = Q from rfl, h0, abs_zero] at this
  norm_num at this

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words`). The sharp word `q*` is one of the
words of Section 2, and in the occupancy (1) with every doubled area at least `7/64` the radial
word (11) of `Q` on the octagon (3) exists and is one of them (the complement relation (12) and
the three `HCDF` tests (13)). (The count `82` is checked by the word cover `Trees.tree`, whose
leaves are exactly these words; it is not restated here.)
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 161-208.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon -/
theorem claim_82_words :
    qStar ∈ upperWords ∧
    ∀ {a h b c d f : ℝ} {X Y Q : Point}, NAnchors a h b c d f → InCapR c d X → InCapL f h Y →
      Q ∈ unitSquare → InUpperQuad h c d f Q →
      7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
      ∃ q ∈ upperWords, HasRadialWord (octagonXY a h b c d f X Y) Q fun i => (q i : ℕ) := by
  refine ⟨by simp only [upperWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]; decide,
    fun {a h b c d f X Y Q} hN hX hY hQ hQu hmin => ?_⟩
  obtain ⟨hconv, hpoly⟩ := claim_octagon hN hX hY hQ hQu hmin
  obtain ⟨r, hr, hrw⟩ := claim_radial_word _ Q (by norm_num) hconv hpoly (oct_gen hmin)
  have hrange : ∀ i, r i < 8 := fun i => by have := hrw.1 i; omega
  refine ⟨fun i => ⟨r i, hrange i⟩, ?_, hr⟩
  have hHC : 3 ≤ r 7 := (hr 7 3 (by norm_num) (by norm_num)).1 hQu.1
  have hCD : 2 ≤ r 2 := (hr 2 2 (by norm_num) (by norm_num)).1 hQu.2.1
  have hFH : 2 ≤ r 5 := (hr 5 2 (by norm_num) (by norm_num)).1 hQu.2.2.2
  simp only [upperWords, radialWords, Finset.mem_filter, Finset.mem_univ, true_and]
  exact ⟨hrw, hHC, hCD, hFH⟩

/-- The rotation `R(u, v) = (v, 1 - u)` keeps every signed area. -/
theorem sarea_rot (p q r : Point) :
    sarea (p.2, 1 - p.1) (q.2, 1 - q.1) (r.2, 1 - r.1) = sarea p q r := by
  simp only [sarea]; ring

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-sharp-word`). In the occupancy (1), if `Q` has
the word `q*`, then the eleven oriented areas of the simultaneous B/E chamber are positive —
`[CXB], [CXD], [CAB], [FYH], [ABH], [AYH]` (hull order) and `[CFQ], [FBQ], [XQY], [ADQ], [DHQ]`
(20) (word `q*`) — and, after the rotation `R(u, v) = (v, 1 - u)` with the relabelling
(18)-(19), Theorem 1 of `SHARP_B_E_MOVING.md` gives least area at most `A₀`; at least `A₀`
forces `x = w = 1`. (The normalization `f ≤ d` is not needed here.)
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 309-382.
Uses: SHARP_B_E_MOVING:Theorem1 -/
theorem claim_sharp_word (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hq : HasRadialWord (octagonXY a h b c d f X Y) Q fun i => (qStar i : ℕ)) :
    (0 < sarea (ptC c) X (ptB b) ∧ 0 < sarea (ptC c) X (ptD d) ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea (ptF f) Y (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) Y (ptH h) ∧
      0 < sarea (ptC c) (ptF f) Q ∧ 0 < sarea (ptF f) (ptB b) Q ∧ 0 < sarea X Q Y ∧
      0 < sarea (ptA a) (ptD d) Q ∧ 0 < sarea (ptD d) (ptH h) Q) ∧
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
    (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) → X.1 = 1 ∧ Y.2 = 1) := by
  obtain ⟨hconv, hpoly⟩ := claim_octagon hN hX hY hQ hQu hmin
  have hgen := oct_gen hmin
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨⟨hxc, hy, hyd, -⟩, ⟨hz, hzf, hwh, -⟩⟩ := cap_orders hN hX hY hpos
  have hN' := hN
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN'
  set V := octagonXY a h b c d f X Y with hV
  have cv : ∀ i j k : Fin 8, i < j → j < k → 0 < sarea (V i) (V j) (V k) := hconv
  -- the word signs of `q*`
  have w1 : 0 < sarea (V 2) (V 5) Q := (hq 2 3 (by norm_num) (by norm_num)).2 (by decide)
  have w2 : 0 < sarea (V 5) (V 1) Q := (hq 5 4 (by norm_num) (by norm_num)).2 (by decide)
  have w3 : sarea (V 3) (V 6) Q < 0 := by
    have k := hq 3 3 (by norm_num) (by norm_num)
    have hne := hgen 3 6 (by decide)
    have : ¬ 0 < sarea (V 3) (V 6) Q := fun h => absurd (k.1 h) (by decide)
    exact lt_of_le_of_ne (not_lt.1 this) hne
  have w4 : 0 < sarea (V 0) (V 4) Q := (hq 0 4 (by norm_num) (by norm_num)).2 (by decide)
  have w5 : 0 < sarea (V 4) (V 7) Q := (hq 4 3 (by norm_num) (by norm_num)).2 (by decide)
  have c1 := cv 1 2 3 (by decide) (by decide)
  have c2 := cv 2 3 4 (by decide) (by decide)
  have c3 := cv 0 1 2 (by decide) (by decide)
  have c4 := cv 5 6 7 (by decide) (by decide)
  have c5 := cv 0 1 7 (by decide) (by decide)
  have c6 := cv 0 6 7 (by decide) (by decide)
  simp only [hV, octagonXY, Fin.isValue, Matrix.cons_val] at w1 w2 w3 w4 w5 c1 c2 c3 c4 c5 c6
  have signs : 0 < sarea (ptC c) X (ptB b) ∧ 0 < sarea (ptC c) X (ptD d) ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea (ptF f) Y (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) Y (ptH h) ∧
      0 < sarea (ptC c) (ptF f) Q ∧ 0 < sarea (ptF f) (ptB b) Q ∧ 0 < sarea X Q Y ∧
      0 < sarea (ptA a) (ptD d) Q ∧ 0 < sarea (ptD d) (ptH h) Q := by
    refine ⟨?_, c2, ?_, c4, c5, c6, w1, w2, ?_, w4, w5⟩
    · rw [sarea_cycle]; exact c1
    · rw [← sarea_cycle]; exact c3
    · have := sarea_swap₂₃ X Y Q; linarith
  -- the rotated B/E chamber
  set Pbe := SharpBEMoving.beMovingConfig (1 - c) X.2 d (1 - f) (1 - Y.1) h a (1 - b)
    (1 - X.1) (1 - Y.2) Q.2 (1 - Q.1) with hPbe
  set T : Fin 11 → Fin 9 × Fin 9 × Fin 9 :=
    ![(3, 6, 2), (3, 6, 4), (3, 0, 2), (5, 7, 1), (0, 2, 1), (0, 7, 1), (3, 5, 8), (5, 2, 8),
      (6, 8, 7), (0, 4, 8), (8, 4, 1)] with hT
  set P := nConfig a h b c d f X Y Q with hP
  have ceq : ∀ i : Fin 11, SharpBCMoving.chamberSarea Pbe i =
      sarea (P (T i).1) (P (T i).2.1) (P (T i).2.2) := by
    intro i
    fin_cases i <;>
      simp [SharpBCMoving.chamberSarea, SharpBCMoving.chamberTriangles, hPbe,
        SharpBEMoving.beMovingConfig, SharpBCMoving.sharpConfig, hT, hP, nConfig, sarea] <;> ring
  have hdist : ∀ i : Fin 11, (T i).1 ≠ (T i).2.1 ∧ (T i).2.1 ≠ (T i).2.2 ∧ (T i).1 ≠ (T i).2.2 := by
    intro i; fin_cases i <;> simp [hT]
  have hch : SharpBCMoving.InChamber Pbe := by
    obtain ⟨s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11⟩ := signs
    intro i
    fin_cases i <;> rw [ceq]
    exacts [s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, by rw [← sarea_cycle]; exact s11]
  have harea : ∀ i : Fin 11, SharpBCMoving.chamberArea Pbe i =
      triangleArea (P (T i).1) (P (T i).2.1) (P (T i).2.2) := by
    intro i
    rw [show SharpBCMoving.chamberArea Pbe i = |SharpBCMoving.chamberSarea Pbe i| / 2 from rfl, ceq i,
      triangleArea_eq]
  have hyp : SharpBEMoving.BEMovingHyp (1 - c) X.2 d (1 - f) (1 - Y.1) h a (1 - b) (1 - X.1)
      (1 - Y.2) Q.2 (1 - Q.1) := by
    obtain ⟨⟨x0, x1, y0, y1⟩, -⟩ := hX
    obtain ⟨⟨z0, z1, w0, w1⟩, -⟩ := hY
    obtain ⟨q0, q1, q2, q3⟩ := hQ
    refine ⟨⟨by linarith, by linarith, by linarith⟩, ⟨hy, hyd, hdh, hh⟩, ⟨ha, hah⟩,
      ⟨by linarith, by linarith, by linarith⟩, ⟨by linarith, by linarith⟩,
      ⟨by linarith, by linarith⟩, ⟨q2, q3, by linarith, by linarith⟩⟩
  have K := SharpBEMoving.theorem1 hyp hch
  refine ⟨signs, ?_, fun hA => ?_⟩
  · obtain ⟨i, hi⟩ := K.1
    rw [harea i] at hi
    obtain ⟨d1, d2, d3⟩ := hdist i
    exact (minTriangleArea_le P d1 d2 d3).trans hi
  · have hall : ∀ i, A₀ ≤ SharpBCMoving.chamberArea Pbe i := by
      intro i
      rw [harea i]
      obtain ⟨d1, d2, d3⟩ := hdist i
      exact area_of_le_min hA _ _ _ d1 d2 d3
    obtain ⟨he, hη, -⟩ := K.2 hall
    exact ⟨by linarith, by linarith⟩

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_SIDE_UPPER:Theorem1`). In the occupancy (1) — one free point
`X` in the cap `CD(1,0)`, one `Y` in the cap `FH(0,1)`, the third `Q` inside `HCDF` — the least
area is at most `A₀`; least area at least `A₀` forces `x = w = 1` (both cap points on the square
boundary; the identification with the optimal configuration is `SHARP_B_E_MOVING.md` Theorem 1
and is not restated here).
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 23-37.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon,
SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words,
SIX_BOUNDARY_TWO_SIDE_UPPER:claim-80-certificates, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-sharp-word -/
theorem theorem1 (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) → X.1 = 1 ∧ Y.2 = 1) := by
  -- the normalized case `f ≤ d`
  have main : ∀ {a h b c d f : ℝ} {X Y Q : Point}, NAnchors a h b c d f → f ≤ d →
      InCapR c d X → InCapL f h Y → Q ∈ unitSquare → InUpperQuad h c d f Q →
      7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
      minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
        (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) → X.1 = 1 ∧ Y.2 = 1) := by
    intro a h b c d f X Y Q hN hfd hX hY hQ hQu hmin
    obtain ⟨hconv, hpoly⟩ := claim_octagon hN hX hY hQ hQu hmin
    obtain ⟨r, hr, -⟩ := claim_radial_word _ Q (by norm_num) hconv hpoly (oct_gen hmin)
    have := claim_80_certificates hN hfd hX hY hQ hQu hmin r hr
    subst this
    exact (claim_sharp_word hN hX hY hQ hQu hmin hr).2
  by_cases h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)
  swap
  · push Not at h7
    exact ⟨by linarith [A₀_bounds.1], fun h => absurd (h.trans_lt h7) (not_lt.2 A₀_bounds.1.le)⟩
  rcases le_total f d with hfd | hdf
  · exact main hN hfd hX hY hQ hQu h7
  -- the transposed case
  have T := claim_transposition a h b c d f X Y Q
  have hswap : minTriangleArea (nConfig b c a h f d (transpose Y) (transpose X) (transpose Q)) =
      minTriangleArea (nConfig a h b c d f X Y Q) := by
    rw [← T.2.2.1, show nConfig b c a h f d (transpose Y) (transpose X) (transpose Q) =
      nConfig b c a h f d (transpose X) (transpose Y) (transpose Q) ∘ Equiv.swap 6 7 by
      funext i; fin_cases i <;> rfl, minTriangleArea_comp_perm]
  have k := main (T.1.1 hN) hdf ((claim_transposition a h b c d f Y X Q).2.2.2.2.2.2.1.1 hY)
    (T.2.2.2.2.2.1.1 hX) ((claim_transposition a h b c d f Q X Y).2.1.1 hQ)
    ((claim_transposition a h b c d f Q X Y).2.2.2.2.2.2.2.2.2.2.2.1.1 hQu) (by rw [hswap]; exact h7)
  rw [hswap] at k
  exact ⟨k.1, fun h => ⟨(k.2 h).2, (k.2 h).1⟩⟩

end Claims

/-- **Case N6-02** (`(n_L, n_T, n_R; n_I) = (1,0,1;1)`, `docs/proof/nine/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with exactly six contacts, one free point in each side cap and
the third strictly inside the anchor hexagon, with least area at least `A₀`, is optimal (in fact
impossible: the third point is above `HC` (Theorem 1) or below it
(`SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` Theorem 1), and both force `x = 1`).
Uses: SIX_BOUNDARY_TWO_SIDE_UPPER:Theorem1, SIX_BOUNDARY_TWO_SIDE_COMPLETION:Theorem1 -/
theorem n6_02 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZsq : Z ∈ unitSquare)
    (hZ : InHexagon a h b c d f Z) (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) := by
  exfalso
  have hX1 : X.1 ≠ 1 := ne_of_lt hsix.1.2.1
  by_cases hup : 0 < sarea (ptH h) (ptC c) Z
  · exact hX1 ((theorem1 hN hX hY hZsq ⟨hup, hZ.2.2.1, hZ.2.2.2.1, hZ.2.2.2.2.1⟩).2 hmin).1
  · have hT : InT0 h c Z := ⟨hZsq.1, hZsq.2.2.1, by
      have := sarea_swap₁₂ (ptH h) (ptC c) Z; push Not at hup; linarith⟩
    exact absurd (SixBoundaryTwoSideCompletion.theorem1 hN hX hY hZsq hT hsix) (not_lt.2 hmin)

/-- **Case N6-05** (`(n_L, n_T, n_R; n_I) = (1,1,1;0)`, `docs/proof/nine/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with one free point in each of the caps `R`, `T`, `L` has least
area below `7/128 < A₀` (`SixBoundaryThreeCaps.three_caps`, nine triangles; the convex-nonagon
route of the manuscript is not used).
Uses: SIX_BOUNDARY_THREE_CAPS:three-caps -/
theorem n6_05 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZ : InCapT d f Z)
    (_hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    False := by
  have hXc : 0 ≤ sarea (c, 0) X (1, d) := by rw [sarea_swap₂₃]; linarith [hX.2]
  have hYc : 0 ≤ sarea (f, 1) Y (0, h) := by rw [sarea_swap₂₃]; linarith [hY.2]
  have hZc : 0 ≤ sarea (1, d) Z (f, 1) := by rw [sarea_swap₂₃]; linarith [hZ.2]
  have := SixBoundaryThreeCaps.three_caps hN hX.1 hY.1 hZ.1 hXc hYc hZc
  linarith [A₀_bounds.1]


end Heilbronn.Nine.SixBoundaryTwoSideUpper
