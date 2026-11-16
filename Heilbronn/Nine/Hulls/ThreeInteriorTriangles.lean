module

public import Heilbronn.Nine.Global.GlobalCompletion
public import Heilbronn.Nine.Hulls.QuadrilateralHull
public import Heilbronn.Nine.TypeII.TypeII.CentralTriple

/-! # A global restriction on triangles containing three points

Nine points in the unit square with least triangle area `t ≥ A₀`, `s₀ = 2A₀`,
`Γ = (11 + 3√5)/2`. "Contains" means strictly inside (`InTriangle`, for a counterclockwise
triangle). A point on an edge gives zero area. For a counterclockwise triangle `ABC`, the
barycentric coordinates of `X` are `sarea(B,C,X)`, `sarea(C,A,X)`, `sarea(A,B,X)` divided by
`sarea(A,B,C)`. The exterior region beyond the edge `BC` is where the first is negative and the
other two are positive (`BeyondEdge X A B C`). `Exterior X A B C r`, for `r = 0, 1, 2`, is the
region beyond `BC`, `CA`, `AB` respectively.

## Main definitions

* `BeyondEdge`, `Exterior`: the three exterior regions.
* `RobustBeyond`, `RobustExterior`: an exterior point whose negative coordinate `-p` satisfies
  `p ≥ (11/20)α` and `p ≥ (11/20)q` for its two positive coordinates `α, q`.
* `TriangleCapacityTwo P`: every actual triangle of `P` contains at most two further points of
  `P` (for any number of points).
* `IsTypeIIHalf`: the Type-II form with `b ≤ 1/2`, the output of the shear normalization.

## Main results

* `sarea_le_of_robustExterior_pair`: two robust points in two different exterior regions force `sarea A B C ≤ 29/31`.
* `sarea_gt_and_exterior_of_three_inside`, `robustExterior_of_three_inside`: a triangle containing three points has doubled area above `29/30`, and
  every other point is inside it or in exactly one exterior region, with the robust proportions.
* `three_inside_is_ear`: a triangle containing at least three points contains exactly three (four are
  excluded by the seven-point bound `ncard_inside_le_three`), is an ear of the full hull, and has
  its three exterior points all beyond one edge; the hull has at most six vertices.
* `nConfig_triangleCapacityTwo`: capacity two in family N.

`typeIIConfig_triangleCapacityTwo`, `exists_min_enclosing_parallelogram`, `exists_affine_family_normal_form` and `triangleCapacityTwo_of_A₀_le` (same
namespace) are in `Heilbronn.Nine.Hulls.GlobalCapacity`: they use
`Heilbronn.Nine.Corners.OneCorner`, whose C1 capacity uses `three_inside_is_ear` here, so keeping them in this
module would create an import cycle.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.ThreeInteriorTriangles

open GlobalCompletion QuadrilateralHull

/-! ### Exterior regions and capacity -/

/-- `X` lies in the exterior region of the counterclockwise triangle `ABC` beyond the edge `BC`:
its barycentric coordinate at `A` is negative and the other two are positive. -/
def BeyondEdge (X A B C : Point) : Prop :=
  sarea B C X < 0 ∧ 0 < sarea C A X ∧ 0 < sarea A B X

/-- The three exterior regions of the counterclockwise triangle `ABC`: beyond `BC` (`r = 0`),
beyond `CA` (`r = 1`), beyond `AB` (`r = 2`). -/
def Exterior (X A B C : Point) : Fin 3 → Prop :=
  ![BeyondEdge X A B C, BeyondEdge X B C A, BeyondEdge X C A B]

/-- `X` lies beyond the edge `BC` with the robust proportions: writing its barycentric
coordinates as `(-p, α, q)`, `p ≥ (11/20)α` and `p ≥ (11/20)q` (multiplied by `sarea A B C > 0`). -/
def RobustBeyond (X A B C : Point) : Prop :=
  BeyondEdge X A B C ∧ 11 / 20 * sarea C A X ≤ -sarea B C X ∧
    11 / 20 * sarea A B X ≤ -sarea B C X

/-- The robust version of `Exterior`. -/
def RobustExterior (X A B C : Point) : Fin 3 → Prop :=
  ![RobustBeyond X A B C, RobustBeyond X B C A, RobustBeyond X C A B]

/-- Triangle capacity two: every triangle spanned by three points of the configuration
(counterclockwise, hence of positive area) contains at most two further points of it. -/
def TriangleCapacityTwo {n : ℕ} (P : Fin n → Point) : Prop :=
  ∀ i j k : Fin n, 0 < sarea (P i) (P j) (P k) →
    Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)} ≤ 2

/-- Triangle capacity two passes to sub-configurations. -/
theorem TriangleCapacityTwo.comp {n m : ℕ} {P : Fin n → Point} (hcap : TriangleCapacityTwo P)
    {f : Fin m → Fin n} (hf : Function.Injective f) : TriangleCapacityTwo (P ∘ f) := by
  intro i j k hpos
  refine le_trans ?_ (hcap (f i) (f j) (f k) hpos)
  exact Set.ncard_le_ncard_of_injOn f (fun a ha => ha) hf.injOn

/-- Triangle capacity two of an affine image (any nonzero determinant) gives it for the
configuration. -/
theorem TriangleCapacityTwo.of_affine {n : ℕ} {P : Fin n → Point} {α β γ δ ε ζ : ℝ}
    (hdet : α * δ - β * γ ≠ 0) (hcap : TriangleCapacityTwo (affineMap α β γ δ ε ζ ∘ P)) :
    TriangleCapacityTwo P := by
  intro i j k hpos
  rcases lt_or_gt_of_ne hdet with hneg | hpos'
  · have hp : 0 < sarea ((affineMap α β γ δ ε ζ ∘ P) i) ((affineMap α β γ δ ε ζ ∘ P) k)
        ((affineMap α β γ δ ε ζ ∘ P) j) := by
      simp only [Function.comp, sarea_affineMap]
      rw [sarea_swap₂₃]; nlinarith
    refine le_trans (Set.ncard_le_ncard ?_) (hcap i k j hp)
    intro m hm
    simp only [Set.mem_ofPred_eq] at hm ⊢
    obtain ⟨h1, h2, h3⟩ := hm
    simp only [InTriangle, Function.comp, sarea_affineMap]
    refine ⟨?_, ?_, ?_⟩
    · exact mul_pos_of_neg_of_neg hneg
        (show sarea (P i) (P k) (P m) < 0 by rw [sarea_swap₁₂] at h3; linarith)
    · exact mul_pos_of_neg_of_neg hneg
        (show sarea (P k) (P j) (P m) < 0 by rw [sarea_swap₁₂] at h2; linarith)
    · exact mul_pos_of_neg_of_neg hneg
        (show sarea (P j) (P i) (P m) < 0 by rw [sarea_swap₁₂] at h1; linarith)
  · have hp : 0 < sarea ((affineMap α β γ δ ε ζ ∘ P) i) ((affineMap α β γ δ ε ζ ∘ P) j)
        ((affineMap α β γ δ ε ζ ∘ P) k) := by
      simp only [Function.comp, sarea_affineMap]; positivity
    refine le_trans (Set.ncard_le_ncard ?_) (hcap i j k hp)
    intro m hm
    exact InTriangle.affine hpos' hm

/-- The normalized Type-II form used by `typeIIConfig_triangleCapacityTwo`: `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)` with
`0<λ<1`, `0<b≤1/2`, and five further points in the square. -/
def IsTypeIIHalf (P : Fin 9 → Point) : Prop :=
  ∃ (l b : ℝ) (V W X Y Z : Point), 0 < b ∧ b ≤ 1 / 2 ∧ 0 < l ∧ l < 1 ∧
    V ∈ unitSquare ∧ W ∈ unitSquare ∧ X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧
    P = typeIIConfig l b V W X Y Z

/-! ### Two canonical exterior points force extra enclosing area -/

/-- The fixed point `E* = (-11A + 20B + 20C)/29`, with barycentrics `(-11/29, 20/29, 20/29)`. -/
def starPt (A B C : Point) : Point :=
  ((-11 * A.1 + 20 * B.1 + 20 * C.1) / 29, (-11 * A.2 + 20 * B.2 + 20 * C.2) / 29)

/-- A robust point beyond `BC` puts `E*` in the unit square: `E* ∈ conv{B, C, E}`. -/
theorem starPt_mem {A B C E : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hE : E ∈ unitSquare) (hD : 0 < sarea A B C)
    (h : RobustBeyond E A B C) : starPt A B C ∈ unitSquare := by
  obtain ⟨⟨h1, h2, h3⟩, h4, h5⟩ := h
  have hsum := sarea_add_sarea_add_sarea B C A E
  have e1 : sarea A B C = sarea B C A := (sarea_cycle A B C).symm
  set m := -sarea B C E with hm
  set eB := sarea C A E
  set eC := sarea A B E
  set D := sarea A B C
  have hm0 : 0 < m := by linarith
  have cB : 0 ≤ 20 * m - 11 * eB := by linarith
  have cC : 0 ≤ 20 * m - 11 * eC := by linarith
  have hsum' : D = -m + eB + eC := by
    rw [e1]; have := sarea_add_sarea_add_sarea A B C E; linarith
  have ix : m * (-11 * A.1 + 20 * B.1 + 20 * C.1) =
      11 * D * E.1 + (20 * m - 11 * eB) * B.1 + (20 * m - 11 * eC) * C.1 := by
    simp only [hm, D, eB, eC, sarea]; ring
  have iy : m * (-11 * A.2 + 20 * B.2 + 20 * C.2) =
      11 * D * E.2 + (20 * m - 11 * eB) * B.2 + (20 * m - 11 * eC) * C.2 := by
    simp only [hm, D, eB, eC, sarea]; ring
  obtain ⟨a1, a2, a3, a4⟩ := hA
  obtain ⟨b1, b2, b3, b4⟩ := hB
  obtain ⟨c1, c2, c3, c4⟩ := hC
  obtain ⟨e1', e2, e3, e4⟩ := hE
  have bnd {x xb xc xe : ℝ} (hx : m * x = 11 * D * xe + (20 * m - 11 * eB) * xb +
      (20 * m - 11 * eC) * xc) (hb0 : 0 ≤ xb) (hb1 : xb ≤ 1) (hc0 : 0 ≤ xc) (hc1 : xc ≤ 1)
      (he0 : 0 ≤ xe) (he1 : xe ≤ 1) : 0 ≤ x / 29 ∧ x / 29 ≤ 1 := by
    have l0 : 0 ≤ m * x := by
      rw [hx]; have := mul_nonneg cB hb0; have := mul_nonneg cC hc0
      have := mul_nonneg (by positivity : (0 : ℝ) ≤ 11 * D) he0; linarith
    have l1 : m * x ≤ m * 29 := by
      rw [hx]; have := mul_le_mul_of_nonneg_left hb1 cB; have := mul_le_mul_of_nonneg_left hc1 cC
      have := mul_le_mul_of_nonneg_left he1 (by positivity : (0 : ℝ) ≤ 11 * D); nlinarith
    have := le_of_mul_le_mul_left l1 hm0
    have := nonneg_of_mul_nonneg_right (by linarith : 0 ≤ m * x) hm0
    constructor <;> [positivity; (rw [div_le_one (by norm_num)]; linarith)]
  obtain ⟨x0, x1⟩ := bnd ix b1 b2 c1 c2 e1' e2
  obtain ⟨y0, y1⟩ := bnd iy b3 b4 c3 c4 e3 e4
  exact ⟨x0, x1, y0, y1⟩

/-- The polar table of `sarea_le_of_robustExterior_pair`: if `0 ≤ Uᵢ ≤ 29/31`, `30Uᵢ + 20Vᵢ ≤ 29` and `Uᵢ/2 + Vᵢ ≤ 1`
for `i = 1, 2`, then `U₁V₂ + V₁U₂ ≤ 29/31`. -/
theorem polar_bound {U1 V1 U2 V2 : ℝ} (hU1 : 0 ≤ U1) (hU2 : 0 ≤ U2)
    (a1 : U1 ≤ 29 / 31) (b1 : 30 * U1 + 20 * V1 ≤ 29) (c1 : U1 / 2 + V1 ≤ 1)
    (a2 : U2 ≤ 29 / 31) (b2 : 30 * U2 + 20 * V2 ≤ 29) (c2 : U2 / 2 + V2 ≤ 1) :
    U1 * V2 + V1 * U2 ≤ 29 / 31 := by
  have l1 : 31 * U1 / 40 + 9 * V1 / 20 ≤ 29 / 31 := by linarith
  have l2 : 29 * U1 / 620 + 29 * V1 / 31 ≤ 29 / 31 := by linarith
  rcases le_total U2 (9 / 20) with h | h
  · nlinarith [mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 a1), mul_nonneg hU2 (sub_nonneg.2 l1),
      mul_nonneg hU1 (by linarith : (0 : ℝ) ≤ 1 - U2 / 2 - V2)]
  · nlinarith [mul_nonneg (sub_nonneg.2 a2) (sub_nonneg.2 l1), mul_nonneg (sub_nonneg.2 h) (sub_nonneg.2 l2),
      mul_nonneg hU1 (by linarith : (0 : ℝ) ≤ (29 - 30 * U2) / 20 - V2)]

/-- The width bounds `|31u| ≤ 29`, `|30u ± 20v| ≤ 29`, `|u/2 ± v| ≤ 1` turned into the row
constraints of `polar_bound` for `(|u|, |v|)`. -/
theorem width_row {u v : ℝ} (h1 : |31 * u| ≤ 29) (h2 : |30 * u + 20 * v| ≤ 29)
    (h3 : |30 * u - 20 * v| ≤ 29) (h4 : |u / 2 + v| ≤ 1) (h5 : |v - u / 2| ≤ 1) :
    |u| ≤ 29 / 31 ∧ 30 * |u| + 20 * |v| ≤ 29 ∧ |u| / 2 + |v| ≤ 1 := by
  rw [abs_le] at h1 h2 h3 h4 h5
  rcases le_total 0 u with hu | hu <;> rcases le_total 0 v with hv | hv <;>
    simp only [abs_of_nonneg, abs_of_nonpos, hu, hv] <;>
    refine ⟨by linarith [h1.1, h1.2], by linarith [h2.1, h2.2, h3.1, h3.2],
      by linarith [h4.1, h4.2, h5.1, h5.2]⟩

/-- `sarea_le_of_robustExterior_pair` for `E` beyond `BC` and `F` beyond `CA`. -/
theorem sarea_le_of_robustBeyond_pair {A B C E F : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hE : E ∈ unitSquare) (hF : F ∈ unitSquare)
    (hD : 0 < sarea A B C) (hEr : RobustBeyond E A B C) (hFr : RobustBeyond F B C A) :
    sarea A B C ≤ 29 / 31 := by
  have hD' : 0 < sarea B C A := by rw [sarea_cycle A B C]; exact hD
  have hE' := starPt_mem hA hB hC hE hD hEr
  have hF' := starPt_mem hB hC hA hF hD' hFr
  obtain ⟨a1, a2, a3, a4⟩ := hA
  obtain ⟨b1, b2, b3, b4⟩ := hB
  obtain ⟨c1, c2, c3, c4⟩ := hC
  obtain ⟨e1, e2, e3, e4⟩ := hE'
  obtain ⟨f1, f2, f3, f4⟩ := hF'
  simp only [starPt] at e1 e2 e3 e4 f1 f2 f3 f4
  have row {xa xb xc : ℝ} (ha0 : 0 ≤ xa) (ha1 : xa ≤ 1) (hb0 : 0 ≤ xb) (hb1 : xb ≤ 1)
      (hc0 : 0 ≤ xc) (hc1 : xc ≤ 1) (he0 : 0 ≤ (-11 * xa + 20 * xb + 20 * xc) / 29)
      (he1 : (-11 * xa + 20 * xb + 20 * xc) / 29 ≤ 1) (hf0 : 0 ≤ (-11 * xb + 20 * xc + 20 * xa) / 29)
      (hf1 : (-11 * xb + 20 * xc + 20 * xa) / 29 ≤ 1) :
      |xb - xa| ≤ 29 / 31 ∧ 30 * |xb - xa| + 20 * |xc - xa - (xb - xa) / 2| ≤ 29 ∧
        |xb - xa| / 2 + |xc - xa - (xb - xa) / 2| ≤ 1 := by
    apply width_row
    · rw [abs_le]; constructor <;> linarith
    · rw [abs_le]; constructor <;> linarith
    · rw [abs_le]; constructor <;> linarith
    · rw [abs_le]; constructor <;> linarith
    · rw [abs_le]; constructor <;> linarith
  obtain ⟨p1, q1, r1⟩ := row a1 a2 b1 b2 c1 c2 e1 e2 f1 f2
  obtain ⟨p2, q2, r2⟩ := row a3 a4 b3 b4 c3 c4 e3 e4 f3 f4
  have key := polar_bound (abs_nonneg _) (abs_nonneg _) p1 q1 r1 p2 q2 r2
  have eD : sarea A B C = (B.1 - A.1) * (C.2 - A.2 - (B.2 - A.2) / 2) -
      (C.1 - A.1 - (B.1 - A.1) / 2) * (B.2 - A.2) := by unfold sarea; ring
  rw [eD]
  have t1 := le_abs_self ((B.1 - A.1) * (C.2 - A.2 - (B.2 - A.2) / 2))
  have t2 := neg_abs_le ((C.1 - A.1 - (B.1 - A.1) / 2) * (B.2 - A.2))
  rw [abs_mul] at t1 t2
  linarith

/-- Let `A, B, C, E, F` lie in the unit square, with `ABC` of positive doubled area `D`. If `E`
and `F` lie in two different exterior regions of `ABC`, each with the robust proportions
(`RobustExterior`), then `D ≤ 29/31`. The fixed points `E*`, `F*` (`starPt`) with barycentrics
`(-11/29, 20/29, 20/29)` span with `A, B, C` an affine image of a fixed pentagon `K` in the
square, and every such image has determinant at most `29/31` (width-polar vertices `T, U, V`,
`polar_bound`). -/
theorem sarea_le_of_robustExterior_pair {A B C E F : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hE : E ∈ unitSquare) (hF : F ∈ unitSquare)
    (hD : 0 < sarea A B C) {r₁ r₂ : Fin 3} (hr : r₁ ≠ r₂) (hEr : RobustExterior E A B C r₁)
    (hFr : RobustExterior F A B C r₂) : sarea A B C ≤ 29 / 31 := by
  have c1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have c2 : sarea C A B = sarea A B C := by rw [sarea_cycle B C A, c1]
  fin_cases r₁ <;> fin_cases r₂ <;> simp only [RobustExterior] at hEr hFr
  all_goals first
    | exact absurd rfl hr
    | exact sarea_le_of_robustBeyond_pair hA hB hC hE hF hD hEr hFr
    | exact sarea_le_of_robustBeyond_pair hA hB hC hF hE hD hFr hEr
    | (rw [← c1]; exact sarea_le_of_robustBeyond_pair hB hC hA hE hF (by rw [c1]; exact hD) hEr hFr)
    | (rw [← c1]; exact sarea_le_of_robustBeyond_pair hB hC hA hF hE (by rw [c1]; exact hD) hFr hEr)
    | (rw [← c2]; exact sarea_le_of_robustBeyond_pair hC hA hB hE hF (by rw [c2]; exact hD) hEr hFr)
    | (rw [← c2]; exact sarea_le_of_robustBeyond_pair hC hA hB hF hE (by rw [c2]; exact hD) hFr hEr)

/-! ### Every exterior point is robust; three-interior triangles are ears -/

/-! ### Helpers -/

theorem inTriangle_ne {P : Fin 9 → Point} {i j k m : Fin 9}
    (h : InTriangle (P m) (P i) (P j) (P k)) : m ≠ i ∧ m ≠ j ∧ m ≠ k := by
  obtain ⟨-, a2, a3⟩ := ne_of_sarea_pos (P := P) h.1
  obtain ⟨-, b2, -⟩ := ne_of_sarea_pos (P := P) h.2.1
  exact ⟨a3.symm, a2.symm, b2.symm⟩

theorem inTriangle_rotate {X A B C : Point} : InTriangle X A B C ↔ InTriangle X B C A :=
  ⟨fun h => ⟨h.2.1, h.2.2, h.1⟩, fun h => ⟨h.2.2, h.1, h.2.1⟩⟩

/-- The barycentric identity `[BCX]A + [CAX]B + [ABX]C = [ABC]X`, coordinatewise. -/
theorem bary_identity (A B C X : Point) :
    sarea B C X * A.1 + sarea C A X * B.1 + sarea A B X * C.1 = sarea A B C * X.1 ∧
      sarea B C X * A.2 + sarea C A X * B.2 + sarea A B X * C.2 = sarea A B C * X.2 := by
  constructor <;> unfold sarea <;> ring

theorem mem_hull3 {A B C X : Point} {a b c : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) (hc : 0 ≤ c)
    (hs : a + b + c = 1) (hX : X = (a * A.1 + b * B.1 + c * C.1, a * A.2 + b * B.2 + c * C.2)) :
    X ∈ convexHull ℝ ({A, B, C} : Set Point) := by
  have := (convex_convexHull ℝ ({A, B, C} : Set Point)).sum_mem (t := Finset.univ)
    (w := ![a, b, c]) (z := ![A, B, C]) (fun i _ => by fin_cases i <;> simpa)
    (by simp [Fin.sum_univ_three, hs])
    (fun i _ => subset_convexHull ℝ _ (by fin_cases i <;> simp))
  convert this using 1
  rw [hX, Fin.sum_univ_three]
  ext <;> simp

/-- A point strictly inside a counterclockwise triangle lies in the convex hull of its vertices,
listed in any of the orders used below. -/
theorem InTriangle.mem_hull {X A B C : Point} (hD : 0 < sarea A B C) (h : InTriangle X A B C) :
    X ∈ convexHull ℝ ({C, B, A} : Set Point) ∧ X ∈ convexHull ℝ ({B, C, A} : Set Point) := by
  obtain ⟨h1, h2, h3⟩ := h
  obtain ⟨e1, e2⟩ := bary_identity A B C X
  have hs := sarea_add_sarea_add_sarea A B C X
  constructor
  · refine mem_hull3 (a := sarea A B X / sarea A B C) (b := sarea C A X / sarea A B C)
      (c := sarea B C X / sarea A B C) (by positivity) (by positivity) (by positivity)
      (by field_simp; linarith) ?_
    ext <;> simp only <;> field_simp <;> linarith
  · refine mem_hull3 (a := sarea C A X / sarea A B C) (b := sarea A B X / sarea A B C)
      (c := sarea B C X / sarea A B C) (by positivity) (by positivity) (by positivity)
      (by field_simp; linarith) ?_
    ext <;> simp only <;> field_simp <;> linarith

theorem abs_sarea_le_one {P Q R : Point} (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hR : R ∈ unitSquare) : |sarea P Q R| ≤ 1 := by
  have := CornerFamilies.triangleArea_le_half_of_mem_unitSquare P Q R hP hQ hR
  rw [triangleArea_eq] at this; linarith

/-- `(11 + 3√5)A₀ > 29/30`, the numerical bound behind `D_gt`. -/
theorem gamma_A₀ : (29 / 30 : ℝ) < (11 + 3 * Real.sqrt 5) * A₀ := by
  have h5 : (67 / 30 : ℝ) < Real.sqrt 5 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have := A₀_bounds.2.2.1
  nlinarith

/-- A counterclockwise actual triangle containing three distinct actual points has doubled area
above `29/30`. -/
theorem D_gt {P : Fin 9 → Point} (hA : A₀ ≤ minTriangleArea P) {i j k m₁ m₂ m₃ : Fin 9}
    (hccw : 0 < sarea (P i) (P j) (P k)) (h1 : InTriangle (P m₁) (P i) (P j) (P k))
    (h2 : InTriangle (P m₂) (P i) (P j) (P k)) (h3 : InTriangle (P m₃) (P i) (P j) (P k))
    (h12 : m₁ ≠ m₂) (h13 : m₁ ≠ m₃) (h23 : m₂ ≠ m₃) : 29 / 30 < sarea (P i) (P j) (P k) := by
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  obtain ⟨x1, x2, x3⟩ := inTriangle_ne h1
  obtain ⟨y1, y2, y3⟩ := inTriangle_ne h2
  obtain ⟨z1, z2, z3⟩ := inTriangle_ne h3
  have hinj : Function.Injective ![i, j, k, m₁, m₂, m₃] := by
    rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
  have k6 := CornerFamilies.sixPointTriangularHullTheorem _ _ _ _ _ _ (Or.inl h1) (Or.inl h2)
    (Or.inl h3) A₀ (le_min_sub (Q := ![P i, P j, P k, P m₁, P m₂, P m₃]) (by norm_num) _ hinj
      (fun a => by fin_cases a <;> rfl) hA)
  rw [triangleArea_of_pos hccw] at k6
  linarith [gamma_A₀]

/-- `(11 + 3√5)A₀ ≤ [ABC]` (doubled area) for a triangle containing three actual points, by
`CornerFamilies.sixPointTriangularHullTheorem`. -/
theorem D_ge {P : Fin 9 → Point} (hA : A₀ ≤ minTriangleArea P) {i j k m₁ m₂ m₃ : Fin 9}
    (hccw : 0 < sarea (P i) (P j) (P k)) (h1 : InTriangle (P m₁) (P i) (P j) (P k))
    (h2 : InTriangle (P m₂) (P i) (P j) (P k)) (h3 : InTriangle (P m₃) (P i) (P j) (P k))
    (h12 : m₁ ≠ m₂) (h13 : m₁ ≠ m₃) (h23 : m₂ ≠ m₃) :
    (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P i) (P j) (P k) := by
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  obtain ⟨x1, x2, x3⟩ := inTriangle_ne h1
  obtain ⟨y1, y2, y3⟩ := inTriangle_ne h2
  obtain ⟨z1, z2, z3⟩ := inTriangle_ne h3
  have hinj : Function.Injective ![i, j, k, m₁, m₂, m₃] := by
    rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
  have k6 := CornerFamilies.sixPointTriangularHullTheorem _ _ _ _ _ _ (Or.inl h1) (Or.inl h2)
    (Or.inl h3) A₀ (le_min_sub (Q := ![P i, P j, P k, P m₁, P m₂, P m₃]) (by norm_num) _ hinj
      (fun a => by fin_cases a <;> rfl) hA)
  rw [triangleArea_of_pos hccw] at k6
  linarith

/-- Let an actual counterclockwise triangle of a nine-point configuration in the square with least
area `t ≥ A₀` contain three further points. Then its doubled area exceeds `29/30`, since
`2S ≥ Γs₀`. Every other point is inside it or lies in exactly one exterior region: no point has a
zero or two negative barycentric coordinates. -/
theorem sarea_gt_and_exterior_of_three_inside {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) :
    29 / 30 < sarea (P i) (P j) (P k) ∧
      ∀ m, m ≠ i → m ≠ j → m ≠ k →
        InTriangle (P m) (P i) (P j) (P k) ∨ ∃ r, Exterior (P m) (P i) (P j) (P k) r := by
  obtain ⟨m₁, m₂, m₃, h1, h2, h3, h12, h13, h23⟩ :=
    (Set.two_lt_ncard_iff (s := {m | InTriangle (P m) (P i) (P j) (P k)})).1 (by omega)
  have hD := D_gt hA hccw h1 h2 h3 h12 h13 h23
  refine ⟨hD, fun m hi hj hk => ?_⟩
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hA
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  have g (a b : Fin 9) (hab : a ≠ b) (ha : a ≠ m) (hb : b ≠ m) :
      2 * A₀ ≤ |sarea (P a) (P b) (P m)| := by
    have := area_of_le_min hA a b m hab hb ha
    rw [triangleArea_eq] at this; linarith
  have x0 := g j k d2 (Ne.symm hj) (Ne.symm hk)
  have y0 := g k i (Ne.symm d3) (Ne.symm hk) (Ne.symm hi)
  have z0 := g i j d1 (Ne.symm hi) (Ne.symm hj)
  have x1 := abs_sarea_le_one (hP j) (hP k) (hP m)
  have y1 := abs_sarea_le_one (hP k) (hP i) (hP m)
  have z1 := abs_sarea_le_one (hP i) (hP j) (hP m)
  have hs := sarea_add_sarea_add_sarea (P i) (P j) (P k) (P m)
  have hA0 := A₀_bounds.2.2.1
  have nz {t : ℝ} (h : 2 * A₀ ≤ |t|) : t < 0 ∨ 0 < t := by
    rcases lt_trichotomy t 0 with h' | h' | h'
    · exact Or.inl h'
    · rw [h', abs_zero] at h; linarith [A₀_pos]
    · exact Or.inr h'
  rcases nz x0 with xs | xs <;> rcases nz y0 with ys | ys <;> rcases nz z0 with zs | zs
  · rw [abs_of_neg xs] at x0; rw [abs_of_neg ys] at y0; rw [abs_of_neg zs] at z0; linarith
  · rw [abs_of_neg xs] at x0; rw [abs_of_neg ys] at y0; rw [abs_le] at z1; linarith
  · rw [abs_of_neg xs] at x0; rw [abs_of_neg zs] at z0; rw [abs_le] at y1; linarith
  · exact Or.inr ⟨0, ⟨xs, ys, zs⟩⟩
  · rw [abs_of_neg ys] at y0; rw [abs_of_neg zs] at z0; rw [abs_le] at x1; linarith
  · exact Or.inr ⟨1, ⟨ys, zs, xs⟩⟩
  · exact Or.inr ⟨2, ⟨zs, xs, ys⟩⟩
  · exact Or.inl ⟨zs, xs, ys⟩

/-- `robustExterior_of_three_inside` for a point beyond `BC`, given three distinct inside points. -/
theorem robust_core {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k m₁ m₂ m₃ m : Fin 9}
    (hccw : 0 < sarea (P i) (P j) (P k)) (h1 : InTriangle (P m₁) (P i) (P j) (P k))
    (h2 : InTriangle (P m₂) (P i) (P j) (P k)) (h3 : InTriangle (P m₃) (P i) (P j) (P k))
    (h12 : m₁ ≠ m₂) (h13 : m₁ ≠ m₃) (h23 : m₂ ≠ m₃)
    (hm : BeyondEdge (P m) (P i) (P j) (P k)) : RobustBeyond (P m) (P i) (P j) (P k) := by
  have hD := D_gt hA hccw h1 h2 h3 h12 h13 h23
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  obtain ⟨x1, x2, x3⟩ := inTriangle_ne h1
  obtain ⟨y1, y2, y3⟩ := inTriangle_ne h2
  obtain ⟨z1, z2, z3⟩ := inTriangle_ne h3
  obtain ⟨hx, hy, hz⟩ := hm
  obtain ⟨-, -, w1⟩ := ne_of_sarea_pos (P := P) hy
  obtain ⟨-, w2, -⟩ := ne_of_sarea_pos (P := P) hz
  obtain ⟨-, w3, -⟩ := ne_of_sarea_pos (P := P) hy
  have out {n : Fin 9} (hn : InTriangle (P n) (P i) (P j) (P k)) : n ≠ m := by
    rintro rfl; linarith [hn.2.1]
  have v1 := out h1; have v2 := out h2; have v3 := out h3
  obtain ⟨b1, b2⟩ := bary_identity (P i) (P j) (P k) (P m)
  set D := sarea (P i) (P j) (P k)
  set x := sarea (P j) (P k) (P m)
  set y := sarea (P k) (P i) (P m)
  set z := sarea (P i) (P j) (P m)
  have hs : x + y + z = D := by
    have := sarea_add_sarea_add_sarea (P i) (P j) (P k) (P m); linarith
  have hyl : y ≤ 1 := (abs_le.1 (abs_sarea_le_one (hP k) (hP i) (hP m))).2
  have hzl : z ≤ 1 := (abs_le.1 (abs_sarea_le_one (hP i) (hP j) (hP m))).2
  have hS : triangleArea (P i) (P j) (P k) = D / 2 := triangleArea_of_pos hccw
  have hS2 : D / 2 ≤ 1 / 2 := hS ▸ CornerFamilies.triangleArea_le_half_of_mem_unitSquare _ _ _ (hP i) (hP j) (hP k)
  have hD0 : 0 < D := hccw
  -- the corollary in a relabelled triangle `A' B' C'` with `C' = A`
  refine ⟨⟨hx, hy, hz⟩, ?_, ?_⟩
  · -- `p ≥ (11/20) q` with `q` the coordinate at `B`
    by_contra hc; push Not at hc
    have kk := TypeII.coupledAffineCorollary_geometric (A := P k) (B := P j) (C := P i)
      (X := P m₁) (Y := P m₂) (Z := P m₃) (α := z / D) (q := y / D) (p := -x / D)
      (by rw [triangleArea_swap₁₃, hS]; positivity)
      (by rw [triangleArea_swap₁₃, hS]; exact hS2)
      (InTriangle.mem_hull hccw h1).1 (InTriangle.mem_hull hccw h2).1 (InTriangle.mem_hull hccw h3).1
      (by positivity) (by rw [div_le_iff₀ hD0]; linarith)
      (by rw [triangleArea_swap₁₃, hS, show 2 * (D / 2) = D by ring]
          exact div_le_div_of_nonneg_right hyl hD0.le)
      (div_pos (by linarith) hD0)
      (by rw [mul_div_assoc', div_le_div_iff_of_pos_right hD0]; linarith)
      (by field_simp; linarith)
    have e : TypeII.bary (P k) (P j) (P i) (z / D) (y / D) (-(-x / D)) = P m := by
      unfold TypeII.bary; ext <;> simp only <;> field_simp <;> linarith
    rw [e] at kk
    have hinj : Function.Injective ![k, j, i, m₁, m₂, m₃, m] := by
      rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
    have := le_min_sub (Q := ![P k, P j, P i, P m₁, P m₂, P m₃, P m]) (by norm_num) _ hinj
      (fun a => by fin_cases a <;> rfl) hA
    linarith
  · by_contra hc; push Not at hc
    have kk := TypeII.coupledAffineCorollary_geometric (A := P j) (B := P k) (C := P i)
      (X := P m₁) (Y := P m₂) (Z := P m₃) (α := y / D) (q := z / D) (p := -x / D)
      (by rw [show triangleArea (P j) (P k) (P i) = triangleArea (P i) (P j) (P k) from
        triangleArea_cycle _ _ _, hS]; positivity)
      (by rw [show triangleArea (P j) (P k) (P i) = triangleArea (P i) (P j) (P k) from
        triangleArea_cycle _ _ _, hS]; exact hS2)
      (InTriangle.mem_hull hccw h1).2 (InTriangle.mem_hull hccw h2).2 (InTriangle.mem_hull hccw h3).2
      (by positivity) (by rw [div_le_iff₀ hD0]; linarith)
      (by rw [show triangleArea (P j) (P k) (P i) = triangleArea (P i) (P j) (P k) from
            triangleArea_cycle _ _ _, hS, show 2 * (D / 2) = D by ring]
          exact div_le_div_of_nonneg_right hzl hD0.le)
      (div_pos (by linarith) hD0)
      (by rw [mul_div_assoc', div_le_div_iff_of_pos_right hD0]; linarith)
      (by field_simp; linarith)
    have e : TypeII.bary (P j) (P k) (P i) (y / D) (z / D) (-(-x / D)) = P m := by
      unfold TypeII.bary; ext <;> simp only <;> field_simp <;> linarith
    rw [e] at kk
    have hinj : Function.Injective ![j, k, i, m₁, m₂, m₃, m] := by
      rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
    have := le_min_sub (Q := ![P j, P k, P i, P m₁, P m₂, P m₃, P m]) (by norm_num) _ hinj
      (fun a => by fin_cases a <;> rfl) hA
    linarith

/-- Let an actual counterclockwise triangle of a nine-point configuration in the square with least
area at least `A₀` contain three further points. Then every exterior point has the robust
proportions (`RobustExterior`): `p ≥ (11/20)q` and `p ≥ (11/20)α`. The normalized minimum satisfies
`σ ≥ s₀ max(1, q)` with `0 < q < 30/29`, which are the hypotheses of
`TypeII.coupledAffineCorollary_geometric`. -/
theorem robustExterior_of_three_inside {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare) (hA : A₀ ≤ minTriangleArea P)
    {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) (m : Fin 9) (r : Fin 3)
    (hm : Exterior (P m) (P i) (P j) (P k) r) : RobustExterior (P m) (P i) (P j) (P k) r := by
  obtain ⟨m₁, m₂, m₃, h1, h2, h3, h12, h13, h23⟩ :=
    (Set.two_lt_ncard_iff (s := {m | InTriangle (P m) (P i) (P j) (P k)})).1 (by omega)
  have c1 : sarea (P j) (P k) (P i) = sarea (P i) (P j) (P k) := sarea_cycle _ _ _
  have c2 : sarea (P k) (P i) (P j) = sarea (P i) (P j) (P k) := by
    rw [sarea_cycle (P j) (P k) (P i), c1]
  fin_cases r <;> simp only [Exterior, RobustExterior] at hm ⊢
  · exact robust_core hP hA hccw h1 h2 h3 h12 h13 h23 hm
  · exact robust_core hP hA (by rw [c1]; exact hccw) (inTriangle_rotate.1 h1)
      (inTriangle_rotate.1 h2) (inTriangle_rotate.1 h3) h12 h13 h23 hm
  · exact robust_core hP hA (by rw [c2]; exact hccw) (inTriangle_rotate.2 h1)
      (inTriangle_rotate.2 h2) (inTriangle_rotate.2 h3) h12 h13 h23 hm

/-- At most three points inside an actual triangle (the seven-point triangular-hull bound). -/
theorem ncard_inside_le_three {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k)) :
    Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)} ≤ 3 := by
  by_contra hc; push Not at hc
  obtain ⟨m₁, m₂, m₃, m₄, h1, h2, h3, h4, h12, h13, h14, h23, h24, h34⟩ :=
    (Set.three_lt_ncard_iff (s := {m | InTriangle (P m) (P i) (P j) (P k)})).1 hc
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  obtain ⟨x1, x2, x3⟩ := inTriangle_ne h1
  obtain ⟨y1, y2, y3⟩ := inTriangle_ne h2
  obtain ⟨z1, z2, z3⟩ := inTriangle_ne h3
  obtain ⟨w1, w2, w3⟩ := inTriangle_ne h4
  have hinj : Function.Injective ![i, j, k, m₁, m₂, m₃, m₄] := by
    rw [← List.nodup_ofFn]; simp [List.ofFn_succ]; tauto
  have k7 := CornerFamilies.triangularHullLemma (P i) (P j) (P k) ![P m₁, P m₂, P m₃, P m₄]
    (fun a => by fin_cases a <;> exact Or.inl ‹_›) A₀
    (le_min_sub (Q := CornerFamilies.sevenConfig (P i) (P j) (P k) ![P m₁, P m₂, P m₃, P m₄])
      (by norm_num) _ hinj (fun a => by fin_cases a <;> rfl) hA)
  rw [triangleArea_of_pos hccw] at k7
  have hD1 := (abs_le.1 (abs_sarea_le_one (hP i) (hP j) (hP k))).2
  have hs2 : (7 / 5 : ℝ) < Real.sqrt 2 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
  have := A₀_bounds.2.2.1
  nlinarith

/-- The complement of a set of three indices among nine has six elements. -/
theorem ncard_compl_of_three {s : Set (Fin 9)} (h : s.ncard = 3) : sᶜ.ncard = 6 := by
  have := Set.ncard_add_ncard_compl s
  rw [Nat.card_eq_fintype_card, Fintype.card_fin] at this
  omega

/-- The conclusions of `three_inside_is_ear` once all exterior points lie beyond `BC`. -/
theorem ear_of_forall_beyondEdge {P : Fin 9 → Point} {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)} = 3)
    (hext : ∀ m, m ≠ i → m ≠ j → m ≠ k → ¬ InTriangle (P m) (P i) (P j) (P k) →
      BeyondEdge (P m) (P i) (P j) (P k)) :
    (∀ m, m ≠ i → m ≠ j → 0 < sarea (P i) (P j) (P m)) ∧
      (∀ m, m ≠ k → m ≠ i → 0 < sarea (P k) (P i) (P m)) ∧
      Set.ncard {m | IsHullVertex P m} ≤ 6 := by
  refine ⟨fun m hi hj => ?_, fun m hk hi => ?_, ?_⟩
  · by_cases hk : m = k
    · rw [hk]; exact hccw
    by_cases hin : InTriangle (P m) (P i) (P j) (P k)
    · exact hin.1
    · exact (hext m hi hj hk hin).2.2
  · by_cases hj : m = j
    · rw [hj, show sarea (P k) (P i) (P j) = sarea (P i) (P j) (P k) by unfold sarea; ring]
      exact hccw
    by_cases hin : InTriangle (P m) (P i) (P j) (P k)
    · exact hin.2.2
    · exact (hext m hi hj hk hin).2.1
  · have hsub : {m | IsHullVertex P m} ⊆ {m | InTriangle (P m) (P i) (P j) (P k)}ᶜ := by
      intro m hm hin
      obtain ⟨u, v, huv⟩ := hm
      obtain ⟨a1, a2, a3⟩ := inTriangle_ne hin
      have l1 := huv i a1.symm; have l2 := huv j a2.symm; have l3 := huv k a3.symm
      obtain ⟨b1, b2⟩ := bary_identity (P i) (P j) (P k) (P m)
      have hs := sarea_add_sarea_add_sarea (P i) (P j) (P k) (P m)
      obtain ⟨c1, c2, c3⟩ := hin
      have f1 := congrArg (fun t => u * t) b1
      have f2 := congrArg (fun t => v * t) b2
      have f3 := congrArg (fun t => t * (u * (P m).1 + v * (P m).2)) hs
      nlinarith [mul_lt_mul_of_pos_left l1 c2, mul_lt_mul_of_pos_left l2 c3,
        mul_lt_mul_of_pos_left l3 c1]
    have := Set.ncard_le_ncard hsub
    rw [ncard_compl_of_three h3] at this
    exact this

/-- Three-interior triangles are hull ears. In a nine-point configuration in the unit square with
least area at least `A₀`, suppose an actual counterclockwise triangle contains (at least) three
further points. After a cyclic relabelling `A, B, C` of its vertices: exactly three points are
inside; the three remaining points all lie beyond the edge `BC` and between the extensions of the
other two edges; `AB` and `CA` are edges of the full convex hull (every other point lies strictly
on their inner side), so `B, A, C` are consecutive hull vertices; and the full hull has at most
six vertices. -/
theorem three_inside_is_ear {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k : Fin 9} (hccw : 0 < sarea (P i) (P j) (P k))
    (h3 : 3 ≤ Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)}) :
    ∃ A B C : Fin 9,
      ((A = i ∧ B = j ∧ C = k) ∨ (A = j ∧ B = k ∧ C = i) ∨ (A = k ∧ B = i ∧ C = j)) ∧
      Set.ncard {m | InTriangle (P m) (P A) (P B) (P C)} = 3 ∧
      (∀ m, m ≠ A → m ≠ B → m ≠ C → ¬ InTriangle (P m) (P A) (P B) (P C) →
        BeyondEdge (P m) (P A) (P B) (P C)) ∧
      (∀ m, m ≠ A → m ≠ B → 0 < sarea (P A) (P B) (P m)) ∧
      (∀ m, m ≠ C → m ≠ A → 0 < sarea (P C) (P A) (P m)) ∧
      Set.ncard {m | IsHullVertex P m} ≤ 6 := by
  obtain ⟨hD, hcls⟩ := sarea_gt_and_exterior_of_three_inside hP hA hccw h3
  have h3eq : Set.ncard {m | InTriangle (P m) (P i) (P j) (P k)} = 3 :=
    le_antisymm (ncard_inside_le_three hP hA hccw) h3
  obtain ⟨d1, d2, d3⟩ := ne_of_sarea_pos (P := P) hccw
  have hD' : (29 / 31 : ℝ) < sarea (P i) (P j) (P k) := by linarith
  -- all exterior points lie in one region
  have same {m m' : Fin 9} {r r' : Fin 3} (hm : Exterior (P m) (P i) (P j) (P k) r)
      (hm' : Exterior (P m') (P i) (P j) (P k) r') : r = r' := by
    by_contra hne
    exact absurd (sarea_le_of_robustExterior_pair (hP i) (hP j) (hP k) (hP m) (hP m') hccw hne
      (robustExterior_of_three_inside hP hA hccw h3 m r hm) (robustExterior_of_three_inside hP hA hccw h3 m' r' hm')) (by linarith)
  -- an exterior point exists
  obtain ⟨m₀, hm₀⟩ : ∃ m, m ≠ i ∧ m ≠ j ∧ m ≠ k ∧ ¬ InTriangle (P m) (P i) (P j) (P k) := by
    by_contra hc
    push Not at hc
    have hsub : ({i, j, k} : Set (Fin 9))ᶜ ⊆ {m | InTriangle (P m) (P i) (P j) (P k)} := by
      intro m hm
      simp only [Set.mem_compl_iff, Set.mem_insert_iff, Set.mem_singleton_iff, not_or] at hm
      exact hc m hm.1 hm.2.1 hm.2.2
    have h3' : ({i, j, k} : Set (Fin 9)).ncard = 3 := by
      rw [Set.ncard_insert_of_notMem (by simp [d1, d3]), Set.ncard_pair d2]
    have := Set.ncard_le_ncard hsub
    rw [ncard_compl_of_three h3'] at this
    omega
  obtain ⟨r₀, hr₀⟩ := (hcls m₀ hm₀.1 hm₀.2.1 hm₀.2.2.1).resolve_left hm₀.2.2.2
  have ext_r {m : Fin 9} (hi : m ≠ i) (hj : m ≠ j) (hk : m ≠ k)
      (hin : ¬ InTriangle (P m) (P i) (P j) (P k)) : Exterior (P m) (P i) (P j) (P k) r₀ := by
    obtain ⟨r, hr⟩ := (hcls m hi hj hk).resolve_left hin
    rwa [same hr hr₀] at hr
  have c1 : sarea (P j) (P k) (P i) = sarea (P i) (P j) (P k) := sarea_cycle _ _ _
  have c2 : sarea (P k) (P i) (P j) = sarea (P i) (P j) (P k) := by
    rw [sarea_cycle (P j) (P k) (P i), c1]
  have setrot : {m | InTriangle (P m) (P j) (P k) (P i)} = {m | InTriangle (P m) (P i) (P j) (P k)} := by
    ext m; exact inTriangle_rotate.symm
  have setrot2 : {m | InTriangle (P m) (P k) (P i) (P j)} = {m | InTriangle (P m) (P i) (P j) (P k)} := by
    ext m; exact inTriangle_rotate
  fin_cases r₀
  · have hext : ∀ m, m ≠ i → m ≠ j → m ≠ k → ¬ InTriangle (P m) (P i) (P j) (P k) →
        BeyondEdge (P m) (P i) (P j) (P k) := fun m hi hj hk hin => ext_r hi hj hk hin
    obtain ⟨e1, e2, e3⟩ := ear_of_forall_beyondEdge hccw h3eq hext
    exact ⟨i, j, k, Or.inl ⟨rfl, rfl, rfl⟩, h3eq, hext, e1, e2, e3⟩
  · have hext : ∀ m, m ≠ j → m ≠ k → m ≠ i → ¬ InTriangle (P m) (P j) (P k) (P i) →
        BeyondEdge (P m) (P j) (P k) (P i) := fun m hj hk hi hin =>
      ext_r hi hj hk (fun h => hin (inTriangle_rotate.1 h))
    obtain ⟨e1, e2, e3⟩ := ear_of_forall_beyondEdge (by rw [c1]; exact hccw) (by rw [setrot]; exact h3eq) hext
    exact ⟨j, k, i, Or.inr (Or.inl ⟨rfl, rfl, rfl⟩), by rw [setrot]; exact h3eq, hext, e1, e2, e3⟩
  · have hext : ∀ m, m ≠ k → m ≠ i → m ≠ j → ¬ InTriangle (P m) (P k) (P i) (P j) →
        BeyondEdge (P m) (P k) (P i) (P j) := fun m hk hi hj hin =>
      ext_r hi hj hk (fun h => hin (inTriangle_rotate.2 h))
    obtain ⟨e1, e2, e3⟩ := ear_of_forall_beyondEdge (by rw [c2]; exact hccw) (by rw [setrot2]; exact h3eq) hext
    exact ⟨k, i, j, Or.inr (Or.inr ⟨rfl, rfl, rfl⟩), by rw [setrot2]; exact h3eq, hext, e1, e2, e3⟩

/-! ### The complete normalized family N -/

/-- A point on a side of the square is not strictly inside a triangle with vertices in the square. -/
theorem not_inTriangle_of_x0 {X A B C : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hX : X.1 = 0) (h : InTriangle X A B C) : False := by
  obtain ⟨h1, h2, h3⟩ := h
  obtain ⟨b1, -⟩ := bary_identity A B C X
  rw [hX, mul_zero] at b1
  have t1 := mul_nonneg h2.le hA.1; have t2 := mul_nonneg h3.le hB.1
  have t3 := mul_nonneg h1.le hC.1
  have a1 : A.1 = 0 := by nlinarith
  have a2 : B.1 = 0 := by nlinarith
  have a3 : C.1 = 0 := by nlinarith
  have hs := sarea_add_sarea_add_sarea A B C X
  have : sarea A B C = 0 := by unfold sarea; rw [a1, a2, a3]; ring
  linarith

theorem not_inTriangle_of_y0 {X A B C : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hX : X.2 = 0) (h : InTriangle X A B C) : False := by
  obtain ⟨h1, h2, h3⟩ := h
  obtain ⟨-, b1⟩ := bary_identity A B C X
  rw [hX, mul_zero] at b1
  have t1 := mul_nonneg h2.le hA.2.2.1; have t2 := mul_nonneg h3.le hB.2.2.1
  have t3 := mul_nonneg h1.le hC.2.2.1
  have a1 : A.2 = 0 := by nlinarith
  have a2 : B.2 = 0 := by nlinarith
  have a3 : C.2 = 0 := by nlinarith
  have hs := sarea_add_sarea_add_sarea A B C X
  have : sarea A B C = 0 := by unfold sarea; rw [a1, a2, a3]; ring
  linarith

theorem not_inTriangle_of_x1 {X A B C : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hX : X.1 = 1) (h : InTriangle X A B C) : False := by
  obtain ⟨h1, h2, h3⟩ := h
  obtain ⟨b1, -⟩ := bary_identity A B C X
  have hs := sarea_add_sarea_add_sarea A B C X
  rw [hX, mul_one] at b1
  have t1 := mul_nonneg h2.le (sub_nonneg.2 hA.2.1); have t2 := mul_nonneg h3.le (sub_nonneg.2 hB.2.1)
  have t3 := mul_nonneg h1.le (sub_nonneg.2 hC.2.1)
  have a1 : A.1 = 1 := by nlinarith
  have a2 : B.1 = 1 := by nlinarith
  have a3 : C.1 = 1 := by nlinarith
  have : sarea A B C = 0 := by unfold sarea; rw [a1, a2, a3]; ring
  linarith

theorem not_inTriangle_of_y1 {X A B C : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hX : X.2 = 1) (h : InTriangle X A B C) : False := by
  obtain ⟨h1, h2, h3⟩ := h
  obtain ⟨-, b1⟩ := bary_identity A B C X
  have hs := sarea_add_sarea_add_sarea A B C X
  rw [hX, mul_one] at b1
  have t1 := mul_nonneg h2.le (sub_nonneg.2 hA.2.2.2); have t2 := mul_nonneg h3.le (sub_nonneg.2 hB.2.2.2)
  have t3 := mul_nonneg h1.le (sub_nonneg.2 hC.2.2.2)
  have a1 : A.2 = 1 := by nlinarith
  have a2 : B.2 = 1 := by nlinarith
  have a3 : C.2 = 1 := by nlinarith
  have : sarea A B C = 0 := by unfold sarea; rw [a1, a2, a3]; ring
  linarith

/-- The case of `nConfig_triangleCapacityTwo` with apex `0`: the supporting edges force the ear at anchor `0`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex0 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (0 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (0 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 0 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 0)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 0 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 0) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 0)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e01 : 0 < sarea (P 0) (P 2) (P 1) := by
    show 0 < sarea (0, a) (b, 0) (0, h)
    unfold sarea; nlinarith [mul_pos hb (sub_pos.2 hah)]
  have e03 : 0 < sarea (P 0) (P 2) (P 3) := by
    show 0 < sarea (0, a) (b, 0) (c, 0)
    unfold sarea; nlinarith [mul_pos ha (sub_pos.2 hbc)]
  have e04 : 0 < sarea (P 0) (P 2) (P 4) := by
    show 0 < sarea (0, a) (b, 0) (1, d)
    unfold sarea; nlinarith [mul_pos ha (sub_pos.2 hb1), mul_pos hb hd0]
  have e05 : 0 < sarea (P 0) (P 2) (P 5) := by
    show 0 < sarea (0, a) (b, 0) (f, 1)
    unfold sarea; nlinarith [mul_pos ha hf0, mul_pos hb (sub_pos.2 ha1)]
  have e13 : 0 < sarea (P 1) (P 0) (P 3) := by
    show 0 < sarea (0, h) (0, a) (c, 0)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hah) hc0]
  have e14 : 0 < sarea (P 1) (P 0) (P 4) := by
    show 0 < sarea (0, h) (0, a) (1, d)
    unfold sarea; nlinarith [sub_pos.2 hah]
  have e15 : 0 < sarea (P 1) (P 0) (P 5) := by
    show 0 < sarea (0, h) (0, a) (f, 1)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hah) hf0]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 0) (P 2) (P 1)) : False := by
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · exact absurd rfl hAB
  · have := sup1 2 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e01]
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · exact absurd rfl hAC
    · exact ear hD
    · exact absurd rfl hBC
    · have := sup2 1 (by decide) (by decide)
      rw [show sarea (P 3) (P 0) (P 1) = -sarea (P 1) (P 0) (P 3) by
        unfold sarea; ring] at this
      linarith [e13]
    · have := sup2 1 (by decide) (by decide)
      rw [show sarea (P 4) (P 0) (P 1) = -sarea (P 1) (P 0) (P 4) by
        unfold sarea; ring] at this
      linarith [e14]
    · have := sup2 1 (by decide) (by decide)
      rw [show sarea (P 5) (P 0) (P 1) = -sarea (P 1) (P 0) (P 5) by
        unfold sarea; ring] at this
      linarith [e15]
  · have := sup1 2 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e03]
  · have := sup1 2 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e04]
  · have := sup1 2 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e05]

/-- The case of `nConfig_triangleCapacityTwo` with apex `2`: the supporting edges force the ear at anchor `2`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex2 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (2 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (2 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 2 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 2)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 2 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 2) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 2)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e01 : 0 < sarea (P 0) (P 2) (P 1) := by
    show 0 < sarea (0, a) (b, 0) (0, h)
    unfold sarea; nlinarith [mul_pos hb (sub_pos.2 hah)]
  have e04 : 0 < sarea (P 0) (P 2) (P 4) := by
    show 0 < sarea (0, a) (b, 0) (1, d)
    unfold sarea; nlinarith [mul_pos ha (sub_pos.2 hb1), mul_pos hb hd0]
  have e05 : 0 < sarea (P 0) (P 2) (P 5) := by
    show 0 < sarea (0, a) (b, 0) (f, 1)
    unfold sarea; nlinarith [mul_pos ha hf0, mul_pos hb (sub_pos.2 ha1)]
  have e20 : 0 < sarea (P 2) (P 3) (P 0) := by
    show 0 < sarea (b, 0) (c, 0) (0, a)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hbc) ha]
  have e21 : 0 < sarea (P 2) (P 3) (P 1) := by
    show 0 < sarea (b, 0) (c, 0) (0, h)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hbc) hh0]
  have e24 : 0 < sarea (P 2) (P 3) (P 4) := by
    show 0 < sarea (b, 0) (c, 0) (1, d)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hbc) hd0]
  have e25 : 0 < sarea (P 2) (P 3) (P 5) := by
    show 0 < sarea (b, 0) (c, 0) (f, 1)
    unfold sarea; nlinarith [sub_pos.2 hbc]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 2) (P 3) (P 0)) : False := by
    have e : sarea (P 2) (P 3) (P 0) = a * (c - b) := by
      show sarea (b, 0) (c, 0) (0, a) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · have := sup1 3 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e20]
  · have := sup1 3 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e21]
  · exact absurd rfl hAB
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · exact ear hD
    · have := sup2 0 (by decide) (by decide)
      rw [show sarea (P 1) (P 2) (P 0) = -sarea (P 0) (P 2) (P 1) by
        unfold sarea; ring] at this
      linarith [e01]
    · exact absurd rfl hAC
    · exact absurd rfl hBC
    · have := sup2 0 (by decide) (by decide)
      rw [show sarea (P 4) (P 2) (P 0) = -sarea (P 0) (P 2) (P 4) by
        unfold sarea; ring] at this
      linarith [e04]
    · have := sup2 0 (by decide) (by decide)
      rw [show sarea (P 5) (P 2) (P 0) = -sarea (P 0) (P 2) (P 5) by
        unfold sarea; ring] at this
      linarith [e05]
  · have := sup1 3 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e24]
  · have := sup1 3 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e25]

/-- The case of `nConfig_triangleCapacityTwo` with apex `3`: the supporting edges force the ear at anchor `3`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex3 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (3 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (3 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 3 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 3)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 3 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 3) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 3)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e20 : 0 < sarea (P 2) (P 3) (P 0) := by
    show 0 < sarea (b, 0) (c, 0) (0, a)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hbc) ha]
  have e21 : 0 < sarea (P 2) (P 3) (P 1) := by
    show 0 < sarea (b, 0) (c, 0) (0, h)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hbc) hh0]
  have e25 : 0 < sarea (P 2) (P 3) (P 5) := by
    show 0 < sarea (b, 0) (c, 0) (f, 1)
    unfold sarea; nlinarith [sub_pos.2 hbc]
  have e30 : 0 < sarea (P 3) (P 4) (P 0) := by
    show 0 < sarea (c, 0) (1, d) (0, a)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hc1) ha, mul_pos hd0 hc0]
  have e31 : 0 < sarea (P 3) (P 4) (P 1) := by
    show 0 < sarea (c, 0) (1, d) (0, h)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hc1) hh0, mul_pos hd0 hc0]
  have e32 : 0 < sarea (P 3) (P 4) (P 2) := by
    show 0 < sarea (c, 0) (1, d) (b, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hbc)]
  have e35 : 0 < sarea (P 3) (P 4) (P 5) := by
    show 0 < sarea (c, 0) (1, d) (f, 1)
    unfold sarea; nlinarith [mul_nonneg hd0.le (sub_nonneg.2 hfc)]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 3) (P 4) (P 2)) : False := by
    have e : sarea (P 3) (P 4) (P 2) = d * (c - b) := by
      show sarea (c, 0) (1, d) (b, 0) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · have := sup1 4 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e30]
  · have := sup1 4 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e31]
  · have := sup1 4 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e32]
  · exact absurd rfl hAB
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · have := sup2 2 (by decide) (by decide)
      rw [show sarea (P 0) (P 3) (P 2) = -sarea (P 2) (P 3) (P 0) by
        unfold sarea; ring] at this
      linarith [e20]
    · have := sup2 2 (by decide) (by decide)
      rw [show sarea (P 1) (P 3) (P 2) = -sarea (P 2) (P 3) (P 1) by
        unfold sarea; ring] at this
      linarith [e21]
    · exact ear hD
    · exact absurd rfl hAC
    · exact absurd rfl hBC
    · have := sup2 2 (by decide) (by decide)
      rw [show sarea (P 5) (P 3) (P 2) = -sarea (P 2) (P 3) (P 5) by
        unfold sarea; ring] at this
      linarith [e25]
  · have := sup1 4 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e35]

/-- The case of `nConfig_triangleCapacityTwo` with apex `4`: the supporting edges force the ear at anchor `4`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex4 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (4 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (4 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 4 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 4)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 4 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 4) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 4)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e30 : 0 < sarea (P 3) (P 4) (P 0) := by
    show 0 < sarea (c, 0) (1, d) (0, a)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hc1) ha, mul_pos hd0 hc0]
  have e31 : 0 < sarea (P 3) (P 4) (P 1) := by
    show 0 < sarea (c, 0) (1, d) (0, h)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hc1) hh0, mul_pos hd0 hc0]
  have e32 : 0 < sarea (P 3) (P 4) (P 2) := by
    show 0 < sarea (c, 0) (1, d) (b, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hbc)]
  have e40 : 0 < sarea (P 4) (P 5) (P 0) := by
    show 0 < sarea (1, d) (f, 1) (0, a)
    unfold sarea; nlinarith [mul_nonneg (sub_nonneg.2 hf1.le) (sub_nonneg.2 had)]
  have e41 : 0 < sarea (P 4) (P 5) (P 1) := by
    show 0 < sarea (1, d) (f, 1) (0, h)
    unfold sarea; nlinarith [mul_nonneg hf0.le (sub_nonneg.2 hdh)]
  have e42 : 0 < sarea (P 4) (P 5) (P 2) := by
    show 0 < sarea (1, d) (f, 1) (b, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hf1), mul_pos (sub_pos.2 hd1) (sub_pos.2 hb1)]
  have e43 : 0 < sarea (P 4) (P 5) (P 3) := by
    show 0 < sarea (1, d) (f, 1) (c, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hf1), mul_pos (sub_pos.2 hd1) (sub_pos.2 hc1)]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 4) (P 5) (P 3)) : False := by
    have e : sarea (P 4) (P 5) (P 3) = 1 - c + d * (c - f) := by
      show sarea (1, d) (f, 1) (c, 0) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · have := sup1 5 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e40]
  · have := sup1 5 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e41]
  · have := sup1 5 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e42]
  · have := sup1 5 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e43]
  · exact absurd rfl hAB
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · have := sup2 3 (by decide) (by decide)
      rw [show sarea (P 0) (P 4) (P 3) = -sarea (P 3) (P 4) (P 0) by
        unfold sarea; ring] at this
      linarith [e30]
    · have := sup2 3 (by decide) (by decide)
      rw [show sarea (P 1) (P 4) (P 3) = -sarea (P 3) (P 4) (P 1) by
        unfold sarea; ring] at this
      linarith [e31]
    · have := sup2 3 (by decide) (by decide)
      rw [show sarea (P 2) (P 4) (P 3) = -sarea (P 3) (P 4) (P 2) by
        unfold sarea; ring] at this
      linarith [e32]
    · exact ear hD
    · exact absurd rfl hAC
    · exact absurd rfl hBC

/-- The case of `nConfig_triangleCapacityTwo` with apex `5`: the supporting edges force the ear at anchor `5`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex5 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (5 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (5 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 5 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 5)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 5 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 5) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 5)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e40 : 0 < sarea (P 4) (P 5) (P 0) := by
    show 0 < sarea (1, d) (f, 1) (0, a)
    unfold sarea; nlinarith [mul_nonneg (sub_nonneg.2 hf1.le) (sub_nonneg.2 had)]
  have e42 : 0 < sarea (P 4) (P 5) (P 2) := by
    show 0 < sarea (1, d) (f, 1) (b, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hf1), mul_pos (sub_pos.2 hd1) (sub_pos.2 hb1)]
  have e43 : 0 < sarea (P 4) (P 5) (P 3) := by
    show 0 < sarea (1, d) (f, 1) (c, 0)
    unfold sarea; nlinarith [mul_pos hd0 (sub_pos.2 hf1), mul_pos (sub_pos.2 hd1) (sub_pos.2 hc1)]
  have e50 : 0 < sarea (P 5) (P 1) (P 0) := by
    show 0 < sarea (f, 1) (0, h) (0, a)
    unfold sarea; nlinarith [mul_pos hf0 (sub_pos.2 hah)]
  have e52 : 0 < sarea (P 5) (P 1) (P 2) := by
    show 0 < sarea (f, 1) (0, h) (b, 0)
    unfold sarea; nlinarith [mul_pos hf0 hh0, mul_pos (sub_pos.2 hh1) hb]
  have e53 : 0 < sarea (P 5) (P 1) (P 3) := by
    show 0 < sarea (f, 1) (0, h) (c, 0)
    unfold sarea; nlinarith [mul_pos hf0 hh0, mul_pos (sub_pos.2 hh1) hc0]
  have e54 : 0 < sarea (P 5) (P 1) (P 4) := by
    show 0 < sarea (f, 1) (0, h) (1, d)
    unfold sarea; nlinarith [mul_pos hf0 (sub_pos.2 hd1), mul_pos (sub_pos.2 hh1) (sub_pos.2 hf1)]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 5) (P 1) (P 4)) : False := by
    have e : sarea (P 5) (P 1) (P 4) = 1 - h + f * (h - d) := by
      show sarea (f, 1) (0, h) (1, d) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · have := sup1 1 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e50]
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · have := sup2 4 (by decide) (by decide)
      rw [show sarea (P 0) (P 5) (P 4) = -sarea (P 4) (P 5) (P 0) by
        unfold sarea; ring] at this
      linarith [e40]
    · exact absurd rfl hBC
    · have := sup2 4 (by decide) (by decide)
      rw [show sarea (P 2) (P 5) (P 4) = -sarea (P 4) (P 5) (P 2) by
        unfold sarea; ring] at this
      linarith [e42]
    · have := sup2 4 (by decide) (by decide)
      rw [show sarea (P 3) (P 5) (P 4) = -sarea (P 4) (P 5) (P 3) by
        unfold sarea; ring] at this
      linarith [e43]
    · exact ear hD
    · exact absurd rfl hAC
  · have := sup1 1 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e52]
  · have := sup1 1 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e53]
  · have := sup1 1 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e54]
  · exact absurd rfl hAB

/-- The case of `nConfig_triangleCapacityTwo` with apex `1`: the supporting edges force the ear at anchor `1`,
whose doubled area is at most `1 - 2A₀ < (11 + 3√5)A₀`. -/
theorem nConfig_no_large_ear_apex1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) {B' C' : Fin 9} (hB6 : B'.val < 6)
    (hC6 : C'.val < 6) (hAB : (1 : Fin 9) ≠ B') (hBC : B' ≠ C') (hAC : (1 : Fin 9) ≠ C')
    (sup1 : ∀ m, m ≠ 1 → m ≠ B' → 0 < sarea (nConfig a h b c d f X Y Z 1)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z m))
    (sup2 : ∀ m, m ≠ C' → m ≠ 1 → 0 < sarea (nConfig a h b c d f X Y Z C')
      (nConfig a h b c d f X Y Z 1) (nConfig a h b c d f X Y Z m))
    (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (nConfig a h b c d f X Y Z 1)
      (nConfig a h b c d f X Y Z B') (nConfig a h b c d f X Y Z C')) : False := by
  set P := nConfig a h b c d f X Y Z with hPdef
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  have e12 : 0 < sarea (P 1) (P 0) (P 2) := by
    show 0 < sarea (0, h) (0, a) (b, 0)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hah) hb]
  have e13 : 0 < sarea (P 1) (P 0) (P 3) := by
    show 0 < sarea (0, h) (0, a) (c, 0)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hah) hc0]
  have e14 : 0 < sarea (P 1) (P 0) (P 4) := by
    show 0 < sarea (0, h) (0, a) (1, d)
    unfold sarea; nlinarith [sub_pos.2 hah]
  have e15 : 0 < sarea (P 1) (P 0) (P 5) := by
    show 0 < sarea (0, h) (0, a) (f, 1)
    unfold sarea; nlinarith [mul_pos (sub_pos.2 hah) hf0]
  have e52 : 0 < sarea (P 5) (P 1) (P 2) := by
    show 0 < sarea (f, 1) (0, h) (b, 0)
    unfold sarea; nlinarith [mul_pos hf0 hh0, mul_pos (sub_pos.2 hh1) hb]
  have e53 : 0 < sarea (P 5) (P 1) (P 3) := by
    show 0 < sarea (f, 1) (0, h) (c, 0)
    unfold sarea; nlinarith [mul_pos hf0 hh0, mul_pos (sub_pos.2 hh1) hc0]
  have e54 : 0 < sarea (P 5) (P 1) (P 4) := by
    show 0 < sarea (f, 1) (0, h) (1, d)
    unfold sarea; nlinarith [mul_pos hf0 (sub_pos.2 hd1), mul_pos (sub_pos.2 hh1) (sub_pos.2 hf1)]
  have s1 : 2 * A₀ ≤ b * (h - a) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 1
      (by show 0 < sarea (0, a) (b, 0) (0, h); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 1) = b * (h - a) := by
      show sarea (0, a) (b, 0) (0, h) = _; unfold sarea; ring
    linarith
  have s2 : 2 * A₀ ≤ a * (c - b) := by
    have := sarea_ge_of_le_min_of_pos A₀_pos hA 0 2 3
      (by show 0 < sarea (0, a) (b, 0) (c, 0); unfold sarea; nlinarith)
    have e : sarea (P 0) (P 2) (P 3) = a * (c - b) := by
      show sarea (0, a) (b, 0) (c, 0) = _; unfold sarea; ring
    linarith
  have hb2 : 2 * A₀ ≤ b := by nlinarith
  have ha2 : 2 * A₀ ≤ a := by nlinarith
  have hL : 2 * A₀ ≤ h - a := by nlinarith
  have hM : 2 * A₀ ≤ c - b := by nlinarith
  have g1 := QuadrilateralHull.gamma_one_A₀
  have ear (hD : (11 + 3 * Real.sqrt 5) * A₀ ≤ sarea (P 1) (P 0) (P 5)) : False := by
    have e : sarea (P 1) (P 0) (P 5) = f * (h - a) := by
      show sarea (0, h) (0, a) (f, 1) = _; unfold sarea; ring
    rw [e] at hD
    nlinarith [mul_le_mul_of_nonneg_left (sub_nonneg.2 hdh) hf0.le,
      mul_le_mul_of_nonneg_left (sub_nonneg.2 hfc) hd0.le]
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  clear_value P
  rcases six B' hB6 with rfl | rfl | rfl | rfl | rfl | rfl
  · rcases six C' hC6 with rfl | rfl | rfl | rfl | rfl | rfl
    · exact absurd rfl hBC
    · exact absurd rfl hAC
    · have := sup2 5 (by decide) (by decide)
      rw [show sarea (P 2) (P 1) (P 5) = -sarea (P 5) (P 1) (P 2) by
        unfold sarea; ring] at this
      linarith [e52]
    · have := sup2 5 (by decide) (by decide)
      rw [show sarea (P 3) (P 1) (P 5) = -sarea (P 5) (P 1) (P 3) by
        unfold sarea; ring] at this
      linarith [e53]
    · have := sup2 5 (by decide) (by decide)
      rw [show sarea (P 4) (P 1) (P 5) = -sarea (P 5) (P 1) (P 4) by
        unfold sarea; ring] at this
      linarith [e54]
    · exact ear hD
  · exact absurd rfl hAB
  · have := sup1 0 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e12]
  · have := sup1 0 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e13]
  · have := sup1 0 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e14]
  · have := sup1 0 (by decide) (by decide)
    rw [sarea_swap₂₃] at this
    linarith [e15]

/-- The entire family N has triangle capacity two. In family N with least area at least `A₀`,
every actual triangle contains at most two further points, whether or not the three free points
add square-boundary contacts or hull vertices. By `three_inside_is_ear` the triangle would be an ear of the
anchor hexagon `ABCDFH`, of doubled area at most `1 - s` (`nConfig_no_large_ear_apex0`, …, `nConfig_no_large_ear_apex5`), against
`Γs` (`D_ge`), and `(Γ+1)s₀ > 1`. -/
theorem nConfig_triangleCapacityTwo {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    TriangleCapacityTwo (nConfig a h b c d f X Y Z) := by
  intro i j k hccw
  by_contra hc
  push Not at hc
  obtain ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩ := hN
  have hh0 : 0 < h := by linarith
  have hc0 : 0 < c := by linarith
  have hd0 : 0 < d := by linarith
  have hf0 : 0 < f := by linarith
  have ha1 : a < 1 := by linarith
  have hb1 : b < 1 := by linarith
  have hd1 : d < 1 := by linarith
  have hf1 : f < 1 := by linarith
  set P := nConfig a h b c d f X Y Z with hPdef
  have hP : ∀ m, P m ∈ unitSquare := by
    intro m
    fin_cases m
    · exact ⟨le_refl _, zero_le_one, ha.le, ha1.le⟩
    · exact ⟨le_refl _, zero_le_one, hh0.le, hh1.le⟩
    · exact ⟨hb.le, hb1.le, le_refl _, zero_le_one⟩
    · exact ⟨hc0.le, hc1.le, le_refl _, zero_le_one⟩
    · exact ⟨zero_le_one, le_refl _, hd0.le, hd1.le⟩
    · exact ⟨hf0.le, hf1.le, zero_le_one, le_refl _⟩
    · exact hX
    · exact hY
    · exact hZ
  obtain ⟨A', B', C', hrot, h3, -, sup1, sup2, -⟩ := three_inside_is_ear hP hA hccw (by omega)
  have hccw' : 0 < sarea (P A') (P B') (P C') := by
    rcases hrot with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩ <;> rw [h1, h2, h3] <;>
      (unfold sarea at hccw ⊢; linarith)
  -- the anchors lie on the boundary, so the three inside points are `X, Y, Z`
  have notin : ∀ m : Fin 9, m.val < 6 → ¬ InTriangle (P m) (P A') (P B') (P C') := by
    intro m hm hin
    have key : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
    rcases key m hm with rfl | rfl | rfl | rfl | rfl | rfl
    · exact not_inTriangle_of_x0 (hP A') (hP B') (hP C') rfl hin
    · exact not_inTriangle_of_x0 (hP A') (hP B') (hP C') rfl hin
    · exact not_inTriangle_of_y0 (hP A') (hP B') (hP C') rfl hin
    · exact not_inTriangle_of_y0 (hP A') (hP B') (hP C') rfl hin
    · exact not_inTriangle_of_x1 (hP A') (hP B') (hP C') rfl hin
    · exact not_inTriangle_of_y1 (hP A') (hP B') (hP C') rfl hin
  have hsub : {m | InTriangle (P m) (P A') (P B') (P C')} ⊆ (({6, 7, 8} : Finset (Fin 9)) : Set (Fin 9)) := by
    intro m hm
    by_contra hn
    have : m.val < 6 := by
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff, not_or] at hn
      omega
    exact notin m this hm
  have heq : {m | InTriangle (P m) (P A') (P B') (P C')} = (({6, 7, 8} : Finset (Fin 9)) : Set (Fin 9)) :=
    Set.eq_of_subset_of_ncard_le hsub (by rw [h3, Set.ncard_coe_finset]; decide)
  have mem (m : Fin 9) (hm : m ∈ (({6, 7, 8} : Finset (Fin 9)) : Set (Fin 9))) :
      InTriangle (P m) (P A') (P B') (P C') := by
    rw [← heq] at hm; exact hm
  have i6 := mem 6 (by simp); have i7 := mem 7 (by simp); have i8 := mem 8 (by simp)
  have vert {v : Fin 9} (hv : v = A' ∨ v = B' ∨ v = C') : v.val < 6 := by
    by_contra hn
    have hv' : v ∈ (({6, 7, 8} : Finset (Fin 9)) : Set (Fin 9)) := by
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff]
      omega
    have := mem v hv'
    rcases hv with rfl | rfl | rfl
    · have := this.1; rw [show sarea (P v) (P B') (P v) = 0 by unfold sarea; ring] at this
      exact lt_irrefl _ this
    · have := this.1; rw [show sarea (P A') (P v) (P v) = 0 by unfold sarea; ring] at this
      exact lt_irrefl _ this
    · have := this.2.1; rw [show sarea (P B') (P v) (P v) = 0 by unfold sarea; ring] at this
      exact lt_irrefl _ this
  have hA6 := vert (Or.inl rfl)
  have hB6 := vert (Or.inr (Or.inl rfl))
  have hC6 := vert (Or.inr (Or.inr rfl))
  obtain ⟨hAB, hBC, hAC⟩ := ne_of_sarea_pos (P := P) hccw'
  have hD := D_ge hA hccw' i6 i7 i8 (by decide) (by decide) (by decide)
  have six : ∀ x : Fin 9, x.val < 6 → x = 0 ∨ x = 1 ∨ x = 2 ∨ x = 3 ∨ x = 4 ∨ x = 5 := by decide
  have hN' : NAnchors a h b c d f := ⟨ha, hah, hh1, hb, hbc, hc1, had, hdh, hbf, hfc⟩
  clear_value P
  subst hPdef
  rcases six A' hA6 with rfl | rfl | rfl | rfl | rfl | rfl
  · exact nConfig_no_large_ear_apex0 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD
  · exact nConfig_no_large_ear_apex1 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD
  · exact nConfig_no_large_ear_apex2 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD
  · exact nConfig_no_large_ear_apex3 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD
  · exact nConfig_no_large_ear_apex4 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD
  · exact nConfig_no_large_ear_apex5 hN' hA hB6 hC6 hAB hBC hAC sup1 sup2 hD

end Heilbronn.Nine.ThreeInteriorTriangles
