module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Eight.RadialCatalogue
public import Heilbronn.Corners.CornerFamilies
public import Heilbronn.Hulls.QuadrilateralHull

/-! # Continuous cap exclusions with seven boundary contacts (`hand/SEVEN_BOUNDARY_CAPS.md`)

**Role.** Primary-route component of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2`, the
seven-boundary closer cited by `UNRESTRICTED.md` lines 132–140: the left pair uses Theorems 1, 2,
4, 5, 6, Corollary 7 and the §4 separation (via `SEVEN_BOUNDARY_LEFT_PAIR:Theorem2`), the right
pair Theorems 8–9 (via `SEVEN_BOUNDARY_RIGHT_PAIR`), the exterior part Theorems 10–11;
`SEVEN_BOUNDARY_MIXED_PAIR` uses Theorems 1, 4 and 6. `SEVEN_BOUNDARY_TOP_CAP` and
`SEVEN_BOUNDARY_TOP_CAP_RIGHT` use (37) of Theorem 9.

**Setting.** The normalized seven-boundary form (1)–(2) of `Heilbronn/Seven/Setting.lean`
(`SevenNormal a h b c d e f`): `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1)`,
the free points `P, Q` (also `X`, `Y` in the manuscript) arbitrary. Standing hypothesis: every
triangle has area at least `7/128` (doubled threshold `s = 7/64`); `K = 4 + 2√3` (`capK`), the
two-interior-point constant of `CORNER_FAMILIES.md`. Each exclusion "no free point in region `W`"
is stated as "a point in the closed region `W` gives a triangle of area `< 7/128`". When the proof
uses only the seven anchors and that one point (the manuscript says so for Theorem 1, line 140,
and Theorem 10, line 969), the statement is for the eight-point sub-configuration
`sevenConfig₁ a h b c d e f X`; it then applies to either free point by `le_min_comp`. Anchor-only
bounds are stated for `sevenAnchorConfig`.

**Results.**
* `theorem1`: no free point in the ear `ABH`;
* `theorem2`: `BCF`, `HCF`, `HBF` cannot contain both free points;
* `theorem3`: `ABFH` cannot contain both free points;
* `claim_left_pair_separation` (§4): both points on the `ABH` side of `CF` lie in `HBCF`, on
  opposite sides of `BF` and of `HC`;
* `theorem4`: no free point in the ear `ABC`;
* `theorem5`: `[ACF] < 13/16 < Ks`, so `ACF` cannot contain both free points;
* `claim_AF_separation`: in the §4 placement both points are in `ACFH`, separated by `AF`, `HC`,
  `BF`;
* `theorem6`: no free point in `AHF ∩ HCF`;
* `corollary7`: in the §4 placement the only remaining sector assignment is one point in the `HB`
  sector above `AF` and one in the `CF` sector;
* `theorem8`: `[CDE] < 3s`, so no free point in `CDE`;
* `theorem9`, `eq37`: `[CDF] < 13/16`, `[DEF] < 49/64`, so neither holds both free points; and
  (37) `1/8 < b ≤ 1/2`, `c ≥ b²/(b-s)`, `b - s - b² > 0`;
* `claim_right_pair_DF`: two free points in `CDEF` lie in `CEF ∩ DEF` and `CEF ∩ CDF`;
* `theorem10`: the nearer upper cap `conv{H,F,(0,1)}` is empty;
* `theorem11`: the far upper cap `conv{F,E,(1,1)}` cannot contain both free points;
* `claim_exterior_reduction`: with the lower-cap exclusions, a configuration with a free point
  outside the heptagon has exactly one free point beyond `EF` and the other inside the heptagon.

Not formalized (unused downstream): the remark after Theorem 1 (lines 143–144, `CDE` when
`f ≥ 1/2`) and the remark after Theorem 2 (lines 194–197, family N). Theorem 3 has no downstream
citation. Stale scope text: lines 25–29, 254–259. Citation note (file outside this group):
`SEVEN_BOUNDARY_MIXED_PAIR.md` line 598 cites "Theorem 7" of this note for `HCF ∩ AHF`; that result
is Theorem 6 (`theorem6`).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryCaps

open SevenBoundary RadialCatalogue

/-- The two-interior-point constant `K = 4 + 2√3` (`CORNER_FAMILIES.md` §7). -/
def capK : ℝ := 4 + 2 * Real.sqrt 3

/-! ### Helpers: area costs from the standing hypothesis -/

/-- Evaluates a signed area of a named configuration. -/
macro "sa_eval" : tactic =>
  `(tactic| (simp [sevenConfig, sevenConfig₁, sevenAnchorConfig, sarea] <;> ring))

/-- A triangle of nonnegative orientation in a configuration of least area at least `7/128` has
doubled signed area at least `s = 7/64` (stated with the signed area evaluated to `v`). -/
theorem cost {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P) (i j k : Fin n)
    {v : ℝ} (hv : sarea (P i) (P j) (P k) = v) (hpos : 0 ≤ v)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    7 / 64 ≤ v := by
  have := two_mul_le_sarea_of_nonneg (by norm_num : (0 : ℝ) < 7 / 128) (hv ▸ hpos)
    (area_of_le_min hmin i j k hij hjk hik)
  rw [hv] at this; linarith

/-- The same for a triangle of nonpositive orientation: doubled signed area at most `-s`. -/
theorem cost_neg {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P) (i j k : Fin n)
    {v : ℝ} (hv : sarea (P i) (P j) (P k) = v) (hneg : v ≤ 0)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    v ≤ -(7 / 64) := by
  have := sarea_le_of_nonpos (by norm_num : (0 : ℝ) < 7 / 128) (hv ▸ hneg)
    (area_of_le_min hmin i j k hij hjk hik)
  rw [hv] at this; linarith

/-- Either orientation: `|v| ≥ s`. -/
theorem cost_abs {n : ℕ} {P : Fin n → Point} (hmin : 7 / 128 ≤ minTriangleArea P) (i j k : Fin n)
    {v : ℝ} (hv : sarea (P i) (P j) (P k) = v)
    (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    7 / 64 ≤ v ∨ v ≤ -(7 / 64) := by
  rcases le_total 0 v with h | h
  · exact Or.inl (cost hmin i j k hv h hij hjk hik)
  · exact Or.inr (cost_neg hmin i j k hv h hij hjk hik)

theorem sevenAnchorConfig_eq₁ (a h b c d e f : ℝ) (X : Point) :
    sevenAnchorConfig a h b c d e f = sevenConfig₁ a h b c d e f X ∘ Fin.castSucc := by
  funext i; fin_cases i <;> rfl

theorem sevenConfig₁_eq_left (a h b c d e f : ℝ) (P Q : Point) :
    sevenConfig₁ a h b c d e f P = sevenConfig a h b c d e f P Q ∘ Fin.castSucc := by
  funext i; fin_cases i <;> rfl

theorem sevenConfig₁_eq_right (a h b c d e f : ℝ) (P Q : Point) :
    sevenConfig₁ a h b c d e f Q = sevenConfig a h b c d e f P Q ∘ ![0, 1, 2, 3, 4, 5, 6, 8] := by
  funext i; fin_cases i <;> rfl

/-- The anchors and one free point form a sub-configuration. -/
theorem min₁_left {a h b c d e f : ℝ} {P Q : Point} :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ minTriangleArea (sevenConfig₁ a h b c d e f P) := by
  rw [sevenConfig₁_eq_left a h b c d e f P Q]
  exact le_min_comp (by norm_num) _ (Fin.castSucc_injective _)

theorem min₁_right {a h b c d e f : ℝ} {P Q : Point} :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ minTriangleArea (sevenConfig₁ a h b c d e f Q) := by
  rw [sevenConfig₁_eq_right a h b c d e f P Q]
  exact le_min_comp (by norm_num) _ (by decide)

theorem minAnchor_of₁ {a h b c d e f : ℝ} {X : Point} :
    minTriangleArea (sevenConfig₁ a h b c d e f X) ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) := by
  rw [sevenAnchorConfig_eq₁ a h b c d e f X]
  exact le_min_comp (by norm_num) _ (Fin.castSucc_injective _)

/-- The anchor costs (3) of `SEVEN_BOUNDARY_CAPS.md` and the two upper anchor costs: `bL, aM, dM,
(1-c)R, (1-f)R, (1-f)(1-h) + f(1-e), fL ≥ s`. -/
structure AnchorCosts (a h b c d e f : ℝ) : Prop where
  ABH : 7 / 64 ≤ b * (h - a)
  ABC : 7 / 64 ≤ a * (c - b)
  BCD : 7 / 64 ≤ d * (c - b)
  CDE : 7 / 64 ≤ (1 - c) * (e - d)
  DEF : 7 / 64 ≤ (1 - f) * (e - d)
  EFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)
  FHA : 7 / 64 ≤ f * (h - a)

theorem anchorCosts {a h b c d e f : ℝ} (hN : SevenAnchors a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    AnchorCosts a h b c d e f := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩ := hN
  refine ⟨cost hmin 0 2 1 (by sa_eval) (by nlinarith),
    cost hmin 0 2 3 (by sa_eval) (by nlinarith),
    cost hmin 2 3 4 (by sa_eval) (by nlinarith),
    cost hmin 3 4 5 (by sa_eval) (by nlinarith),
    cost hmin 4 5 6 (by sa_eval) (by nlinarith),
    cost hmin 5 6 1 (by sa_eval) (by nlinarith),
    cost hmin 6 1 0 (by sa_eval) (by nlinarith)⟩

/-- Simple consequences of the anchor costs: `b, 1 - c, a, d, 1 - e, 1 - h > 0`-type bounds. -/
theorem AnchorCosts.basic {a h b c d e f : ℝ} (hN : SevenAnchors a h b c d e f)
    (H : AnchorCosts a h b c d e f) :
    7 / 64 ≤ b ∧ c ≤ 1 - 7 / 64 ∧ c - b ≤ 1 - 2 * (7 / 64) ∧ 7 / 64 ≤ a ∧ 7 / 64 ≤ d ∧
      7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b ∧ 7 / 64 ≤ e - d := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩ := hN
  have := H.ABH; have := H.ABC; have := H.BCD; have := H.CDE
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> nlinarith

/-- The placement of §4: both free points strictly inside the anchor heptagon and strictly on the
side of `CF` containing `A, B, H`. -/
def LeftPlacement (a h b c d e f : ℝ) (P Q : Point) : Prop :=
  InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q ∧
    0 < sarea (c, 0) (f, 1) P ∧ 0 < sarea (c, 0) (f, 1) Q

/-- `X` is in the sector of the quadrilateral `HBCF` at its side `HB`: inside `HBCF`, on the `H`
side of the diagonal `BF` and on the `B` side of the diagonal `HC`. -/
def InSectorHB (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ 0 < sarea (b, 0) (f, 1) X ∧
    sarea (0, h) (c, 0) X < 0

/-- The sector of `HBCF` at its side `CF`: the `C` side of `BF` and the `F` side of `HC`. -/
def InSectorCF (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ sarea (b, 0) (f, 1) X < 0 ∧
    0 < sarea (0, h) (c, 0) X

/-- The sector of `HBCF` at its side `BC`: the `C` side of `BF` and the `B` side of `HC`. -/
def InSectorBC (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ sarea (b, 0) (f, 1) X < 0 ∧
    sarea (0, h) (c, 0) X < 0

/-- The sector of `HBCF` at its side `FH`: the `H` side of `BF` and the `F` side of `HC`. -/
def InSectorFH (h b c f : ℝ) (X : Point) : Prop :=
  InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] X ∧ 0 < sarea (b, 0) (f, 1) X ∧
    0 < sarea (0, h) (c, 0) X

/-! ### Capacity one -/

theorem capK_gt : 13 / 16 < capK * (7 / 64) := by
  have : (12 / 7 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  unfold capK; nlinarith

theorem capK_gt' : 1 - 2 * (7 / 64) < capK * (7 / 64) := by
  have := capK_gt; linarith

/-- The five-point sub-configuration of a configuration. -/
theorem min_five' {n : ℕ} (P : Fin n → Point) (i₁ i₂ i₃ i₄ i₅ : Fin n)
    (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅]) :
    minTriangleArea P ≤ minTriangleArea ![P i₁, P i₂, P i₃, P i₄, P i₅] := by
  have e : (![P i₁, P i₂, P i₃, P i₄, P i₅] : Fin 5 → Point) = P ∘ ![i₁, i₂, i₃, i₄, i₅] := by
    funext j; fin_cases j <;> rfl
  rw [e]; exact le_min_comp (by norm_num) P hinj

/-- **Capacity one.** If two points of a configuration lie in a closed counterclockwise triangle of
three other points whose doubled area is below `Ks`, the least area is below `7/128`
(`CORNER_FAMILIES:TwoInteriorPointLemma`; a point on an edge gives a zero triangle). -/
theorem capacity_one {n : ℕ} {P : Fin n → Point} (i₁ i₂ i₃ i₄ i₅ : Fin n)
    (hinj : Function.Injective ![i₁, i₂, i₃, i₄, i₅])
    (h4 : InClosedTriangle (P i₄) (P i₁) (P i₂) (P i₃))
    (h5 : InClosedTriangle (P i₅) (P i₁) (P i₂) (P i₃))
    (hT : sarea (P i₁) (P i₂) (P i₃) < capK * (7 / 64)) :
    minTriangleArea P < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have hm := hcon.trans (min_five' P i₁ i₂ i₃ i₄ i₅ hinj)
  set Q : Fin 5 → Point := ![P i₁, P i₂, P i₃, P i₄, P i₅] with hQ
  have pos : ∀ (j k l : Fin 5), j ≠ k → k ≠ l → j ≠ l → 0 ≤ sarea (Q j) (Q k) (Q l) →
      0 < sarea (Q j) (Q k) (Q l) := by
    intro j k l h1 h2 h3 h0
    have := cost hm j k l rfl h0 h1 h2 h3
    linarith
  obtain ⟨a1, a2, a3⟩ := h4
  obtain ⟨b1, b2, b3⟩ := h5
  have hP : InTriangle (P i₄) (P i₁) (P i₂) (P i₃) :=
    ⟨pos 0 1 3 (by decide) (by decide) (by decide) a1, pos 1 2 3 (by decide) (by decide)
      (by decide) a2, pos 2 0 3 (by decide) (by decide) (by decide) a3⟩
  have hQ5 : InTriangle (P i₅) (P i₁) (P i₂) (P i₃) :=
    ⟨pos 0 1 4 (by decide) (by decide) (by decide) b1, pos 1 2 4 (by decide) (by decide)
      (by decide) b2, pos 2 0 4 (by decide) (by decide) (by decide) b3⟩
  have key := CornerFamilies.twoInteriorPointLemma (P i₁) (P i₂) (P i₃) (P i₄) (P i₅)
    (Or.inl hP) (Or.inl hQ5) (7 / 128) (by norm_num) hm
  have hpos : 0 < sarea (P i₁) (P i₂) (P i₃) := by
    have := sarea_add_sarea_add_sarea (P i₁) (P i₂) (P i₃) (P i₄)
    linarith [hP.1, hP.2.1, hP.2.2]
  rw [triangleArea_eq, abs_of_pos hpos] at key
  unfold capK at hT
  linarith

/-! ### §1. The near-side lower ear -/

/-- `x + q/x ≥ 2r` when `r² ≤ q` (rational stand-in for `z + q/z ≥ 2√q`). -/
theorem amgm_rat {x q r : ℝ} (hx : 0 < x) (hr : 0 ≤ r) (hq : r ^ 2 ≤ q) : 2 * r ≤ x + q / x := by
  have h1 : r ^ 2 / x ≤ q / x := div_le_div_of_nonneg_right hq hx.le
  have h2 : 2 * r ≤ x + r ^ 2 / x := by
    rw [← sub_nonneg]
    have : x + r ^ 2 / x - 2 * r = (x - r) ^ 2 / x := by field_simp; ring
    rw [this]; positivity
  linarith

/-- (5) of `SEVEN_BOUNDARY_CAPS.md` in the weaker form `h > 1 - s`. -/
theorem thm1_h {a L M : ℝ} (ha : 0 < a) (hL6 : 6 * (7 / 64) ≤ L) (hM : 0 < M)
    (hML : M * L ≤ (1 - 7 / 64) * L - 3 * (7 / 64)) (hABC : 7 / 64 ≤ a * M) :
    1 - 7 / 64 < a + L := by
  have hL : 0 < L := by linarith
  have hD : 0 < (1 - 7 / 64) * L - 3 * (7 / 64) := by nlinarith [mul_pos hM hL]
  have haD : 7 / 64 * L ≤ a * ((1 - 7 / 64) * L - 3 * (7 / 64)) := by
    have := mul_le_mul_of_nonneg_left hML ha.le
    nlinarith
  have hg : (1 - 7 / 64) * ((1 - 7 / 64) * L - 3 * (7 / 64)) <
      L * ((1 - 7 / 64) * L - 3 * (7 / 64)) + 7 / 64 * L := by
    nlinarith [sq_nonneg (L - 6 * (7 / 64)), show (0 : ℝ) ≤ L - 6 * (7 / 64) by linarith]
  by_contra hc'; push Not at hc'
  have := mul_le_mul_of_nonneg_right hc' hD.le
  nlinarith

/-- The scalar part of Theorem 1 (`SEVEN_BOUNDARY_CAPS.md` (4)–(8)). -/
theorem theorem1_core {a h b c d e f : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1) (hb : 0 < b)
    (hbc : b < c) (hc : c < 1) (hd : 0 < d) (hde : d < e) (he : e < 1) (hbf : b ≤ f)
    (hf : f ≤ 1 / 2) (hbL : 3 * (7 / 64) ≤ b * (h - a)) (hABC : 7 / 64 ≤ a * (c - b))
    (hBCD : 7 / 64 ≤ d * (c - b)) (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hEFH : 7 / 64 ≤ (1 - f) * (1 - h) + f * (1 - e)) : False := by
  have hL : 0 < h - a := by linarith
  have hM : 0 < c - b := by linarith
  have hR : 0 < e - d := by linarith
  have hL6 : 6 * (7 / 64) ≤ h - a := by nlinarith
  have hc1 : c ≤ 1 - 7 / 64 := by nlinarith
  -- `M L ≤ (1-s)L - 3s`, `a M ≥ s`, hence `h > 1 - s`
  have hML : (c - b) * (h - a) ≤ (1 - 7 / 64) * (h - a) - 3 * (7 / 64) := by nlinarith
  have hh57 : 1 - 7 / 64 < h := by
    have := thm1_h ha hL6 hM hML hABC
    linarith
  -- (6): `α + β ≥ 2s`
  have hf0 : 0 < f := by linarith
  have hab : 2 * (7 / 64) ≤ (1 - h) + (1 - e) := by
    have k1 : f * (2 * (7 / 64) - (1 - h)) ≤ f * (1 - e) := by
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 7 / 64 - (1 - h) by linarith)
        (show (0 : ℝ) ≤ 1 - 2 * f by linarith)]
    have := le_of_mul_le_mul_left k1 hf0
    linarith
  -- (7)
  have e1 : 3 * (7 / 64) / (h - a) ≤ b := by rw [div_le_iff₀ hL]; linarith
  have e2 : 7 / 64 / (e - d) ≤ 1 - c := by rw [div_le_iff₀ hR]; linarith
  have e3 : 7 / 64 / (c - b) ≤ a := by rw [div_le_iff₀ hM]; linarith
  have e4 : 7 / 64 / (c - b) ≤ d := by rw [div_le_iff₀ hM]; linarith
  -- (8) with rational square roots
  have m1 := amgm_rat (x := c - b) (q := 7 / 64) (r := 3307 / 10000) hM (by norm_num) (by norm_num)
  have m2 := amgm_rat (x := h - a) (q := 6 * (7 / 64)) (r := 81 / 100) hL (by norm_num)
    (by norm_num)
  have m3 := amgm_rat (x := e - d) (q := 2 * (7 / 64)) (r := 4677 / 10000) hR (by norm_num)
    (by norm_num)
  have f2 : 6 * (7 / 64) / (h - a) = 2 * (3 * (7 / 64) / (h - a)) := by ring
  have f3 : 2 * (7 / 64) / (e - d) = 2 * (7 / 64 / (e - d)) := by ring
  linarith

/-- **Theorem 1** (`SEVEN_BOUNDARY_CAPS:Theorem1`). Under (1)–(2), if a free point lies in the
closed triangle `ABH`, some triangle has area less than `7/128`. ("No location or property of the
other free point has been used": stated for the seven anchors and that point.)
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 51–141.
Uses: standard facts (`z + q/z ≥ 2√q`; `√7 > 21/8`, `√6 > 12/5`, `√2 > 7/5`). -/
theorem theorem1 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (0, h)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨h1, h2, h3⟩ := hX
  have c1 := cost hcon 0 2 7 rfl h1
  have c2 := cost hcon 2 1 7 rfl h2
  have c3 := cost hcon 1 0 7 rfl h3
  have hsum : 3 * (7 / 64) ≤ b * (h - a) := by
    have := sarea_add_sarea_add_sarea (0, a) (b, 0) (0, h) X
    have e : sarea (0, a) (b, 0) (0, h) = b * (h - a) := by simp only [sarea]; ring
    change 7 / 64 ≤ sarea (0, a) (b, 0) X at c1
    change 7 / 64 ≤ sarea (b, 0) (0, h) X at c2
    change 7 / 64 ≤ sarea (0, h) (0, a) X at c3
    linarith
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  exact theorem1_core ha hah hh hb hbc hc hd hde he hbf hf hsum H.ABC H.BCD H.CDE H.EFH

/-! ### §2. Three triangles of capacity one -/

/-- **Theorem 2** (`SEVEN_BOUNDARY_CAPS:Theorem2`). Under (1)–(2), none of the closed triangles
`BCF`, `HCF`, `HBF` contains both free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 148–192.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem2 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point} :
    (InClosedTriangle P (b, 0) (c, 0) (f, 1) → InClosedTriangle Q (b, 0) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (c, 0) (f, 1) → InClosedTriangle Q (0, h) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
      (InClosedTriangle P (0, h) (b, 0) (f, 1) → InClosedTriangle Q (0, h) (b, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  have hK := capK_gt'
  have hK2 := capK_gt
  refine ⟨fun hP hQ => ?_, fun hP hQ => ?_, fun hP hQ => ?_⟩
  · by_contra hcon; push Not at hcon
    have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
    obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 2 3 6 7 8 (by decide) hP hQ
      (by show sarea (b, 0) (c, 0) (f, 1) < _; simp only [sarea]; linarith)
    linarith
  · by_contra hcon; push Not at hcon
    have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    have hABH := H.ABH; have hABC := H.ABC
    -- `hc ≥ 4s`, then `U = c - h(c-f) ≤ 1 - 2s`
    have hhc : 4 * (7 / 64) ≤ h * c := by
      have h1 : 7 / 64 * c ≤ h * (b * (c - b)) := by
        have := mul_le_mul_of_nonneg_left hABC hb.le
        have := mul_le_mul_of_nonneg_left hABH (show 0 ≤ c - b by linarith)
        nlinarith
      have h2 : b * (c - b) ≤ c ^ 2 / 4 := by nlinarith [sq_nonneg (c - 2 * b)]
      have h3 : h * (b * (c - b)) ≤ h * (c ^ 2 / 4) := mul_le_mul_of_nonneg_left h2 (by linarith)
      nlinarith
    have hU : sarea (0, h) (c, 0) (f, 1) ≤ 1 - 2 * (7 / 64) := by
      simp only [sarea]
      rcases le_total c (1 / 2) with hc2 | hc2
      · nlinarith [mul_nonneg (show (0 : ℝ) ≤ h by linarith) (show (0 : ℝ) ≤ c - f by linarith)]
      · have h1 : h * (c - f) * c ≥ 4 * (7 / 64) * (c - 1 / 2) := by
          nlinarith [mul_le_mul_of_nonneg_right hhc (show (0 : ℝ) ≤ c - f by linarith)]
        nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - c by linarith)
          (show (0 : ℝ) ≤ c - 2 * (7 / 64) by linarith)]
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 1 3 6 7 8 (by decide) hP hQ
      (by show sarea (0, h) (c, 0) (f, 1) < _; linarith)
    linarith
  · have hU : sarea (0, h) (b, 0) (f, 1) ≤ 1 / 2 := by
      obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
      simp only [sarea]
      nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 - h by linarith) (show (0 : ℝ) ≤ f - b by linarith)]
    exact capacity_one (P := sevenConfig a h b c d e f P Q) 1 2 6 7 8 (by decide) hP hQ
      (by show sarea (0, h) (b, 0) (f, 1) < _; linarith)

/-! ### §3. The smaller side quadrilateral -/

/-- **Theorem 3** (`SEVEN_BOUNDARY_CAPS:Theorem3`). Under (1)–(2), the closed quadrilateral
`ABFH` does not contain both free points at minimum area at least `7/128` (its doubled area is
`J = b(1-a) + fh ≤ 43/50 < 8s`). No downstream citation.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 201–236.
Uses: QUADRILATERAL_HULL:Theorem1. -/
theorem theorem3 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] P)
    (hQ : InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans (min₁_left.trans minAnchor_of₁))
  obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
  have hABC := H.ABC
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have hconv : QuadrilateralHull.ConvexQuad (0, a) (b, 0) (f, 1) (0, h) := by
    refine ⟨?_, ?_, ?_, ?_⟩ <;> simp only [sarea] <;> nlinarith
  have cq : ∀ X : Point, InClosedPolygon ![(0, a), (b, 0), (f, 1), (0, h)] X →
      QuadrilateralHull.InClosedQuad X (0, a) (b, 0) (f, 1) (0, h) := by
    intro X hX
    have h0 := hX 0; have h1 := hX 1; have h2 := hX 2; have h3 := hX 3
    simp [finRotate_apply] at h0 h1 h2 h3
    exact ⟨h0, h1, h2, h3⟩
  have key := (QuadrilateralHull.theorem1 hconv (cq P hP) (cq Q hQ)).1
  have hsub : minTriangleArea (sevenConfig a h b c d e f P Q) ≤
      minTriangleArea ![(0, a), (b, 0), (f, 1), (0, h), P, Q] := by
    have e : (![(0, a), (b, 0), (f, 1), (0, h), P, Q] : Fin 6 → Point) =
        sevenConfig a h b c d e f P Q ∘ ![0, 2, 6, 1, 7, 8] := by
      funext j; fin_cases j <;> rfl
    rw [e]; exact le_min_comp (by norm_num) _ (by decide)
  -- `J = b(1-a) + fh ≤ 43/50 < 7/8`
  have hJ : QuadrilateralHull.quadArea (0, a) (b, 0) (f, 1) (0, h) < 7 / 16 := by
    unfold QuadrilateralHull.quadArea
    simp only [sarea]
    have ha' : 7 / 64 ≤ a * (1 - 7 / 64 - b) := by nlinarith
    have hb2 : b ≤ 1 / 2 := by linarith
    have hq : b * (1 - a) ≤ 9 / 25 := by
      have h1 : b * (1 - 7 / 64 - b) - 7 / 64 * b ≤ 9 / 25 * (1 - 7 / 64 - b) := by
        nlinarith [mul_nonneg (show (0 : ℝ) ≤ 1 / 2 - b by linarith)
          (show (0 : ℝ) ≤ 1 - 2 * (7 / 64) + 9 / 25 - 1 / 2 - b by linarith)]
      by_contra hc'; push Not at hc'
      nlinarith [mul_le_mul_of_nonneg_left ha' hb.le]
    nlinarith [mul_le_mul_of_nonneg_left (show h ≤ 1 by linarith) (show (0 : ℝ) ≤ f by linarith)]
  linarith

/-! ### §4. The left-hand pair -/

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-left-pair-separation`). Under (1)–(2) and minimum area
at least `7/128`, if both free points are inside the heptagon on the side of `CF` containing
`A, B, H`, then both lie inside the quadrilateral `HBCF`, on opposite sides of its diagonal `BF`,
and on opposite sides of its diagonal `HC`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 238–259.
Uses: SEVEN_BOUNDARY_CAPS:Theorem1, SEVEN_BOUNDARY_CAPS:Theorem2, QUADRILATERAL_HULL:Theorem4. -/
theorem claim_left_pair_separation {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    {P Q : Point} (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] P ∧ InPolygon ![(0, h), (b, 0), (c, 0), (f, 1)] Q ∧
      sarea (b, 0) (f, 1) P * sarea (b, 0) (f, 1) Q < 0 ∧
      sarea (0, h) (c, 0) P * sarea (0, h) (c, 0) Q < 0 := by
  sorry

/-! ### §5. The adjacent bottom ear -/

/-- **Theorem 4** (`SEVEN_BOUNDARY_CAPS:Theorem4`). Under (1)–(2), a free point in the closed
triangle `ABC` gives a triangle of area less than `7/128` (stated for the seven anchors and that
point; the proof uses no other point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 263–378.
Uses: standard facts (`(√p + √q)² ≤ (a+L)(b+M)`, `√3 > 5/3`). -/
theorem theorem4 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InClosedTriangle X (0, a) (b, 0) (c, 0)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-! ### §6. The diagonal triangle `ACF` -/

/-- **Theorem 5** (`SEVEN_BOUNDARY_CAPS:Theorem5`). Under (1)–(2): if every anchor triangle has
area at least `7/128` (the proof uses only `ABC, BCD, ABH, CDE, HEF`), then the doubled area
`[ACF] = c(1-a) + af` is less than `13/16 < Ks`; consequently the closed triangle `ACF` does not
contain both free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 392–544.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem5 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (0, a) (c, 0) (f, 1) < 13 / 16) ∧
      13 / 16 < capK * (7 / 64) ∧
      ∀ P Q : Point, InClosedTriangle P (0, a) (c, 0) (f, 1) →
        InClosedTriangle Q (0, a) (c, 0) (f, 1) →
        minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-AF-separation`). Under (1)–(2), minimum area at least
`7/128` and the placement of §4, both free points lie inside the quadrilateral `ACFH`, and each of
the lines `AF`, `HC`, `BF` separates them.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 546–554.
Uses: SEVEN_BOUNDARY_CAPS:Theorem4, SEVEN_BOUNDARY_CAPS:Theorem5, SEVEN_BOUNDARY_CAPS:Theorem2,
SEVEN_BOUNDARY_CAPS:claim-left-pair-separation. -/
theorem claim_AF_separation {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    InPolygon ![(0, a), (c, 0), (f, 1), (0, h)] P ∧ InPolygon ![(0, a), (c, 0), (f, 1), (0, h)] Q ∧
      sarea (0, a) (f, 1) P * sarea (0, a) (f, 1) Q < 0 ∧
      sarea (0, h) (c, 0) P * sarea (0, h) (c, 0) Q < 0 ∧
      sarea (b, 0) (f, 1) P * sarea (b, 0) (f, 1) Q < 0 := by
  sorry

/-! ### §7. The upper left overlap -/

/-- **Theorem 6** (`SEVEN_BOUNDARY_CAPS:Theorem6`). Under (1)–(2), a point in both closed
triangles `AHF` and `HCF` gives a triangle of area less than `7/128` (stated for the seven anchors
and that point; the proof uses `[AFQ], [FHQ], [HCQ]` and the anchors `ABH, ABC, CDE`).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 558–691.
Uses: none (weighted determinant identity and monotone replacements). -/
theorem theorem6 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hAHF : InClosedTriangle X (0, a) (f, 1) (0, h))
    (hHCF : InClosedTriangle X (0, h) (c, 0) (f, 1)) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-- **Corollary 7** (`SEVEN_BOUNDARY_CAPS:Corollary7`). Under (1)–(2), minimum area at least
`7/128` and the placement of §4, the free points do not occupy the sectors of `HBCF` at `BC` and
at `FH`; the only remaining assignment has one point in the `HB` sector, strictly above `AF`, and
the other in the `CF` sector. (That assignment is excluded in `SEVEN_BOUNDARY_LEFT_PAIR.md`.)
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 693–715.
Uses: SEVEN_BOUNDARY_CAPS:claim-left-pair-separation, SEVEN_BOUNDARY_CAPS:Theorem5,
SEVEN_BOUNDARY_CAPS:claim-AF-separation, SEVEN_BOUNDARY_CAPS:Theorem6. -/
theorem corollary7 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hpl : LeftPlacement a h b c d e f P Q) :
    (InSectorHB h b c f P ∧ 0 < sarea (0, a) (f, 1) P ∧ InSectorCF h b c f Q) ∨
      (InSectorHB h b c f Q ∧ 0 < sarea (0, a) (f, 1) Q ∧ InSectorCF h b c f P) := by
  sorry

/-! ### §8. The bottom-right ear -/

/-- **Theorem 8** (`SEVEN_BOUNDARY_CAPS:Theorem8`). Under (1)–(2): if every anchor triangle has
area at least `7/128`, the doubled area `[CDE] = (1-c)(e-d)` is less than `3s = 21/64`;
consequently a free point in the closed triangle `CDE` gives a triangle of area less than `7/128`
(stated for the seven anchors and that point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 719–844.
Uses: standard facts (Cauchy–Schwarz; `√2 > 7/5`, `√3 > 5/3`). -/
theorem theorem8 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (1, e) < 3 * (7 / 64)) ∧
      ∀ X : Point, InClosedTriangle X (c, 0) (1, d) (1, e) →
        minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  sorry

/-! ### §9. Two right-hand triangles of capacity one -/

/-- **Equation (37)** (`SEVEN_BOUNDARY_CAPS:eq37`), proved at the start of the proof of
Theorem 9 and used by Theorem 11, `SEVEN_BOUNDARY_TOP_CAP_RIGHT` and the exterior notes: under
(1)–(2), if every anchor triangle has area at least `7/128`, then `1/8 < b ≤ 1/2`,
`c ≥ b²/(b-s)` and `b - s - b² > 0`, `s = 7/64`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 861–879.
Uses: none. -/
theorem eq37 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    1 / 8 < b ∧ b ≤ 1 / 2 ∧ b ^ 2 / (b - 7 / 64) ≤ c ∧ 0 < b - 7 / 64 - b ^ 2 := by
  have H := anchorCosts hN.1 hmin
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  have hABH := H.ABH; have hABC := H.ABC
  -- `ab < b - s` from `bL ≥ s`, `h < 1`
  have hab : a * b < b - 7 / 64 := by nlinarith
  have hbs : 7 / 64 < b := by nlinarith
  -- `bM ≥ sc`
  have hbM : 7 / 64 * c ≤ b * (c - b) := by
    nlinarith [mul_lt_mul_of_pos_right hab (sub_pos.2 hbc)]
  have hc' : b ^ 2 ≤ c * (b - 7 / 64) := by nlinarith
  have h3 : 0 < b - 7 / 64 - b ^ 2 := by nlinarith
  refine ⟨by nlinarith, by linarith, ?_, h3⟩
  rw [div_le_iff₀ (by linarith)]; linarith

/-- The bound `[CDF] < 13/16` of (36), (38)–(39). -/
theorem thm9_CDF {b c d e f : ℝ} (hb8 : 1 / 8 < b) (hb2 : b ≤ 1 / 2) (hbc : b < c) (hc : c < 1)
    (hbf : b ≤ f) (hfc : f ≤ c) (hd : 0 < d) (hde : d < e) (he : e < 1)
    (hCDE : 7 / 64 ≤ (1 - c) * (e - d))
    (hc0 : b ^ 2 ≤ c * (b - 7 / 64)) (h37' : 0 < b - 7 / 64 - b ^ 2) :
    (1 - c) * (1 - 0) - (d - 0) * (f - c) < 13 / 16 := by
  have hw : 7 / 64 < 1 - c := by
    nlinarith [mul_pos (show (0 : ℝ) < 1 - c by linarith) (show (0 : ℝ) < 1 - (e - d) by linarith)]
  have hd1 : d * (1 - c) ≤ (1 - c) - 7 / 64 := by nlinarith
  have hX : (1 - c) * ((1 - c) * (1 - 0) - (d - 0) * (f - c)) ≤
      (1 - c) * (1 - b) - 7 / 64 * (c - b) := by
    have k1 := mul_le_mul_of_nonneg_right hd1 (show (0 : ℝ) ≤ c - f by linarith)
    have k2 := mul_le_mul_of_nonneg_left hbf (show (0 : ℝ) ≤ 1 - c - 7 / 64 by linarith)
    nlinarith
  have hN2 : (3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64) < 0 := by
    have ht : 0 ≤ b - 1 / 8 := by linarith
    have ht' : 0 ≤ 1 / 2 - b := by linarith
    nlinarith [mul_nonneg (mul_nonneg ht ht) ht', sq_nonneg (b - 1 / 8 - 143 / 3584)]
  have hL : (3 / 16 - b + 7 / 64 * b) - c * (3 / 16 - b + 7 / 64) < 0 := by
    have e1 : ((3 / 16 - b + 7 / 64 * b) - c * (3 / 16 - b + 7 / 64)) * (b - 7 / 64 - b ^ 2) =
        (1 - c) * ((3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64)) +
          (c * (b - 7 / 64) - b ^ 2) * (7 / 64 * (b - 1)) := by ring
    have h1 : (1 - c) * ((3 / 16 - b + 7 / 64 * b) * (b - 7 / 64) - b ^ 2 * (3 / 16 - b + 7 / 64))
        < 0 := mul_neg_of_pos_of_neg (by linarith) hN2
    have h2 : (c * (b - 7 / 64) - b ^ 2) * (7 / 64 * (b - 1)) ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by linarith) (by linarith)
    by_contra hc'; push Not at hc'
    have := mul_nonneg hc' h37'.le
    linarith
  by_contra hc'; push Not at hc'
  have := mul_le_mul_of_nonneg_left hc' (show (0 : ℝ) ≤ 1 - c by linarith)
  nlinarith

/-- The bound `[DEF] < 49/64` of (36). -/
theorem thm9_DEF {b c d e f : ℝ} (hb8 : 1 / 8 < b) (hbc : b < c) (hc : c < 1) (hd : 0 < d)
    (hde : d < e) (he : e < 1) (hbf : b ≤ f) (hBCD : 7 / 64 ≤ d * (c - b)) :
    (1 - f) * (e - d) < 49 / 64 := by
  have hM : 0 < c - b := by linarith
  have h1 : (1 - f) * (e - d) ≤ (1 - b) * (1 - d) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have h2 : 7 / 64 < (1 - b) * d := by
    have := mul_lt_mul_of_pos_left (show c - b < 1 - b by linarith) hd
    nlinarith
  nlinarith

/-- **Theorem 9** (`SEVEN_BOUNDARY_CAPS:Theorem9`). Under (1)–(2): if every anchor triangle has
area at least `7/128`, the doubled areas satisfy `[CDF] < 13/16` and `[DEF] < 49/64`, both below
`Ks`; consequently neither the closed triangle `CDF` nor the closed triangle `DEF` contains both
free points at minimum area at least `7/128`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 852–930.
Uses: SEVEN_BOUNDARY_CAPS:eq37, SEVEN_BOUNDARY_CAPS:Theorem5 (`Ks > 13/16`),
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem9 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) :
    (7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
        sarea (c, 0) (1, d) (f, 1) < 13 / 16 ∧ sarea (1, d) (1, e) (f, 1) < 49 / 64) ∧
      ∀ P Q : Point,
        (InClosedTriangle P (c, 0) (1, d) (f, 1) → InClosedTriangle Q (c, 0) (1, d) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) ∧
        (InClosedTriangle P (1, d) (1, e) (f, 1) → InClosedTriangle Q (1, d) (1, e) (f, 1) →
          minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128) := by
  have part1 : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f) →
      sarea (c, 0) (1, d) (f, 1) < 13 / 16 ∧ sarea (1, d) (1, e) (f, 1) < 49 / 64 := by
    intro hmin
    obtain ⟨hb8, hb2, h37, h37'⟩ := eq37 hN hmin
    have H := anchorCosts hN.1 hmin
    obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
    have hbs : 0 < b - 7 / 64 := by linarith
    have hc0 : b ^ 2 ≤ c * (b - 7 / 64) := by rwa [div_le_iff₀ hbs] at h37
    refine ⟨?_, ?_⟩
    · have e1 : sarea (c, 0) (1, d) (f, 1) = (1 - c) * (1 - 0) - (d - 0) * (f - c) := rfl
      rw [e1]
      exact thm9_CDF hb8 hb2 hbc hc hbf hfc hd hde he H.CDE hc0 h37'
    · have e1 : sarea (1, d) (1, e) (f, 1) = (1 - f) * (e - d) := by simp only [sarea]; ring
      rw [e1]
      exact thm9_DEF hb8 hbc hc hd hde he hbf H.BCD
  have hK := capK_gt
  refine ⟨part1, fun P Q => ⟨fun hP hQ => ?_, fun hP hQ => ?_⟩⟩
  · by_contra hcon; push Not at hcon
    have := (part1 (hcon.trans (min₁_left.trans minAnchor_of₁))).1
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 3 4 6 7 8 (by decide) hP hQ
      (by show sarea (c, 0) (1, d) (f, 1) < _; linarith)
    linarith
  · by_contra hcon; push Not at hcon
    have := (part1 (hcon.trans (min₁_left.trans minAnchor_of₁))).2
    have := capacity_one (P := sevenConfig a h b c d e f P Q) 4 5 6 7 8 (by decide) hP hQ
      (by show sarea (1, d) (1, e) (f, 1) < _; linarith)
    linarith

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-right-pair-DF`). Under (1)–(2) and minimum area at
least `7/128`, if both free points lie in the closed right quadrilateral `CDEF`, then both are
strictly inside `CEF` and `DF` separates them: one is in `CEF ∩ DEF`, the other in `CEF ∩ CDF`.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 846–848 and 932–938.
Uses: SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_CAPS:Theorem9. -/
theorem claim_right_pair_DF {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hP : InClosedPolygon ![(c, 0), (1, d), (1, e), (f, 1)] P)
    (hQ : InClosedPolygon ![(c, 0), (1, d), (1, e), (f, 1)] Q) :
    (InTriangle P (c, 0) (1, e) (f, 1) ∧ InTriangle P (1, d) (1, e) (f, 1) ∧
        InTriangle Q (c, 0) (1, e) (f, 1) ∧ InTriangle Q (c, 0) (1, d) (f, 1)) ∨
      (InTriangle Q (c, 0) (1, e) (f, 1) ∧ InTriangle Q (1, d) (1, e) (f, 1) ∧
        InTriangle P (c, 0) (1, e) (f, 1) ∧ InTriangle P (c, 0) (1, d) (f, 1)) := by
  sorry

/-! ### §10–11. The two upper exterior caps -/

/-- **Theorem 10** (`SEVEN_BOUNDARY_CAPS:Theorem10`). Under (1)–(2), a point in the nearer upper
exterior cap `conv{H, F, (0,1)}` gives a triangle of area less than `7/128` ("independently of the
position of the other free point": stated for the seven anchors and that point).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 942–972.
Uses: standard fact (two-term reciprocal Cauchy inequality). -/
theorem theorem10_core {a h b c f x : ℝ} (ha : 0 < a) (hah : a < h) (hh : h < 1)
    (hf : f ≤ 1 / 2) (hABC : 7 / 64 ≤ a * (c - b)) (hM : c - b ≤ 1 - 2 * (7 / 64))
    (hAHX : 7 / 64 ≤ x * (h - a)) (hq : 7 / 64 ≤ (1 - h) * (f - x)) (hx0 : 0 ≤ x) : False := by
  have hL : 0 < h - a := by linarith
  have hα : 0 < 1 - h := by linarith
  have hfx : 0 < f - x := by
    by_contra hneg; push Not at hneg
    nlinarith [mul_nonneg hα.le (sub_nonneg.2 hneg)]
  have hpq : 7 / 64 * (7 / 64) ≤ (x * (1 - h)) * ((f - x) * (h - a)) := by
    have := mul_le_mul hAHX hq (by norm_num) (by positivity)
    linarith
  have hp : 0 ≤ x * (1 - h) := by positivity
  have hq' : 0 ≤ (f - x) * (h - a) := by positivity
  have key : 7 / 64 * 2 ≤ x * (1 - h) + (f - x) * (h - a) := by
    by_contra hk; push Not at hk
    nlinarith [sq_nonneg (x * (1 - h) - (f - x) * (h - a))]
  -- `f (1 - a) ≥ 4s`, so `a ≤ 1/8`; but `a ≥ s/(1-2s) = 7/50`
  have h4 : 4 * (7 / 64) ≤ f * (1 - a) := by linarith
  have ha8 : a ≤ 1 / 8 := by nlinarith
  nlinarith

theorem theorem10 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {X : Point}
    (hX : InNearUpperCap h f X) :
    minTriangleArea (sevenConfig₁ a h b c d e f X) < 7 / 128 := by
  by_contra hcon
  push Not at hcon
  have H := anchorCosts hN.1 (hcon.trans minAnchor_of₁)
  obtain ⟨hb1, hc1, hM, -⟩ := H.basic hN.1
  have hABC := H.ABC
  clear H
  obtain ⟨⟨ha, hah, hh, hb, hbc, hc, hd, hde, he, hbf, hfc⟩, hf⟩ := hN
  obtain ⟨x, y⟩ := X
  obtain ⟨h1, h2, h3⟩ := hX
  simp only [sarea] at h1 h2 h3
  have hy1 : y ≤ 1 := by nlinarith
  have hx0 : 0 ≤ x := by nlinarith
  have hAHX : 7 / 64 ≤ x * (h - a) := by
    have := cost_neg (v := -(x * (h - a))) hcon 0 1 7 (by sa_eval)
      (by nlinarith [mul_nonneg hx0 (sub_nonneg.2 hah.le)])
    linarith
  have hHFX : 7 / 64 ≤ f * (y - h) - (1 - h) * x :=
    cost hcon 1 6 7 (by sa_eval) (by linarith)
  have hq : 7 / 64 ≤ (1 - h) * (f - x) := by
    nlinarith [mul_nonneg (show (0 : ℝ) ≤ f by linarith) (sub_nonneg.2 hy1)]
  exact theorem10_core ha hah hh hf hABC hM hAHX hq hx0

/-- **Theorem 11** (`SEVEN_BOUNDARY_CAPS:Theorem11`). Under (1)–(2), the far upper exterior cap
`conv{F, E, (1,1)}` does not contain both free points at minimum area at least `7/128` (support
triangle `DFK'` and the cells III–V of `TYPE_II.md` §1 give `Ω ≥ Ks > 13/16`, while
`Ω < 49/64`).
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 979–1036.
Uses: TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem,
SEVEN_BOUNDARY_CAPS:eq37. -/
theorem theorem11 {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f) {P Q : Point}
    (hP : InFarUpperCap e f P) (hQ : InFarUpperCap e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`). Under (1)–(2), with both free
points in the square and minimum area at least `7/128`, if the free points are not both strictly
inside the anchor heptagon, then exactly one of them lies strictly beyond `EF` in the far upper
cap (`FarCapPoint`) and the other strictly inside the heptagon.
`hand/SEVEN_BOUNDARY_CAPS.md`, lines 974–977 and 1038–1041.
Uses: SEVEN_BOUNDARY_CAPS:Theorem10, SEVEN_BOUNDARY_CAPS:Theorem11, GLOBAL_COMPLETION:Theorem2. -/
theorem claim_exterior_reduction {a h b c d e f : ℝ} (hN : SevenNormal a h b c d e f)
    {P Q : Point} (hPs : P ∈ unitSquare) (hQs : Q ∈ unitSquare)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hout : ¬ (InHeptagon a h b c d e f P ∧ InHeptagon a h b c d e f Q)) :
    (FarCapPoint e f P ∧ InHeptagon a h b c d e f Q) ∨
      (FarCapPoint e f Q ∧ InHeptagon a h b c d e f P) := by
  sorry

end Heilbronn.SevenBoundaryCaps
