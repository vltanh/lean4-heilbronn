module

public import Heilbronn.Nine.Setup.Families

/-! # Six points in a half-square, and the opposite-corner family C2

Family C2 consists of the configurations with the two opposite corners `A = (0,0)`, `E = (1,1)`
of the square, one further point on each side and three free points
(`c2Config`). Every member has minimum triangle area at most `7/128 < A₀` (`minTriangleArea_c2Config_le`,
`minTriangleArea_c2Config_lt_A₀`). The key step is `minTriangleArea_halfSquareConfig_le`, a bound for six points in a half-square; it is
also used for the support triangle (`CornerFamilies`), for quadrilateral hulls
(`QuadrilateralHull`) and in Type II. The determinant identities and inequalities are reused at
other thresholds by `OneCornerCompletion`, so they are stated here with an arbitrary positive
doubled threshold `σ`.

**Setting.** `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` with `0 < h, f < 1`, and two
points `P, Q` of the closed half-square `T = {0 ≤ x ≤ y ≤ 1}` (`halfSquare`);
`halfSquareConfig h f P Q = ![A, E, H, F, P, Q]`. Put `α = 1 - h`, `β = 1 - f`. For a point
`X = (x, x + w)`:

* `L(X) = det(F - A, X - A) = sarea A F X` (`lineL`), `K(X) = det(H - E, X - E) = sarea E H X`
  (`lineK`), `N(X) = det(F - H, X - H) = sarea H F X` (`lineN`);
* the pair-line sign of `V` is `d_V = det(Q - P, V - P) = sarea P Q V`;
* the five sign cells `CellI`, …, `CellV`, by the signs of `(L, K, N)`;
* the reflection `ρ(x, y) = (1 - y, 1 - x)` (`rho`), which swaps `A ↔ E`, `H ↔ F`,
  `h ↔ β` and cells I ↔ III, and fixes cell II.

"Every doubled triangle area is at least `σ`" is written `σ / 2 ≤ minTriangleArea (…)`.
The proof of `minTriangleArea_halfSquareConfig_le` assumes all areas `> 7/128` and works mostly with the doubled threshold
`s = 6/55 < 7/64` (written `3/55 ≤ minTriangleArea …`); for two points of cell II with `d_A, d_E`
of the same sign it uses `σ = 7/64` strictly (written `7/128 < minTriangleArea …`).

**Results.**

* `minTriangleArea_halfSquareConfig_le`: some triangle of the six points has area `≤ 7/128`.
* `minTriangleArea_c2Config_le`, `minTriangleArea_c2Config_lt_A₀`: every member of C2 has minimum area `≤ 7/128 < A₀`.
* One free point: `lineL_lineK_lineN_eq`, `anchor_area_bounds`, `lt_one_sub_of_anchor_bound`, `cs_poly`; the cells `lineN_identities`,
  `five_cells_cover`, `cellIV_anchor_bounds`, `cellV_ratio_bounds`, `three_cells_cover` (only cells I–III
  occur at `s = 6/55`); the reflection `rho_symmetry`.
* Two free points: `cell_pair_exclusions` (pairs I–III, I–I, III–III); the weighted identity
  `weighted_identity`, `weighted_identity_bounds`; pair I–II: `pair_I_II_signs`, `pair_I_II_bounds_of_dE_neg`, `inTriangle_HFQ_bounds`,
  `no_pair_I_II_of_dH_dE_pos`, `no_pair_I_II`; pair II–II with `d_A, d_E` of the same sign:
  `pair_II_II_same_sign_bounds`, `no_pair_II_II_same_sign`; with opposite signs: `cellII_bounds_of_dH_dE_pos`,
  `no_pair_II_II_opposite_sign`.

The cells are used only for points of `T` with all their areas positive. The sign `d_F > 0` in
`pair_I_II_signs` holds because `P` and `Q` lie in the convex quadrilateral `AEFH` (both are in `AEH` by
their cells). `cellII_bounds_of_dH_dE_pos` uses only `d_H, d_E > 0`, `P` in cell II, `Q ∈ T` and the area bounds.

**Proof organization.** Every statement is reduced to polynomial inequalities in the
coordinates. One-variable optimizations are replaced by explicit polynomial identities (e.g.
`c(2 - r) - r(1 - r)² = (r - r₀)²(r₁ - r)` in `anchor_ratio_le`); the sign `d_F > 0` in `pair_I_II_signs` comes from
the identity `d_F = (1 - y_P)(-L(Q)) + (1 - y_Q)L(P)`; the I–I bound `hf ≥ 5s` from the fan
identity (`five_le_of_two_inTriangle`); and the reflection `ρ` is an affine map of determinant
`-1` (`min_rho`). `minTriangleArea_c2Config_le` uses the closed half-squares, so diagonal points need no separate
case.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.OppositeCorners

/-! ### The half-square setting -/

/-- The closed upper half-square `T = {(x, y) : 0 ≤ x ≤ y ≤ 1}`. -/
def halfSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ p.2 ∧ p.2 ≤ 1}

/-- The four anchors `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` and one free point `X`:
the sub-configuration used by the single-point lemmas. -/
def anchorConfig (h f : ℝ) (X : Point) : Fin 5 → Point :=
  ![(0, 0), (1, 1), (0, h), (f, 1), X]

/-- The six points `A, E, H, F, P, Q`. -/
def halfSquareConfig (h f : ℝ) (P Q : Point) : Fin 6 → Point :=
  ![(0, 0), (1, 1), (0, h), (f, 1), P, Q]

/-- `L(X) = det(F - A, X - A)`. -/
def lineL (f : ℝ) (X : Point) : ℝ := sarea (0, 0) (f, 1) X

/-- `K(X) = det(H - E, X - E)`. -/
def lineK (h : ℝ) (X : Point) : ℝ := sarea (1, 1) (0, h) X

/-- `N(X) = det(F - H, X - H)`. -/
def lineN (h f : ℝ) (X : Point) : ℝ := sarea (0, h) (f, 1) X

/-- Cell I, signs `(L, K, N) = (+, +, -)`: inside both `AHF` and `AEH`. -/
def CellI (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ 0 < lineK h X ∧ lineN h f X < 0

/-- Cell II, signs `(-, +, -)`: inside both `AEF` and `AEH`. -/
def CellII (h f : ℝ) (X : Point) : Prop := lineL f X < 0 ∧ 0 < lineK h X ∧ lineN h f X < 0

/-- Cell III, signs `(-, -, -)`: inside both `EHF` and `AEF`. -/
def CellIII (h f : ℝ) (X : Point) : Prop := lineL f X < 0 ∧ lineK h X < 0 ∧ lineN h f X < 0

/-- Cell IV, signs `(+, -, -)`: inside both `AHF` and `EHF`. -/
def CellIV (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ lineK h X < 0 ∧ lineN h f X < 0

/-- Cell V, signs `(+, -, +)`: above the line `HF`. -/
def CellV (h f : ℝ) (X : Point) : Prop := 0 < lineL f X ∧ lineK h X < 0 ∧ 0 < lineN h f X

/-- The reflection `ρ(x, y) = (1 - y, 1 - x)` across `x + y = 1`. -/
def rho (p : Point) : Point := (1 - p.2, 1 - p.1)

/-! ### Helpers: doubled areas from a minimum-area bound, subdivision -/

/-- From `s / 2 ≤ minTriangleArea P`, every doubled area of three distinct indices is at
least `s` in absolute value. -/
theorem abs_sarea_ge {n : ℕ} {P : Fin n → Point} {s : ℝ} (h : s / 2 ≤ minTriangleArea P)
    (i j k : Fin n) (hij : i ≠ j := by decide) (hjk : j ≠ k := by decide)
    (hik : i ≠ k := by decide) : s ≤ |sarea (P i) (P j) (P k)| := by
  have := area_of_le_min h i j k hij hjk hik
  rw [triangleArea_eq] at this; linarith

theorem ge_of_abs_ge {s t : ℝ} (h : s ≤ |t|) (ht : 0 ≤ t) : s ≤ t := by
  rwa [abs_of_nonneg ht] at h

theorem le_neg_of_abs_ge {s t : ℝ} (h : s ≤ |t|) (ht : t ≤ 0) : t ≤ -s := by
  rw [abs_of_nonpos ht] at h; linarith

theorem ne_zero_of_abs_ge {s t : ℝ} (hs : 0 < s) (h : s ≤ |t|) : t ≠ 0 := by
  rintro rfl; simp at h; linarith

/-- A point strictly inside a counterclockwise triangle, with the three sub-triangles of doubled
area at least `s`: the triangle has doubled area at least `3s`. -/
theorem three_le_of_inTriangle {A B C X : Point} {s : ℝ} (hX : InTriangle X A B C)
    (h1 : s ≤ |sarea A B X|) (h2 : s ≤ |sarea B C X|) (h3 : s ≤ |sarea C A X|) :
    3 * s ≤ sarea A B C := by
  have := sarea_add_sarea_add_sarea A B C X
  rw [abs_of_pos hX.1] at h1; rw [abs_of_pos hX.2.1] at h2; rw [abs_of_pos hX.2.2] at h3
  linarith

/-- The fan identity: for any `X`, the signs of `Y` with respect to the three rays from `X` to
the vertices satisfy a linear relation with the barycentric weights of `X`. -/
theorem fan_identity (A B C X Y : Point) :
    sarea B C X * sarea X A Y + sarea C A X * sarea X B Y + sarea A B X * sarea X C Y = 0 := by
  unfold sarea; ring

/-- Two points strictly inside a counterclockwise triangle, all ten triangles of the five points
of doubled area at least `s > 0`: the triangle has doubled area at least `5s`. -/
theorem five_le_of_two_inTriangle {A B C X Y : Point} {s : ℝ} (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y]) (hX : InTriangle X A B C)
    (hY : InTriangle Y A B C) : 5 * s ≤ sarea A B C := by
  have aABY : s ≤ |sarea A B Y| := abs_sarea_ge hmin 0 1 4
  have aBCY : s ≤ |sarea B C Y| := abs_sarea_ge hmin 1 2 4
  have aCAY : s ≤ |sarea C A Y| := abs_sarea_ge hmin 2 0 4
  have aABX : s ≤ |sarea A B X| := abs_sarea_ge hmin 0 1 3
  have aBCX : s ≤ |sarea B C X| := abs_sarea_ge hmin 1 2 3
  have aCAX : s ≤ |sarea C A X| := abs_sarea_ge hmin 2 0 3
  have aXAY : s ≤ |sarea X A Y| := abs_sarea_ge hmin 3 0 4
  have aXBY : s ≤ |sarea X B Y| := abs_sarea_ge hmin 3 1 4
  have aXCY : s ≤ |sarea X C Y| := abs_sarea_ge hmin 3 2 4
  obtain ⟨x1, x2, x3⟩ := hX
  obtain ⟨y1, y2, y3⟩ := hY
  rw [abs_of_pos x1] at aABX; rw [abs_of_pos x2] at aBCX; rw [abs_of_pos x3] at aCAX
  rw [abs_of_pos y1] at aABY; rw [abs_of_pos y2] at aBCY; rw [abs_of_pos y3] at aCAY
  have hsum := sarea_add_sarea_add_sarea A B C X
  have fan := fan_identity A B C X Y
  have s1 := sarea_add_sarea_add_sarea A B X Y
  have s2 := sarea_add_sarea_add_sarea B C X Y
  have s3 := sarea_add_sarea_add_sarea C A X Y
  have e1 : sarea B X Y = -sarea X B Y := sarea_swap₁₂ X B Y
  have e2 : sarea C X Y = -sarea X C Y := sarea_swap₁₂ X C Y
  have e3 : sarea A X Y = -sarea X A Y := sarea_swap₁₂ X A Y
  rcases le_abs'.1 aXAY with u | u <;> rcases le_abs'.1 aXBY with v | v <;>
    rcases le_abs'.1 aXCY with w | w
  · nlinarith
  · linarith
  · linarith
  · linarith
  · linarith
  · linarith
  · linarith
  · nlinarith

/-- `A, F, H` together with two points, as a sub-configuration of the six points. -/
theorem min_sub {n : ℕ} (P : Fin n → Point) (i j k l m : Fin n)
    (hinj : Function.Injective ![i, j, k, l, m]) :
    minTriangleArea P ≤ minTriangleArea ![P i, P j, P k, P l, P m] := by
  have := le_min_comp (by norm_num) P hinj
  convert this using 2
  funext x; fin_cases x <;> rfl

/-- The sub-configuration of the anchors and one free point. -/
theorem min_anchor_le (h f : ℝ) (P Q : Point) :
    minTriangleArea (halfSquareConfig h f P Q) ≤ minTriangleArea (anchorConfig h f P) ∧
      minTriangleArea (halfSquareConfig h f P Q) ≤ minTriangleArea (anchorConfig h f Q) := by
  constructor
  · exact min_sub (halfSquareConfig h f P Q) 0 1 2 3 4 (by decide)
  · exact min_sub (halfSquareConfig h f P Q) 0 1 2 3 5 (by decide)

/-- The polynomial form of the Cauchy–Schwarz bound `√(hf) + √(αβ) ≤ 1`: if `x ≤ hf` and
`y ≤ αβ` with `y ≥ 0` and `0 ≤ h, f ≤ 1`, then `x + y ≤ 1` and `4xy ≤ (1 - x - y)²`. -/
theorem cs_poly {h f x y : ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1) (hf : 0 ≤ f) (hf1 : f ≤ 1)
    (hy : 0 ≤ y) (hxh : x ≤ h * f) (hyh : y ≤ (1 - h) * (1 - f)) :
    x + y ≤ 1 ∧ 4 * x * y ≤ (1 - x - y) ^ 2 := by
  have hc : 0 ≤ h * (1 - f) + f * (1 - h) := by
    have := mul_nonneg hh (sub_nonneg.2 hf1); have := mul_nonneg hf (sub_nonneg.2 hh1); linarith
  have e : 1 - h * f - (1 - h) * (1 - f) = h * (1 - f) + f * (1 - h) := by ring
  refine ⟨by linarith, ?_⟩
  have h1 : 4 * x * y ≤ 4 * (h * f) * ((1 - h) * (1 - f)) := by
    have := mul_le_mul hxh hyh hy (mul_nonneg hh hf); nlinarith
  have h2 : 4 * (h * f) * ((1 - h) * (1 - f)) ≤ (h * (1 - f) + f * (1 - h)) ^ 2 := by
    nlinarith [sq_nonneg (h - f)]
  have h3 : (h * (1 - f) + f * (1 - h)) ^ 2 ≤ (1 - x - y) ^ 2 := by
    apply pow_le_pow_left₀ hc; linarith
  linarith

/-! ### Coordinates, thresholds and elementary area identities -/

/-- `L`, `K`, `N` in coordinates: with `X = (x, x + w)` and `β = 1 - f`, `L = fw - βx`,
`K = h(1 - x) - w`, `N = fw + (h - β)x - fh`. -/
theorem lineL_lineK_lineN_eq (h f : ℝ) (X : Point) :
    lineL f X = f * (X.2 - X.1) - (1 - f) * X.1 ∧
    lineK h X = h * (1 - X.1) - (X.2 - X.1) ∧
    lineN h f X = f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h := by
  simp only [lineL, lineK, lineN, sarea]
  refine ⟨by ring, by ring, by ring⟩

set_option linter.unusedVariables false in
/-- The anchor areas at a doubled threshold `s`: for `X ∈ T` with every doubled area among
`A, E, H, F, X` at least `s > 0`, `w ≥ s` (from `AEX`), `hx ≥ s` (`AHX`), `β(1 - x - w) ≥ s`
(`EFX`), `|L|, |K|, |N| ≥ s`, and the anchor bounds `hf ≥ s`, `αβ ≥ s`. -/
theorem anchor_area_bounds (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) :
    s ≤ X.2 - X.1 ∧ s ≤ h * X.1 ∧ s ≤ (1 - f) * (1 - X.2) ∧
    s ≤ |lineL f X| ∧ s ≤ |lineK h X| ∧ s ≤ |lineN h f X| ∧
    s ≤ h * f ∧ s ≤ (1 - h) * (1 - f) := by
  obtain ⟨hx0, hxy, hy1⟩ := hX
  have a1 : s ≤ |sarea (0, 0) (1, 1) X| := abs_sarea_ge hmin 0 1 4
  have a2 : s ≤ |sarea (0, 0) (0, h) X| := abs_sarea_ge hmin 0 2 4
  have a3 : s ≤ |sarea (1, 1) (f, 1) X| := abs_sarea_ge hmin 1 3 4
  have aL : s ≤ |sarea (0, 0) (f, 1) X| := abs_sarea_ge hmin 0 3 4
  have aK : s ≤ |sarea (1, 1) (0, h) X| := abs_sarea_ge hmin 1 2 4
  have aN : s ≤ |sarea (0, h) (f, 1) X| := abs_sarea_ge hmin 2 3 4
  have a5 : s ≤ |sarea (0, 0) (0, h) (f, 1)| := abs_sarea_ge hmin 0 2 3
  have a6 : s ≤ |sarea (1, 1) (0, h) (f, 1)| := abs_sarea_ge hmin 1 2 3
  have e1 : sarea (0, 0) (1, 1) X = X.2 - X.1 := by simp only [sarea]; ring
  have e2 : sarea (0, 0) (0, h) X = -(h * X.1) := by simp only [sarea]; ring
  have e3 : sarea (1, 1) (f, 1) X = (1 - f) * (1 - X.2) := by simp only [sarea]; ring
  have e5 : sarea (0, 0) (0, h) (f, 1) = -(h * f) := by simp only [sarea]; ring
  have e6 : sarea (1, 1) (0, h) (f, 1) = -((1 - h) * (1 - f)) := by simp only [sarea]; ring
  rw [e1] at a1; rw [e2, abs_neg] at a2; rw [e3] at a3; rw [e5, abs_neg] at a5
  rw [e6, abs_neg] at a6
  refine ⟨ge_of_abs_ge a1 (by linarith), ge_of_abs_ge a2 (by positivity),
    ge_of_abs_ge a3 (mul_nonneg (by linarith) (by linarith)), aL, aK, aN,
    ge_of_abs_ge a5 (by positivity), ge_of_abs_ge a6 (mul_nonneg (by linarith) (by linarith))⟩

/-- The anchor bound `αβ ≥ s` with `β < 1` gives `h < 1 - s` (at `s = 6/55`, `h < 49/55`). -/
theorem lt_one_sub_of_anchor_bound (h f s : ℝ) (hh1 : h < 1) (hf : 0 < f) (hs : s ≤ (1 - h) * (1 - f)) :
    h < 1 - s := by
  nlinarith

/-! ### Five possible point cells reduce to three -/

/-- Two expressions of `N`: `N = -fK - αβx` and `N = αL - hf(1 - x - w)`, for every point
`X = (x, x + w)`. -/
theorem lineN_identities (h f : ℝ) (X : Point) :
    lineN h f X = -f * lineK h X - (1 - h) * (1 - f) * X.1 ∧
    lineN h f X = (1 - h) * lineL f X - h * f * (1 - X.2) := by
  simp only [lineN, lineK, lineL, sarea]
  exact ⟨by ring, by ring⟩

/-- The five-cell classification at a doubled threshold `s > 0`: by `lineN_identities`, `N > 0` forces
`L > 0` and `K < 0`, so a point of `T` all of whose doubled areas with the anchors are at least
`s` lies in one of the cells I–V. -/
theorem five_cells_cover (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f)
    (hf1 : f < 1) (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) :
    CellI h f X ∨ CellII h f X ∨ CellIII h f X ∨ CellIV h f X ∨ CellV h f X := by
  obtain ⟨-, hxs, hys, aL, aK, aN, -, -⟩ := anchor_area_bounds h f s hh hh1 hf hf1 hs X hX hmin
  obtain ⟨n1, n2⟩ := lineN_identities h f X
  have q1 : 0 < (1 - h) * (1 - f) * X.1 := mul_pos (mul_pos (by linarith) (by linarith))
    (by nlinarith)
  have q2 : 0 < h * f * (1 - X.2) := mul_pos (mul_pos hh hf) (by nlinarith)
  have hL0 := ne_zero_of_abs_ge hs aL
  have hK0 := ne_zero_of_abs_ge hs aK
  have hN0 := ne_zero_of_abs_ge hs aN
  simp only [CellI, CellII, CellIII, CellIV, CellV]
  rcases lt_or_gt_of_ne hN0 with hN | hN
  · rcases lt_or_gt_of_ne hL0 with hL | hL <;> rcases lt_or_gt_of_ne hK0 with hK | hK
    · exact Or.inr (Or.inr (Or.inl ⟨hL, hK, hN⟩))
    · exact Or.inr (Or.inl ⟨hL, hK, hN⟩)
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨hL, hK, hN⟩)))
    · exact Or.inl ⟨hL, hK, hN⟩
  · refine Or.inr (Or.inr (Or.inr (Or.inr ⟨?_, ?_, hN⟩)))
    · nlinarith
    · nlinarith

/-- Cell IV at a doubled threshold `s > 0`: a point of cell IV subdivides both `AHF` and
`EHF`, so `hf ≥ 3s` and `αβ ≥ 3s`. -/
theorem cellIV_anchor_bounds (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) (X : Point) (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) (hIV : CellIV h f X) :
    3 * s ≤ h * f ∧ 3 * s ≤ (1 - h) * (1 - f) := by
  obtain ⟨hL, hK, hN⟩ := hIV
  obtain ⟨-, hxs, hys, -, -, -, -, -⟩ := anchor_area_bounds h f s hh hh1 hf hf1 hs X hX hmin
  have a1 : s ≤ |sarea (0, 0) (f, 1) X| := abs_sarea_ge hmin 0 3 4
  have a2 : s ≤ |sarea (f, 1) (0, h) X| := abs_sarea_ge hmin 3 2 4
  have a3 : s ≤ |sarea (0, h) (0, 0) X| := abs_sarea_ge hmin 2 0 4
  have a4 : s ≤ |sarea (1, 1) (f, 1) X| := abs_sarea_ge hmin 1 3 4
  have a5 : s ≤ |sarea (0, h) (1, 1) X| := abs_sarea_ge hmin 2 1 4
  have e2 : sarea (0, h) (0, 0) X = h * X.1 := by simp only [sarea]; ring
  have e3 : sarea (1, 1) (f, 1) X = (1 - f) * (1 - X.2) := by simp only [sarea]; ring
  have e4 : sarea (f, 1) (0, h) X = -lineN h f X := by simp only [lineN, sarea]; ring
  have e6 : sarea (0, h) (1, 1) X = -lineK h X := by simp only [lineK, sarea]; ring
  have t1 : InTriangle X (0, 0) (f, 1) (0, h) := by
    refine ⟨hL, ?_, ?_⟩
    · rw [e4]; linarith
    · rw [e2]; linarith
  have t2 : InTriangle X (1, 1) (f, 1) (0, h) := by
    refine ⟨?_, ?_, ?_⟩
    · rw [e3]; linarith
    · rw [e4]; linarith
    · rw [e6]; linarith
  have r1 := three_le_of_inTriangle t1 a1 a2 a3
  have r2 := three_le_of_inTriangle t2 a4 a2 a5
  have f1 : sarea (0, 0) (f, 1) (0, h) = h * f := by simp only [sarea]; ring
  have f2 : sarea (1, 1) (f, 1) (0, h) = (1 - h) * (1 - f) := by simp only [sarea]; ring
  rw [f1] at r1; rw [f2] at r2
  exact ⟨r1, r2⟩

/-- For all `0 < h, f < 1`, with `β = 1 - f` and `D = h + β - hβ`,
`hβ(1 - h)(1 - β)/D ≤ (5√5 - 11)/2`. With `r = √(hβ)`, the left side is at most
`r(1 - r)²/(2 - r)`, and a polynomial identity bounds this by `(5√5 - 11)/2`. -/
theorem anchor_ratio_le (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1) :
    h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ≤ (5 * Real.sqrt 5 - 11) / 2 := by
  have hβ : 0 < 1 - f := by linarith
  have hD : 0 < h + (1 - f) - h * (1 - f) := by nlinarith
  set t := Real.sqrt 5 with ht
  have ht2 : t ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have ht0 : 0 ≤ t := Real.sqrt_nonneg 5
  have htl : 2.2 < t := by nlinarith
  rw [div_le_iff₀ hD]
  set r := Real.sqrt (h * (1 - f)) with hr
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hr2 : r ^ 2 = h * (1 - f) := Real.sq_sqrt (by positivity)
  have hS : 2 * r ≤ h + (1 - f) := by
    have : (2 * r) ^ 2 ≤ (h + (1 - f)) ^ 2 := by nlinarith [sq_nonneg (h - (1 - f))]
    exact (pow_le_pow_iff_left₀ (by positivity) (by linarith) (by norm_num)).1 this
  have hr1 : r ≤ 1 := by nlinarith
  have key : (5 * t - 11) / 2 * (2 - r) - r * (1 - r) ^ 2 =
      (r - (3 - t) / 2) ^ 2 * (t - 1 - r) := by
    linear_combination (-3 * r / 4 - t / 4 + 7 / 4) * ht2
  have key2 : r * (1 - r) ^ 2 ≤ (5 * t - 11) / 2 * (2 - r) := by
    have := mul_nonneg (sq_nonneg (r - (3 - t) / 2)) (by linarith : (0 : ℝ) ≤ t - 1 - r)
    linarith
  have l1 : h * (1 - f) * (1 - h) * f = r ^ 2 * (1 + r ^ 2 - (h + (1 - f))) := by
    rw [hr2]; ring
  have l2 : r ^ 2 * (1 + r ^ 2 - (h + (1 - f))) ≤ r ^ 2 * (1 - r) ^ 2 := by
    apply mul_le_mul_of_nonneg_left _ (sq_nonneg r); nlinarith
  have l3 : r ^ 2 * (1 - r) ^ 2 ≤ r * ((5 * t - 11) / 2 * (2 - r)) := by
    have := mul_le_mul_of_nonneg_left key2 hr0
    have e : r ^ 2 * (1 - r) ^ 2 = r * (r * (1 - r) ^ 2) := by ring
    rw [e]; exact this
  have hc : 0 ≤ (5 * t - 11) / 2 := by linarith
  have l4 : r * ((5 * t - 11) / 2 * (2 - r)) ≤
      (5 * t - 11) / 2 * (h + (1 - f) - h * (1 - f)) := by
    rw [← hr2]; linarith [mul_le_mul_of_nonneg_left hS hc]
  linarith

/-- Cell V at a doubled threshold `s > 0`: with `β = 1 - f` and `D = h + β - hβ`,
`s ≤ hβ(1 - h)(1 - β)/D ≤ (5√5 - 11)/2 < 1/10`. The first inequality is the area bound; the
others hold for all `0 < h, f < 1` (`anchor_ratio_le`). -/
theorem cellV_ratio_bounds (h f s : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1) (hs : 0 < s)
    (X : Point) (hX : X ∈ halfSquare) (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X))
    (hV : CellV h f X) :
    s ≤ h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ∧
    h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ≤ (5 * Real.sqrt 5 - 11) / 2 ∧
    (5 * Real.sqrt 5 - 11) / 2 < 1 / 10 := by
  obtain ⟨-, hxs, hys, -, -, aN, -, -⟩ := anchor_area_bounds h f s hh hh1 hf hf1 hs X hX hmin
  have hNs : s ≤ lineN h f X := ge_of_abs_ge aN hV.2.2.le
  have hN := (lineL_lineK_lineN_eq h f X).2.2
  have hβ : 0 < 1 - f := by linarith
  have hα : 0 < 1 - h := by linarith
  have hD : 0 < h + (1 - f) - h * (1 - f) := by nlinarith
  set t := Real.sqrt 5 with ht
  have ht2 : t ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have ht0 : 0 ≤ t := Real.sqrt_nonneg 5
  have htl : 2.2 < t := by nlinarith
  have htu : t < 2.24 := by nlinarith
  refine ⟨?_, ?_, by linarith⟩
  · rw [le_div_iff₀ hD]
    have k1 := mul_le_mul_of_nonneg_left hNs (mul_nonneg hh.le hβ.le)
    have k2 := mul_le_mul_of_nonneg_left hxs (mul_nonneg hα.le hβ.le)
    have k3 := mul_le_mul_of_nonneg_left hys (mul_nonneg hf.le hh.le)
    rw [hN] at k1
    nlinarith
  · exact anchor_ratio_le h f hh hh1 hf hf1

/-- At the doubled threshold `s = 6/55`, cells IV and V are empty: a point of `T` with all
doubled anchor areas at least `6/55` is in cell I, II or III. -/
theorem three_cells_cover (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (X : Point) (hX : X ∈ halfSquare) (hmin : 3 / 55 ≤ minTriangleArea (anchorConfig h f X)) :
    CellI h f X ∨ CellII h f X ∨ CellIII h f X := by
  have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (anchorConfig h f X) := by linarith
  rcases five_cells_cover h f (6 / 55) hh hh1 hf hf1 (by norm_num) X hX hmin' with
    h1 | h1 | h1 | h1 | h1
  · exact Or.inl h1
  · exact Or.inr (Or.inl h1)
  · exact Or.inr (Or.inr h1)
  · exfalso
    obtain ⟨b1, b2⟩ := cellIV_anchor_bounds h f (6 / 55) hh hh1 hf hf1 (by norm_num) X hX hmin' h1
    have := (cs_poly hh.le hh1.le hf.le hf1.le (by norm_num) b1 b2).2
    norm_num at this
  · exfalso
    obtain ⟨b1, b2, b3⟩ := cellV_ratio_bounds h f (6 / 55) hh hh1 hf hf1 (by norm_num) X hX hmin' h1
    linarith

/-- The reflection `ρ` is the affine map `(x, y) ↦ (1 - y, 1 - x)` of determinant `-1`. -/
theorem rho_eq_affineMap (p : Point) : rho p = affineMap 0 (-1) (-1) 0 1 1 p := by
  simp only [rho, affineMap]; ext <;> simp <;> ring

theorem sarea_rho (p q r : Point) : sarea (rho p) (rho q) (rho r) = -sarea p q r := by
  simp only [rho, sarea]; ring

/-- `ρ` keeps the minimum area of the six points, with `h ↔ β`. -/
theorem min_rho (h f : ℝ) (P Q : Point) :
    minTriangleArea (halfSquareConfig (1 - f) (1 - h) (rho P) (rho Q)) =
      minTriangleArea (halfSquareConfig h f P Q) := by
  have e : halfSquareConfig (1 - f) (1 - h) (rho P) (rho Q) =
      (affineMap 0 (-1) (-1) 0 1 1 ∘ halfSquareConfig h f P Q) ∘
        (Equiv.swap (0 : Fin 6) 1 * Equiv.swap (2 : Fin 6) 3) := by
    funext i
    simp only [Function.comp, ← rho_eq_affineMap]
    fin_cases i <;> simp [halfSquareConfig, rho, Equiv.swap_apply_of_ne_of_ne]
  rw [e, minTriangleArea_comp_perm, minTriangleArea_affineMap]
  norm_num

/-- The reflection `ρ(x, y) = (1 - y, 1 - x)` keeps `T`, maps the setting with parameters
`(h, f)` to the one with `(1 - f, 1 - h)` (so `h ↔ β`), with `L' (ρX) = -K(X)`, `K'(ρX) = -L(X)`,
`N'(ρX) = N(X)`; it swaps cells I and III, fixes cell II and keeps the minimum area of the six
points. -/
theorem rho_symmetry (h f : ℝ) (X P Q : Point) :
    (rho X ∈ halfSquare ↔ X ∈ halfSquare) ∧
    lineL (1 - h) (rho X) = -lineK h X ∧ lineK (1 - f) (rho X) = -lineL f X ∧
    lineN (1 - f) (1 - h) (rho X) = lineN h f X ∧
    (CellI h f X ↔ CellIII (1 - f) (1 - h) (rho X)) ∧
    (CellIII h f X ↔ CellI (1 - f) (1 - h) (rho X)) ∧
    (CellII h f X ↔ CellII (1 - f) (1 - h) (rho X)) ∧
    minTriangleArea (halfSquareConfig (1 - f) (1 - h) (rho P) (rho Q)) =
      minTriangleArea (halfSquareConfig h f P Q) := by
  have eL : lineL (1 - h) (rho X) = -lineK h X := by simp only [lineL, lineK, rho, sarea]; ring
  have eK : lineK (1 - f) (rho X) = -lineL f X := by simp only [lineL, lineK, rho, sarea]; ring
  have eN : lineN (1 - f) (1 - h) (rho X) = lineN h f X := by
    simp only [lineN, rho, sarea]; ring
  refine ⟨?_, eL, eK, eN, ?_, ?_, ?_, ?_⟩
  · simp only [halfSquare, rho, Set.mem_ofPred_eq]
    constructor <;> rintro ⟨a, b, c⟩ <;> refine ⟨?_, ?_, ?_⟩ <;> linarith
  · simp only [CellI, CellIII, eL, eK, eN]
    constructor <;> rintro ⟨a, b, c⟩ <;> refine ⟨?_, ?_, ?_⟩ <;> linarith
  · simp only [CellI, CellIII, eL, eK, eN]
    constructor <;> rintro ⟨a, b, c⟩ <;> refine ⟨?_, ?_, ?_⟩ <;> linarith
  · simp only [CellII, eL, eK, eN]
    constructor <;> rintro ⟨a, b, c⟩ <;> refine ⟨?_, ?_, ?_⟩ <;> linarith
  · exact min_rho h f P Q

/-! ### Helpers for pairs of free points -/

theorem inTri_AFH {h f s : ℝ} (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) {X : Point} (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) (hL : 0 < lineL f X)
    (hN : lineN h f X < 0) : InTriangle X (0, 0) (f, 1) (0, h) := by
  obtain ⟨-, hxs, -, -, -, -, -, -⟩ := anchor_area_bounds h f s hh hh1 hf hf1 hs X hX hmin
  have e2 : sarea (0, h) (0, 0) X = h * X.1 := by simp only [sarea]; ring
  have e4 : sarea (f, 1) (0, h) X = -lineN h f X := by simp only [lineN, sarea]; ring
  refine ⟨hL, ?_, ?_⟩
  · rw [e4]; linarith
  · rw [e2]; linarith

theorem inTri_EFH {h f s : ℝ} (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hs : 0 < s) {X : Point} (hX : X ∈ halfSquare)
    (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X)) (hK : lineK h X < 0)
    (hN : lineN h f X < 0) : InTriangle X (1, 1) (f, 1) (0, h) := by
  obtain ⟨-, -, hys, -, -, -, -, -⟩ := anchor_area_bounds h f s hh hh1 hf hf1 hs X hX hmin
  have e3 : sarea (1, 1) (f, 1) X = (1 - f) * (1 - X.2) := by simp only [sarea]; ring
  have e4 : sarea (f, 1) (0, h) X = -lineN h f X := by simp only [lineN, sarea]; ring
  have e6 : sarea (0, h) (1, 1) X = -lineK h X := by simp only [lineK, sarea]; ring
  refine ⟨?_, ?_, ?_⟩
  · rw [e3]; linarith
  · rw [e4]; linarith
  · rw [e6]; linarith

theorem AFH_bound {h f s : ℝ} {X : Point} (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X))
    (hX : InTriangle X (0, 0) (f, 1) (0, h)) : 3 * s ≤ h * f := by
  have a1 : s ≤ |sarea (0, 0) (f, 1) X| := abs_sarea_ge hmin 0 3 4
  have a2 : s ≤ |sarea (f, 1) (0, h) X| := abs_sarea_ge hmin 3 2 4
  have a3 : s ≤ |sarea (0, h) (0, 0) X| := abs_sarea_ge hmin 2 0 4
  have := three_le_of_inTriangle hX a1 a2 a3
  have f1 : sarea (0, 0) (f, 1) (0, h) = h * f := by simp only [sarea]; ring
  linarith

theorem EFH_bound {h f s : ℝ} {X : Point} (hmin : s / 2 ≤ minTriangleArea (anchorConfig h f X))
    (hX : InTriangle X (1, 1) (f, 1) (0, h)) : 3 * s ≤ (1 - h) * (1 - f) := by
  have a1 : s ≤ |sarea (1, 1) (f, 1) X| := abs_sarea_ge hmin 1 3 4
  have a2 : s ≤ |sarea (f, 1) (0, h) X| := abs_sarea_ge hmin 3 2 4
  have a3 : s ≤ |sarea (0, h) (1, 1) X| := abs_sarea_ge hmin 2 1 4
  have := three_le_of_inTriangle hX a1 a2 a3
  have f1 : sarea (1, 1) (f, 1) (0, h) = (1 - h) * (1 - f) := by simp only [sarea]; ring
  linarith

/-! ### Only pairs I–II and II–II remain -/

/-- At `s = 6/55` the pairs I–III, I–I and III–III are impossible: I–III gives `hf, αβ ≥ 3s`,
I–I gives `hf ≥ 5s` and III–III gives `αβ ≥ 5s`, each contradicting the Cauchy–Schwarz bound
`cs_poly`. -/
theorem cell_pair_exclusions (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q)) :
    ¬ (CellI h f P ∧ CellIII h f Q) ∧ ¬ (CellI h f P ∧ CellI h f Q) ∧
      ¬ (CellIII h f P ∧ CellIII h f Q) := by
  have hs : (0 : ℝ) < 6 / 55 := by norm_num
  have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  have hP' := hmin'.trans (min_anchor_le h f P Q).1
  have hQ' := hmin'.trans (min_anchor_le h f P Q).2
  obtain ⟨-, -, -, -, -, -, hfs, hab⟩ := anchor_area_bounds h f _ hh hh1 hf hf1 hs P hP hP'
  refine ⟨?_, ?_, ?_⟩
  · rintro ⟨hPI, hQIII⟩
    have b1 := AFH_bound hP' (inTri_AFH hh hh1 hf hf1 hs hP hP' hPI.1 hPI.2.2)
    have b2 := EFH_bound hQ' (inTri_EFH hh hh1 hf hf1 hs hQ hQ' hQIII.2.1 hQIII.2.2)
    have := (cs_poly hh.le hh1.le hf.le hf1.le (by norm_num) b1 b2).2
    norm_num at this
  · rintro ⟨hPI, hQI⟩
    have t1 := inTri_AFH hh hh1 hf hf1 hs hP hP' hPI.1 hPI.2.2
    have t2 := inTri_AFH hh hh1 hf hf1 hs hQ hQ' hQI.1 hQI.2.2
    have m5 : (6 / 55 : ℝ) / 2 ≤ minTriangleArea ![(0, 0), (f, 1), (0, h), P, Q] :=
      hmin'.trans (min_sub _ 0 3 2 4 5 (by decide))
    have b := five_le_of_two_inTriangle hs m5 t1 t2
    have f1 : sarea (0, 0) (f, 1) (0, h) = h * f := by simp only [sarea]; ring
    rw [f1] at b
    have := (cs_poly hh.le hh1.le hf.le hf1.le (by norm_num) b hab).2
    norm_num at this
  · rintro ⟨hPIII, hQIII⟩
    have t1 := inTri_EFH hh hh1 hf hf1 hs hP hP' hPIII.2.1 hPIII.2.2
    have t2 := inTri_EFH hh hh1 hf hf1 hs hQ hQ' hQIII.2.1 hQIII.2.2
    have m5 : (6 / 55 : ℝ) / 2 ≤ minTriangleArea ![(1, 1), (f, 1), (0, h), P, Q] :=
      hmin'.trans (min_sub _ 1 3 2 4 5 (by decide))
    have b := five_le_of_two_inTriangle hs m5 t1 t2
    have f1 : sarea (1, 1) (f, 1) (0, h) = (1 - h) * (1 - f) := by simp only [sarea]; ring
    rw [f1] at b
    have := (cs_poly hh.le hh1.le hf.le hf1.le (by norm_num) hfs b).2
    norm_num at this

/-! ### A weighted area identity -/

/-- With `P = (p, p + w)` and `Q = (q, q + v)`: `d_H = (h - w)q + pv - hp`,
`d_E = w(1 - q) + (p - 1)v` and `w d_H + (h - w) d_E = K(P)(w - v)`. They hold for all points. -/
theorem weighted_identity (h : ℝ) (P Q : Point) :
    sarea P Q (0, h) = (h - (P.2 - P.1)) * Q.1 + P.1 * (Q.2 - Q.1) - h * P.1 ∧
    sarea P Q (1, 1) = (P.2 - P.1) * (1 - Q.1) + (P.1 - 1) * (Q.2 - Q.1) ∧
    (P.2 - P.1) * sarea P Q (0, h) + (h - (P.2 - P.1)) * sarea P Q (1, 1) =
      lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) := by
  simp only [lineK, sarea]
  exact ⟨by ring, by ring, by ring⟩

/-- The weighted identity `weighted_identity` at a positive threshold `σ`: if `w > 0`, `K(P) ≥ σ`,
`d_H, d_E ≥ σ`, `v ≥ σ` and `hp ≥ σ`, then `hσ ≤ K(P)(w - v) ≤ (h - σ - w)(w - σ)`, hence
`hσ ≤ (h - 2σ)²/4` and `h ≥ (4 + 2√3)σ`. -/
theorem weighted_identity_bounds (h σ : ℝ) (hσ : 0 < σ) (P Q : Point) (hw : 0 < P.2 - P.1)
    (hK : σ ≤ lineK h P) (hdH : σ ≤ sarea P Q (0, h)) (hdE : σ ≤ sarea P Q (1, 1))
    (hv : σ ≤ Q.2 - Q.1) (hp : σ ≤ h * P.1) :
    h * σ ≤ lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) ∧
    lineK h P * ((P.2 - P.1) - (Q.2 - Q.1)) ≤ (h - σ - (P.2 - P.1)) * ((P.2 - P.1) - σ) ∧
    h * σ ≤ (h - 2 * σ) ^ 2 / 4 ∧ (4 + 2 * Real.sqrt 3) * σ ≤ h := by
  obtain ⟨-, -, e3⟩ := weighted_identity h P Q
  have hK' : lineK h P = h * (1 - P.1) - (P.2 - P.1) := (lineL_lineK_lineN_eq h 0 P).2.1
  set w := P.2 - P.1 with hwdef
  set v := Q.2 - Q.1 with hvdef
  set k := lineK h P with hkdef
  have hhw : 2 * σ ≤ h - w := by linarith
  have hhw0 : 0 ≤ h - w := by linarith
  have ha : h * σ ≤ k * (w - v) := by
    rw [← e3]
    have := mul_le_mul_of_nonneg_left hdH hw.le
    have := mul_le_mul_of_nonneg_left hdE hhw0
    linarith
  have hk0 : 0 < k := by linarith
  have hwv : 0 < w - v := by
    by_contra hc; push Not at hc
    have := mul_le_mul_of_nonneg_left hc hk0.le
    nlinarith
  have hws : 0 ≤ w - σ := by linarith
  have hkb : k ≤ h - σ - w := by linarith
  have hb : k * (w - v) ≤ (h - σ - w) * (w - σ) := by
    calc k * (w - v) ≤ k * (w - σ) := mul_le_mul_of_nonneg_left (by linarith) hk0.le
      _ ≤ (h - σ - w) * (w - σ) := mul_le_mul_of_nonneg_right hkb hws
  have hc : h * σ ≤ (h - 2 * σ) ^ 2 / 4 := by nlinarith [sq_nonneg (h - σ - w - (w - σ))]
  refine ⟨ha, hb, hc, ?_⟩
  set t := Real.sqrt 3 with ht
  have ht2 : t ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have ht0 : 0 ≤ t := Real.sqrt_nonneg 3
  have ht1 : 1 < t := by nlinarith
  by_contra hcon; push Not at hcon
  have p1 : 0 < h - (4 - 2 * t) * σ := by nlinarith
  have p2 := mul_neg_of_neg_of_pos (by linarith : h - (4 + 2 * t) * σ < 0) p1
  have e : (h - (4 + 2 * t) * σ) * (h - (4 - 2 * t) * σ) = h ^ 2 - 8 * h * σ + 4 * σ ^ 2 := by
    linear_combination (-4 * σ ^ 2) * ht2
  nlinarith

/-! ### Pair I–II -/

/-- Pair I–II at a doubled threshold `σ > 0`: for `P` in cell I and `Q` in cell II,
`d_A < 0 < d_F`, and `E, H` are not both on the negative side of `PQ`. -/
theorem pair_I_II_signs (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1) (hσ : 0 < σ)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q) :
    sarea P Q (0, 0) < 0 ∧ 0 < sarea P Q (f, 1) ∧
      ¬ (sarea P Q (0, h) < 0 ∧ sarea P Q (1, 1) < 0) := by
  have hmP := hmin.trans (min_anchor_le h f P Q).1
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  obtain ⟨hPw, hPx, hPy, -, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ P hP hmP
  obtain ⟨hQw, -, hQy, -, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ Q hQ hmQ
  obtain ⟨hP0, hPxy, hP1⟩ := hP
  obtain ⟨hQ0, hQxy, hQ1⟩ := hQ
  have LP : 0 < sarea (0, 0) (f, 1) P := hPI.1
  have KP : 0 < sarea (1, 1) (0, h) P := hPI.2.1
  have LQ : sarea (0, 0) (f, 1) Q < 0 := hQII.1
  have eA : sarea P Q (0, 0) =
      Q.2 * (-sarea (0, 0) (f, 1) P) + P.2 * sarea (0, 0) (f, 1) Q := by
    simp only [sarea]; ring
  have eF : sarea P Q (f, 1) =
      (1 - P.2) * (-sarea (0, 0) (f, 1) Q) + (1 - Q.2) * sarea (0, 0) (f, 1) P := by
    simp only [sarea]; ring
  have hpy : P.2 < 1 := by nlinarith
  have hqy : Q.2 < 1 := by nlinarith
  have hq2 : 0 < Q.2 := by linarith
  have dA : sarea P Q (0, 0) < 0 := by
    rw [eA]; nlinarith [mul_pos hq2 LP, mul_nonneg (by linarith : (0 : ℝ) ≤ P.2) (neg_nonneg.2 LQ.le)]
  refine ⟨dA, ?_, ?_⟩
  · rw [eF]
    nlinarith [mul_pos (by linarith : (0 : ℝ) < 1 - P.2) (neg_pos.2 LQ),
      mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - Q.2) LP.le]
  · rintro ⟨dH, dE⟩
    have bary : sarea (1, 1) (0, h) P * sarea P Q (0, 0) + sarea (0, h) (0, 0) P * sarea P Q (1, 1)
        + sarea (0, 0) (1, 1) P * sarea P Q (0, h) = 0 := by
      simp only [sarea]; ring
    have e1 : sarea (0, h) (0, 0) P = h * P.1 := by simp only [sarea]; ring
    have e2 : sarea (0, 0) (1, 1) P = P.2 - P.1 := by simp only [sarea]; ring
    rw [e1, e2] at bary
    nlinarith [mul_neg_of_pos_of_neg KP dA,
      mul_le_mul_of_nonneg_left dE.le (by positivity : (0 : ℝ) ≤ h * P.1),
      mul_le_mul_of_nonneg_left dH.le (by linarith : (0 : ℝ) ≤ P.2 - P.1)]

set_option linter.unusedVariables false in
/-- Pair I–II with `d_H > 0 > d_E`, at a doubled threshold `σ > 0`: for `P` in cell I and `Q`
in cell II, `Q` is inside `EFP`, so `β(1 - y_P) ≥ 3σ`, and with `hp ≥ σ`, `L(P) ≥ σ`,
`hβ(1 - β) ≥ σ(3h + β - 2hβ)` (here `β = 1 - f`, `1 - β = f`). -/
theorem pair_I_II_bounds_of_dE_neg (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q)
    (hdH : 0 < sarea P Q (0, h)) (hdE : sarea P Q (1, 1) < 0) :
    3 * σ ≤ (1 - f) * (1 - P.2) ∧
      σ * (3 * h + (1 - f) - 2 * h * (1 - f)) ≤ h * (1 - f) * f := by
  obtain ⟨-, dF, -⟩ := pair_I_II_signs h f σ hh hh1 hf hf1 hσ P Q hP hQ hmin hPI hQII
  have hmP := hmin.trans (min_anchor_le h f P Q).1
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  obtain ⟨-, hPx, -, hPL, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ P hP hmP
  obtain ⟨-, -, hQy, -, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ Q hQ hmQ
  have a1 : σ ≤ |sarea (1, 1) (f, 1) Q| := abs_sarea_ge hmin 1 3 5
  have a2 : σ ≤ |sarea (f, 1) P Q| := abs_sarea_ge hmin 3 4 5
  have a3 : σ ≤ |sarea P (1, 1) Q| := abs_sarea_ge hmin 4 1 5
  have eQ : sarea (1, 1) (f, 1) Q = (1 - f) * (1 - Q.2) := by simp only [sarea]; ring
  have tri : InTriangle Q (1, 1) (f, 1) P := by
    refine ⟨?_, ?_, ?_⟩
    · rw [eQ]; linarith
    · rw [← sarea_cycle]; exact dF
    · rw [sarea_swap₂₃]; linarith
  have b := three_le_of_inTriangle tri a1 a2 a3
  have eP : sarea (1, 1) (f, 1) P = (1 - f) * (1 - P.2) := by simp only [sarea]; ring
  rw [eP] at b
  refine ⟨b, ?_⟩
  have hβ : 0 ≤ 1 - f := by linarith
  have hLP : σ ≤ lineL f P := ge_of_abs_ge hPL hPI.1.le
  have hLP' := (lineL_lineK_lineN_eq h f P).1
  have k1 := mul_le_mul_of_nonneg_left hLP (mul_nonneg hh.le hβ)
  have k2 := mul_le_mul_of_nonneg_left b (mul_nonneg hh.le hf.le)
  have k3 := mul_le_mul_of_nonneg_left hPx hβ
  rw [hLP'] at k1
  linarith

set_option linter.unusedVariables false in
/-- If `P` is strictly inside the triangle `HFQ` (counterclockwise order `H, Q, F`), `Q ∈ T` is
in cell II, every doubled area is at least `σ > 0`, and `h ≥ β = 1 - f`, then `-N(Q) ≥ 3σ` and
`hβ(1 - β) ≥ σ(2h + 2β - hβ)`. -/
theorem inTriangle_HFQ_bounds (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hQII : CellII h f Q) (hPin : InTriangle P (0, h) Q (f, 1)) (hβh : 1 - f ≤ h) :
    3 * σ ≤ -lineN h f Q ∧
      σ * (2 * h + 2 * (1 - f) - h * (1 - f)) ≤ h * (1 - f) * f := by
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  obtain ⟨hQw, -, -, hQL, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ Q hQ hmQ
  have a1 : σ ≤ |sarea (0, h) Q P| := abs_sarea_ge hmin 2 5 4
  have a2 : σ ≤ |sarea Q (f, 1) P| := abs_sarea_ge hmin 5 3 4
  have a3 : σ ≤ |sarea (f, 1) (0, h) P| := abs_sarea_ge hmin 3 2 4
  have b := three_le_of_inTriangle hPin a1 a2 a3
  have eN : sarea (0, h) Q (f, 1) = -lineN h f Q := by simp only [lineN, sarea]; ring
  rw [eN] at b
  refine ⟨b, ?_⟩
  have hβ : 0 ≤ 1 - f := by linarith
  have hLQ : σ ≤ -lineL f Q := by have := le_neg_of_abs_ge hQL hQII.1.le; linarith
  have eNQ := (lineL_lineK_lineN_eq h f Q).2.2
  have eLQ := (lineL_lineK_lineN_eq h f Q).1
  rw [eNQ] at b
  rw [eLQ] at hLQ
  have k1 := mul_le_mul_of_nonneg_left b hβ
  have k2 := mul_le_mul_of_nonneg_left hLQ (by linarith : (0 : ℝ) ≤ h - (1 - f))
  have k3 := mul_le_mul_of_nonneg_left hQw (mul_nonneg hh.le hf.le)
  linarith

theorem rho_A : rho (0, 0) = (1, 1) := by simp [rho]
theorem rho_H (h : ℝ) : rho (0, h) = (1 - h, 1) := by simp [rho]
theorem rho_F (f : ℝ) : rho (f, 1) = (0, 1 - f) := by simp [rho]

/-- The reflected form of `inTriangle_HFQ_bounds`, for `β ≥ h`: if `P` is strictly inside `HFQ`, `Q ∈ T` is
in cell II and every doubled area is at least `σ > 0`, then `hβ(1 - h) ≥ σ(2h + 2β - hβ)`. -/
theorem inTriangle_HFQ_bound_reflected (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hQII : CellII h f Q) (hPin : InTriangle P (0, h) Q (f, 1)) (hβh : h ≤ 1 - f) :
    σ * (2 * h + 2 * (1 - f) - h * (1 - f)) ≤ h * (1 - f) * (1 - h) := by
  obtain ⟨hρT, -, -, -, -, -, -, hρmin⟩ := rho_symmetry h f P P Q
  have hρQ := (rho_symmetry h f Q P Q).2.2.2.2.2.2.1
  have hQT := (rho_symmetry h f Q P Q).1
  have hin : InTriangle (rho P) (0, 1 - f) (rho Q) (1 - h, 1) := by
    obtain ⟨a, b, c⟩ := hPin
    rw [← rho_F, ← rho_H]
    refine ⟨?_, ?_, ?_⟩ <;> rw [sarea_rho]
    · rw [sarea_swap₁₂]; linarith
    · rw [sarea_swap₁₂]; linarith
    · rw [sarea_swap₁₂]; linarith
  have := (inTriangle_HFQ_bounds (1 - f) (1 - h) σ (by linarith) (by linarith) (by linarith) (by linarith) hσ
    (rho P) (rho Q) (hρT.2 hP) (hQT.2 hQ) (by rw [hρmin]; exact hmin) (hρQ.1 hQII) hin
    (by linarith)).2
  have e1 : (1 : ℝ) - (1 - h) = h := by ring
  rw [e1] at this
  linarith

set_option linter.unusedVariables false in
/-- Pair I–II with `d_H, d_E > 0` is impossible at `s = 6/55`. By `weighted_identity_bounds`,
`h ≥ (4 + 2√3)s > 4/5` and `hs ≤ (h - s - w)(w - s)` for `w = y_P - x_P`; the bounds `L(P) ≥ s`
and `αβ ≥ s` give `w ≥ W = s(h(1 - h) + s)/(h(1 - h - s)) ≥ h/2`, and a quintic in `h - 4/5`
shows `(h - s - W)(W - s) < hs`. -/
theorem no_pair_I_II_of_dH_dE_pos (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPI : CellI h f P) (hQII : CellII h f Q)
    (hdH : 0 < sarea P Q (0, h)) (hdE : 0 < sarea P Q (1, 1)) : False := by
  have hs : (0 : ℝ) < 6 / 55 := by norm_num
  have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  have hmP := hmin'.trans (min_anchor_le h f P Q).1
  have hmQ := hmin'.trans (min_anchor_le h f P Q).2
  obtain ⟨hPw, hPx, -, hPL, hPK, -, -, hab⟩ :=
    anchor_area_bounds h f _ hh hh1 hf hf1 hs P hP hmP
  obtain ⟨hQw, -, -, -, -, -, -, -⟩ := anchor_area_bounds h f _ hh hh1 hf hf1 hs Q hQ hmQ
  have adH : 6 / 55 ≤ |sarea P Q (0, h)| := abs_sarea_ge hmin' 4 5 2
  have adE : 6 / 55 ≤ |sarea P Q (1, 1)| := abs_sarea_ge hmin' 4 5 1
  have dH := ge_of_abs_ge adH hdH.le
  have dE := ge_of_abs_ge adE hdE.le
  have hK := ge_of_abs_ge hPK hPI.2.1.le
  obtain ⟨w1, w2, -, w4⟩ :=
    weighted_identity_bounds h (6 / 55) hs P Q (by linarith) hK dH dE hQw hPx
  have h13 := lt_one_sub_of_anchor_bound h f (6 / 55) hh1 hf hab
  have h45 : 4 / 5 ≤ h := by
    have ht2 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
    have ht0 : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
    nlinarith
  have hL := ge_of_abs_ge hPL hPI.1.le
  have eL := (lineL_lineK_lineN_eq h f P).1
  rw [eL] at hL
  clear w4 adH adE hPL hPK hmin hmin' hmP hmQ hPI hQII hdH hdE
  -- `w` satisfies `w h (α - s) ≥ s (h α + s)`
  set w := P.2 - P.1 with hw
  set g := (h - 6 / 55 - w) * (w - 6 / 55) with hg
  have hgw : h * (6 / 55) ≤ g := w1.trans w2
  have i1 : (6 / 55) * (h + (1 - f)) ≤ h * f * w := by
    have k1 := mul_le_mul_of_nonneg_left hL hh.le
    have k2 := mul_le_mul_of_nonneg_left hPx (by linarith : (0 : ℝ) ≤ 1 - f)
    linarith
  set D0 := h * (1 - h - 6 / 55) with hD0
  set c0 := (6 / 55) * (h * (1 - h) + 6 / 55) with hc0
  have hD0p : 0 < D0 := mul_pos hh (by linarith)
  have i2 : c0 ≤ w * D0 := by
    have k1 := mul_le_mul_of_nonneg_left i1 (by linarith : (0 : ℝ) ≤ 1 - h)
    have k2 := mul_le_mul_of_nonneg_left hab
      (by positivity : (0 : ℝ) ≤ h * w + 6 / 55)
    nlinarith
  set W := c0 / D0 with hW
  have hWD : W * D0 = c0 := div_mul_cancel₀ _ hD0p.ne'
  have hwW : W ≤ w := by rw [hW, div_le_iff₀ hD0p]; linarith
  set z := h - 4 / 5 with hz
  have hz0 : 0 ≤ z := by linarith
  have hWh : h / 2 ≤ W := by
    have : 0 ≤ (W - h / 2) * D0 := by
      have e : (W - h / 2) * D0 = (z ^ 3 + 71 / 55 * z ^ 2 + 4 / 11 * z + 8 / 15125) / 2 := by
        rw [sub_mul, hWD, hc0, hD0, hz]; ring
      rw [e]; positivity
    exact sub_nonneg.1 (nonneg_of_mul_nonneg_left this hD0p)
  have hgW : g ≤ (h - 6 / 55 - W) * (W - 6 / 55) := by
    rw [hg]; linarith [mul_nonneg (sub_nonneg.2 hwW) (by linarith : (0 : ℝ) ≤ w + W - h)]
  have key : D0 ^ 2 * ((h - 6 / 55 - W) * (W - 6 / 55) - h * (6 / 55)) =
      -6 / 9150625 * (166375 * z ^ 5 + 387200 * z ^ 4 + 304315 * z ^ 3 +
        78962 * (z - 868 / 78962) ^ 2 + 11744016 / 987025) := by
    have e : D0 ^ 2 * ((h - 6 / 55 - W) * (W - 6 / 55) - h * (6 / 55)) =
        ((h - 6 / 55) * D0 - W * D0) * (W * D0 - 6 / 55 * D0) - h * (6 / 55) * D0 ^ 2 := by ring
    rw [e, hWD, hc0, hD0, hz]; ring
  have hpos : 0 < 166375 * z ^ 5 + 387200 * z ^ 4 + 304315 * z ^ 3 +
      78962 * (z - 868 / 78962) ^ 2 + 11744016 / 987025 := by positivity
  have : D0 ^ 2 * ((h - 6 / 55 - W) * (W - 6 / 55) - h * (6 / 55)) < 0 := by rw [key]; linarith
  have : 0 ≤ D0 ^ 2 * ((h - 6 / 55 - W) * (W - 6 / 55) - h * (6 / 55)) :=
    mul_nonneg (sq_nonneg _) (by linarith)
  linarith

/-- At `s = 6/55` the pair I–II is impossible, and by the reflection `ρ` so is III–II. By the
signs of `d_H, d_E`: both negative is excluded by `pair_I_II_signs`; `d_H < 0 < d_E` puts `P` inside `HFQ`
(`inTriangle_HFQ_bounds`, or `cs_poly` when `h ≤ β`); `d_H > 0 > d_E` is `pair_I_II_bounds_of_dE_neg`; both positive
is `no_pair_I_II_of_dH_dE_pos`. -/
theorem no_pair_I_II (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q)) :
    ¬ (CellI h f P ∧ CellII h f Q) ∧ ¬ (CellIII h f P ∧ CellII h f Q) := by
  have main : ∀ h f : ℝ, 0 < h → h < 1 → 0 < f → f < 1 → ∀ P Q : Point, P ∈ halfSquare →
      Q ∈ halfSquare → 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q) →
      ¬ (CellI h f P ∧ CellII h f Q) := by
    intro h f hh hh1 hf hf1 P Q hP hQ hmin
    rintro ⟨hPI, hQII⟩
    have hs : (0 : ℝ) < 6 / 55 := by norm_num
    have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
    have hmP := hmin'.trans (min_anchor_le h f P Q).1
    obtain ⟨-, -, -, -, -, -, -, hab⟩ := anchor_area_bounds h f _ hh hh1 hf hf1 hs P hP hmP
    obtain ⟨-, dF, hnot⟩ := pair_I_II_signs h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hPI hQII
    have adH : 6 / 55 ≤ |sarea P Q (0, h)| := abs_sarea_ge hmin' 4 5 2
    have adE : 6 / 55 ≤ |sarea P Q (1, 1)| := abs_sarea_ge hmin' 4 5 1
    have hβ : 0 < 1 - f := by linarith
    rcases lt_or_gt_of_ne (ne_zero_of_abs_ge hs adH) with dH | dH <;>
      rcases lt_or_gt_of_ne (ne_zero_of_abs_ge hs adE) with dE | dE
    · exact hnot ⟨dH, dE⟩
    · -- `d_H < 0 < d_E`: `P` is inside `HFQ`
      have hin : InTriangle P (0, h) Q (f, 1) := by
        refine ⟨?_, ?_, ?_⟩
        · rw [sarea_cycle, sarea_swap₂₃]; linarith
        · rw [sarea_cycle]; exact dF
        · have e : sarea (f, 1) (0, h) P = -lineN h f P := by simp only [lineN, sarea]; ring
          rw [e]; linarith [hPI.2.2]
      rcases le_or_gt h (1 - f) with hhb | hhb
      · have b1 := AFH_bound hmP (inTri_AFH hh hh1 hf hf1 hs hP hmP hPI.1 hPI.2.2)
        have b2 : 3 * (6 / 55) ≤ (1 - h) * (1 - f) := by nlinarith
        have := (cs_poly hh.le hh1.le hf.le hf1.le (by norm_num) b1 b2).2
        norm_num at this
      · have b := (inTriangle_HFQ_bounds h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hQII hin hhb.le).2
        have q : 0 < 55 * (1 - f) ^ 2 - 49 * (1 - f) + 12 := by
          nlinarith [sq_nonneg ((1 - f) - 49 / 110)]
        nlinarith [mul_pos hh q, mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ 1 - h)]
    · -- `d_H > 0 > d_E`
      have b := (pair_I_II_bounds_of_dE_neg h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hPI hQII dH dE).2
      have q : 0 < 55 * (1 - f) ^ 2 - 61 * (1 - f) + 18 := by
        nlinarith [sq_nonneg ((1 - f) - 61 / 110)]
      nlinarith [mul_pos hh q, mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ 1 - h)]
    · exact no_pair_I_II_of_dH_dE_pos h f hh hh1 hf hf1 P Q hP hQ hmin hPI hQII dH dE
  refine ⟨main h f hh hh1 hf hf1 P Q hP hQ hmin, ?_⟩
  rintro ⟨hPIII, hQII⟩
  obtain ⟨hρT, -, -, -, -, hIII, -, hρmin⟩ := rho_symmetry h f P P Q
  have hQ' := rho_symmetry h f Q P Q
  exact main (1 - f) (1 - h) (by linarith) (by linarith) (by linarith) (by linarith) (rho P)
    (rho Q) (hρT.2 hP) (hQ'.1.2 hQ) (by rw [hρmin]; exact hmin)
    ⟨hIII.1 hPIII, hQ'.2.2.2.2.2.2.1.1 hQII⟩

/-! ### Pair II–II with `d_A, d_E` of the same sign -/

/-- The polynomial core of `pair_II_II_same_sign_bounds`: `hβσ ≤ (hβ - σ(h + β))m - (h + β - hβ)m²` for the smaller
height `m`. -/
theorem pair_II_II_min_height_bound (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : sarea P Q (1, 1) < 0) :
    σ ≤ min (P.2 - P.1) (Q.2 - Q.1) ∧
    h * (1 - f) * σ ≤ (h * (1 - f) - σ * (h + (1 - f))) * min (P.2 - P.1) (Q.2 - Q.1) -
      (h + (1 - f) - h * (1 - f)) * min (P.2 - P.1) (Q.2 - Q.1) ^ 2 := by
  have hmP := hmin.trans (min_anchor_le h f P Q).1
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  obtain ⟨hPw, -, -, hPL, hPK, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ P hP hmP
  obtain ⟨hQw, -, -, hQL, hQK, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ Q hQ hmQ
  have aA : σ ≤ |sarea P Q (0, 0)| := abs_sarea_ge hmin 4 5 0
  have aE : σ ≤ |sarea P Q (1, 1)| := abs_sarea_ge hmin 4 5 1
  have dA := le_neg_of_abs_ge aA hdA.le
  have dE := le_neg_of_abs_ge aE hdE.le
  have LP := le_neg_of_abs_ge hPL hPII.1.le
  have LQ := le_neg_of_abs_ge hQL hQII.1.le
  have KP := ge_of_abs_ge hPK hPII.2.1.le
  have KQ := ge_of_abs_ge hQK hQII.2.1.le
  rw [(lineL_lineK_lineN_eq h f P).1] at LP
  rw [(lineL_lineK_lineN_eq h f Q).1] at LQ
  rw [(lineL_lineK_lineN_eq h f P).2.1] at KP
  rw [(lineL_lineK_lineN_eq h f Q).2.1] at KQ
  have eA : sarea P Q (0, 0) = P.1 * (Q.2 - Q.1) - (P.2 - P.1) * Q.1 := by simp only [sarea]; ring
  have eE : sarea P Q (1, 1) = (P.2 - P.1) * (1 - Q.1) + (P.1 - 1) * (Q.2 - Q.1) := by
    simp only [sarea]; ring
  rw [eA] at dA
  rw [eE] at dE
  clear aA aE hPL hQL hPK hQK hmin hmP hmQ hdA hdE eA eE
  set w := P.2 - P.1 with hw
  set v := Q.2 - Q.1 with hv
  set p := P.1 with hp
  set q := Q.1 with hq
  have hβ : 0 < 1 - f := by linarith
  have hD : 0 ≤ h + (1 - f) - h * (1 - f) := by nlinarith
  -- the two bounds `β p ≥ σ + f w` (times `h v`) and `h q ≤ h - σ - v` (times `β w`)
  have k1 := mul_le_mul_of_nonneg_left LQ (mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ w))
  have k2 := mul_le_mul_of_nonneg_left LP (mul_nonneg hh.le (by linarith : (0 : ℝ) ≤ v))
  have k3 := mul_le_mul_of_nonneg_left KQ (mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ w))
  rcases le_total w v with hwv | hwv
  · rw [min_eq_left hwv]
    refine ⟨hPw, ?_⟩
    have k4 := mul_le_mul_of_nonneg_left dA (mul_nonneg hh.le hβ.le)
    have k5 := mul_le_mul_of_nonneg_left hwv (mul_nonneg hh.le (by linarith : (0 : ℝ) ≤ σ))
    have k6 := mul_le_mul_of_nonneg_left hwv (mul_nonneg hD (by linarith : (0 : ℝ) ≤ w))
    nlinarith
  · rw [min_eq_right hwv]
    refine ⟨hQw, ?_⟩
    have k4 := mul_le_mul_of_nonneg_left dE (mul_nonneg hh.le hβ.le)
    have k5 := mul_le_mul_of_nonneg_left hwv (mul_nonneg hβ.le (by linarith : (0 : ℝ) ≤ σ))
    have k6 := mul_le_mul_of_nonneg_left hwv (mul_nonneg hD (by linarith : (0 : ℝ) ≤ v))
    nlinarith

/-- Pair II–II with `d_A, d_E < 0`, at a positive doubled threshold `σ`: for `P, Q ∈ T` in
cell II with every doubled area at least `σ`, put `β = 1 - f`, `a = 1 - σ(1/h + 1/β)`,
`c = 1/h + 1/β - 1` and `v_m` the smaller of the two heights `y - x`. Then
`σ ≤ a v_m - c v_m²`; hence `a > 0`, `σ ≤ a²/(4c)`, and with `U = hβ`, `S = h + β`:
`U - σS > 0` and `(U - σS)² ≥ 4σU(S - U)`. -/
theorem pair_II_II_same_sign_bounds (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : sarea P Q (1, 1) < 0) :
    let β := 1 - f
    let a := 1 - σ * (1 / h + 1 / β)
    let c := 1 / h + 1 / β - 1
    let v := min (P.2 - P.1) (Q.2 - Q.1)
    σ ≤ a * v - c * v ^ 2 ∧ 0 < a ∧ σ ≤ a ^ 2 / (4 * c) ∧
      0 < h * β - σ * (h + β) ∧
      4 * σ * (h * β) * (h + β - h * β) ≤ (h * β - σ * (h + β)) ^ 2 := by
  obtain ⟨hm, core⟩ := pair_II_II_min_height_bound h f σ hh hh1 hf hf1 hσ P Q hP hQ hmin hPII hQII hdA hdE
  set m := min (P.2 - P.1) (Q.2 - Q.1) with hmdef
  have hβ : 0 < 1 - f := by linarith
  have hU : 0 < h * (1 - f) := mul_pos hh hβ
  have hD : 0 < h + (1 - f) - h * (1 - f) := by nlinarith
  have hm0 : 0 < m := by linarith
  have ea : 1 - σ * (1 / h + 1 / (1 - f)) = (h * (1 - f) - σ * (h + (1 - f))) / (h * (1 - f)) := by
    field_simp; ring
  have ec : 1 / h + 1 / (1 - f) - 1 = (h + (1 - f) - h * (1 - f)) / (h * (1 - f)) := by
    field_simp; ring
  have hU' : 0 < h * (1 - f) - σ * (h + (1 - f)) := by
    by_contra hc; push Not at hc; nlinarith [mul_nonneg hD.le (sq_nonneg m)]
  have h1 : σ ≤ (1 - σ * (1 / h + 1 / (1 - f))) * m - (1 / h + 1 / (1 - f) - 1) * m ^ 2 := by
    rw [ea, ec]
    have e : (h * (1 - f) - σ * (h + (1 - f))) / (h * (1 - f)) * m -
        (h + (1 - f) - h * (1 - f)) / (h * (1 - f)) * m ^ 2 =
        ((h * (1 - f) - σ * (h + (1 - f))) * m - (h + (1 - f) - h * (1 - f)) * m ^ 2) /
          (h * (1 - f)) := by field_simp
    rw [e, le_div_iff₀ hU]; linarith
  have h5 : 4 * σ * (h * (1 - f)) * (h + (1 - f) - h * (1 - f)) ≤
      (h * (1 - f) - σ * (h + (1 - f))) ^ 2 := by
    nlinarith [sq_nonneg (h * (1 - f) - σ * (h + (1 - f)) - 2 * (h + (1 - f) - h * (1 - f)) * m)]
  refine ⟨h1, ?_, ?_, hU', h5⟩
  · rw [ea]; positivity
  · have e : ((h * (1 - f) - σ * (h + (1 - f))) / (h * (1 - f))) ^ 2 /
        (4 * ((h + (1 - f) - h * (1 - f)) / (h * (1 - f)))) =
        (h * (1 - f) - σ * (h + (1 - f))) ^ 2 /
          (4 * (h + (1 - f) - h * (1 - f)) * (h * (1 - f))) := by
      field_simp
    rw [ea, ec, e, le_div_iff₀ (by positivity)]
    linarith

/-- The final polynomial step of `no_pair_II_II_same_sign`: with `U = hβ`, `S = h + β`, the bound
`(U - σS)² ≥ 4σU(S - U)` of `pair_II_II_same_sign_bounds` at `σ = 7/64` and the strict anchor bounds
`hf, αβ > 7/64` are incompatible. -/
theorem same_sign_poly (h b : ℝ) (hh : 0 < h) (hb0 : 0 < b) (hb1 : b < 1)
    (s1 : 7 / 128 < h * (1 - b) / 2) (s2 : 7 / 128 < (1 - h) * b / 2)
    (hU' : 0 < h * b - 7 / 64 * (h + b))
    (h22 : 4 * (7 / 64) * (h * b) * (h + b - h * b) ≤ (h * b - 7 / 64 * (h + b)) ^ 2) :
    False := by
  set r := Real.sqrt (h * b) with hr
  have hr0 : 0 ≤ r := Real.sqrt_nonneg _
  have hr2 : r ^ 2 = h * b := Real.sq_sqrt (by positivity)
  have hS : 2 * r ≤ h + b := by
    have : (2 * r) ^ 2 ≤ (h + b) ^ 2 := by nlinarith [sq_nonneg (h - b)]
    exact (pow_le_pow_iff_left₀ (by positivity) (by linarith) (by norm_num)).1 this
  rw [← hr2] at hU' h22
  have hr : 7 / 32 < r := by nlinarith
  have hG : r ^ 2 * ((1 + 4 * (7 / 64)) * r ^ 2 - 12 * (7 / 64) * r + 4 * (7 / 64) ^ 2) =
      (r ^ 2 - 7 / 64 * (h + b)) ^ 2 - 4 * (7 / 64) * r ^ 2 * (h + b - r ^ 2) +
        (h + b - 2 * r) * ((7 / 64) * (6 * r ^ 2 - 7 / 64 * (h + b) - 2 * (7 / 64) * r)) := by
    ring
  have hG2 : 0 ≤ r ^ 2 * ((1 + 4 * (7 / 64)) * r ^ 2 - 12 * (7 / 64) * r + 4 * (7 / 64) ^ 2) := by
    rw [hG]
    have h6 : 0 ≤ (7 / 64) * (6 * r ^ 2 - 7 / 64 * (h + b) - 2 * (7 / 64) * r) := by
      have := sq_nonneg r; linarith
    have := mul_nonneg (by linarith : (0 : ℝ) ≤ h + b - 2 * r) h6
    linarith
  have hr2p : 0 < r ^ 2 := by positivity
  have hΦ := (mul_nonneg_iff_of_pos_left hr2p).1 hG2
  have hΦ' : 0 ≤ (8 * r - 7) * (184 * r - 7) := by nlinarith
  have hr78 : 7 / 8 ≤ r := by
    by_contra hc; push Not at hc
    nlinarith [mul_pos (by linarith : (0 : ℝ) < 7 - 8 * r) (by linarith : (0 : ℝ) < 184 * r - 7)]
  have hrr : 7 / 64 < r - r ^ 2 := by
    rcases le_total h b with hhb | hhb
    · have : h ^ 2 ≤ r ^ 2 := by rw [hr2]; nlinarith
      have := (pow_le_pow_iff_left₀ hh.le hr0 two_ne_zero).1 this
      nlinarith
    · have : b ^ 2 ≤ r ^ 2 := by rw [hr2]; nlinarith
      have := (pow_le_pow_iff_left₀ hb0.le hr0 two_ne_zero).1 this
      nlinarith
  nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ r - 7 / 8) (by linarith : (0 : ℝ) ≤ r - 1 / 8)]

/-- With every area greater than `7/128` (doubled threshold `σ = 7/64`, strict), two points of
cell II with `d_A, d_E < 0` are impossible: `pair_II_II_same_sign_bounds` gives `(8r - 7)(184r - 7) ≥ 0` with
`r = √(hβ) > 7/32`, so `r ≥ 7/8`, against `r - r² > 7/64`. (After swapping `P, Q`, this covers
`d_A, d_E` of the same sign.) -/
theorem no_pair_II_II_same_sign (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 7 / 128 < minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : sarea P Q (1, 1) < 0) : False := by
  have hmin' : (7 / 64 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  obtain ⟨-, -, -, hU', h22⟩ :=
    pair_II_II_same_sign_bounds h f (7 / 64) hh hh1 hf hf1 (by norm_num) P Q hP hQ hmin' hPII hQII hdA hdE
  -- the strict anchor areas
  have s1 : 7 / 128 < triangleArea (0, 0) (0, h) (f, 1) :=
    lt_of_lt_of_le hmin (minTriangleArea_le (halfSquareConfig h f P Q) (i := 0) (j := 2) (k := 3)
      (by decide) (by decide) (by decide))
  have s2 : 7 / 128 < triangleArea (1, 1) (0, h) (f, 1) :=
    lt_of_lt_of_le hmin (minTriangleArea_le (halfSquareConfig h f P Q) (i := 1) (j := 2) (k := 3)
      (by decide) (by decide) (by decide))
  rw [triangleArea_eq] at s1 s2
  have e1 : sarea (0, 0) (0, h) (f, 1) = -(h * f) := by simp only [sarea]; ring
  have e2 : sarea (1, 1) (0, h) (f, 1) = -((1 - h) * (1 - f)) := by simp only [sarea]; ring
  rw [e1, abs_neg, abs_of_pos (mul_pos hh hf)] at s1
  rw [e2, abs_neg, abs_of_pos (mul_pos (by linarith) (by linarith))] at s2
  clear hmin hmin' hP hQ hPII hQII hdA hdE e1 e2
  have hU2 : 0 < h * (1 - f) - 7 / 64 * (h + (1 - f)) := by linarith
  exact same_sign_poly h (1 - f) hh (by linarith) (by linarith)
    (by rw [show (1 : ℝ) - (1 - f) = f by ring]; exact s1) s2 hU2 h22

/-! ### Pair II–II with `d_A, d_E` of opposite signs -/

/-- The factor `1 - σ/β - (1/h + 1/β - 1)w` of `cellII_bounds_of_dH_dE_pos` increases with `β`. -/
theorem opposite_sign_factor_mono {h b b₀ σ w : ℝ} (hb : 0 < b) (hbb : b ≤ b₀) (hσw : 0 ≤ σ + w) :
    1 - σ / b - (1 / h + 1 / b - 1) * w ≤ 1 - σ / b₀ - (1 / h + 1 / b₀ - 1) * w := by
  have := div_le_div_of_nonneg_left hσw hb hbb
  have e1 : 1 - σ / b - (1 / h + 1 / b - 1) * w = 1 - w / h + w - (σ + w) / b := by ring
  have e2 : 1 - σ / b₀ - (1 / h + 1 / b₀ - 1) * w = 1 - w / h + w - (σ + w) / b₀ := by ring
  rw [e1, e2]; linarith

/-- Maximizing in `w`: if `σ ≤ (w - σ)(1 - σ/β - (1/h + 1/β - 1)w)` with `w > σ`, then
`hβ - σ(β + 2h - hβ) > 0` and `4σDhβ ≤ [hβ - σ(β + 2h - hβ)]²` with `D = h + β - hβ`. -/
theorem opposite_sign_max_bound {h b σ w : ℝ} (hh : 0 < h) (hb : 0 < b) (hb1 : b ≤ 1) (hσ : 0 < σ)
    (hws : 0 < w - σ) (h24 : σ ≤ (w - σ) * (1 - σ / b - (1 / h + 1 / b - 1) * w)) :
    0 < h * b - σ * (b + 2 * h - h * b) ∧
      4 * σ * (h + b - h * b) * (h * b) ≤ (h * b - σ * (b + 2 * h - h * b)) ^ 2 := by
  have e : 1 - σ / b - (1 / h + 1 / b - 1) * w =
      (1 - σ / b - (1 / h + 1 / b - 1) * σ) - (1 / h + 1 / b - 1) * (w - σ) := by ring
  have eA : h * b * (1 - σ / b - (1 / h + 1 / b - 1) * σ) = h * b - σ * (b + 2 * h - h * b) := by
    field_simp; ring
  have ec : h * b * (1 / h + 1 / b - 1) = h + b - h * b := by field_simp; ring
  rw [e] at h24
  set A := 1 - σ / b - (1 / h + 1 / b - 1) * σ with hA
  set c := 1 / h + 1 / b - 1 with hc
  set z := w - σ with hz
  have hc0 : 0 < c := by
    have : 0 < 1 / h := by positivity
    have : 1 ≤ 1 / b := by rw [le_div_iff₀ hb]; linarith
    linarith
  have hA0 : 0 < A := by nlinarith [mul_pos hc0 (mul_pos hws hws)]
  have h4 : 4 * c * σ ≤ A ^ 2 := by nlinarith [sq_nonneg (A - 2 * c * z)]
  have hU : 0 < h * b := mul_pos hh hb
  constructor
  · rw [← eA]; positivity
  · rw [← eA, ← ec]
    have := mul_le_mul_of_nonneg_left h4 (sq_nonneg (h * b))
    nlinarith

/-- A point `P` of cell II with `d_H, d_E > 0`, at a positive doubled threshold `σ`: for
`P, Q ∈ T` with every doubled area at least `σ`, with `β = 1 - f` and `w = y_P - x_P`,
`σ ≤ (w - σ)[1 - σ/β - (1/h + 1/β - 1)w]`, and, maximizing in `w` (`opposite_sign_max_bound`),
`hβ - σ(β + 2h - hβ) > 0` and `4σDhβ ≤ [hβ - σ(β + 2h - hβ)]²` with `D = h + β - hβ`. -/
theorem cellII_bounds_of_dH_dE_pos (h f σ : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (hσ : 0 < σ) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : σ / 2 ≤ minTriangleArea (halfSquareConfig h f P Q)) (hPII : CellII h f P)
    (hdE : 0 < sarea P Q (1, 1)) (hdH : 0 < sarea P Q (0, h)) :
    let β := 1 - f
    let w := P.2 - P.1
    σ ≤ (w - σ) * (1 - σ / β - (1 / h + 1 / β - 1) * w) ∧
      0 < h * β - σ * (β + 2 * h - h * β) ∧
      4 * σ * (h + β - h * β) * (h * β) ≤ (h * β - σ * (β + 2 * h - h * β)) ^ 2 := by
  have hmP := hmin.trans (min_anchor_le h f P Q).1
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  obtain ⟨hPw, hPx, -, hPL, hPK, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ P hP hmP
  obtain ⟨hQw, -, -, -, -, -, -, -⟩ := anchor_area_bounds h f σ hh hh1 hf hf1 hσ Q hQ hmQ
  have dH := ge_of_abs_ge (abs_sarea_ge hmin 4 5 2) hdH.le
  have dE := ge_of_abs_ge (abs_sarea_ge hmin 4 5 1) hdE.le
  have hK := ge_of_abs_ge hPK hPII.2.1.le
  have LP := le_neg_of_abs_ge hPL hPII.1.le
  obtain ⟨w1, w2, -, -⟩ := weighted_identity_bounds h σ hσ P Q (by linarith) hK dH dE hQw hPx
  have hK' := (lineL_lineK_lineN_eq h f P).2.1
  rw [(lineL_lineK_lineN_eq h f P).1] at LP
  clear hmin hmP hmQ hPL hPK dH dE hdE hdH
  intro β w
  have hβ : 0 < β := by simp only [β]; linarith
  have hβ1 : β ≤ 1 := by simp only [β]; linarith
  have hws : 0 < w - σ := by
    by_contra hc; push Not at hc
    have : h - σ - w ≥ σ := by simp only [w]; linarith
    nlinarith [mul_nonpos_iff.2 (Or.inl ⟨(by linarith : (0 : ℝ) ≤ h - σ - w), hc⟩)]
  have hKw : h * σ ≤ lineK h P * (w - σ) :=
    w1.trans (mul_le_mul_of_nonneg_left (by simp only [w]; linarith) (by linarith))
  have eX : 1 - σ / β - (1 / h + 1 / β - 1) * w =
      (h * β - h * σ - (h + β - h * β) * w) / (h * β) := by
    field_simp; ring
  have hY : β * lineK h P ≤ h * β - h * σ - (h + β - h * β) * w := by
    rw [hK']; simp only [β, w] at *; nlinarith [mul_le_mul_of_nonneg_left LP hh.le]
  have h24 : σ ≤ (w - σ) * (1 - σ / β - (1 / h + 1 / β - 1) * w) := by
    rw [eX, mul_div_assoc', le_div_iff₀ (mul_pos hh hβ)]
    have := mul_le_mul_of_nonneg_left hY hws.le
    nlinarith [mul_le_mul_of_nonneg_left hKw hβ.le]
  exact ⟨h24, opposite_sign_max_bound hh hβ hβ1 hσ hws h24⟩

/-- The quartic `7263025h⁴ - 8180040h³ + 1597176h² - 97632h + 1296` is negative on
`[4/5, 49/55)`. -/
theorem opposite_sign_quartic_neg (h : ℝ) (h45 : 4 / 5 ≤ h) (h13 : h < 49 / 55) :
    7263025 * h ^ 4 - 8180040 * h ^ 3 + 1597176 * h ^ 2 - 97632 * h + 1296 < 0 := by
  have eR : 7263025 * h ^ 4 - 8180040 * h ^ 3 + 1597176 * h ^ 2 - 97632 * h + 1296 =
      7263025 * (h - 4 / 5) ^ 4 + 15061640 * (h - 4 / 5) ^ 3 + 9855096 * (h - 4 / 5) ^ 2 +
        1626848 * (h - 4 / 5) - 1339312 / 5 := by ring
  rw [eR]
  have hz0 : 0 ≤ h - 4 / 5 := by linarith
  have hz1 : h - 4 / 5 ≤ 1 / 11 := by linarith
  generalize h - 4 / 5 = z at *
  have z2 : z ^ 2 ≤ z / 11 := by
    have := mul_le_mul_of_nonneg_left hz1 hz0; linarith
  have z3 : z ^ 3 ≤ z / 121 := by
    have := mul_le_mul_of_nonneg_left z2 hz0; linarith
  have z4 : z ^ 4 ≤ z / 1331 := by
    have := mul_le_mul_of_nonneg_left z3 hz0; linarith
  linarith

/-- At `s = 6/55`, a point `P` of cell II with `d_H, d_E > 0` is impossible: in `cellII_bounds_of_dH_dE_pos`
replace `β` by the larger `1 - s/h` (`opposite_sign_factor_mono`; `β ≤ 1 - s/h` is the anchor bound `hf ≥ s`),
maximize in `w` (`opposite_sign_max_bound`), and conclude by `opposite_sign_quartic_neg`, since `4/5 ≤ h < 49/55`
(`weighted_identity_bounds`, `lt_one_sub_of_anchor_bound`). -/
theorem no_cellII_of_dH_dE_pos (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q)) (hPII : CellII h f P)
    (hdE : 0 < sarea P Q (1, 1)) (hdH : 0 < sarea P Q (0, h)) : False := by
  have hs : (0 : ℝ) < 6 / 55 := by norm_num
  have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  obtain ⟨h24, -, -⟩ := cellII_bounds_of_dH_dE_pos h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hPII hdE hdH
  have hmP := hmin'.trans (min_anchor_le h f P Q).1
  have hmQ := hmin'.trans (min_anchor_le h f P Q).2
  obtain ⟨hPw, hPx, -, -, hPK, -, hfs, hab⟩ := anchor_area_bounds h f _ hh hh1 hf hf1 hs P hP hmP
  obtain ⟨hQw, -, -, -, -, -, -, -⟩ := anchor_area_bounds h f _ hh hh1 hf hf1 hs Q hQ hmQ
  have dH := ge_of_abs_ge (abs_sarea_ge hmin' 4 5 2) hdH.le
  have dE := ge_of_abs_ge (abs_sarea_ge hmin' 4 5 1) hdE.le
  have hK := ge_of_abs_ge hPK hPII.2.1.le
  obtain ⟨w1, w2, -, w4⟩ :=
    weighted_identity_bounds h (6 / 55) hs P Q (by linarith) hK dH dE hQw hPx
  have h13 := lt_one_sub_of_anchor_bound h f (6 / 55) hh1 hf hab
  have h45 : 4 / 5 ≤ h := by
    have ht2 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
    have ht0 : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
    nlinarith
  clear hmin hmin' hmP hmQ hPK dH dE hdE hdH w4
  set w := P.2 - P.1 with hw
  have hws : 0 < w - 6 / 55 := by
    by_contra hc; push Not at hc
    have : 6 / 55 ≤ h - 6 / 55 - w := by
      have := (lineL_lineK_lineN_eq h f P).2.1; linarith
    nlinarith [mul_nonpos_iff.2 (Or.inl ⟨(by linarith : (0 : ℝ) ≤ h - 6 / 55 - w), hc⟩)]
  set b₀ := 1 - 6 / 55 / h with hb₀
  have hbb : 1 - f ≤ b₀ := by
    rw [hb₀, sub_le_sub_iff_left, div_le_iff₀ hh]; linarith
  have hb₀0 : 0 < b₀ := by
    rw [hb₀, sub_pos, div_lt_one hh]; linarith
  have hb₀1 : b₀ ≤ 1 := by
    rw [hb₀]; have : 0 < 6 / 55 / h := by positivity
    linarith
  have h24' : 6 / 55 ≤ (w - 6 / 55) * (1 - 6 / 55 / b₀ - (1 / h + 1 / b₀ - 1) * w) :=
    h24.trans (mul_le_mul_of_nonneg_left (opposite_sign_factor_mono (by linarith) hbb (by linarith)) hws.le)
  obtain ⟨-, h25⟩ := opposite_sign_max_bound hh hb₀0 hb₀1 hs hws h24'
  have key : h ^ 2 * ((h * b₀ - 6 / 55 * (b₀ + 2 * h - h * b₀)) ^ 2 -
      4 * (6 / 55) * (h + b₀ - h * b₀) * (h * b₀)) =
      (7263025 * h ^ 4 - 8180040 * h ^ 3 + 1597176 * h ^ 2 - 97632 * h + 1296) / 9150625 := by
    rw [hb₀]; field_simp; ring
  have hR : 0 ≤ 7263025 * h ^ 4 - 8180040 * h ^ 3 + 1597176 * h ^ 2 - 97632 * h + 1296 := by
    have := mul_nonneg (sq_nonneg h) (by linarith : (0 : ℝ) ≤ (h * b₀ - 6 / 55 *
      (b₀ + 2 * h - h * b₀)) ^ 2 - 4 * (6 / 55) * (h + b₀ - h * b₀) * (h * b₀))
    rw [key] at this; linarith
  exact absurd hR (not_le.2 (opposite_sign_quartic_neg h h45 (by linarith)))

/-- At `s = 6/55`, two points of cell II with `d_A < 0 < d_E` are impossible. If `d_H > 0` this
is `no_cellII_of_dH_dE_pos`. If `d_H < 0 < d_F`, `P` is inside `HFQ` and `inTriangle_HFQ_bounds` (or `inTriangle_HFQ_bound_reflected` when
`h ≤ β`) applies; if `d_H, d_F < 0`, the reflection `ρ` reduces to `no_cellII_of_dH_dE_pos`. -/
theorem no_pair_II_II_opposite_sign (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f)
    (hf1 : f < 1) (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare)
    (hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q))
    (hPII : CellII h f P) (hQII : CellII h f Q)
    (hdA : sarea P Q (0, 0) < 0) (hdE : 0 < sarea P Q (1, 1)) : False := by
  have hs : (0 : ℝ) < 6 / 55 := by norm_num
  have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  have adH : 6 / 55 ≤ |sarea P Q (0, h)| := abs_sarea_ge hmin' 4 5 2
  have adF : 6 / 55 ≤ |sarea P Q (f, 1)| := abs_sarea_ge hmin' 4 5 3
  rcases lt_or_gt_of_ne (ne_zero_of_abs_ge hs adH) with dH | dH
  · rcases lt_or_gt_of_ne (ne_zero_of_abs_ge hs adF) with dF | dF
    · -- `d_H, d_F < 0`: reflect by `ρ` to `no_cellII_of_dH_dE_pos`
      obtain ⟨hρT, -, -, -, -, -, hII, hρmin⟩ := rho_symmetry h f P P Q
      have hQ' := rho_symmetry h f Q P Q
      refine no_cellII_of_dH_dE_pos (1 - f) (1 - h) (by linarith) (by linarith) (by linarith) (by linarith)
        (rho P) (rho Q) (hρT.2 hP) (hQ'.1.2 hQ) (by rw [hρmin]; exact hmin) (hII.1 hPII) ?_ ?_
      · rw [← rho_A, sarea_rho]; linarith
      · rw [← rho_F, sarea_rho]; linarith
    · -- `d_H < 0 < d_F`: `P` is inside `HFQ`
      have hin : InTriangle P (0, h) Q (f, 1) := by
        refine ⟨?_, ?_, ?_⟩
        · rw [sarea_cycle, sarea_swap₂₃]; linarith
        · rw [sarea_cycle]; exact dF
        · have e : sarea (f, 1) (0, h) P = -lineN h f P := by simp only [lineN, sarea]; ring
          rw [e]; linarith [hPII.2.2]
      rcases le_total h (1 - f) with hhb | hhb
      · have b := inTriangle_HFQ_bound_reflected h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hQII hin hhb
        have q : 0 < 55 * h ^ 2 - 49 * h + 12 := by nlinarith [sq_nonneg (h - 49 / 110)]
        nlinarith [mul_pos (by linarith : (0 : ℝ) < 1 - f) q, mul_nonneg hh.le hf.le]
      · have b := (inTriangle_HFQ_bounds h f _ hh hh1 hf hf1 hs P Q hP hQ hmin' hQII hin hhb).2
        have q : 0 < 55 * (1 - f) ^ 2 - 49 * (1 - f) + 12 := by
          nlinarith [sq_nonneg ((1 - f) - 49 / 110)]
        nlinarith [mul_pos hh q, mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - f)
          (by linarith : (0 : ℝ) ≤ 1 - h)]
  · exact no_cellII_of_dH_dE_pos h f hh hh1 hf hf1 P Q hP hQ hmin hPII hdE dH

/-! ### The theorem and its corollary -/

/-- Swapping the two free points keeps the minimum area. -/
theorem min_swap (h f : ℝ) (P Q : Point) :
    minTriangleArea (halfSquareConfig h f Q P) = minTriangleArea (halfSquareConfig h f P Q) := by
  have e : halfSquareConfig h f Q P = halfSquareConfig h f P Q ∘ Equiv.swap (4 : Fin 6) 5 := by
    funext i
    fin_cases i <;> simp [halfSquareConfig, Equiv.swap_apply_of_ne_of_ne]
  rw [e, minTriangleArea_comp_perm]

/-- Six points in a half-square: for `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)` with
`0 < h, f < 1` and any two points `P, Q` of the closed half-square `T`, some triangle of the six
points has area at most `7/128`. -/
theorem minTriangleArea_halfSquareConfig_le (h f : ℝ) (hh : 0 < h) (hh1 : h < 1) (hf : 0 < f) (hf1 : f < 1)
    (P Q : Point) (hP : P ∈ halfSquare) (hQ : Q ∈ halfSquare) :
    minTriangleArea (halfSquareConfig h f P Q) ≤ 7 / 128 := by
  by_contra hlt; push Not at hlt
  have hmin : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
  have hmin2 : 3 / 55 ≤ minTriangleArea (halfSquareConfig h f Q P) := by
    rw [min_swap]; exact hmin
  have hlt2 : 7 / 128 < minTriangleArea (halfSquareConfig h f Q P) := by rw [min_swap]; exact hlt
  have hmP := hmin.trans (min_anchor_le h f P Q).1
  have hmQ := hmin.trans (min_anchor_le h f P Q).2
  have cP := three_cells_cover h f hh hh1 hf hf1 P hP hmP
  have cQ := three_cells_cover h f hh hh1 hf hf1 Q hQ hmQ
  obtain ⟨e13, e11, e33⟩ := cell_pair_exclusions h f hh hh1 hf hf1 P Q hP hQ hmin
  obtain ⟨e31, -, -⟩ := cell_pair_exclusions h f hh hh1 hf hf1 Q P hQ hP hmin2
  obtain ⟨e12, e32⟩ := no_pair_I_II h f hh hh1 hf hf1 P Q hP hQ hmin
  obtain ⟨e21, e23⟩ := no_pair_I_II h f hh hh1 hf hf1 Q P hQ hP hmin2
  rcases cP with pI | pII | pIII <;> rcases cQ with qI | qII | qIII
  · exact e11 ⟨pI, qI⟩
  · exact e12 ⟨pI, qII⟩
  · exact e13 ⟨pI, qIII⟩
  · exact e21 ⟨qI, pII⟩
  · have hmin' : (6 / 55 : ℝ) / 2 ≤ minTriangleArea (halfSquareConfig h f P Q) := by linarith
    have aA : 6 / 55 ≤ |sarea P Q (0, 0)| := abs_sarea_ge hmin' 4 5 0
    have aE : 6 / 55 ≤ |sarea P Q (1, 1)| := abs_sarea_ge hmin' 4 5 1
    have sA := sarea_swap₁₂ P Q (0, 0)
    have sE := sarea_swap₁₂ P Q (1, 1)
    rcases lt_or_gt_of_ne (ne_zero_of_abs_ge (by norm_num) aA) with dA | dA <;>
      rcases lt_or_gt_of_ne (ne_zero_of_abs_ge (by norm_num) aE) with dE | dE
    · exact no_pair_II_II_same_sign h f hh hh1 hf hf1 P Q hP hQ hlt pII qII dA dE
    · exact no_pair_II_II_opposite_sign h f hh hh1 hf hf1 P Q hP hQ hmin pII qII dA dE
    · exact no_pair_II_II_opposite_sign h f hh hh1 hf hf1 Q P hQ hP hmin2 qII pII
        (by rw [sA]; linarith) (by rw [sE]; linarith)
    · exact no_pair_II_II_same_sign h f hh hh1 hf hf1 Q P hQ hP hlt2 qII pII
        (by rw [sA]; linarith) (by rw [sE]; linarith)
  · exact e23 ⟨qIII, pII⟩
  · exact e31 ⟨qI, pIII⟩
  · exact e32 ⟨pIII, qII⟩
  · exact e33 ⟨pIII, qIII⟩

/-- The reflection `(x, y) ↦ (y, x)` across the diagonal. -/
def swapPt (p : Point) : Point := (p.2, p.1)

theorem swapPt_eq_affineMap (p : Point) : swapPt p = affineMap 0 1 1 0 0 0 p := by
  simp only [swapPt, affineMap]; ext <;> simp

/-- Two free points of a C2 configuration in the closed upper half-square. -/
theorem c2_pair_upper (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point) (i j : Fin 9)
    (hinj : Function.Injective ![(0 : Fin 9), 1, 2, 5, i, j])
    (hi : c2Config h c d f X Y Z i ∈ halfSquare) (hj : c2Config h c d f X Y Z j ∈ halfSquare) :
    minTriangleArea (c2Config h c d f X Y Z) ≤ 7 / 128 := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hle := le_min_comp (by norm_num) (c2Config h c d f X Y Z) hinj
  have e : c2Config h c d f X Y Z ∘ ![(0 : Fin 9), 1, 2, 5, i, j] =
      halfSquareConfig h f (c2Config h c d f X Y Z i) (c2Config h c d f X Y Z j) := by
    funext x; fin_cases x <;> rfl
  rw [e] at hle
  exact hle.trans (minTriangleArea_halfSquareConfig_le h f (by linarith) hh1 hf (by linarith) _ _ hi hj)

/-- Two free points of a C2 configuration in the closed lower half-square: reflect across the
diagonal and use the bottom and right contacts. -/
theorem c2_pair_lower (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point) (i j : Fin 9)
    (hinj : Function.Injective ![(0 : Fin 9), 1, 3, 4, i, j])
    (hi : swapPt (c2Config h c d f X Y Z i) ∈ halfSquare)
    (hj : swapPt (c2Config h c d f X Y Z j) ∈ halfSquare) :
    minTriangleArea (c2Config h c d f X Y Z) ≤ 7 / 128 := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hle := le_min_comp (by norm_num) (c2Config h c d f X Y Z) hinj
  have e : affineMap 0 1 1 0 0 0 ∘ (c2Config h c d f X Y Z ∘ ![(0 : Fin 9), 1, 3, 4, i, j]) =
      halfSquareConfig c d (swapPt (c2Config h c d f X Y Z i))
        (swapPt (c2Config h c d f X Y Z j)) := by
    funext x
    simp only [Function.comp, ← swapPt_eq_affineMap]
    fin_cases x <;> simp [halfSquareConfig, c2Config, swapPt]
  have hm := minTriangleArea_affineMap 0 1 1 0 0 0
    (c2Config h c d f X Y Z ∘ ![(0 : Fin 9), 1, 3, 4, i, j])
  rw [e] at hm
  norm_num at hm
  rw [← hm] at hle
  exact hle.trans (minTriangleArea_halfSquareConfig_le c d (by linarith) hc1 hd (by linarith) _ _ hi hj)

/-- The C2 family: a configuration with the two opposite corners `A = (0,0)`, `E = (1,1)`, one
further point on each side (`c2Config`) and three arbitrary free points of the
square has minimum triangle area at most `7/128`. Two of the free points lie on the same side of
the diagonal `y = x`, and `minTriangleArea_halfSquareConfig_le` applies to them (`c2_pair_upper`, `c2_pair_lower`); the
argument needs only `0 < h, c, d, f < 1`. -/
theorem minTriangleArea_c2Config_le (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (c2Config h c d f X Y Z) ≤ 7 / 128 := by
  have up : ∀ U : Point, U ∈ unitSquare → U.1 ≤ U.2 → U ∈ halfSquare := by
    rintro U ⟨a, b, c, d⟩ hU; exact ⟨a, hU, d⟩
  have lo : ∀ U : Point, U ∈ unitSquare → U.2 ≤ U.1 → swapPt U ∈ halfSquare := by
    rintro U ⟨a, b, c, d⟩ hU; exact ⟨c, hU, b⟩
  rcases le_total X.1 X.2 with hx | hx <;> rcases le_total Y.1 Y.2 with hy | hy <;>
    rcases le_total Z.1 Z.2 with hz | hz
  · exact c2_pair_upper h c d f hanch X Y Z 6 7 (by decide) (up X hX hx) (up Y hY hy)
  · exact c2_pair_upper h c d f hanch X Y Z 6 7 (by decide) (up X hX hx) (up Y hY hy)
  · exact c2_pair_upper h c d f hanch X Y Z 6 8 (by decide) (up X hX hx) (up Z hZ hz)
  · exact c2_pair_lower h c d f hanch X Y Z 7 8 (by decide) (lo Y hY hy) (lo Z hZ hz)
  · exact c2_pair_upper h c d f hanch X Y Z 7 8 (by decide) (up Y hY hy) (up Z hZ hz)
  · exact c2_pair_lower h c d f hanch X Y Z 6 8 (by decide) (lo X hX hx) (lo Z hZ hz)
  · exact c2_pair_lower h c d f hanch X Y Z 6 7 (by decide) (lo X hX hx) (lo Y hY hy)
  · exact c2_pair_lower h c d f hanch X Y Z 6 7 (by decide) (lo X hX hx) (lo Y hY hy)

/-- The C2 family, in the form used by the assembly: no member of C2 has minimum area `A₀`,
since `A₀ - 7/128 = (18√65 - 145)/640 > 0`. -/
theorem minTriangleArea_c2Config_lt_A₀ (h c d f : ℝ) (hanch : C1Anchors h c d f) (X Y Z : Point)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    minTriangleArea (c2Config h c d f X Y Z) < A₀ := by
  exact (minTriangleArea_c2Config_le h c d f hanch X Y Z hX hY hZ).trans_lt A₀_bounds.1

end Heilbronn.Nine.OppositeCorners
