module

public import Heilbronn.Nine.Setup.Families
public import Heilbronn.Nine.Corners.CornerFamilies.SixPoint
public import Heilbronn.Common.Plane

/-! # Five points in a triangle with two prescribed vertices

General-form endpoint-triangle results. They involve no Type-II anchor: a triangle `UVW` (of
area `S`) contains the points, and `U, V` are two of them. Many other files use them in this
general form, including the intermediate per-cell bounds and containments of the support
normalization; these are therefore stated separately.

Definitions:

* the constants `kEnd = 3 - 2√2` (the endpoint constant `k`), `Ktwo = 4 + 2√3` (the
  two-interior-point constant `K`), `Γsix = (11 + 3√5)/2` (the six-point triangular-hull constant
  `Γ`);
* `TriangularHull P`: the convex hull of the points `P` is the closed triangle of three of them;
* `IsSupportTriangle U V W H F X`: `UVW` is a counterclockwise support triangle over the base
  `UV` of the five points `U, V, H, F, X`, with the contact `H` in the open leg `UW`, the contact
  `F` in the open leg `VW`, and `X` in the closed triangle;
* the half-square normal form `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)`, `X`
  (`hsA`, `hsE`, `hsH`, `hsF`, `hsConfig`, `halfSquare`, `HSNormal`);
* the five support cells `InCellI`, …, `InCellV` of the fifth point, by the signs of
  `L = [UFX]`, `K = [VHX]`, `N = [HFX]`. In the normal form `U = A`, `V = E` these are
  `L = fw - βx`, `K = h(1-x) - w`, `N = fw + (h-β)x - fh`, with `X = (x, x+w)` and `β = 1 - f`;
  since the normalization has positive determinant, the same signs can be read in the original
  coordinates.
* `hsMap U V W`: the affine map sending `U, V, W` to `(0,0), (1,1), (0,1)`.

Results:

* `endpointTriangleTheorem` (the endpoint-triangle theorem): five points in a triangle of area
  `S` with two of its vertices among them have a triangle of area at most `(3 - 2√2) S`;
* `fourPointEndpointLemma` (the four-point endpoint lemma): four such points have a triangle of
  area at most `S/3`, and at most `S/4` when their hull is not a triangle;
* `exists_isSupportTriangle`, `exists_affineMap_hsNormal`: the support triangle and the affine map
  to the half-square normal form; `support_apex` is the sign-based construction of the support
  apex behind them;
* `hsNormal_area_bounds`: the area inequalities and identities of the normal form;
* `hsNormal_five_cells`: exactly five sign cells and their strict containments;
* the per-cell bounds on the normalized doubled minimum `s`: `inCellI_bound`,
  `inCellIII_bound` (`s ≤ 1/(4+2√3)`), `inCellIV_bound` (`s ≤ 1/12`), `inCellV_bound` (cell V,
  `s ≤ (5√5-11)/2 < 1/10`), `inCellII_bound` (cell II, `s ≤ β(1-β)/(2-β) ≤ k` when `h ≥ β`), and their
  combination `hs_le_kEnd` (`s ≤ k` in the normal form).

Throughout, "doubled area at least `s`" is `s / 2 ≤ minTriangleArea` of the points concerned.

Helper results (general, reusable): `le_abs_sarea_of_le_min`, `exists_extreme_left`,
`exists_extreme_right` (the extreme points seen from a base vertex), `triangularHull_comp_perm`.
Closed triangles, by barycentric coordinates and by signs, are in `Heilbronn/Common/Plane.lean`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.TypeII

/-! ### Constants -/

/-- `k = 3 - 2√2`, the five-point endpoint constant of `endpointTriangleTheorem`. -/
def kEnd : ℝ := 3 - 2 * Real.sqrt 2

/-- `K = 4 + 2√3`: an actual triangle containing two further configuration points has doubled
area at least `K s` (the two-interior-point lemma `twoInteriorPointLemma`). -/
def Ktwo : ℝ := 4 + 2 * Real.sqrt 3

/-- `Γ = (11 + 3√5)/2`, the six-point triangular-hull constant
(`CornerFamilies.sixPointTriangularHullTheorem`). -/
def Γsix : ℝ := (11 + 3 * Real.sqrt 5) / 2

theorem sqrt_two_lt : Real.sqrt 2 < 17 / 12 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

theorem sqrt_two_gt : 7 / 5 < Real.sqrt 2 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt_three_gt : 12 / 7 < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt_three_lt : Real.sqrt 3 < 7 / 4 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

/-- `1/6 < k`. -/
theorem kEnd_gt : 1 / 6 < kEnd := by unfold kEnd; linarith [sqrt_two_lt]

/-- `k < 1/5`. -/
theorem kEnd_lt : kEnd < 1 / 5 := by unfold kEnd; linarith [sqrt_two_gt]

theorem kEnd_pos : 0 < kEnd := by linarith [kEnd_gt]

/-- `K > 6`. -/
theorem Ktwo_gt : 6 < Ktwo := by
  unfold Ktwo; have : 1 < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  linarith

theorem Ktwo_pos : 0 < Ktwo := by linarith [Ktwo_gt]

theorem one_le_Ktwo_mul_kEnd : 1 ≤ Ktwo * kEnd := by
  nlinarith [Ktwo_gt, kEnd_gt]

/-! ### Least areas -/

/-- A lower bound `s/2` on the least area bounds every doubled area of distinct indices. -/
theorem le_abs_sarea_of_le_min {n : ℕ} {P : Fin n → Point} {s : ℝ}
    (h : s / 2 ≤ minTriangleArea P) (i j k : Fin n) (hij : i ≠ j := by decide)
    (hjk : j ≠ k := by decide) (hik : i ≠ k := by decide) :
    s ≤ |sarea (P i) (P j) (P k)| := by
  have := area_of_le_min h i j k hij hjk hik
  rw [triangleArea_eq] at this
  linarith

/-- Reindexing a configuration by an injective map does not decrease its least area. -/
theorem min_le_min_reindex {n m : ℕ} (hm : 3 ≤ m) (P : Fin n → Point) (Q : Fin m → Point)
    (f : Fin m → Fin n) (hf : Function.Injective f) (hQ : Q = P ∘ f) :
    minTriangleArea P ≤ minTriangleArea Q :=
  hQ ▸ le_min_comp hm P hf

/-! ### Extreme points seen from a base vertex -/

/-- Among finitely many points strictly left of `UV`, in general position as seen from `U`, one
point `P i` is extreme: all others are strictly right of the ray `U → P i`. -/
theorem exists_extreme_left {n : ℕ} [NeZero n] (U V : Point) (P : Fin n → Point)
    (hpos : ∀ i, 0 < sarea U V (P i)) (hne : ∀ i j, i ≠ j → sarea U (P i) (P j) ≠ 0) :
    ∃ i, ∀ j, j ≠ i → sarea U (P i) (P j) < 0 := by
  let κ : Fin n → ℝ := fun i =>
    (((P i).1 - U.1) * (V.1 - U.1) + ((P i).2 - U.2) * (V.2 - U.2)) / sarea U V (P i)
  obtain ⟨i, -, hi⟩ := Finset.exists_min_image Finset.univ κ Finset.univ_nonempty
  refine ⟨i, fun j hj => ?_⟩
  have h1 := hi j (Finset.mem_univ _)
  have hdi := hpos i
  have hdj := hpos j
  simp only [κ] at h1
  rw [div_le_div_iff₀ hdi hdj] at h1
  have hv : 0 < (V.1 - U.1) ^ 2 + (V.2 - U.2) ^ 2 := by
    by_contra hcon
    have e1 : V.1 - U.1 = 0 := by nlinarith [sq_nonneg (V.1 - U.1), sq_nonneg (V.2 - U.2)]
    have e2 : V.2 - U.2 = 0 := by nlinarith [sq_nonneg (V.1 - U.1), sq_nonneg (V.2 - U.2)]
    have := hpos i
    unfold sarea at this
    rw [e1, e2] at this
    simp at this
  have hid : (((P j).1 - U.1) * (V.1 - U.1) + ((P j).2 - U.2) * (V.2 - U.2)) * sarea U V (P i) -
      (((P i).1 - U.1) * (V.1 - U.1) + ((P i).2 - U.2) * (V.2 - U.2)) * sarea U V (P j) =
      -(((V.1 - U.1) ^ 2 + (V.2 - U.2) ^ 2) * sarea U (P i) (P j)) := by
    unfold sarea; ring
  rcases lt_or_gt_of_ne (hne i j (Ne.symm hj)) with h | h
  · exact h
  · nlinarith [mul_pos hv h]

/-- Among finitely many points strictly left of `UV`, in general position as seen from `V`, one
point `P i` is extreme: all others are strictly left of the ray `V → P i`. -/
theorem exists_extreme_right {n : ℕ} [NeZero n] (U V : Point) (P : Fin n → Point)
    (hpos : ∀ i, 0 < sarea U V (P i)) (hne : ∀ i j, i ≠ j → sarea V (P i) (P j) ≠ 0) :
    ∃ i, ∀ j, j ≠ i → 0 < sarea V (P i) (P j) := by
  let κ : Fin n → ℝ := fun i =>
    (((P i).1 - V.1) * (U.1 - V.1) + ((P i).2 - V.2) * (U.2 - V.2)) / sarea U V (P i)
  obtain ⟨i, -, hi⟩ := Finset.exists_min_image Finset.univ κ Finset.univ_nonempty
  refine ⟨i, fun j hj => ?_⟩
  have h1 := hi j (Finset.mem_univ _)
  have hdi := hpos i
  have hdj := hpos j
  simp only [κ] at h1
  rw [div_le_div_iff₀ hdi hdj] at h1
  have hv : 0 < (V.1 - U.1) ^ 2 + (V.2 - U.2) ^ 2 := by
    by_contra hcon
    have e1 : V.1 - U.1 = 0 := by nlinarith [sq_nonneg (V.1 - U.1), sq_nonneg (V.2 - U.2)]
    have e2 : V.2 - U.2 = 0 := by nlinarith [sq_nonneg (V.1 - U.1), sq_nonneg (V.2 - U.2)]
    have := hpos i
    unfold sarea at this
    rw [e1, e2] at this
    simp at this
  have hid : (((P j).1 - V.1) * (U.1 - V.1) + ((P j).2 - V.2) * (U.2 - V.2)) * sarea U V (P i) -
      (((P i).1 - V.1) * (U.1 - V.1) + ((P i).2 - V.2) * (U.2 - V.2)) * sarea U V (P j) =
      ((V.1 - U.1) ^ 2 + (V.2 - U.2) ^ 2) * sarea V (P i) (P j) := by
    unfold sarea; ring
  rcases lt_or_gt_of_ne (hne i j (Ne.symm hj)) with h | h
  · nlinarith [mul_pos hv (neg_pos.2 h)]
  · exact h

/-! ### Hulls and support triangles -/

/-- The convex hull of the points `P 0, …, P (n-1)` is the closed triangle spanned by three of
them. For four or five points containing two prescribed extreme vertices this is the "triangular
hull" alternative; its negation is "nontriangular hull". -/
def TriangularHull {n : ℕ} (P : Fin n → Point) : Prop :=
  ∃ i j k : Fin n, ∀ m, P m ∈ convexHull ℝ ({P i, P j, P k} : Set Point)

/-- Relabelling the points does not change whether the hull is triangular. -/
theorem triangularHull_comp_perm {n : ℕ} (P : Fin n → Point) (σ : Equiv.Perm (Fin n))
    (h : TriangularHull (P ∘ σ)) : TriangularHull P := by
  obtain ⟨i, j, k, hm⟩ := h
  refine ⟨σ i, σ j, σ k, fun m => ?_⟩
  have := hm (σ.symm m)
  simpa using this

/-- `UVW` is a support triangle over the base `UV` for the five points `U, V, H, F, X`: it is
counterclockwise, the contact `H` lies in the relative interior of the leg `UW`, the contact `F`
in the relative interior of the leg `VW`, and the fifth point `X` lies in the closed triangle. -/
def IsSupportTriangle (U V W H F X : Point) : Prop :=
  0 < sarea U V W ∧ H ∈ openSegment ℝ U W ∧ F ∈ openSegment ℝ V W ∧
    X ∈ convexHull ℝ ({U, V, W} : Set Point)

/-! ### The half-square normal form -/

/-- The anchor `A = (0,0)` of the half-square normal form. -/
def hsA : Point := (0, 0)

/-- The anchor `E = (1,1)` of the half-square normal form. -/
def hsE : Point := (1, 1)

/-- The contact `H = (0,h)` on the left leg of the half-square. -/
def hsH (h : ℝ) : Point := (0, h)

/-- The contact `F = (f,1)` on the top leg of the half-square. -/
def hsF (f : ℝ) : Point := (f, 1)

/-- The closed half-square `0 ≤ x ≤ y ≤ 1`, the triangle `(0,0), (1,1), (0,1)` of area `1/2`. -/
def halfSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ p.2 ∧ p.2 ≤ 1}

/-- The five points `A, E, H, F, X` of the half-square normal form. -/
def hsConfig (h f : ℝ) (X : Point) : Fin 5 → Point := ![hsA, hsE, hsH h, hsF f, X]

/-- The parameter conditions of the normal form: `0 < h, f < 1` and `X` in the half-square. -/
def HSNormal (h f : ℝ) (X : Point) : Prop :=
  0 < h ∧ h < 1 ∧ 0 < f ∧ f < 1 ∧ X ∈ halfSquare

/-! ### The five support cells -/

/-- Cell I, signs `(L, K, N) = (+, +, -)` with `L = [UFX]`, `K = [VHX]`, `N = [HFX]`:
`X ∈ AHF ∩ AEH`. -/
def InCellI (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ 0 < sarea V H X ∧ sarea H F X < 0

/-- Cell II, signs `(-, +, -)`: `X ∈ AEF ∩ AEH`. -/
def InCellII (U V H F X : Point) : Prop :=
  sarea U F X < 0 ∧ 0 < sarea V H X ∧ sarea H F X < 0

/-- Cell III, signs `(-, -, -)`: `X ∈ EHF ∩ AEF`. -/
def InCellIII (U V H F X : Point) : Prop :=
  sarea U F X < 0 ∧ sarea V H X < 0 ∧ sarea H F X < 0

/-- Cell IV, signs `(+, -, -)`: `X ∈ AHF ∩ EHF`. -/
def InCellIV (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ sarea V H X < 0 ∧ sarea H F X < 0

/-- Cell V, signs `(+, -, +)`: `X` lies above `HF`. -/
def InCellV (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ sarea V H X < 0 ∧ 0 < sarea H F X

/-! ### Signed areas in the normal form -/

section NormalForm

variable {h f : ℝ} {X : Point}

theorem sarea_AEX : sarea hsA hsE X = X.2 - X.1 := by simp only [sarea, hsA, hsE]; ring
theorem sarea_AHX : sarea hsA (hsH h) X = -(h * X.1) := by simp only [sarea, hsA, hsH]; ring
theorem sarea_AFX : sarea hsA (hsF f) X = f * (X.2 - X.1) - (1 - f) * X.1 := by
  simp only [sarea, hsA, hsF]; ring
theorem sarea_EHX : sarea hsE (hsH h) X = h * (1 - X.1) - (X.2 - X.1) := by
  simp only [sarea, hsE, hsH]; ring
theorem sarea_EFX : sarea hsE (hsF f) X = (1 - f) * (1 - X.2) := by
  simp only [sarea, hsE, hsF]; ring
theorem sarea_HFX : sarea (hsH h) (hsF f) X = f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h := by
  simp only [sarea, hsH, hsF]; ring
theorem sarea_AHF : sarea hsA (hsH h) (hsF f) = -(h * f) := by
  simp only [sarea, hsA, hsH, hsF]; ring
theorem sarea_EHF : sarea hsE (hsH h) (hsF f) = -((1 - h) * (1 - f)) := by
  simp only [sarea, hsE, hsH, hsF]; ring
theorem sarea_FHX : sarea (hsF f) (hsH h) X =
    -(f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h) := by simp only [sarea, hsH, hsF]; ring
theorem sarea_HAX : sarea (hsH h) hsA X = h * X.1 := by simp only [sarea, hsA, hsH]; ring
theorem sarea_FAX : sarea (hsF f) hsA X = -(f * (X.2 - X.1) - (1 - f) * X.1) := by
  simp only [sarea, hsA, hsF]; ring
theorem sarea_HEX : sarea (hsH h) hsE X = -(h * (1 - X.1) - (X.2 - X.1)) := by
  simp only [sarea, hsE, hsH]; ring

end NormalForm

/-- `√(hf) + √((1-h)(1-f)) ≤ 1` for `h, f ∈ [0,1]` (Cauchy–Schwarz). -/
theorem sqrt_add_sqrt_le_one {h f : ℝ} (hh0 : 0 ≤ h) (hh1 : h ≤ 1) (hf0 : 0 ≤ f)
    (hf1 : f ≤ 1) : Real.sqrt (h * f) + Real.sqrt ((1 - h) * (1 - f)) ≤ 1 := by
  have ha : 0 ≤ Real.sqrt (h * f) := Real.sqrt_nonneg _
  have hb : 0 ≤ Real.sqrt ((1 - h) * (1 - f)) := Real.sqrt_nonneg _
  have ha2 : Real.sqrt (h * f) ^ 2 = h * f := Real.sq_sqrt (mul_nonneg hh0 hf0)
  have hb2 : Real.sqrt ((1 - h) * (1 - f)) ^ 2 = (1 - h) * (1 - f) :=
    Real.sq_sqrt (mul_nonneg (by linarith) (by linarith))
  set a := Real.sqrt (h * f)
  set b := Real.sqrt ((1 - h) * (1 - f))
  have huv : 0 ≤ h * (1 - f) + f * (1 - h) := by nlinarith
  have hab2 : (a * b) ^ 2 = h * f * ((1 - h) * (1 - f)) := by rw [mul_pow, ha2, hb2]
  have hab : 2 * (a * b) ≤ h * (1 - f) + f * (1 - h) := by
    nlinarith [sq_nonneg (h * (1 - f) - f * (1 - h)), mul_nonneg ha hb]
  nlinarith

/-- The products bound: if `p ≤ hf` and `q ≤ (1-h)(1-f)` (all nonnegative), then
`p + q + 2√(pq) ≤ 1`. -/
theorem hs_product_bound {h f p q : ℝ} (hh0 : 0 ≤ h) (hh1 : h ≤ 1) (hf0 : 0 ≤ f) (hf1 : f ≤ 1)
    (hq : 0 ≤ q) (hhf : p ≤ h * f) (hab : q ≤ (1 - h) * (1 - f)) :
    p + q + 2 * Real.sqrt (p * q) ≤ 1 := by
  have hS := sqrt_add_sqrt_le_one hh0 hh1 hf0 hf1
  have ha : 0 ≤ Real.sqrt (h * f) := Real.sqrt_nonneg _
  have hb : 0 ≤ Real.sqrt ((1 - h) * (1 - f)) := Real.sqrt_nonneg _
  have ha2 : Real.sqrt (h * f) ^ 2 = h * f := Real.sq_sqrt (mul_nonneg hh0 hf0)
  have hb2 : Real.sqrt ((1 - h) * (1 - f)) ^ 2 = (1 - h) * (1 - f) :=
    Real.sq_sqrt (mul_nonneg (by linarith) (by linarith))
  have hpq : Real.sqrt (p * q) ≤ Real.sqrt (h * f) * Real.sqrt ((1 - h) * (1 - f)) := by
    rw [← Real.sqrt_mul (mul_nonneg hh0 hf0)]
    exact Real.sqrt_le_sqrt (mul_le_mul hhf hab hq (mul_nonneg hh0 hf0))
  nlinarith

section NormalForm2

variable {h f s : ℝ} {X : Point}

/-- In the half-square normal form with every doubled area at least `s > 0`, writing
`X = (x, x + w)`, `α = 1 - h`, `β = 1 - f`, `L = fw - βx`, `K = h(1-x) - w`,
`N = fw + (h-β)x - fh`: `w, hx, β(1-x-w) ≥ s`, `|L|, |K|, |N| ≥ s`, `hf, αβ ≥ s`,
`√(hf) + √(αβ) ≤ 1`, and `N = -fK - αβx = αL - hf(1-x-w)`. -/
theorem hsNormal_area_bounds (hN : HSNormal h f X) (_hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X)) :
    s ≤ X.2 - X.1 ∧ s ≤ h * X.1 ∧ s ≤ (1 - f) * (1 - X.2) ∧
      s ≤ |f * (X.2 - X.1) - (1 - f) * X.1| ∧ s ≤ |h * (1 - X.1) - (X.2 - X.1)| ∧
      s ≤ |f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h| ∧
      s ≤ h * f ∧ s ≤ (1 - h) * (1 - f) ∧
      Real.sqrt (h * f) + Real.sqrt ((1 - h) * (1 - f)) ≤ 1 ∧
      f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h =
        -f * (h * (1 - X.1) - (X.2 - X.1)) - (1 - h) * (1 - f) * X.1 ∧
      f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h =
        (1 - h) * (f * (X.2 - X.1) - (1 - f) * X.1) - h * f * (1 - X.2) := by
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  have e1 : s ≤ |sarea hsA hsE X| := le_abs_sarea_of_le_min hmin 0 1 4
  have e2 : s ≤ |sarea hsA (hsH h) X| := le_abs_sarea_of_le_min hmin 0 2 4
  have e3 : s ≤ |sarea hsA (hsF f) X| := le_abs_sarea_of_le_min hmin 0 3 4
  have e4 : s ≤ |sarea hsE (hsH h) X| := le_abs_sarea_of_le_min hmin 1 2 4
  have e5 : s ≤ |sarea hsE (hsF f) X| := le_abs_sarea_of_le_min hmin 1 3 4
  have e6 : s ≤ |sarea (hsH h) (hsF f) X| := le_abs_sarea_of_le_min hmin 2 3 4
  have e7 : s ≤ |sarea hsA (hsH h) (hsF f)| := le_abs_sarea_of_le_min hmin 0 2 3
  have e8 : s ≤ |sarea hsE (hsH h) (hsF f)| := le_abs_sarea_of_le_min hmin 1 2 3
  rw [sarea_AEX, abs_of_nonneg (by linarith)] at e1
  rw [sarea_AHX, abs_neg, abs_of_nonneg (mul_nonneg hh0.le hx0)] at e2
  rw [sarea_AFX] at e3
  rw [sarea_EHX] at e4
  rw [sarea_EFX, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at e5
  rw [sarea_HFX] at e6
  rw [sarea_AHF, abs_neg, abs_of_nonneg (mul_nonneg hh0.le hf0.le)] at e7
  rw [sarea_EHF, abs_neg, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at e8
  exact ⟨e1, e2, e5, e3, e4, e6, e7, e8,
    sqrt_add_sqrt_le_one hh0.le hh1.le hf0.le hf1.le, by ring, by ring⟩

/-- In the half-square normal form with positive doubled areas, the fifth point lies in exactly
one of the five sign cells I–V (the identities of `hsNormal_area_bounds` exclude the other three sign patterns),
with the strict containments: I in `AHF ∩ AEH`, II in `AEF ∩ AEH`, III in `EHF ∩ AEF`, IV in
`AHF ∩ EHF`, V above `HF`. (The counterclockwise orders are `A F H`, `A E H`, `A E F`,
`E F H`.) -/
theorem hsNormal_five_cells (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X)) :
    (InCellI hsA hsE (hsH h) (hsF f) X ∨ InCellII hsA hsE (hsH h) (hsF f) X ∨
      InCellIII hsA hsE (hsH h) (hsF f) X ∨ InCellIV hsA hsE (hsH h) (hsF f) X ∨
      InCellV hsA hsE (hsH h) (hsF f) X) ∧
    (InCellI hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA (hsF f) (hsH h) ∧ InTriangle X hsA hsE (hsH h)) ∧
    (InCellII hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA hsE (hsF f) ∧ InTriangle X hsA hsE (hsH h)) ∧
    (InCellIII hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsE (hsF f) (hsH h) ∧ InTriangle X hsA hsE (hsF f)) ∧
    (InCellIV hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA (hsF f) (hsH h) ∧ InTriangle X hsE (hsF f) (hsH h)) ∧
    (InCellV hsA hsE (hsH h) (hsF f) X → 0 < sarea (hsH h) (hsF f) X) := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, -, -, -, hid1, hid2⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  simp only [InCellI, InCellII, InCellIII, InCellIV, InCellV, InTriangle, sarea_AFX, sarea_EHX,
    sarea_HFX, sarea_AEX, sarea_FHX, sarea_HAX, sarea_FAX, sarea_HEX, sarea_EFX]
  have hL0 : f * (X.2 - X.1) - (1 - f) * X.1 ≠ 0 := by
    intro h0; rw [h0, abs_zero] at hL; linarith
  have hK0 : h * (1 - X.1) - (X.2 - X.1) ≠ 0 := by
    intro h0; rw [h0, abs_zero] at hK; linarith
  have hN0 : f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h ≠ 0 := by
    intro h0; rw [h0, abs_zero] at hNN; linarith
  have hαβx : 0 ≤ (1 - h) * (1 - f) * X.1 := mul_nonneg (mul_nonneg (by linarith) (by linarith)) hx0
  have hhfy : 0 ≤ h * f * (1 - X.2) := mul_nonneg (mul_nonneg hh0.le hf0.le) (by linarith)
  refine ⟨?_, fun ⟨a, b, c⟩ => ⟨⟨a, by linarith, by linarith⟩, ⟨by linarith, b, by linarith⟩⟩,
    fun ⟨a, b, c⟩ => ⟨⟨by linarith, by linarith, by linarith⟩, ⟨by linarith, b, by linarith⟩⟩,
    fun ⟨a, b, c⟩ => ⟨⟨by linarith, by linarith, by linarith⟩,
      ⟨by linarith, by linarith, by linarith⟩⟩,
    fun ⟨a, b, c⟩ => ⟨⟨a, by linarith, by linarith⟩, ⟨by linarith, by linarith, by linarith⟩⟩,
    fun ⟨_, _, c⟩ => c⟩
  rcases lt_or_gt_of_ne hL0 with hL' | hL' <;> rcases lt_or_gt_of_ne hK0 with hK' | hK' <;>
    rcases lt_or_gt_of_ne hN0 with hN' | hN'
  · exact Or.inr (Or.inr (Or.inl ⟨hL', hK', hN'⟩))
  · exfalso; nlinarith [mul_neg_of_pos_of_neg (by linarith : (0:ℝ) < 1 - h) hL']
  · exact Or.inr (Or.inl ⟨hL', hK', hN'⟩)
  · exfalso; nlinarith [mul_pos hf0 hK']
  · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨hL', hK', hN'⟩)))
  · exact Or.inr (Or.inr (Or.inr (Or.inr ⟨hL', hK', hN'⟩)))
  · exact Or.inl ⟨hL', hK', hN'⟩
  · exfalso; nlinarith [mul_pos hf0 hK']

end NormalForm2

/-! ### Per-cell bounds on the normalized doubled minimum -/

section Cells

variable {h f s : ℝ} {X : Point}

/-- In cell I, subdivision of `AHF` gives `hf ≥ 3s`, and with `αβ ≥ s` the bound
`√(hf) + √(αβ) ≤ 1` of `hsNormal_area_bounds` gives `s ≤ 1/(√3+1)² = 1/(4+2√3) < k`. -/
theorem inCellI_bound (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellI hsA hsE (hsH h) (hsF f) X) :
    3 * s ≤ h * f ∧ s ≤ 1 / Ktwo := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, hhf, hab, -, -, -⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  obtain ⟨hL', hK', hN'⟩ := hX
  rw [sarea_AFX] at hL'
  rw [sarea_HFX] at hN'
  rw [abs_of_pos hL'] at hL
  rw [abs_of_neg hN'] at hNN
  have h3 : 3 * s ≤ h * f := by nlinarith
  refine ⟨h3, ?_⟩
  have hb := hs_product_bound hh0.le hh1.le hf0.le hf1.le hs.le h3 hab
  have hsq : Real.sqrt (3 * s * s) = Real.sqrt 3 * s := by
    rw [mul_assoc, Real.sqrt_mul (by norm_num), Real.sqrt_mul_self hs.le]
  rw [hsq] at hb
  rw [le_div_iff₀ Ktwo_pos]
  unfold Ktwo
  linarith

/-- Cell III is the reflected case of cell I (under `(x,y) ↦ (1-y, 1-x)`): `αβ ≥ 3s` and
`s ≤ 1/(4+2√3)`. -/
theorem inCellIII_bound (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellIII hsA hsE (hsH h) (hsF f) X) :
    3 * s ≤ (1 - h) * (1 - f) ∧ s ≤ 1 / Ktwo := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, hhf, hab, -, -, -⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  obtain ⟨hL', hK', hN'⟩ := hX
  rw [sarea_EHX] at hK'
  rw [sarea_HFX] at hN'
  rw [abs_of_neg hK'] at hK
  rw [abs_of_neg hN'] at hNN
  have h3 : 3 * s ≤ (1 - h) * (1 - f) := by nlinarith
  refine ⟨h3, ?_⟩
  have hb := hs_product_bound hh0.le hh1.le hf0.le hf1.le (by linarith) hhf h3
  have hsq : Real.sqrt (s * (3 * s)) = Real.sqrt 3 * s := by
    rw [mul_comm, mul_assoc, Real.sqrt_mul (by norm_num), Real.sqrt_mul_self hs.le]
  rw [hsq] at hb
  rw [le_div_iff₀ Ktwo_pos]
  unfold Ktwo
  linarith

/-- In cell IV both products `hf, αβ` are at least `3s`, giving `s ≤ 1/12`. -/
theorem inCellIV_bound (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellIV hsA hsE (hsH h) (hsF f) X) :
    s ≤ 1 / 12 := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, hhf, hab, -, -, -⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  obtain ⟨hL', hK', hN'⟩ := hX
  rw [sarea_AFX] at hL'
  rw [sarea_EHX] at hK'
  rw [sarea_HFX] at hN'
  rw [abs_of_pos hL'] at hL
  rw [abs_of_neg hK'] at hK
  rw [abs_of_neg hN'] at hNN
  have h3 : 3 * s ≤ h * f := by nlinarith
  have h3' : 3 * s ≤ (1 - h) * (1 - f) := by nlinarith
  have hb := hs_product_bound hh0.le hh1.le hf0.le hf1.le (by linarith) h3 h3'
  have hsq : Real.sqrt (3 * s * (3 * s)) = 3 * s := Real.sqrt_mul_self (by linarith)
  rw [hsq] at hb
  linarith

/-- The scalar maximum behind `inCellV_bound`: if `s(h+β-hβ) ≤ hβ(1-h)(1-β)` with `h, β ∈ (0,1)`, then
`s ≤ (5√5-11)/2` (with `r = √(hβ)`, `h + β ≥ 2r` and `r(1-r)²/(2-r) ≤ (5√5-11)/2`). -/
theorem inCellV_bound_scalar {h β s : ℝ} (hh0 : 0 < h) (hh1 : h < 1) (hβ0 : 0 < β) (hβ1 : β < 1)
    (key : s * (h + β - h * β) ≤ h * β * ((1 - h) * (1 - β))) :
    s ≤ (5 * Real.sqrt 5 - 11) / 2 := by
  have h5 : Real.sqrt 5 ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have h5gt : 2 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have hden : 0 < h + β - h * β := by nlinarith
  have hr2 : Real.sqrt (h * β) ^ 2 = h * β := Real.sq_sqrt (by positivity)
  have hr0 : 0 < Real.sqrt (h * β) := Real.sqrt_pos.2 (by positivity)
  set r := Real.sqrt (h * β)
  have hhβ : h * β < 1 := by nlinarith
  have hr1 : r ≤ 1 := by nlinarith only [hr2, hr0, hhβ]
  have hS : 2 * r ≤ h + β := by nlinarith only [sq_nonneg (h - β), hr2, hr0, hh0, hβ0]
  set c := (5 * Real.sqrt 5 - 11) / 2 with hc
  have hg : c * (2 - r) - r * (1 - r) ^ 2 =
      (r - (3 - Real.sqrt 5) / 2) ^ 2 * (Real.sqrt 5 - 1 - r) := by
    rw [hc]; linear_combination (-(Real.sqrt 5) / 4 + 7 / 4 - 3 * r / 4) * h5
  have hgnn : 0 ≤ c * (2 - r) - r * (1 - r) ^ 2 := by
    rw [hg]; exact mul_nonneg (sq_nonneg _) (by linarith)
  have hc0 : 0 < c := by
    rw [hc]; have : 11 / 5 < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    linarith
  by_contra hcon
  push Not at hcon
  have st1 : c * (h + β - h * β) < h * β * ((1 - h) * (1 - β)) := by
    nlinarith only [mul_pos (sub_pos.2 hcon) hden, key]
  have st2 : (c + r ^ 2) * (2 * r) ≤ (c + r ^ 2) * (h + β) :=
    mul_le_mul_of_nonneg_left hS (by positivity)
  have st1' : c * (h + β - r ^ 2) < r ^ 2 * (1 - (h + β) + r ^ 2) := by
    rw [hr2]; nlinarith only [st1]
  have st3 : 2 * r * (c + r ^ 2) < r ^ 2 * (1 + r ^ 2 + c) := by nlinarith only [st1', st2]
  nlinarith only [mul_nonneg hr0.le hgnn, st3]

/-- In cell V, with `β = 1 - f`, `s ≤ hβ(1-h)(1-β)/(h+β-hβ) ≤ (5√5 - 11)/2 < 1/10`. -/
theorem inCellV_bound (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellV hsA hsE (hsH h) (hsF f) X) :
    s ≤ h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ∧
      s ≤ (5 * Real.sqrt 5 - 11) / 2 ∧ (5 * Real.sqrt 5 - 11) / 2 < 1 / 10 := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, hhf, hab, -, -, -⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  obtain ⟨-, -, hN'⟩ := hX
  rw [sarea_HFX] at hN'
  rw [abs_of_pos hN'] at hNN
  have hden : 0 < h + (1 - f) - h * (1 - f) := by nlinarith
  have key : s * (h + (1 - f) - h * (1 - f)) ≤ h * (1 - f) * (1 - h) * f := by
    nlinarith [mul_nonneg (mul_nonneg hh0.le (by linarith : (0:ℝ) ≤ 1 - f)) (by linarith :
        (0:ℝ) ≤ f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h - s),
      mul_nonneg (mul_nonneg (by linarith : (0:ℝ) ≤ 1 - h) (by linarith : (0:ℝ) ≤ 1 - f))
        (by linarith : (0:ℝ) ≤ h * X.1 - s),
      mul_nonneg (mul_nonneg hf0.le hh0.le) (by linarith : (0:ℝ) ≤ (1 - f) * (1 - X.2) - s)]
  have h5lt : Real.sqrt 5 < 56 / 25 := by rw [Real.sqrt_lt' (by norm_num)]; norm_num
  refine ⟨by rw [le_div_iff₀ hden]; linarith, ?_, by linarith⟩
  exact inCellV_bound_scalar (β := 1 - f) hh0 hh1 (by linarith) (by linarith) (by
    have : h * (1 - f) * ((1 - h) * (1 - (1 - f))) = h * (1 - f) * (1 - h) * f := by ring
    rw [this]; exact key)

/-- In cell II, if `h ≥ β = 1 - f` then `s ≤ β(1-β)/(2-β)`; in every case (reflecting if
necessary) `s ≤ k = 3 - 2√2`. -/
theorem inCellII_bound (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellII hsA hsE (hsH h) (hsF f) X) :
    (1 - f ≤ h → s ≤ (1 - f) * f / (1 + f)) ∧ s ≤ kEnd := by
  obtain ⟨hw, hhx, hβy, hL, hK, hNN, hhf, hab, -, -, -⟩ := hsNormal_area_bounds hN hs hmin
  obtain ⟨hh0, hh1, hf0, hf1, hx0, hxy, hy1⟩ := hN
  obtain ⟨hL', hK', hN'⟩ := hX
  rw [sarea_AFX] at hL'
  rw [sarea_EHX] at hK'
  rw [sarea_HFX] at hN'
  rw [abs_of_neg hL'] at hL
  rw [abs_of_pos hK'] at hK
  rw [abs_of_neg hN'] at hNN
  have caseA : 1 - f ≤ h → s * (1 + f) ≤ (1 - f) * f := by
    intro hhβ
    have hx : s * (1 + f) ≤ (1 - f) * X.1 := by nlinarith
    have e1 : (h - (1 - f)) * (s * (1 + f)) ≤ (h - (1 - f)) * ((1 - f) * X.1) :=
      mul_le_mul_of_nonneg_left hx (by linarith)
    have e2 : (1 - f) * f * s ≤ (1 - f) * f * (X.2 - X.1) :=
      mul_le_mul_of_nonneg_left hw (by nlinarith)
    have e3 : (1 - f) * (s + f * (X.2 - X.1) + (h - (1 - f)) * X.1) ≤ (1 - f) * (f * h) :=
      mul_le_mul_of_nonneg_left (by linarith) (by linarith)
    have : h * (s * (1 + f)) ≤ h * ((1 - f) * f) := by nlinarith
    exact le_of_mul_le_mul_left this hh0
  have caseB : h ≤ 1 - f → s * (2 - h) ≤ h * (1 - h) := by
    intro hhβ
    have hx : s * (2 - h) ≤ h * (1 - X.2) := by nlinarith
    have e1 : (1 - f - h) * (s * (2 - h)) ≤ (1 - f - h) * (h * (1 - X.2)) :=
      mul_le_mul_of_nonneg_left hx (by linarith)
    have e2 : h * (1 - h) * s ≤ h * (1 - h) * (X.2 - X.1) :=
      mul_le_mul_of_nonneg_left hw (by nlinarith)
    have e3 : h * (s + (1 - h) * (X.2 - X.1) + (1 - f - h) * (1 - X.2)) ≤
        h * ((1 - h) * (1 - f)) :=
      mul_le_mul_of_nonneg_left (by nlinarith) hh0.le
    have : (1 - f) * (s * (2 - h)) ≤ (1 - f) * (h * (1 - h)) := by nlinarith
    exact le_of_mul_le_mul_left this (by linarith)
  have h2 : Real.sqrt 2 ^ 2 = 2 := Real.sq_sqrt (by norm_num)
  refine ⟨fun hhβ => by rw [le_div_iff₀ (by linarith)]; linarith [caseA hhβ], ?_⟩
  rcases le_total (1 - f) h with hhβ | hhβ
  · have hA := caseA hhβ
    have : (1 - f) * f ≤ kEnd * (1 + f) := by
      unfold kEnd; nlinarith [sq_nonneg (1 - f - (2 - Real.sqrt 2))]
    nlinarith
  · have hB := caseB hhβ
    have : h * (1 - h) ≤ kEnd * (2 - h) := by
      unfold kEnd; nlinarith [sq_nonneg (h - (2 - Real.sqrt 2))]
    nlinarith

/-- The normalized doubled minimum of the half-square normal form is at most `k`: the five cells
together. -/
theorem hs_le_kEnd (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X)) : s ≤ kEnd := by
  have hk := kEnd_gt
  have hK := Ktwo_gt
  have hK' : 1 / Ktwo < 1 / 6 := by
    rw [div_lt_div_iff₀ Ktwo_pos (by norm_num)]; linarith
  rcases (hsNormal_five_cells hN hs hmin).1 with hc | hc | hc | hc | hc
  · linarith [(inCellI_bound hN hs hmin hc).2]
  · exact (inCellII_bound hN hs hmin hc).2
  · linarith [(inCellIII_bound hN hs hmin hc).2]
  · linarith [inCellIV_bound hN hs hmin hc]
  · obtain ⟨-, h1, h2⟩ := inCellV_bound hN hs hmin hc
    linarith

end Cells

/-! ### The normalizing affine map -/

/-- The affine map sending `U, V, W` (with `[UVW] ≠ 0`) to `(0,0), (1,1), (0,1)`: the point with
barycentric coordinates `(a, b, c)` in `UVW` goes to `(b, b + c)`. -/
def hsMap (U V W : Point) (p : Point) : Point :=
  (sarea U p W / sarea U V W, (sarea U p W + sarea U V p) / sarea U V W)

/-- `hsMap U V W` is an affine map of determinant `1/[UVW]`. -/
theorem hsMap_affine (U V W : Point) (hΔ : sarea U V W ≠ 0) :
    ∃ a b c d e g : ℝ, a * d - b * c = 1 / sarea U V W ∧
      ∀ p, affineMap a b c d e g p = hsMap U V W p := by
  refine ⟨(W.2 - U.2) / sarea U V W, -(W.1 - U.1) / sarea U V W, (W.2 - V.2) / sarea U V W,
    (V.1 - W.1) / sarea U V W, (-(U.1 * (W.2 - U.2)) + U.2 * (W.1 - U.1)) / sarea U V W,
    (-(U.1 * (W.2 - U.2)) + U.2 * (W.1 - U.1) - (V.1 - U.1) * U.2 + (V.2 - U.2) * U.1) /
      sarea U V W, ?_, ?_⟩
  · field_simp; unfold sarea; ring
  · intro p
    simp only [affineMap, hsMap]
    ext <;> simp only <;> field_simp <;> unfold sarea <;> ring

/-- `hsMap U V W` sends the point of barycentric coordinates `(a, b, c)` to `(b, b + c)`. -/
theorem hsMap_bary {U V W : Point} (hΔ : sarea U V W ≠ 0) {a b c : ℝ} (habc : a + b + c = 1) :
    hsMap U V W (a * U.1 + b * V.1 + c * W.1, a * U.2 + b * V.2 + c * W.2) = (b, b + c) := by
  obtain rfl : a = 1 - b - c := by linarith
  simp only [hsMap]
  ext <;> simp only <;> field_simp <;> unfold sarea <;> ring

theorem hsMap_U {U V W : Point} (hΔ : sarea U V W ≠ 0) : hsMap U V W U = hsA := by
  have := hsMap_bary (U := U) (V := V) (W := W) hΔ (a := 1) (b := 0) (c := 0) (by norm_num)
  simp only [one_mul, zero_mul, add_zero] at this
  rw [this]; simp [hsA]

theorem hsMap_V {U V W : Point} (hΔ : sarea U V W ≠ 0) : hsMap U V W V = hsE := by
  have := hsMap_bary (U := U) (V := V) (W := W) hΔ (a := 0) (b := 1) (c := 0) (by norm_num)
  simp only [one_mul, zero_mul, add_zero, zero_add] at this
  rw [this]; simp [hsE]

theorem hsMap_W {U V W : Point} (hΔ : sarea U V W ≠ 0) : hsMap U V W W = (0, 1) := by
  have := hsMap_bary (U := U) (V := V) (W := W) hΔ (a := 0) (b := 0) (c := 1) (by norm_num)
  simp only [one_mul, zero_mul, add_zero, zero_add] at this
  rw [this]

/-- For a support triangle `UVW'` with contacts `H, F` and fifth point `X`, the affine map sending
`U, V, W'` to `(0,0), (1,1), (0,1)` has determinant `1 / [UVW']` (so it divides every doubled
area by `[UVW']`), and sends the five points to the half-square normal form
`A, E, (0,h), (f,1), X'` with `0 < h, f < 1` and `X'` in the half-square. Hence the original
minimum area is `s S'`, `s` the normalized doubled minimum and `S'` the area of `UVW'`. -/
theorem exists_affineMap_hsNormal {U V W H F X : Point} (hS : IsSupportTriangle U V W H F X) :
    ∃ (a b c d e g h₀ f₀ : ℝ), a * d - b * c = 1 / sarea U V W ∧
      affineMap a b c d e g U = hsA ∧ affineMap a b c d e g V = hsE ∧
      affineMap a b c d e g W = (0, 1) ∧ affineMap a b c d e g H = hsH h₀ ∧
      affineMap a b c d e g F = hsF f₀ ∧ HSNormal h₀ f₀ (affineMap a b c d e g X) := by
  obtain ⟨hΔ, ⟨a₁, b₁, ha₁, hb₁, hab₁, rfl⟩, ⟨a₂, b₂, ha₂, hb₂, hab₂, rfl⟩, hX⟩ := hS
  obtain ⟨a, b, c, d, e, g, hdet, hmap⟩ := hsMap_affine U V W hΔ.ne'
  obtain ⟨p, q, r, hp, hq, hr, hpqr, rfl⟩ := exists_bary_of_mem_convexHull hX
  have hH : a₁ • U + b₁ • W =
      ((a₁ * U.1 + 0 * V.1 + b₁ * W.1, a₁ * U.2 + 0 * V.2 + b₁ * W.2) : Point) := by
    ext <;> simp
  have hF : a₂ • V + b₂ • W =
      ((0 * U.1 + a₂ * V.1 + b₂ * W.1, 0 * U.2 + a₂ * V.2 + b₂ * W.2) : Point) := by
    ext <;> simp
  refine ⟨a, b, c, d, e, g, b₁, a₂, hdet, by rw [hmap, hsMap_U hΔ.ne'],
    by rw [hmap, hsMap_V hΔ.ne'], by rw [hmap, hsMap_W hΔ.ne'], ?_, ?_, ?_⟩
  · rw [hmap, hH, hsMap_bary hΔ.ne' (by linarith)]; simp [hsH]
  · rw [hmap, hF, hsMap_bary hΔ.ne' (by linarith)]; simp [hsF, hab₂]
  · rw [hmap, hsMap_bary hΔ.ne' hpqr]
    exact ⟨hb₁, by linarith, ha₂, by linarith, hq, by linarith, by linarith⟩

/-! ### The support triangle -/

/-- The support apex, from signs. Let `UVW` be counterclockwise, let `H, F` be strictly left of
`UV` and in the closed triangle (only the edges `WU` for `H` and `VW` for `F` are needed), with
`F` strictly right of the ray `U → H` and `H` strictly left of the ray `V → F`. Then the lines
`UH` and `VF` meet at a point `W'` of the closed triangle `UVW` with `0 < [UVW'] ≤ [UVW]`, `H`
inside the leg `UW'`, `F` inside the leg `VW'`; and every point `X` left of `UV`, right of
`U → H` and left of `V → F` lies in the closed triangle `UVW'`. -/
theorem support_apex {U V W H F : Point} (hΔ : 0 < sarea U V W)
    (hH : 0 < sarea U V H) (hHW : 0 ≤ sarea W U H)
    (hF : 0 < sarea U V F) (hFW : 0 ≤ sarea V W F)
    (hUHF : sarea U H F < 0) (hVFH : 0 < sarea V F H) :
    ∃ W' : Point, 0 < sarea U V W' ∧ sarea U V W' ≤ sarea U V W ∧
      H ∈ openSegment ℝ U W' ∧ F ∈ openSegment ℝ V W' ∧
      (∀ X : Point, 0 ≤ sarea U V X → sarea U H X ≤ 0 → 0 ≤ sarea V F X →
        X ∈ convexHull ℝ ({U, V, W'} : Set Point)) ∧
      W' ∈ convexHull ℝ ({U, V, W} : Set Point) := by
  obtain ⟨D, hD⟩ : ∃ D, D = sarea U V H + sarea U H F := ⟨_, rfl⟩
  have hDΔ : D * sarea U V W =
      sarea U V H * (sarea V W F + sarea U V F) + sarea W U H * sarea U V F := by
    rw [hD]; unfold sarea; ring
  have h1 : 0 < sarea U V H * (sarea V W F + sarea U V F) := mul_pos hH (by linarith)
  have h2 : 0 ≤ sarea W U H * sarea U V F := mul_nonneg hHW hF.le
  have hDpos : 0 < D := by
    by_contra hcon
    push Not at hcon
    nlinarith [mul_nonpos_of_nonpos_of_nonneg hcon hΔ.le]
  have hDF : D < sarea U V F := by
    have : sarea U V F - D = sarea V F H := by rw [hD]; unfold sarea; ring
    linarith
  have hDH : D < sarea U V H := by rw [hD]; linarith
  have hDne : D ≠ 0 := hDpos.ne'
  obtain ⟨μ, hμ⟩ : ∃ μ, μ = sarea U V F / D := ⟨_, rfl⟩
  obtain ⟨ν, hν⟩ : ∃ ν, ν = sarea U V H / D := ⟨_, rfl⟩
  have hμ1 : 1 < μ := by rw [hμ, lt_div_iff₀ hDpos]; linarith
  have hν1 : 1 < ν := by rw [hν, lt_div_iff₀ hDpos]; linarith
  have hμ0 : μ ≠ 0 := by positivity
  have hν0 : ν ≠ 0 := by positivity
  obtain ⟨W', hW'⟩ : ∃ W' : Point, W' = (U.1 + μ * (H.1 - U.1), U.2 + μ * (H.2 - U.2)) :=
    ⟨_, rfl⟩
  have hW'2 : W' = (V.1 + ν * (F.1 - V.1), V.2 + ν * (F.2 - V.2)) := by
    rw [hW', hμ, hν]
    ext <;> simp only <;> field_simp <;> rw [hD] <;> unfold sarea <;> ring
  have hUVW' : sarea U V W' = μ * sarea U V H := by rw [hW']; unfold sarea; ring
  refine ⟨W', by rw [hUVW']; exact mul_pos (by linarith) hH, ?_, ?_, ?_, ?_, ?_⟩
  · rw [hUVW', hμ, div_mul_eq_mul_div, div_le_iff₀ hDpos]
    nlinarith [mul_nonneg hH.le hFW]
  · refine ⟨1 - 1 / μ, 1 / μ, by rw [sub_pos, div_lt_one (by linarith)]; exact hμ1,
      by positivity, by ring, ?_⟩
    rw [hW']
    ext <;> simp <;> field_simp <;> ring
  · refine ⟨1 - 1 / ν, 1 / ν, by rw [sub_pos, div_lt_one (by linarith)]; exact hν1,
      by positivity, by ring, ?_⟩
    rw [hW'2]
    ext <;> simp <;> field_simp <;> ring
  · intro X hX1 hX2 hX3
    apply mem_convexHull_of_sarea (by rw [hUVW']; exact mul_pos (by linarith) hH)
    · have : sarea V W' X = ν * sarea V F X := by rw [hW'2]; unfold sarea; ring
      rw [this]; exact mul_nonneg (by linarith) hX3
    · have : sarea W' U X = -(μ * sarea U H X) := by rw [hW']; unfold sarea; ring
      rw [this]; nlinarith
    · exact hX1
  · apply mem_convexHull_of_sarea hΔ
    · have : sarea V W W' = ν * sarea V W F := by rw [hW'2]; unfold sarea; ring
      rw [this]; exact mul_nonneg (by linarith) hFW
    · have : sarea W U W' = μ * sarea W U H := by rw [hW']; unfold sarea; ring
      rw [this]; exact mul_nonneg (by linarith) hHW
    · rw [hUVW']; exact (mul_pos (by linarith) hH).le

/-- The support triangle of five points with prescribed extremes: `H` extreme at `U`, `F`
extreme at `V`, and the remaining point `X`. -/
theorem support_of_extremes {U V W H F X : Point} (hΔ : 0 < sarea U V W)
    (hH : 0 < sarea U V H) (hHW : 0 ≤ sarea W U H)
    (hF : 0 < sarea U V F) (hFW : 0 ≤ sarea V W F) (hX : 0 ≤ sarea U V X)
    (hUHF : sarea U H F < 0) (hUHX : sarea U H X ≤ 0) (hVFH : 0 < sarea V F H)
    (hVFX : 0 ≤ sarea V F X) :
    ∃ W' : Point, IsSupportTriangle U V W' H F X ∧ sarea U V W' ≤ sarea U V W := by
  obtain ⟨W', h1, h2, h3, h4, h5, -⟩ := support_apex hΔ hH hHW hF hFW hUHF hVFH
  exact ⟨W', ⟨h1, h3, h4, h5 X hX hUHX hVFX⟩, h2⟩

/-- `Q` strictly left of `UV`, right of `U → P` and left of `V → P` is inside `UVP`. -/
theorem inTriangle_of_extreme {U V P Q : Point} (h1 : 0 < sarea U V Q) (h2 : sarea U P Q < 0)
    (h3 : 0 < sarea V P Q) : InTriangle Q U V P :=
  ⟨h1, h3, by rw [show sarea P U Q = -sarea U P Q by unfold sarea; ring]; linarith⟩

/-- Five points `U, V, X₁, X₂, X₃` in a counterclockwise triangle `UVW`, with positive minimum
area and nontriangular hull, have a support triangle `UVW'` over the base `UV` of doubled area
at most that of `UVW`, whose two leg contacts are two of the `Xᵢ` and whose remaining point is
the third. The construction takes the two prescribed vertices as base endpoints and needs no
sixth point.

The container is oriented counterclockwise (swap `U, V` otherwise); the support triangle lies
inside the container, so its area is at most `S`. -/
theorem exists_isSupportTriangle {U V W X₁ X₂ X₃ : Point} (hUVW : 0 < sarea U V W)
    (h₁ : X₁ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h₂ : X₂ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h₃ : X₃ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hpos : 0 < minTriangleArea ![U, V, X₁, X₂, X₃])
    (hnt : ¬ TriangularHull ![U, V, X₁, X₂, X₃]) :
    ∃ (W' : Point) (σ : Equiv.Perm (Fin 3)),
      IsSupportTriangle U V W' (![X₁, X₂, X₃] (σ 0)) (![X₁, X₂, X₃] (σ 1)) (![X₁, X₂, X₃] (σ 2)) ∧
        sarea U V W' ≤ sarea U V W := by
  obtain ⟨a1, a2, a3, -⟩ := sarea_nonneg_of_mem_convexHull hUVW.le h₁
  obtain ⟨b1, b2, b3, -⟩ := sarea_nonneg_of_mem_convexHull hUVW.le h₂
  obtain ⟨c1, c2, c3, -⟩ := sarea_nonneg_of_mem_convexHull hUVW.le h₃
  have g1 : 0 < sarea U V X₁ := lt_of_le_of_ne a3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 2))
  have g2 : 0 < sarea U V X₂ := lt_of_le_of_ne b3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 3))
  have g3 : 0 < sarea U V X₃ := lt_of_le_of_ne c3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 4))
  have gpos : ∀ i, 0 < sarea U V (![X₁, X₂, X₃] i) := fun i => by
    fin_cases i <;> assumption
  have nU : ∀ i j : Fin 3, i ≠ j → sarea U (![X₁, X₂, X₃] i) (![X₁, X₂, X₃] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 0 2 3 | exact sarea_ne_zero_of_min_pos hpos 0 2 4
      | exact sarea_ne_zero_of_min_pos hpos 0 3 2 | exact sarea_ne_zero_of_min_pos hpos 0 3 4
      | exact sarea_ne_zero_of_min_pos hpos 0 4 2 | exact sarea_ne_zero_of_min_pos hpos 0 4 3
  have nV : ∀ i j : Fin 3, i ≠ j → sarea V (![X₁, X₂, X₃] i) (![X₁, X₂, X₃] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 1 2 3 | exact sarea_ne_zero_of_min_pos hpos 1 2 4
      | exact sarea_ne_zero_of_min_pos hpos 1 3 2 | exact sarea_ne_zero_of_min_pos hpos 1 3 4
      | exact sarea_ne_zero_of_min_pos hpos 1 4 2 | exact sarea_ne_zero_of_min_pos hpos 1 4 3
  obtain ⟨i, hi⟩ := exists_extreme_left U V _ gpos nU
  obtain ⟨j, hj⟩ := exists_extreme_right U V _ gpos nV
  have vert : ∀ {A B C : Point} (P : Point), P = A ∨ P = B ∨ P = C →
      P ∈ convexHull ℝ ({A, B, C} : Set Point) := by
    rintro A B C P (rfl | rfl | rfl) <;> exact subset_convexHull ℝ _ (by simp)
  fin_cases i <;> fin_cases j
  · exfalso; apply hnt
    have hY := inTriangle_of_extreme g2 (hi 1 (by decide)) (hj 1 (by decide))
    have hZ := inTriangle_of_extreme g3 (hi 2 (by decide)) (hj 2 (by decide))
    refine ⟨0, 1, 2, fun m => ?_⟩
    fin_cases m
    · exact vert _ (Or.inl rfl)
    · exact vert _ (Or.inr (Or.inl rfl))
    · exact vert _ (Or.inr (Or.inr rfl))
    · exact mem_convexHull_of_inTriangle hY
    · exact mem_convexHull_of_inTriangle hZ
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g1 a2 g2 b1 g3.le (hi 1 (by decide))
      (hi 2 (by decide)).le (hj 0 (by decide)) (hj 2 (by decide)).le
    exact ⟨W', ⟨![0, 1, 2], ![0, 1, 2], by decide, by decide⟩, h1, h2⟩
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g1 a2 g3 c1 g2.le (hi 2 (by decide))
      (hi 1 (by decide)).le (hj 0 (by decide)) (hj 1 (by decide)).le
    exact ⟨W', ⟨![0, 2, 1], ![0, 2, 1], by decide, by decide⟩, h1, h2⟩
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g2 b2 g1 a1 g3.le (hi 0 (by decide))
      (hi 2 (by decide)).le (hj 1 (by decide)) (hj 2 (by decide)).le
    exact ⟨W', ⟨![1, 0, 2], ![1, 0, 2], by decide, by decide⟩, h1, h2⟩
  · exfalso; apply hnt
    have hX := inTriangle_of_extreme g1 (hi 0 (by decide)) (hj 0 (by decide))
    have hZ := inTriangle_of_extreme g3 (hi 2 (by decide)) (hj 2 (by decide))
    refine ⟨0, 1, 3, fun m => ?_⟩
    fin_cases m
    · exact vert _ (Or.inl rfl)
    · exact vert _ (Or.inr (Or.inl rfl))
    · exact mem_convexHull_of_inTriangle hX
    · exact vert _ (Or.inr (Or.inr rfl))
    · exact mem_convexHull_of_inTriangle hZ
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g2 b2 g3 c1 g1.le (hi 2 (by decide))
      (hi 0 (by decide)).le (hj 1 (by decide)) (hj 0 (by decide)).le
    exact ⟨W', ⟨![1, 2, 0], ![2, 0, 1], by decide, by decide⟩, h1, h2⟩
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g3 c2 g1 a1 g2.le (hi 0 (by decide))
      (hi 1 (by decide)).le (hj 2 (by decide)) (hj 1 (by decide)).le
    exact ⟨W', ⟨![2, 0, 1], ![1, 2, 0], by decide, by decide⟩, h1, h2⟩
  · obtain ⟨W', h1, h2⟩ := support_of_extremes hUVW g3 c2 g2 b1 g1.le (hi 1 (by decide))
      (hi 0 (by decide)).le (hj 2 (by decide)) (hj 0 (by decide)).le
    exact ⟨W', ⟨![2, 1, 0], ![2, 1, 0], by decide, by decide⟩, h1, h2⟩
  · exfalso; apply hnt
    have hX := inTriangle_of_extreme g1 (hi 0 (by decide)) (hj 0 (by decide))
    have hY := inTriangle_of_extreme g2 (hi 1 (by decide)) (hj 1 (by decide))
    refine ⟨0, 1, 4, fun m => ?_⟩
    fin_cases m
    · exact vert _ (Or.inl rfl)
    · exact vert _ (Or.inr (Or.inl rfl))
    · exact mem_convexHull_of_inTriangle hX
    · exact mem_convexHull_of_inTriangle hY
    · exact vert _ (Or.inr (Or.inr rfl))

/-! ### The endpoint theorems -/

/-- The least area of five points of a support triangle `UVW'`, normalized: it is
`[UVW']/2` times the least area `s/2` of the normal form, and `s ≤ k`. -/
theorem min_le_of_support {U V W' H F X : Point} (hS : IsSupportTriangle U V W' H F X)
    (hpos : 0 < minTriangleArea ![U, V, H, F, X]) :
    minTriangleArea ![U, V, H, F, X] ≤ kEnd * (sarea U V W' / 2) := by
  have hΔ' := hS.1
  obtain ⟨a, b, c, d, e, g, h₀, f₀, hdet, hU, hV, -, hH', hF', hN⟩ := exists_affineMap_hsNormal hS
  have hcomp : affineMap a b c d e g ∘ ![U, V, H, F, X] =
      hsConfig h₀ f₀ (affineMap a b c d e g X) := by
    funext i; fin_cases i <;> simp [hsConfig, hU, hV, hH', hF']
  have hmin := minTriangleArea_affineMap a b c d e g ![U, V, H, F, X]
  rw [hcomp, hdet, abs_of_pos (by positivity)] at hmin
  have hs : 0 < 2 * minTriangleArea (hsConfig h₀ f₀ (affineMap a b c d e g X)) := by
    rw [hmin]; positivity
  have hk := hs_le_kEnd hN hs (by linarith)
  rw [hmin] at hk
  have : minTriangleArea ![U, V, H, F, X] = sarea U V W' / 2 * (2 * (1 / sarea U V W' *
      minTriangleArea ![U, V, H, F, X])) := by field_simp
  rw [this]
  nlinarith [kEnd_pos]

/-- The endpoint-triangle bound in the support case: `H` is extreme at `U`, `F` at `V`. -/
theorem endpoint_support_case {U V W H F X : Point} (hΔ : 0 < sarea U V W)
    (hH : 0 < sarea U V H) (hHW : 0 ≤ sarea W U H)
    (hF : 0 < sarea U V F) (hFW : 0 ≤ sarea V W F) (hX : 0 < sarea U V X)
    (hUHF : sarea U H F < 0) (hUHX : sarea U H X < 0) (hVFH : 0 < sarea V F H)
    (hVFX : 0 < sarea V F X) (hpos : 0 < minTriangleArea ![U, V, H, F, X]) :
    minTriangleArea ![U, V, H, F, X] ≤ kEnd * triangleArea U V W := by
  obtain ⟨W', hS, hle⟩ :=
    support_of_extremes hΔ hH hHW hF hFW hX.le hUHF hUHX.le hVFH hVFX.le
  have := min_le_of_support hS hpos
  rw [triangleArea_eq, abs_of_pos hΔ]
  nlinarith [kEnd_pos]

/-- The endpoint-triangle bound in the triangular case: `Q, R` strictly inside `UVP`. -/
theorem endpoint_tri_case {U V W P Q R : Point} (hPle : sarea U V P ≤ sarea U V W)
    (hpos : 0 < minTriangleArea ![U, V, P, Q, R])
    (hQ : InTriangle Q U V P) (hR : InTriangle R U V P) :
    minTriangleArea ![U, V, P, Q, R] ≤ kEnd * triangleArea U V W := by
  have h2 := twoInteriorPointLemma U V P Q R (Or.inl hQ) (Or.inl hR) _ hpos le_rfl
  have hP : 0 < sarea U V P := by
    have := sarea_add_sarea_add_sarea U V P Q
    obtain ⟨a, b, c⟩ := hQ
    linarith
  have hTP : triangleArea U V P ≤ triangleArea U V W := by
    rw [triangleArea_eq, triangleArea_eq, abs_of_pos hP, abs_of_pos (by linarith)]; linarith
  have hK := one_le_Ktwo_mul_kEnd
  have h3 : Ktwo * minTriangleArea ![U, V, P, Q, R] ≤ triangleArea U V W := by
    unfold Ktwo; linarith
  nlinarith [mul_le_mul_of_nonneg_left h3 kEnd_pos.le, mul_nonneg hpos.le (sub_nonneg.2 hK)]

/-- The endpoint-triangle theorem for a counterclockwise container. -/
theorem endpoint_pos {U V W X Y Z : Point} (hΔ : 0 < sarea U V W)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y, Z] ≤ kEnd * triangleArea U V W := by
  have hk0 : 0 ≤ kEnd * triangleArea U V W := mul_nonneg kEnd_pos.le (triangleArea_nonneg _ _ _)
  rcases (minTriangleArea_nonneg ![U, V, X, Y, Z]).eq_or_lt with h0 | hpos
  · rw [← h0]; exact hk0
  obtain ⟨a1, a2, a3, a4⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hX
  obtain ⟨b1, b2, b3, b4⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hY
  obtain ⟨c1, c2, c3, c4⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hZ
  have g1 : 0 < sarea U V X := lt_of_le_of_ne a3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 2))
  have g2 : 0 < sarea U V Y := lt_of_le_of_ne b3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 3))
  have g3 : 0 < sarea U V Z := lt_of_le_of_ne c3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 4))
  have gpos : ∀ i, 0 < sarea U V (![X, Y, Z] i) := fun i => by
    fin_cases i <;> assumption
  have nU : ∀ i j : Fin 3, i ≠ j → sarea U (![X, Y, Z] i) (![X, Y, Z] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 0 2 3 | exact sarea_ne_zero_of_min_pos hpos 0 2 4
      | exact sarea_ne_zero_of_min_pos hpos 0 3 2 | exact sarea_ne_zero_of_min_pos hpos 0 3 4
      | exact sarea_ne_zero_of_min_pos hpos 0 4 2 | exact sarea_ne_zero_of_min_pos hpos 0 4 3
  have nV : ∀ i j : Fin 3, i ≠ j → sarea V (![X, Y, Z] i) (![X, Y, Z] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 1 2 3 | exact sarea_ne_zero_of_min_pos hpos 1 2 4
      | exact sarea_ne_zero_of_min_pos hpos 1 3 2 | exact sarea_ne_zero_of_min_pos hpos 1 3 4
      | exact sarea_ne_zero_of_min_pos hpos 1 4 2 | exact sarea_ne_zero_of_min_pos hpos 1 4 3
  have reindex : ∀ (Q : Fin 5 → Point) (f : Fin 5 → Fin 5), Function.Injective f →
      Q = ![U, V, X, Y, Z] ∘ f →
      (minTriangleArea Q ≤ kEnd * triangleArea U V W →
        minTriangleArea ![U, V, X, Y, Z] ≤ kEnd * triangleArea U V W) ∧
      0 < minTriangleArea Q := by
    intro Q f hf hQ
    have := min_le_min_reindex (by norm_num) _ Q f hf hQ
    exact ⟨fun h => this.trans h, lt_of_lt_of_le hpos this⟩
  obtain ⟨i, hi⟩ := exists_extreme_left U V _ gpos nU
  obtain ⟨j, hj⟩ := exists_extreme_right U V _ gpos nV
  fin_cases i <;> fin_cases j
  · exact endpoint_tri_case a4 hpos
      (inTriangle_of_extreme g2 (hi 1 (by decide)) (hj 1 (by decide)))
      (inTriangle_of_extreme g3 (hi 2 (by decide)) (hj 2 (by decide)))
  · exact endpoint_support_case hΔ g1 a2 g2 b1 g3 (hi 1 (by decide)) (hi 2 (by decide))
      (hj 0 (by decide)) (hj 2 (by decide)) hpos
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X, Z, Y] ![0, 1, 2, 4, 3] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_support_case hΔ g1 a2 g3 c1 g2 (hi 2 (by decide)) (hi 1 (by decide))
      (hj 0 (by decide)) (hj 1 (by decide)) hp')
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Y, X, Z] ![0, 1, 3, 2, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_support_case hΔ g2 b2 g1 a1 g3 (hi 0 (by decide)) (hi 2 (by decide))
      (hj 1 (by decide)) (hj 2 (by decide)) hp')
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Y, X, Z] ![0, 1, 3, 2, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_tri_case b4 hp'
      (inTriangle_of_extreme g1 (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme g3 (hi 2 (by decide)) (hj 2 (by decide))))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Y, Z, X] ![0, 1, 3, 4, 2] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_support_case hΔ g2 b2 g3 c1 g1 (hi 2 (by decide)) (hi 0 (by decide))
      (hj 1 (by decide)) (hj 0 (by decide)) hp')
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Z, X, Y] ![0, 1, 4, 2, 3] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_support_case hΔ g3 c2 g1 a1 g2 (hi 0 (by decide)) (hi 1 (by decide))
      (hj 2 (by decide)) (hj 1 (by decide)) hp')
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Z, Y, X] ![0, 1, 4, 3, 2] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_support_case hΔ g3 c2 g2 b1 g1 (hi 1 (by decide)) (hi 0 (by decide))
      (hj 2 (by decide)) (hj 0 (by decide)) hp')
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, Z, X, Y] ![0, 1, 4, 2, 3] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (endpoint_tri_case c4 hp'
      (inTriangle_of_extreme g1 (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme g2 (hi 1 (by decide)) (hj 1 (by decide))))

/-- Swapping the two prescribed vertices. -/
theorem convexHull_swap_UV (U V W : Point) :
    convexHull ℝ ({V, U, W} : Set Point) = convexHull ℝ ({U, V, W} : Set Point) := by
  rw [Set.insert_comm]

/-- The endpoint-triangle theorem. If five points lie in a closed triangle `UVW` and two vertices
`U, V` of the triangle are among them, some triangle spanned by the five points has area at most
`k S = (3 - 2√2) · area(UVW)`.

A triangular hull is handled by `twoInteriorPointLemma`; otherwise the support
triangle of the extreme points (`support_of_extremes`) and the affine map of
`exists_affineMap_hsNormal` reduce to the half-square normal form, where `hs_le_kEnd` applies
(`min_le_of_support`). -/
theorem endpointTriangleTheorem (U V W X Y Z : Point)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point)) (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y, Z] ≤ kEnd * triangleArea U V W := by
  rcases lt_trichotomy (sarea U V W) 0 with hneg | hzero | hposΔ
  · have hsw : minTriangleArea ![U, V, X, Y, Z] = minTriangleArea ![V, U, X, Y, Z] := by
      rw [show ![V, U, X, Y, Z] = ![U, V, X, Y, Z] ∘ Equiv.swap (0 : Fin 5) 1 by
        funext m; fin_cases m <;> rfl, minTriangleArea_comp_perm]
    rw [hsw, ← triangleArea_swap₁₂]
    rw [← convexHull_swap_UV] at hX hY hZ
    exact endpoint_pos (by rw [sarea_swap₁₂]; linarith) hX hY hZ
  · obtain ⟨a, b, c, -, -, -, -, -, -, h3⟩ := sarea_of_mem_convexHull hX
    have h0 : triangleArea U V X = 0 := by rw [triangleArea_eq, h3, hzero]; simp
    have hle := minTriangleArea_le ![U, V, X, Y, Z] (i := 0) (j := 1) (k := 2) (by decide)
      (by decide) (by decide)
    have : triangleArea (![U, V, X, Y, Z] 0) (![U, V, X, Y, Z] 1) (![U, V, X, Y, Z] 2) = 0 := h0
    rw [this] at hle
    exact hle.trans (mul_nonneg kEnd_pos.le (triangleArea_nonneg _ _ _))
  · exact endpoint_pos hposΔ hX hY hZ

/-- Four points, support case: `H` extreme at `U`, `F` extreme at `V`: the normal form has
`hf, αβ ≥ s`, so `s ≤ 1/4` and the least area is at most `area(UVW)/4`. -/
theorem fourPoint_support_case {U V W H F : Point} (hΔ : 0 < sarea U V W)
    (hH : 0 < sarea U V H) (hHW : 0 ≤ sarea W U H) (hF : 0 < sarea U V F)
    (hFW : 0 ≤ sarea V W F) (hUHF : sarea U H F < 0) (hVFH : 0 < sarea V F H)
    (hp : 0 < minTriangleArea ![U, V, H, F]) :
    minTriangleArea ![U, V, H, F] ≤ triangleArea U V W / 4 := by
  have hAeq : triangleArea U V W = sarea U V W / 2 := by
    rw [triangleArea_eq, abs_of_pos hΔ]
  obtain ⟨W', hS, hle⟩ := support_of_extremes hΔ hH hHW hF hFW hH.le hUHF
    (by rw [show sarea U H H = 0 by unfold sarea; ring]) hVFH hVFH.le
  have hΔ' := hS.1
  obtain ⟨a, b, c, d, e, g, h₀, f₀, hdet, hU, hV, -, hH', hF', hN⟩ := exists_affineMap_hsNormal hS
  obtain ⟨hh0, hh1, hf0, hf1, -⟩ := hN
  have hcomp : affineMap a b c d e g ∘ ![U, V, H, F] = ![hsA, hsE, hsH h₀, hsF f₀] := by
    funext i; fin_cases i <;> simp [hU, hV, hH', hF']
  have hmin := minTriangleArea_affineMap a b c d e g ![U, V, H, F]
  rw [hcomp, hdet, abs_of_pos (by positivity)] at hmin
  set m := minTriangleArea ![U, V, H, F] with hm
  set s := 2 * minTriangleArea ![hsA, hsE, hsH h₀, hsF f₀] with hs
  have hs0 : 0 < s := by rw [hs, hmin]; positivity
  have hmin' : s / 2 ≤ minTriangleArea ![hsA, hsE, hsH h₀, hsF f₀] := by rw [hs]; linarith
  have e1 : s ≤ |sarea hsA (hsH h₀) (hsF f₀)| := le_abs_sarea_of_le_min hmin' 0 2 3
  have e2 : s ≤ |sarea hsE (hsH h₀) (hsF f₀)| := le_abs_sarea_of_le_min hmin' 1 2 3
  rw [sarea_AHF, abs_neg, abs_of_nonneg (mul_nonneg hh0.le hf0.le)] at e1
  rw [sarea_EHF, abs_neg, abs_of_nonneg (mul_nonneg (by linarith) (by linarith))] at e2
  have hb := hs_product_bound hh0.le hh1.le hf0.le hf1.le hs0.le e1 e2
  rw [Real.sqrt_mul_self hs0.le] at hb
  have hsm : s = 2 * (1 / sarea U V W' * m) := by rw [hs, hmin]
  have : m = sarea U V W' / 2 * s := by rw [hsm]; field_simp
  rw [this, hAeq]
  nlinarith

/-- The four-point endpoint lemma for a counterclockwise container. -/
theorem fourPoint_pos {U V W X Y : Point} (hΔ : 0 < sarea U V W)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 3 ∧
      (¬ TriangularHull ![U, V, X, Y] →
        minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 4) := by
  have hA : 0 ≤ triangleArea U V W := triangleArea_nonneg _ _ _
  have hAeq : triangleArea U V W = sarea U V W / 2 := by
    rw [triangleArea_eq, abs_of_pos hΔ]
  rcases (minTriangleArea_nonneg ![U, V, X, Y]).eq_or_lt with h0 | hpos
  · rw [← h0]; exact ⟨by linarith, fun _ => by linarith⟩
  obtain ⟨a1, a2, a3, a4⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hX
  obtain ⟨b1, b2, b3, b4⟩ := sarea_nonneg_of_mem_convexHull hΔ.le hY
  have g1 : 0 < sarea U V X := lt_of_le_of_ne a3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 2))
  have g2 : 0 < sarea U V Y := lt_of_le_of_ne b3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 3))
  have nU : sarea U X Y ≠ 0 := sarea_ne_zero_of_min_pos hpos 0 2 3
  have nV : sarea V X Y ≠ 0 := sarea_ne_zero_of_min_pos hpos 1 2 3
  set m := minTriangleArea ![U, V, X, Y] with hm
  -- the triangular case: `Q` inside `UVP`
  have tri : ∀ P Q : Point, InTriangle Q U V P → sarea U V P ≤ sarea U V W →
      6 * m ≤ sarea U V P → m ≤ triangleArea U V W / 3 := by
    intro P Q _ hP h6
    rw [hAeq]; linarith
  have sup : ∀ H F : Point, 0 < sarea U V H → 0 ≤ sarea W U H → 0 < sarea U V F →
      0 ≤ sarea V W F → sarea U H F < 0 → 0 < sarea V F H →
      0 < minTriangleArea ![U, V, H, F] → minTriangleArea ![U, V, H, F] = m →
      m ≤ triangleArea U V W / 4 := by
    intro H F hH hHW hF hFW hUHF hVFH hp hmeq
    rw [← hmeq]; exact fourPoint_support_case hΔ hH hHW hF hFW hUHF hVFH hp
  rcases lt_or_gt_of_ne nU with hU' | hU' <;> rcases lt_or_gt_of_ne nV with hV' | hV'
  · -- `X` extreme at `U`, `Y` extreme at `V`
    have hp := sup X Y g1 a2 g2 b1 hU'
      (by rw [show sarea V Y X = -sarea V X Y by unfold sarea; ring]; linarith) hpos rfl
    exact ⟨by linarith, fun _ => hp⟩
  · -- `X` extreme at both: `Y` inside `UVX`
    have hYin := inTriangle_of_extreme g2 hU' hV'
    obtain ⟨y1, y2, y3⟩ := hYin
    have e1 := sarea_ge_of_le_min_of_pos hpos le_rfl 0 1 3 y1
    have e2 := sarea_ge_of_le_min_of_pos hpos le_rfl 1 2 3 y2
    have e3 := sarea_ge_of_le_min_of_pos hpos le_rfl 2 0 3 y3
    have hsum := sarea_add_sarea_add_sarea U V X Y
    refine ⟨tri X Y ⟨y1, y2, y3⟩ a4 (by simp only [Matrix.cons_val] at e1 e2 e3; linarith),
      fun hnt => absurd ?_ hnt⟩
    refine ⟨0, 1, 2, fun k => ?_⟩
    fin_cases k
    · exact subset_convexHull ℝ _ (by simp)
    · exact subset_convexHull ℝ _ (by simp)
    · exact subset_convexHull ℝ _ (by simp)
    · exact mem_convexHull_of_inTriangle ⟨y1, y2, y3⟩
  · -- `Y` extreme at both: `X` inside `UVY`
    have hXin := inTriangle_of_extreme g1
      (by rw [show sarea U Y X = -sarea U X Y by unfold sarea; ring]; linarith)
      (by rw [show sarea V Y X = -sarea V X Y by unfold sarea; ring]; linarith)
    obtain ⟨x1, x2, x3⟩ := hXin
    have e1 := sarea_ge_of_le_min_of_pos hpos le_rfl 0 1 2 x1
    have e2 := sarea_ge_of_le_min_of_pos hpos le_rfl 1 3 2 x2
    have e3 := sarea_ge_of_le_min_of_pos hpos le_rfl 3 0 2 x3
    have hsum := sarea_add_sarea_add_sarea U V Y X
    refine ⟨tri Y X ⟨x1, x2, x3⟩ b4 (by simp only [Matrix.cons_val] at e1 e2 e3; linarith),
      fun hnt => absurd ?_ hnt⟩
    refine ⟨0, 1, 3, fun k => ?_⟩
    fin_cases k
    · exact subset_convexHull ℝ _ (by simp)
    · exact subset_convexHull ℝ _ (by simp)
    · exact mem_convexHull_of_inTriangle ⟨x1, x2, x3⟩
    · exact subset_convexHull ℝ _ (by simp)
  · -- `Y` extreme at `U`, `X` extreme at `V`
    have hm' : minTriangleArea ![U, V, Y, X] = m := by
      rw [hm, show ![U, V, Y, X] = ![U, V, X, Y] ∘ Equiv.swap (2 : Fin 4) 3 by
        funext k; fin_cases k <;> rfl, minTriangleArea_comp_perm]
    have hp := sup Y X g2 b2 g1 a1
      (by rw [show sarea U Y X = -sarea U X Y by unfold sarea; ring]; linarith) hV'
      (by rw [hm']; exact hpos) hm'
    exact ⟨by linarith, fun _ => hp⟩

/-- The four-point endpoint lemma. Four points in a closed triangle `UVW` of area `S`, including
the two vertices `U, V`, have minimum triangle area at most `S/3`; if their hull is not a
triangle, at most `S/4`. -/
theorem fourPointEndpointLemma (U V W X Y : Point)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 3 ∧
      (¬ TriangularHull ![U, V, X, Y] →
        minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 4) := by
  rcases lt_trichotomy (sarea U V W) 0 with hneg | hzero | hposΔ
  · have hperm : ![V, U, X, Y] = ![U, V, X, Y] ∘ Equiv.swap (0 : Fin 4) 1 := by
      funext m; fin_cases m <;> rfl
    have hsw : minTriangleArea ![U, V, X, Y] = minTriangleArea ![V, U, X, Y] := by
      rw [hperm, minTriangleArea_comp_perm]
    rw [hsw, ← triangleArea_swap₁₂]
    rw [← convexHull_swap_UV] at hX hY
    obtain ⟨h1, h2⟩ := fourPoint_pos (by rw [sarea_swap₁₂]; linarith) hX hY
    refine ⟨h1, fun hnt => h2 fun ht => hnt ?_⟩
    rw [hperm] at ht
    exact triangularHull_comp_perm _ _ ht
  · obtain ⟨a, b, c, -, -, -, -, -, -, h3⟩ := sarea_of_mem_convexHull hX
    have h0 : triangleArea U V X = 0 := by rw [triangleArea_eq, h3, hzero]; simp
    have hle := minTriangleArea_le ![U, V, X, Y] (i := 0) (j := 1) (k := 2) (by decide)
      (by decide) (by decide)
    have : triangleArea (![U, V, X, Y] 0) (![U, V, X, Y] 1) (![U, V, X, Y] 2) = 0 := h0
    rw [this] at hle
    have hA := triangleArea_nonneg U V W
    exact ⟨by linarith, fun _ => by linarith⟩
  · exact fourPoint_pos hposΔ hX hY

/-! ### Six points with two prescribed vertices -/

/-- The image of a point of the closed triangle `UVW` under `hsMap U V W` is in the
half-square. -/
theorem hsMap_mem_halfSquare {U V W X : Point} (hΔ : 0 < sarea U V W)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point)) : hsMap U V W X ∈ halfSquare := by
  obtain ⟨p, q, r, hp, hq, hr, hpqr, rfl⟩ := exists_bary_of_mem_convexHull hX
  rw [hsMap_bary hΔ.ne' hpqr]
  exact ⟨hq, by linarith, by linarith⟩

/-- A point of the open leg `UW` goes to `(0, h)`, `0 < h < 1`. -/
theorem hsMap_of_openSegment_UW {U V W H : Point} (hΔ : 0 < sarea U V W)
    (hH : H ∈ openSegment ℝ U W) : ∃ h, 0 < h ∧ h < 1 ∧ hsMap U V W H = hsH h := by
  obtain ⟨a₁, b₁, ha₁, hb₁, hab₁, rfl⟩ := hH
  have e : a₁ • U + b₁ • W =
      ((a₁ * U.1 + 0 * V.1 + b₁ * W.1, a₁ * U.2 + 0 * V.2 + b₁ * W.2) : Point) := by
    ext <;> simp
  refine ⟨b₁, hb₁, by linarith, ?_⟩
  rw [e, hsMap_bary hΔ.ne' (by linarith)]; simp [hsH]

/-- A point of the open leg `VW` goes to `(f, 1)`, `0 < f < 1`. -/
theorem hsMap_of_openSegment_VW {U V W F : Point} (hΔ : 0 < sarea U V W)
    (hF : F ∈ openSegment ℝ V W) : ∃ f, 0 < f ∧ f < 1 ∧ hsMap U V W F = hsF f := by
  obtain ⟨a₂, b₂, ha₂, hb₂, hab₂, rfl⟩ := hF
  have e : a₂ • V + b₂ • W =
      ((0 * U.1 + a₂ * V.1 + b₂ * W.1, 0 * U.2 + a₂ * V.2 + b₂ * W.2) : Point) := by
    ext <;> simp
  refine ⟨a₂, ha₂, by linarith, ?_⟩
  rw [e, hsMap_bary hΔ.ne' (by linarith)]; simp [hsF, hab₂]

/-- Six points, support case: `H` extreme at `U`, `F` extreme at `V`, two further points `X, Y`.
The support normalization and `OppositeCorners.minTriangleArea_halfSquareConfig_le` give a triangle of area at most
`(7/64) · area(UVW)`. -/
theorem sixPoint_support_case {U V W H F X Y : Point} (hΔ : 0 < sarea U V W)
    (hH : 0 < sarea U V H) (hHW : 0 ≤ sarea W U H) (hF : 0 < sarea U V F)
    (hFW : 0 ≤ sarea V W F) (hX : 0 < sarea U V X) (hY : 0 < sarea U V Y)
    (hUHF : sarea U H F < 0) (hUHX : sarea U H X < 0) (hUHY : sarea U H Y < 0)
    (hVFH : 0 < sarea V F H) (hVFX : 0 < sarea V F X) (hVFY : 0 < sarea V F Y) :
    minTriangleArea ![U, V, H, F, X, Y] ≤ 7 / 64 * triangleArea U V W := by
  obtain ⟨W', hΔ', hle, hHs, hFs, hXs, -⟩ := support_apex hΔ hH hHW hF hFW hUHF hVFH
  obtain ⟨a, b, c, d, e, g, hdet, hmap⟩ := hsMap_affine U V W' hΔ'.ne'
  obtain ⟨h₀, hh0, hh1, hH'⟩ := hsMap_of_openSegment_UW (V := V) hΔ' hHs
  obtain ⟨f₀, hf0, hf1, hF'⟩ := hsMap_of_openSegment_VW (U := U) hΔ' hFs
  have hX' := hsMap_mem_halfSquare hΔ' (hXs X hX.le hUHX.le hVFX.le)
  have hY' := hsMap_mem_halfSquare hΔ' (hXs Y hY.le hUHY.le hVFY.le)
  have hcomp : affineMap a b c d e g ∘ ![U, V, H, F, X, Y] =
      OppositeCorners.halfSquareConfig h₀ f₀ (hsMap U V W' X) (hsMap U V W' Y) := by
    funext i
    fin_cases i <;> simp [OppositeCorners.halfSquareConfig, hmap, hsMap_U hΔ'.ne',
      hsMap_V hΔ'.ne', hH', hF', hsA, hsE, hsH, hsF]
  have h7 := OppositeCorners.minTriangleArea_halfSquareConfig_le h₀ f₀ hh0 hh1 hf0 hf1 _ _ hX' hY'
  have hmin := minTriangleArea_affineMap a b c d e g ![U, V, H, F, X, Y]
  rw [hcomp, hdet, abs_of_pos (by positivity)] at hmin
  rw [hmin] at h7
  have hm0 := minTriangleArea_nonneg ![U, V, H, F, X, Y]
  have : minTriangleArea ![U, V, H, F, X, Y] ≤ 7 / 128 * sarea U V W' := by
    rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ hΔ'] at h7; linarith
  rw [triangleArea_eq, abs_of_pos hΔ]
  nlinarith

/-- Six points, triangular case: three points strictly inside `UVP`, so the six-point
triangular-hull theorem applies to `UVP ⊆ UVW`. -/
theorem sixPoint_tri_case {U V W P Q R S : Point} (hPle : sarea U V P ≤ sarea U V W)
    (hQ : InTriangle Q U V P) (hR : InTriangle R U V P) (hS : InTriangle S U V P) :
    Γsix * minTriangleArea ![U, V, P, Q, R, S] ≤ triangleArea U V W := by
  have h2 := CornerFamilies.sixPointTriangularHullTheorem U V P Q R S (Or.inl hQ) (Or.inl hR)
    (Or.inl hS) _ le_rfl
  have hP : 0 < sarea U V P := by
    have := sarea_add_sarea_add_sarea U V P Q
    obtain ⟨a, b, c⟩ := hQ
    linarith
  have hTP : triangleArea U V P ≤ triangleArea U V W := by
    rw [triangleArea_eq, triangleArea_eq, abs_of_pos hP, abs_of_pos (by linarith)]; linarith
  unfold Γsix
  linarith

theorem Γsix_pos : 0 < Γsix := by unfold Γsix; positivity

/-- Six points with two prescribed vertices: four points in a counterclockwise closed triangle
`UVW` together with `U, V` either have a triangle of area at most `(7/64) · area(UVW)`
(nontriangular hull), or `Γ · min ≤ area(UVW)` (triangular hull). -/
theorem sixPoint_pos {U V W X0 X1 X2 X3 : Point} (hΔ : 0 < sarea U V W)
    (h0 : X0 ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h1 : X1 ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h2 : X2 ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h3 : X3 ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X0, X1, X2, X3] ≤ 7 / 64 * triangleArea U V W ∨
      Γsix * minTriangleArea ![U, V, X0, X1, X2, X3] ≤ triangleArea U V W := by
  rcases (minTriangleArea_nonneg ![U, V, X0, X1, X2, X3]).eq_or_lt with h00 | hpos
  · left; rw [← h00]; exact mul_nonneg (by norm_num) (triangleArea_nonneg _ _ _)
  obtain ⟨c1_0, c2_0, c3_0, c4_0⟩ := sarea_nonneg_of_mem_convexHull hΔ.le h0
  obtain ⟨c1_1, c2_1, c3_1, c4_1⟩ := sarea_nonneg_of_mem_convexHull hΔ.le h1
  obtain ⟨c1_2, c2_2, c3_2, c4_2⟩ := sarea_nonneg_of_mem_convexHull hΔ.le h2
  obtain ⟨c1_3, c2_3, c3_3, c4_3⟩ := sarea_nonneg_of_mem_convexHull hΔ.le h3
  have g0 : 0 < sarea U V X0 :=
    lt_of_le_of_ne c3_0 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 2))
  have g1 : 0 < sarea U V X1 :=
    lt_of_le_of_ne c3_1 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 3))
  have g2 : 0 < sarea U V X2 :=
    lt_of_le_of_ne c3_2 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 4))
  have g3 : 0 < sarea U V X3 :=
    lt_of_le_of_ne c3_3 (Ne.symm (sarea_ne_zero_of_min_pos hpos 0 1 5))
  have gpos : ∀ i, 0 < sarea U V (![X0, X1, X2, X3] i) := fun i => by
    fin_cases i <;> assumption
  have nU : ∀ i j : Fin 4, i ≠ j →
      sarea U (![X0, X1, X2, X3] i) (![X0, X1, X2, X3] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 0 2 3 | exact sarea_ne_zero_of_min_pos hpos 0 2 4
      | exact sarea_ne_zero_of_min_pos hpos 0 2 5 | exact sarea_ne_zero_of_min_pos hpos 0 3 2
      | exact sarea_ne_zero_of_min_pos hpos 0 3 4 | exact sarea_ne_zero_of_min_pos hpos 0 3 5
      | exact sarea_ne_zero_of_min_pos hpos 0 4 2 | exact sarea_ne_zero_of_min_pos hpos 0 4 3
      | exact sarea_ne_zero_of_min_pos hpos 0 4 5 | exact sarea_ne_zero_of_min_pos hpos 0 5 2
      | exact sarea_ne_zero_of_min_pos hpos 0 5 3 | exact sarea_ne_zero_of_min_pos hpos 0 5 4
  have nV : ∀ i j : Fin 4, i ≠ j →
      sarea V (![X0, X1, X2, X3] i) (![X0, X1, X2, X3] j) ≠ 0 := by
    intro i j hij
    fin_cases i <;> fin_cases j <;> first
      | exact absurd rfl hij
      | exact sarea_ne_zero_of_min_pos hpos 1 2 3 | exact sarea_ne_zero_of_min_pos hpos 1 2 4
      | exact sarea_ne_zero_of_min_pos hpos 1 2 5 | exact sarea_ne_zero_of_min_pos hpos 1 3 2
      | exact sarea_ne_zero_of_min_pos hpos 1 3 4 | exact sarea_ne_zero_of_min_pos hpos 1 3 5
      | exact sarea_ne_zero_of_min_pos hpos 1 4 2 | exact sarea_ne_zero_of_min_pos hpos 1 4 3
      | exact sarea_ne_zero_of_min_pos hpos 1 4 5 | exact sarea_ne_zero_of_min_pos hpos 1 5 2
      | exact sarea_ne_zero_of_min_pos hpos 1 5 3 | exact sarea_ne_zero_of_min_pos hpos 1 5 4
  have reindex : ∀ (Q : Fin 6 → Point) (f : Fin 6 → Fin 6), Function.Injective f →
      Q = ![U, V, X0, X1, X2, X3] ∘ f →
      ((minTriangleArea Q ≤ 7 / 64 * triangleArea U V W ∨
          Γsix * minTriangleArea Q ≤ triangleArea U V W) →
        (minTriangleArea ![U, V, X0, X1, X2, X3] ≤ 7 / 64 * triangleArea U V W ∨
          Γsix * minTriangleArea ![U, V, X0, X1, X2, X3] ≤ triangleArea U V W)) ∧
      0 < minTriangleArea Q := by
    intro Q f hf hQ
    have := min_le_min_reindex (by norm_num) _ Q f hf hQ
    refine ⟨fun h => h.imp (fun h' => this.trans h') (fun h' => le_trans
      (mul_le_mul_of_nonneg_left this Γsix_pos.le) h'), lt_of_lt_of_le hpos this⟩
  obtain ⟨i, hi⟩ := exists_extreme_left U V _ gpos nU
  obtain ⟨j, hj⟩ := exists_extreme_right U V _ gpos nV
  fin_cases i <;> fin_cases j
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X0, X1, X2, X3] ![0, 1, 2, 3, 4, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inr <| sixPoint_tri_case c4_0
      (inTriangle_of_extreme g1 (hi 1 (by decide)) (hj 1 (by decide)))
      (inTriangle_of_extreme g2 (hi 2 (by decide)) (hj 2 (by decide)))
      (inTriangle_of_extreme g3 (hi 3 (by decide)) (hj 3 (by decide))))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X0, X1, X2, X3] ![0, 1, 2, 3, 4, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g0 c2_0 g1 c1_1 g2 g3 (hi 1 (by decide))
      (hi 2 (by decide)) (hi 3 (by decide)) (hj 0 (by decide)) (hj 2 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X0, X2, X1, X3] ![0, 1, 2, 4, 3, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g0 c2_0 g2 c1_2 g1 g3 (hi 2 (by decide))
      (hi 1 (by decide)) (hi 3 (by decide)) (hj 0 (by decide)) (hj 1 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X0, X3, X1, X2] ![0, 1, 2, 5, 3, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g0 c2_0 g3 c1_3 g1 g2 (hi 3 (by decide))
      (hi 1 (by decide)) (hi 2 (by decide)) (hj 0 (by decide)) (hj 1 (by decide))
      (hj 2 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X1, X0, X2, X3] ![0, 1, 3, 2, 4, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g1 c2_1 g0 c1_0 g2 g3 (hi 0 (by decide))
      (hi 2 (by decide)) (hi 3 (by decide)) (hj 1 (by decide)) (hj 2 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X1, X0, X2, X3] ![0, 1, 3, 2, 4, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inr <| sixPoint_tri_case c4_1
      (inTriangle_of_extreme g0 (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme g2 (hi 2 (by decide)) (hj 2 (by decide)))
      (inTriangle_of_extreme g3 (hi 3 (by decide)) (hj 3 (by decide))))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X1, X2, X0, X3] ![0, 1, 3, 4, 2, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g1 c2_1 g2 c1_2 g0 g3 (hi 2 (by decide))
      (hi 0 (by decide)) (hi 3 (by decide)) (hj 1 (by decide)) (hj 0 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X1, X3, X0, X2] ![0, 1, 3, 5, 2, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g1 c2_1 g3 c1_3 g0 g2 (hi 3 (by decide))
      (hi 0 (by decide)) (hi 2 (by decide)) (hj 1 (by decide)) (hj 0 (by decide))
      (hj 2 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X2, X0, X1, X3] ![0, 1, 4, 2, 3, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g2 c2_2 g0 c1_0 g1 g3 (hi 0 (by decide))
      (hi 1 (by decide)) (hi 3 (by decide)) (hj 2 (by decide)) (hj 1 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X2, X1, X0, X3] ![0, 1, 4, 3, 2, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g2 c2_2 g1 c1_1 g0 g3 (hi 1 (by decide))
      (hi 0 (by decide)) (hi 3 (by decide)) (hj 2 (by decide)) (hj 0 (by decide))
      (hj 3 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X2, X0, X1, X3] ![0, 1, 4, 2, 3, 5] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inr <| sixPoint_tri_case c4_2
      (inTriangle_of_extreme g0 (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme g1 (hi 1 (by decide)) (hj 1 (by decide)))
      (inTriangle_of_extreme g3 (hi 3 (by decide)) (hj 3 (by decide))))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X2, X3, X0, X1] ![0, 1, 4, 5, 2, 3] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g2 c2_2 g3 c1_3 g0 g1 (hi 3 (by decide))
      (hi 0 (by decide)) (hi 1 (by decide)) (hj 2 (by decide)) (hj 0 (by decide))
      (hj 1 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X3, X0, X1, X2] ![0, 1, 5, 2, 3, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g3 c2_3 g0 c1_0 g1 g2 (hi 0 (by decide))
      (hi 1 (by decide)) (hi 2 (by decide)) (hj 3 (by decide)) (hj 1 (by decide))
      (hj 2 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X3, X1, X0, X2] ![0, 1, 5, 3, 2, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g3 c2_3 g1 c1_1 g0 g2 (hi 1 (by decide))
      (hi 0 (by decide)) (hi 2 (by decide)) (hj 3 (by decide)) (hj 0 (by decide))
      (hj 2 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X3, X2, X0, X1] ![0, 1, 5, 4, 2, 3] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inl <| sixPoint_support_case hΔ g3 c2_3 g2 c1_2 g0 g1 (hi 2 (by decide))
      (hi 0 (by decide)) (hi 1 (by decide)) (hj 3 (by decide)) (hj 0 (by decide))
      (hj 1 (by decide)))
  · obtain ⟨hr, hp'⟩ := reindex ![U, V, X3, X0, X1, X2] ![0, 1, 5, 2, 3, 4] (by decide)
      (by funext m; fin_cases m <;> rfl)
    exact hr (Or.inr <| sixPoint_tri_case c4_3
      (inTriangle_of_extreme g0 (hi 0 (by decide)) (hj 0 (by decide)))
      (inTriangle_of_extreme g1 (hi 1 (by decide)) (hj 1 (by decide)))
      (inTriangle_of_extreme g2 (hi 2 (by decide)) (hj 2 (by decide))))

end Heilbronn.Nine.TypeII
