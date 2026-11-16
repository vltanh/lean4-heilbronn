module

public import Heilbronn.Nine.Hulls.GlobalCapacity
public import Heilbronn.Nine.Hulls.QuadrilateralHull

/-! # Four interior points must alternate around the diagonals (`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`)

**Role.** A component on the primary route. Theorem 1 is used by `TYPE_II_COMPLETION.md` (lines
367, 1340, 1489; the balanced `(2,2,2)` row, Theorem 11), by `UNBALANCED_RADIAL_SPLIT`,
`UNBALANCED_ONE_UPPER_RADIAL` and `UNBALANCED_FINAL_UPPER_PAIR` (Type II), and by
`C1_MIXED_PENTAGON.md` (line 31), which feeds `C1_TWO_LOWER_COMPLETION`.

**Setting.** Nine points in the unit square with least area at least `A₀`. A convex quadrilateral
`ABCD` (counterclockwise, `QuadrilateralHull.ConvexQuad`) is spanned by four of the points, and
"contains" means strictly inside (`QuadrilateralHull.InQuad`). With `O = AC ∩ BD`, the four
diagonal sectors are the open triangles `ABO, BCO, CDO, DAO`. The sector `ABO` is the intersection
of the triangles `ABC` and `ABD` (`InSector X A B C D`), and the others are its cyclic relabellings.

**Normalized coordinates** (1). After an affine map, `A=(0,0), B=(1,0), C=((1-b)/a, b),
D=(0,a)`, with doubled area one, `a = 2·area(ABD)`, `b = 2·area(ABC)`, `0 < a, b < 1`. In these
coordinates "every doubled area at least `s`" is written `s/2 ≤ minTriangleArea ![…]` over the
points the step uses. For two points `P, Q`, `d_X = sarea P Q X` is the pair-line sign at `X`.

**Results.**
* `theorem1`: at most four points inside; if four, exactly one in each diagonal sector.
* `claim_1`, `eq2`, `eq3`: the normal form (1), the sector bounds (2) and the identities (3).
* `claim_4`: the same-side inequality `ab - s(a+b) ≥ 2√(sab)` (4).
* `claim_5`: the isolated-endpoint inequality (5), and its mirror image.
* `claim_sectors`: the sector counts are `(k, 2-k, k, 2-k)`.
* `eq7`: in the excluded alternative, `a, b < 115/192 < 3/5` at `s = 7/128` (7).
* `claim_no_separation`, `claim_final`: §§4-5, the alternative `(2,0,2,0)` is impossible.

**Implicit in the manuscript.**
* Theorem 1: "contains four further actual points" is read as "exactly four", with the last
  assertion "a quadrilateral cannot contain five" giving at most four. Both are stated together.
* §§4-5 work in the normalized coordinates of the alternative `(2,0,2,0)`, with `P, Q` in `ABO`,
  `R, T` in `CDO` and doubled threshold `s = 7/128` (line 186). The middle case of §4 uses the
  global triangle capacity of the (affine image of the) configuration, which is stated as the
  hypothesis `TriangleCapacityTwo` of the eight points.
* The proofs of (4), (5) and of §4 are done once for an arbitrary convex quadrilateral
  (`claim4_general`, `claim5_general`, `no_sep_general`) by transport through the affine normal
  frame of (1) (`normal_frame`); Theorem 1 applies them to the actual quadrilateral, the
  normalized claims to `ABCD` and to `CDAB`.
* §6 (`claim-hullcount`, 5 to 8 hull vertices) is not stated: it is unused, and it rests on the
  off-route convex-nonagon theorem of `GLOBAL_COMPLETION.md`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.FourInteriorQuadrilaterals

open ThreeInteriorTriangles QuadrilateralHull

/-- `X` lies in the open diagonal sector `ABO` of the counterclockwise convex quadrilateral
`ABCD` (`O = AC ∩ BD`): strictly inside both triangles `ABC` and `ABD`. The other sectors are
`InSector X B C D A` (`BCO`), `InSector X C D A B` (`CDO`), `InSector X D A B C` (`DAO`). -/
def InSector (X A B C D : Point) : Prop :=
  InTriangle X A B C ∧ InTriangle X A B D

/-! ### §1. General quadrilateral coordinates -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(1)-(3)`, normal form (1)). For a convex
quadrilateral `ABCD` of doubled area `W = 2·quadArea`, put `a = sarea(A,B,D)/W` and
`b = sarea(A,B,C)/W`. Then `0 < a, b < 1`, the complementary triangles `BCD`, `CDA` have normalized
doubled areas `1 - a`, `1 - b`, and some affine map of determinant `1/W` sends
`A, B, D, C` to `(0,0), (1,0), (0,a), ((1-b)/a, b)`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 32-55. -/
theorem claim_1 {A B C D : Point} (hq : ConvexQuad A B C D) :
    0 < sarea A B D / (2 * quadArea A B C D) ∧ sarea A B D / (2 * quadArea A B C D) < 1 ∧
      0 < sarea A B C / (2 * quadArea A B C D) ∧ sarea A B C / (2 * quadArea A B C D) < 1 ∧
      sarea B C D / (2 * quadArea A B C D) = 1 - sarea A B D / (2 * quadArea A B C D) ∧
      sarea C D A / (2 * quadArea A B C D) = 1 - sarea A B C / (2 * quadArea A B C D) ∧
      ∃ α β γ δ ε ζ : ℝ, α * δ - β * γ = 1 / (2 * quadArea A B C D) ∧
        affineMap α β γ δ ε ζ A = (0, 0) ∧ affineMap α β γ δ ε ζ B = (1, 0) ∧
        affineMap α β γ δ ε ζ D = (0, sarea A B D / (2 * quadArea A B C D)) ∧
        affineMap α β γ δ ε ζ C =
          ((1 - sarea A B C / (2 * quadArea A B C D)) / (sarea A B D / (2 * quadArea A B C D)),
            sarea A B C / (2 * quadArea A B C D)) := by
  obtain ⟨h1, h2, h3, h4⟩ := hq
  have hABD : 0 < sarea A B D := by rw [sarea_cycle D A B]; exact h4
  have hACD : 0 < sarea A C D := by rw [← sarea_cycle A C D]; exact h3
  have eW1 : 2 * quadArea A B C D = sarea A B D + sarea B C D := by unfold quadArea sarea; ring
  have eW2 : 2 * quadArea A B C D = sarea A B C + sarea C D A := by unfold quadArea sarea; ring
  have hW : 0 < 2 * quadArea A B C D := by rw [eW2]; linarith
  set W := 2 * quadArea A B C D with hWdef
  refine ⟨by positivity, by rw [div_lt_one hW]; linarith, by positivity,
    by rw [div_lt_one hW]; linarith, by rw [eq_sub_iff_add_eq, ← add_div, add_comm, ← eW1,
      div_self hW.ne'], by rw [eq_sub_iff_add_eq, ← add_div, add_comm, ← eW2, div_self hW.ne'], ?_⟩
  refine ⟨(D.2 - A.2) / sarea A B D, -(D.1 - A.1) / sarea A B D, -(B.2 - A.2) / W,
    (B.1 - A.1) / W, -((D.2 - A.2) / sarea A B D * A.1 + -(D.1 - A.1) / sarea A B D * A.2),
    -(-(B.2 - A.2) / W * A.1 + (B.1 - A.1) / W * A.2), ?_, ?_, ?_, ?_, ?_⟩
  · have e : sarea A B D = (B.1 - A.1) * (D.2 - A.2) - (B.2 - A.2) * (D.1 - A.1) := rfl
    field_simp
    rw [e]; ring
  · simp only [affineMap]; ext <;> simp only <;> ring
  · have e : sarea A B D = (B.1 - A.1) * (D.2 - A.2) - (B.2 - A.2) * (D.1 - A.1) := rfl
    simp only [affineMap]; ext <;> simp only
    · field_simp; rw [e]; ring
    · field_simp; ring
  · have e : sarea A B D = (B.1 - A.1) * (D.2 - A.2) - (B.2 - A.2) * (D.1 - A.1) := rfl
    simp only [affineMap]; ext <;> simp only
    · field_simp; ring
    · field_simp; rw [e]; ring
  · have e : sarea A B D = (B.1 - A.1) * (D.2 - A.2) - (B.2 - A.2) * (D.1 - A.1) := rfl
    have e2 : W = sarea A B C + sarea C D A := eW2
    simp only [affineMap]; ext <;> simp only
    · field_simp
      rw [e2]; unfold sarea; ring
    · field_simp; unfold sarea; ring

/-- `(2)` with the denominators cleared: `u ≥ s`, `as + (1-b)u ≤ abp`, `ap ≤ a - s - u`. -/
theorem eq2' {a b s : ℝ} (ha : 0 < a) (hs : 0 < s)
    {P : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P]) :
    s ≤ P.2 ∧ a * s + (1 - b) * P.2 ≤ a * b * P.1 ∧ a * P.1 ≤ a - s - P.2 := by
  have hs2 : 0 < s / 2 := by positivity
  have g1 := sarea_ge_of_le_min_of_pos hs2 hmin 0 1 4 hP.1.1
  have g2 := sarea_ge_of_le_min_of_pos hs2 hmin 2 0 4 hP.1.2.2
  have g3 := sarea_ge_of_le_min_of_pos hs2 hmin 1 3 4 hP.2.2.1
  simp only [Matrix.cons_val, sarea] at g1 g2 g3
  refine ⟨by linarith, ?_, by linarith⟩
  have e : (0 - (1 - b) / a) * (P.2 - b) - (0 - b) * (P.1 - (1 - b) / a) =
      (a * b * P.1 - (1 - b) * P.2) / a := by field_simp; ring
  rw [e, le_div_iff₀ ha] at g2
  linarith

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq2`). In normalized
coordinates, if every doubled area of `A, B, C, D, P` is at least `s > 0` and `P = (p, u)` lies in
the sector `ABO`, then the triangles `ABP, ACP, BDP` give `u ≥ s` and
`s/b + (1-b)u/(ab) ≤ p ≤ 1 - (s+u)/a`. No sign of `a + b - 1` is assumed.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 57-68. -/
theorem eq2 {a b s : ℝ} (ha : 0 < a) (_ha1 : a < 1) (hb : 0 < b) (_hb1 : b < 1) (hs : 0 < s)
    {P : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P]) :
    s ≤ P.2 ∧ s / b + (1 - b) * P.2 / (a * b) ≤ P.1 ∧ P.1 ≤ 1 - (s + P.2) / a := by
  obtain ⟨h1, h2, h3⟩ := eq2' ha hs hP hmin
  refine ⟨h1, ?_, ?_⟩
  · rw [div_add_div _ _ hb.ne' (by positivity), div_le_iff₀ (by positivity)]; nlinarith
  · rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ ha]; linarith

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq3`). With
`A=(0,0), B=(1,0), D=(0,a)`, `P=(p,u)`, `Q=(q,v)` and `d_X = sarea P Q X`:
`d_A = pv - uq`, `d_B = d_A + u - v`, `d_D = d_A + a(q-p)`, and
`u d_D + (a-u) d_B = [a(1-p) - u](u - v)`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 70-85. -/
theorem eq3 (a p u q v : ℝ) :
    sarea (p, u) (q, v) (0, 0) = p * v - u * q ∧
      sarea (p, u) (q, v) (1, 0) = sarea (p, u) (q, v) (0, 0) + u - v ∧
      sarea (p, u) (q, v) (0, a) = sarea (p, u) (q, v) (0, 0) + a * (q - p) ∧
      u * sarea (p, u) (q, v) (0, a) + (a - u) * sarea (p, u) (q, v) (1, 0) =
        (a * (1 - p) - u) * (u - v) := by
  refine ⟨?_, ?_, ?_, ?_⟩ <;> unfold sarea <;> ring

/-! ### §2. Two inequalities for a pair in a common sector -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(4)`). In normalized coordinates, let `P, Q`
lie in the sector `ABO`, with every doubled area of `A, B, C, D, P, Q` at least `s > 0`. If the
line `PQ` leaves `A` and `B` on the same side, then `ab - s(a+b) > 0` and
`ab - s(a+b) ≥ 2√(sab)`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 87-122.
Uses: FOUR_INTERIOR_QUADRILATERALS:eq2 -/
theorem claim_4 {a b s : ℝ} (ha : 0 < a) (_ha1 : a < 1) (hb : 0 < b) (_hb1 : b < 1) (hs : 0 < s)
    {P Q : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q])
    (hsame : 0 < sarea P Q (0, 0) * sarea P Q (1, 0)) :
    0 < a * b - s * (a + b) ∧ 2 * Real.sqrt (s * a * b) ≤ a * b - s * (a + b) := by
  have hs2 : 0 < s / 2 := by positivity
  obtain ⟨p, u⟩ := P
  obtain ⟨q, v⟩ := Q
  obtain ⟨hP1, hP2, hP3⟩ := eq2' ha hs hP
    (le_min_sub (by norm_num) ![0, 1, 2, 3, 4] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  obtain ⟨hQ1, hQ2, hQ3⟩ := eq2' ha hs hQ
    (le_min_sub (by norm_num) ![0, 1, 2, 3, 5] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  simp only at hP1 hP2 hP3 hQ1 hQ2 hQ3
  have dA : s ≤ |sarea (p, u) (q, v) (0, 0)| := by
    have h : s / 2 ≤ triangleArea (p, u) (q, v) (0, 0) := area_of_le_min hmin 4 5 0
    rw [triangleArea_eq] at h; linarith
  have dB : s ≤ |sarea (p, u) (q, v) (1, 0)| := by
    have h : s / 2 ≤ triangleArea (p, u) (q, v) (1, 0) := area_of_le_min hmin 4 5 1
    rw [triangleArea_eq] at h; linarith
  have eA : sarea (p, u) (q, v) (0, 0) = p * v - u * q := by unfold sarea; ring
  have eB : sarea (p, u) (q, v) (1, 0) = p * v - u * q + u - v := by unfold sarea; ring
  rw [eA] at dA hsame; rw [eB] at dB hsame
  have hu : 0 < u := by linarith
  have hv : 0 < v := by linarith
  have hab : 0 < a * b := by positivity
  -- the common quadratic inequality, with `m = min u v`
  have key : ∃ m : ℝ, 0 < m ∧ s * a * b + m ^ 2 ≤ m * (a * b - s * (a + b)) := by
    rcases le_total v u with hvu | huv
    · refine ⟨v, hv, ?_⟩
      rcases lt_or_gt_of_ne (show p * v - u * q ≠ 0 by intro h; rw [h] at hsame; simp at hsame)
        with hneg | hpos
      · have hBn : p * v - u * q + u - v < 0 := by
          by_contra hc; push Not at hc
          nlinarith
        rw [abs_of_neg hBn] at dB
        nlinarith [mul_le_mul_of_nonneg_left hQ3 (le_of_lt (mul_pos hb hu)),
          mul_le_mul_of_nonneg_left hP2 hv.le, mul_le_mul_of_nonneg_left dB hab.le,
          mul_le_mul_of_nonneg_left hvu (by positivity : (0 : ℝ) ≤ b * s),
          mul_le_mul_of_nonneg_left hvu hv.le]
      · rw [abs_of_pos hpos] at dA
        nlinarith [mul_le_mul_of_nonneg_left hP3 (le_of_lt (mul_pos hb hv)),
          mul_le_mul_of_nonneg_left hQ2 hu.le, mul_le_mul_of_nonneg_left dA hab.le,
          mul_le_mul_of_nonneg_left hvu (by positivity : (0 : ℝ) ≤ a * s),
          mul_le_mul_of_nonneg_left hvu hv.le]
    · refine ⟨u, hu, ?_⟩
      rcases lt_or_gt_of_ne (show p * v - u * q ≠ 0 by intro h; rw [h] at hsame; simp at hsame)
        with hneg | hpos
      · rw [abs_of_neg hneg] at dA
        nlinarith [mul_le_mul_of_nonneg_left hQ3 (le_of_lt (mul_pos hb hu)),
          mul_le_mul_of_nonneg_left hP2 hv.le, mul_le_mul_of_nonneg_left dA hab.le,
          mul_le_mul_of_nonneg_left huv (by positivity : (0 : ℝ) ≤ a * s),
          mul_le_mul_of_nonneg_left huv hu.le]
      · have hBp : 0 < p * v - u * q + u - v := by
          by_contra hc; push Not at hc
          nlinarith
        rw [abs_of_pos hBp] at dB
        nlinarith [mul_le_mul_of_nonneg_left hP3 (le_of_lt (mul_pos hb hv)),
          mul_le_mul_of_nonneg_left hQ2 hu.le, mul_le_mul_of_nonneg_left dB hab.le,
          mul_le_mul_of_nonneg_left huv (by positivity : (0 : ℝ) ≤ b * s),
          mul_le_mul_of_nonneg_left huv hu.le]
  obtain ⟨m, hm, hk⟩ := key
  have hK : 0 < a * b - s * (a + b) := by
    by_contra hc; push Not at hc
    nlinarith [mul_pos (mul_pos hs ha) hb]
  refine ⟨hK, ?_⟩
  have hsq := Real.sq_sqrt (by positivity : (0 : ℝ) ≤ s * a * b)
  have hsn := Real.sqrt_nonneg (s * a * b)
  nlinarith [sq_nonneg (Real.sqrt (s * a * b) - m)]

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-(5)`). In normalized coordinates, let `P, Q`
lie in the sector `ABO`, with every doubled area of `A, B, C, D, P, Q` at least `s > 0`, and orient
the line `PQ` so that `d_A < 0 < d_B`.
* If `d_C, d_D > 0` (`A` is the only vertex on the negative side), then
  `[ab - s(1+a)]² ≥ 4sab` and `ab - s(1+a) > 0` (5).
* If `d_C, d_D < 0`, interchanging `A ↔ B`, `C ↔ D` and the orientation gives (5) with `a` and `b`
  interchanged: `[ab - s(1+b)]² ≥ 4sab` and `ab - s(1+b) > 0`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 124-160.
Uses: FOUR_INTERIOR_QUADRILATERALS:eq2, FOUR_INTERIOR_QUADRILATERALS:eq3 -/
theorem claim_5 {a b s : ℝ} (ha : 0 < a) (_ha1 : a < 1) (hb : 0 < b) (_hb1 : b < 1) (hs : 0 < s)
    {P Q : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q])
    (hA : sarea P Q (0, 0) < 0) (hB : 0 < sarea P Q (1, 0)) :
    (0 < sarea P Q ((1 - b) / a, b) → 0 < sarea P Q (0, a) →
      4 * s * a * b ≤ (a * b - s * (1 + a)) ^ 2 ∧ 0 < a * b - s * (1 + a)) ∧
    (sarea P Q ((1 - b) / a, b) < 0 → sarea P Q (0, a) < 0 →
      4 * s * a * b ≤ (a * b - s * (1 + b)) ^ 2 ∧ 0 < a * b - s * (1 + b)) := by
  have hs2 : 0 < s / 2 := by positivity
  obtain ⟨p, u⟩ := P
  obtain ⟨q, v⟩ := Q
  obtain ⟨hP1, hP2, hP3⟩ := eq2' ha hs hP
    (le_min_sub (by norm_num) ![0, 1, 2, 3, 4] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  obtain ⟨hQ1, -, -⟩ := eq2' ha hs hQ
    (le_min_sub (by norm_num) ![0, 1, 2, 3, 5] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  simp only at hP1 hP2 hP3 hQ1
  have hu : 0 < u := by linarith
  have hab : 0 < a * b := by positivity
  have hBD : s ≤ sarea (1, 0) (0, a) (p, u) := by
    have h : 2 * (s / 2) ≤ sarea (1, 0) (0, a) (p, u) :=
      sarea_ge_of_le_min_of_pos hs2 hmin 1 3 4 hP.2.2.1
    linarith
  have hCA : s ≤ sarea ((1 - b) / a, b) (0, 0) (p, u) := by
    have h : 2 * (s / 2) ≤ sarea ((1 - b) / a, b) (0, 0) (p, u) :=
      sarea_ge_of_le_min_of_pos hs2 hmin 2 0 4 hP.1.2.2
    linarith
  -- the final quadratic step
  have fin {K z : ℝ} (hz : 0 < z) (h : s * a * b + z ^ 2 ≤ z * K) :
      4 * s * a * b ≤ K ^ 2 ∧ 0 < K := by
    have hK : 0 < K := by
      by_contra hc; push Not at hc
      nlinarith [mul_pos (mul_pos hs ha) hb]
    exact ⟨by nlinarith [sq_nonneg (K - 2 * z)], hK⟩
  refine ⟨fun hC hD => ?_, fun hC hD => ?_⟩
  · have dB : s ≤ sarea (p, u) (q, v) (1, 0) := by
      have h : 2 * (s / 2) ≤ sarea (p, u) (q, v) (1, 0) :=
        sarea_ge_of_le_min_of_pos hs2 hmin 4 5 1 hB
      linarith
    have dD : s ≤ sarea (p, u) (q, v) (0, a) := by
      have h : 2 * (s / 2) ≤ sarea (p, u) (q, v) (0, a) :=
        sarea_ge_of_le_min_of_pos hs2 hmin 4 5 3 hD
      linarith
    have e3 := (eq3 a p u q v).2.2.2
    have eBD : sarea (1, 0) (0, a) (p, u) = a * (1 - p) - u := by unfold sarea; ring
    rw [eBD] at hBD
    have hua : u < a := by nlinarith
    have hl : a * s ≤ u * sarea (p, u) (q, v) (0, a) + (a - u) * sarea (p, u) (q, v) (1, 0) := by
      nlinarith [mul_le_mul_of_nonneg_left dD hu.le,
        mul_le_mul_of_nonneg_left dB (sub_nonneg.2 hua.le)]
    rw [e3] at hl
    have huv : v < u := by
      by_contra hc; push Not at hc
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ a * (1 - p) - u) (sub_nonneg.2 hc)]
    have hw : b * (a * (1 - p) - u) ≤ a * b - a * s - u := by nlinarith
    have hN : 0 ≤ a * b - a * s - u := by nlinarith
    have h1 := mul_le_mul_of_nonneg_left hl hb.le
    have h2 := mul_le_mul_of_nonneg_right hw (by linarith : (0 : ℝ) ≤ u - v)
    have h3 := mul_le_mul_of_nonneg_left (by linarith : u - v ≤ u - s) hN
    apply fin (z := u - s) (by linarith)
    linarith
  · have dA : s ≤ -sarea (p, u) (q, v) (0, 0) := by
      have h : s / 2 ≤ triangleArea (p, u) (q, v) (0, 0) := area_of_le_min hmin 4 5 0
      rw [triangleArea_eq, abs_of_neg hA] at h; linarith
    have dC : s ≤ -sarea (p, u) (q, v) ((1 - b) / a, b) := by
      have h : s / 2 ≤ triangleArea (p, u) (q, v) ((1 - b) / a, b) := area_of_le_min hmin 4 5 2
      rw [triangleArea_eq, abs_of_neg hC] at h; linarith
    have e3 : u * (-sarea (p, u) (q, v) ((1 - b) / a, b)) + (b - u) * (-sarea (p, u) (q, v) (0, 0)) =
        sarea ((1 - b) / a, b) (0, 0) (p, u) * (u - v) := by
      unfold sarea; field_simp; ring
    have eCA : sarea ((1 - b) / a, b) (0, 0) (p, u) = (a * b * p - (1 - b) * u) / a := by
      unfold sarea; field_simp; ring
    have haw : a * sarea ((1 - b) / a, b) (0, 0) (p, u) = a * b * p - (1 - b) * u := by
      rw [eCA]; field_simp
    have hCA' : a * s ≤ a * b * p - (1 - b) * u := by
      rw [← haw]; exact mul_le_mul_of_nonneg_left hCA ha.le
    have hub : u < b := by nlinarith
    have hl : b * s ≤ sarea ((1 - b) / a, b) (0, 0) (p, u) * (u - v) := by
      rw [← e3]
      nlinarith [mul_le_mul_of_nonneg_left dC hu.le,
        mul_le_mul_of_nonneg_left dA (sub_nonneg.2 hub.le)]
    have huv : v < u := by
      by_contra hc; push Not at hc
      nlinarith [mul_nonneg (le_of_lt (lt_of_lt_of_le hs hCA)) (sub_nonneg.2 hc)]
    have hl' : a * (b * s) ≤ (a * b * p - (1 - b) * u) * (u - v) := by
      rw [← haw]; linarith [mul_le_mul_of_nonneg_left hl ha.le]
    have hw : a * b * p - (1 - b) * u ≤ a * b - b * s - u := by nlinarith
    have hN : 0 ≤ a * b - b * s - u := by nlinarith [mul_pos ha hs]
    have h2 := mul_le_mul_of_nonneg_right hw (by linarith : (0 : ℝ) ≤ u - v)
    have h3 := mul_le_mul_of_nonneg_left (by linarith : u - v ≤ u - s) hN
    apply fin (z := u - s) (by linarith)
    linarith

/-! ### Affine transport and the general-quadrilateral forms of (4), (5) -/

theorem InSector.affine {X A B C D : Point} {α β γ δ ε ζ : ℝ} (hdet : 0 < α * δ - β * γ)
    (h : InSector X A B C D) :
    InSector (affineMap α β γ δ ε ζ X) (affineMap α β γ δ ε ζ A) (affineMap α β γ δ ε ζ B)
      (affineMap α β γ δ ε ζ C) (affineMap α β γ δ ε ζ D) :=
  ⟨InTriangle.affine hdet h.1, InTriangle.affine hdet h.2⟩

/-- The normalized quadrilateral of `(1)`. -/
theorem normal_quad {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) :
    ConvexQuad (0, 0) (1, 0) ((1 - b) / a, b) (0, a) ∧
      2 * quadArea (0, 0) (1, 0) ((1 - b) / a, b) (0, a) = 1 ∧
      sarea (0, 0) (1, 0) (0, a) = a ∧ sarea (0, 0) (1, 0) ((1 - b) / a, b) = b ∧
      2 * quadArea ((1 - b) / a, b) (0, a) (0, 0) (1, 0) = 1 ∧
      sarea ((1 - b) / a, b) (0, a) (1, 0) = 1 - a ∧
      sarea ((1 - b) / a, b) (0, a) (0, 0) = 1 - b := by
  have hb' : 0 < 1 - b := by linarith
  have ha' : 0 < 1 - a := by linarith
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · unfold sarea; simp; exact hb
  · have e : sarea ((1 : ℝ), (0 : ℝ)) ((1 - b) / a, b) (0, a) = 1 - a := by
      unfold sarea; field_simp; ring
    rw [e]; exact ha'
  · have e : sarea ((1 - b) / a, b) ((0 : ℝ), a) (0, 0) = 1 - b := by
      unfold sarea; field_simp; ring
    rw [e]; exact hb'
  · unfold sarea; simp; exact ha
  · unfold quadArea sarea; field_simp; ring
  · unfold sarea; ring
  · unfold sarea; ring
  · unfold quadArea sarea; field_simp; ring
  · unfold sarea; field_simp; ring
  · unfold sarea; field_simp; ring

/-- The normal frame `(1)` of a convex quadrilateral, as an affine map of positive determinant. -/
theorem normal_frame {A B C D : Point} (hq : ConvexQuad A B C D) :
    ∃ α β γ δ ε ζ : ℝ, 0 < α * δ - β * γ ∧ α * δ - β * γ = 1 / (2 * quadArea A B C D) ∧
      affineMap α β γ δ ε ζ A = (0, 0) ∧ affineMap α β γ δ ε ζ B = (1, 0) ∧
      affineMap α β γ δ ε ζ D = (0, sarea A B D / (2 * quadArea A B C D)) ∧
      affineMap α β γ δ ε ζ C =
        ((1 - sarea A B C / (2 * quadArea A B C D)) / (sarea A B D / (2 * quadArea A B C D)),
          sarea A B C / (2 * quadArea A B C D)) := by
  obtain ⟨-, -, -, -, -, -, α, β, γ, δ, ε, ζ, hdet, h⟩ := claim_1 hq
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  exact ⟨α, β, γ, δ, ε, ζ, by rw [hdet]; positivity, hdet, h⟩

/-- `(4)` for an arbitrary counterclockwise convex quadrilateral, in the normalized quantities
`a = [ABD]/W`, `b = [ABC]/W`, `s = σ/W`, `W = 2·area`. -/
theorem claim4_general {A B C D P Q : Point} {a b s σ : ℝ} (hq : ConvexQuad A B C D)
    (ha : a = sarea A B D / (2 * quadArea A B C D)) (hb : b = sarea A B C / (2 * quadArea A B C D))
    (hs : s = σ / (2 * quadArea A B C D)) (hσ : 0 < σ)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hsame : 0 < sarea P Q A * sarea P Q B) :
    0 < a * b - s * (a + b) ∧ 2 * Real.sqrt (s * a * b) ≤ a * b - s * (a + b) := by
  obtain ⟨ha0, ha1, hb0, hb1, -⟩ := claim_1 hq
  obtain ⟨α, β, γ, δ, ε, ζ, hdet, hdet', eA, eB, eD, eC⟩ := normal_frame hq
  rw [← ha] at eD; rw [← ha, ← hb] at eC
  rw [← ha] at ha0 ha1; rw [← hb] at hb0 hb1
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  have hP' := hP.affine hdet (ε := ε) (ζ := ζ)
  have hQ' := hQ.affine hdet (ε := ε) (ζ := ζ)
  rw [eA, eB, eC, eD] at hP' hQ'
  have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), affineMap α β γ δ ε ζ P,
      affineMap α β γ δ ε ζ Q] = affineMap α β γ δ ε ζ ∘ ![A, B, C, D, P, Q] := by
    funext i; fin_cases i <;> simp [eA, eB, eC, eD]
  refine claim_4 ha0 ha1 hb0 hb1 (by rw [hs]; positivity) hP' hQ' ?_ ?_
  · rw [e, minTriangleArea_affineMap, abs_of_pos hdet, hdet', hs]
    have := mul_le_mul_of_nonneg_left hmin (by positivity : (0 : ℝ) ≤ 1 / (2 * quadArea A B C D))
    calc σ / (2 * quadArea A B C D) / 2 = 1 / (2 * quadArea A B C D) * (σ / 2) := by ring
      _ ≤ _ := this
  · rw [← eA, ← eB, sarea_affineMap, sarea_affineMap]
    have : (α * δ - β * γ) * sarea P Q A * ((α * δ - β * γ) * sarea P Q B) =
        (α * δ - β * γ) ^ 2 * (sarea P Q A * sarea P Q B) := by ring
    rw [this]; positivity

/-- `(5)` for an arbitrary counterclockwise convex quadrilateral (normalized quantities as in
`claim4_general`). -/
theorem claim5_general {A B C D P Q : Point} {a b s σ : ℝ} (hq : ConvexQuad A B C D)
    (ha : a = sarea A B D / (2 * quadArea A B C D)) (hb : b = sarea A B C / (2 * quadArea A B C D))
    (hs : s = σ / (2 * quadArea A B C D)) (hσ : 0 < σ)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D)
    (hmin : σ / 2 ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B) :
    (0 < sarea P Q C → 0 < sarea P Q D →
      4 * s * a * b ≤ (a * b - s * (1 + a)) ^ 2 ∧ 0 < a * b - s * (1 + a)) ∧
    (sarea P Q C < 0 → sarea P Q D < 0 →
      4 * s * a * b ≤ (a * b - s * (1 + b)) ^ 2 ∧ 0 < a * b - s * (1 + b)) := by
  obtain ⟨ha0, ha1, hb0, hb1, -⟩ := claim_1 hq
  obtain ⟨α, β, γ, δ, ε, ζ, hdet, hdet', eA, eB, eD, eC⟩ := normal_frame hq
  rw [← ha] at eD; rw [← ha, ← hb] at eC
  rw [← ha] at ha0 ha1; rw [← hb] at hb0 hb1
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  have hP' := hP.affine hdet (ε := ε) (ζ := ζ)
  have hQ' := hQ.affine hdet (ε := ε) (ζ := ζ)
  rw [eA, eB, eC, eD] at hP' hQ'
  have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), affineMap α β γ δ ε ζ P,
      affineMap α β γ δ ε ζ Q] = affineMap α β γ δ ε ζ ∘ ![A, B, C, D, P, Q] := by
    funext i; fin_cases i <;> simp [eA, eB, eC, eD]
  have hmin' : s / 2 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a),
      affineMap α β γ δ ε ζ P, affineMap α β γ δ ε ζ Q] := by
    rw [e, minTriangleArea_affineMap, abs_of_pos hdet, hdet', hs]
    have := mul_le_mul_of_nonneg_left hmin (by positivity : (0 : ℝ) ≤ 1 / (2 * quadArea A B C D))
    calc σ / (2 * quadArea A B C D) / 2 = 1 / (2 * quadArea A B C D) * (σ / 2) := by ring
      _ ≤ _ := this
  have sgn (X : Point) : sarea (affineMap α β γ δ ε ζ P) (affineMap α β γ δ ε ζ Q)
      (affineMap α β γ δ ε ζ X) = (α * δ - β * γ) * sarea P Q X := sarea_affineMap _ _ _ _ _ _ _ _ _
  have k := claim_5 ha0 ha1 hb0 hb1 (by rw [hs]; positivity) hP' hQ' hmin'
    (by rw [← eA, sgn]; exact mul_neg_of_pos_of_neg hdet hA)
    (by rw [← eB, sgn]; exact mul_pos hdet hB)
  refine ⟨fun hC hD => k.1 ?_ ?_, fun hC hD => k.2 ?_ ?_⟩
  · rw [← eC, sgn]; exact mul_pos hdet hC
  · rw [← eD, sgn]; exact mul_pos hdet hD
  · rw [← eC, sgn]; exact mul_neg_of_pos_of_neg hdet hC
  · rw [← eD, sgn]; exact mul_neg_of_pos_of_neg hdet hD

/-- The rational comparison `(9)`: `(5)` fails throughout `a, b < 3/5` at `s = 7/128`. -/
theorem eq9 {a b : ℝ} (ha : 0 < a) (ha1 : a < 3 / 5) (hb1 : b < 3 / 5)
    (hK : 0 < a * b - 7 / 128 * (1 + a)) (hK2 : 4 * (7 / 128) * a * b ≤ (a * b - 7 / 128 * (1 + a)) ^ 2) :
    False := by
  have hb : 0 < b := by
    by_contra hc; push Not at hc; nlinarith
  nlinarith [mul_pos hK (mul_pos ha (sub_pos.2 hb1)), mul_pos ha hb,
    mul_pos (sub_pos.2 ha1) (sub_pos.2 hb1), mul_pos hK (sub_pos.2 ha1), mul_pos ha (sub_pos.2 ha1)]

/-- §4 for an arbitrary counterclockwise convex quadrilateral `ABCD` with `P, Q` in the sector
`ABO`, `R, T` in `CDO`, normalized doubled threshold `7/128`, normalized `a, b < 3/5`, and triangle
capacity two: oriented with `d_A < 0 < d_B`, impossible. -/
theorem no_sep_oriented {A B C D P Q R T : Point} {a b : ℝ} (hq : ConvexQuad A B C D)
    (ha : a = sarea A B D / (2 * quadArea A B C D)) (hb : b = sarea A B C / (2 * quadArea A B C D))
    (ha35 : a < 3 / 5) (hb35 : b < 3 / 5)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D) (hR : InSector R C D A B)
    (hT : InSector T C D A B)
    (hmin : 7 / 256 * (2 * quadArea A B C D) ≤ minTriangleArea ![A, B, C, D, P, Q, R, T])
    (hcap : TriangleCapacityTwo ![A, B, C, D, P, Q, R, T])
    (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B) : False := by
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  have hpos : 0 < minTriangleArea ![A, B, C, D, P, Q, R, T] := by
    have : 0 < 7 / 256 * (2 * quadArea A B C D) := by positivity
    linarith
  obtain ⟨q1, q2, q3, q4⟩ := hq
  have hBCD : 0 < sarea C D B := by rw [sarea_cycle B C D]; exact q2
  have nC : sarea P Q C ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 2
  have nD : sarea P Q D ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 3
  have hmin6 : 7 / 128 * (2 * quadArea A B C D) / 2 ≤ minTriangleArea ![A, B, C, D, P, Q] := by
    have := le_min_sub (Q := ![A, B, C, D, P, Q]) (by norm_num) ![0, 1, 2, 3, 4, 5] (by decide)
      (fun i => by fin_cases i <;> rfl) hmin
    linarith
  have hs : (7 / 128 : ℝ) = 7 / 128 * (2 * quadArea A B C D) / (2 * quadArea A B C D) := by
    field_simp
  have k := claim5_general ⟨q1, q2, q3, q4⟩ ha hb hs (by positivity) hP hQ hmin6 hA hB
  have ha0 : 0 < a := by rw [ha, sarea_cycle D A B]; positivity
  have hb0 : 0 < b := by rw [hb]; positivity
  rcases lt_or_gt_of_ne nC with hC | hC <;> rcases lt_or_gt_of_ne nD with hD | hD
  · obtain ⟨k1, k2⟩ := k.2 hC hD
    exact eq9 hb0 hb35 ha35 (by linarith) (by nlinarith)
  · -- alternating signs: impossible for a line and a convex quadrilateral
    have e : sarea B C D * sarea P Q A + sarea D A B * sarea P Q C =
        sarea C D A * sarea P Q B + sarea A B C * sarea P Q D := by unfold sarea; ring
    nlinarith [mul_pos q2 (neg_pos.2 hA), mul_pos q4 (neg_pos.2 hC), mul_pos q3 hB, mul_pos q1 hD]
  · -- the middle case: `CDQ` contains `P, R, T`
    have hCDQ : 0 < sarea C D Q := by
      have e : sarea A B C * sarea C D Q = sarea B C Q * sarea C D A + sarea C A Q * sarea C D B := by
        unfold sarea; ring
      have : 0 < sarea A B C * sarea C D Q := by
        rw [e]; have := hQ.1.2.1; have := hQ.1.2.2; positivity
      exact pos_of_mul_pos_right this q1.le
    have hCDP : 0 < sarea C D P := by
      have e : sarea A B C * sarea C D P = sarea B C P * sarea C D A + sarea C A P * sarea C D B := by
        unfold sarea; ring
      have : 0 < sarea A B C * sarea C D P := by
        rw [e]; have := hP.1.2.1; have := hP.1.2.2; positivity
      exact pos_of_mul_pos_right this q1.le
    have inside {X : Point} (hX : InSector X C D A B) : InTriangle X C D Q := by
      refine ⟨hX.1.1, ?_, ?_⟩
      · have e : sarea C D B * sarea D Q X = sarea D B X * sarea D Q C + sarea C D X * sarea D Q B := by
          unfold sarea; ring
        have h1 : 0 < sarea D Q C := by rw [sarea_cycle C D Q]; exact hCDQ
        have h2 : 0 < sarea D Q B := by rw [sarea_cycle B D Q]; exact hQ.2.2.1
        have : 0 < sarea C D B * sarea D Q X := by
          rw [e]; have := hX.2.2.1; have := hX.1.1; positivity
        exact pos_of_mul_pos_right this hBCD.le
      · have e : sarea C D A * sarea Q C X = sarea A C X * sarea Q C D + sarea C D X * sarea Q C A := by
          unfold sarea; ring
        have h1 : 0 < sarea Q C D := by
          rw [show sarea Q C D = sarea C D Q by unfold sarea; ring]; exact hCDQ
        have h2 : 0 < sarea Q C A := by
          rw [show sarea Q C A = sarea C A Q by unfold sarea; ring]; exact hQ.1.2.2
        have : 0 < sarea C D A * sarea Q C X := by
          rw [e]; have := hX.1.2.2; have := hX.1.1; positivity
        exact pos_of_mul_pos_right this q3.le
    have hPin : InTriangle P C D Q := by
      refine ⟨hCDP, ?_, ?_⟩
      · have : sarea D Q P = -sarea P Q D := by unfold sarea; ring
        rw [this]; linarith
      · have : sarea Q C P = sarea P Q C := by unfold sarea; ring
        rw [this]; exact hC
    have hsub : (({4, 6, 7} : Finset (Fin 8)) : Set (Fin 8)) ⊆
        {m | InTriangle (![A, B, C, D, P, Q, R, T] m) (![A, B, C, D, P, Q, R, T] 2)
          (![A, B, C, D, P, Q, R, T] 3) (![A, B, C, D, P, Q, R, T] 5)} := by
      intro m hm
      simp only [Finset.coe_insert, Finset.coe_singleton, Set.mem_insert_iff,
        Set.mem_singleton_iff] at hm
      rcases hm with rfl | rfl | rfl
      · exact hPin
      · exact inside hR
      · exact inside hT
    have h3 := Set.ncard_le_ncard hsub
    have hc := hcap 2 3 5 hCDQ
    rw [Set.ncard_coe_finset] at h3
    have hcard : ({4, 6, 7} : Finset (Fin 8)).card = 3 := by decide
    have : 3 ≤ Set.ncard {m | InTriangle (![A, B, C, D, P, Q, R, T] m) (![A, B, C, D, P, Q, R, T] 2)
          (![A, B, C, D, P, Q, R, T] 3) (![A, B, C, D, P, Q, R, T] 5)} := hcard ▸ h3
    omega
  · obtain ⟨k1, k2⟩ := k.1 hC hD
    exact eq9 ha0 ha35 hb35 k2 (by nlinarith)

/-- §4 in general form: `PQ` does not separate `A` from `B`. -/
theorem no_sep_general {A B C D P Q R T : Point} {a b : ℝ} (hq : ConvexQuad A B C D)
    (ha : a = sarea A B D / (2 * quadArea A B C D)) (hb : b = sarea A B C / (2 * quadArea A B C D))
    (ha35 : a < 3 / 5) (hb35 : b < 3 / 5)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D) (hR : InSector R C D A B)
    (hT : InSector T C D A B)
    (hmin : 7 / 256 * (2 * quadArea A B C D) ≤ minTriangleArea ![A, B, C, D, P, Q, R, T])
    (hcap : TriangleCapacityTwo ![A, B, C, D, P, Q, R, T]) :
    0 < sarea P Q A * sarea P Q B := by
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  have hpos : 0 < minTriangleArea ![A, B, C, D, P, Q, R, T] := by
    have : 0 < 7 / 256 * (2 * quadArea A B C D) := by positivity
    linarith
  have nA : sarea P Q A ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 0
  have nB : sarea P Q B ≠ 0 := sarea_ne_zero_of_min_pos hpos 4 5 1
  rcases lt_or_gt_of_ne nA with hA | hA <;> rcases lt_or_gt_of_ne nB with hB | hB
  · exact mul_pos_of_neg_of_neg hA hB
  · exact (no_sep_oriented hq ha hb ha35 hb35 hP hQ hR hT hmin hcap hA hB).elim
  · have hmin' : 7 / 256 * (2 * quadArea A B C D) ≤ minTriangleArea ![A, B, C, D, Q, P, R, T] :=
      le_min_sub (by norm_num) ![0, 1, 2, 3, 5, 4, 6, 7] (by decide)
        (fun i => by fin_cases i <;> rfl) hmin
    have hcap' : TriangleCapacityTwo ![A, B, C, D, Q, P, R, T] := by
      have := TriangleCapacityTwo.comp hcap (f := ![0, 1, 2, 3, 5, 4, 6, 7]) (by decide)
      have e : ![A, B, C, D, P, Q, R, T] ∘ ![0, 1, 2, 3, 5, 4, 6, 7] = ![A, B, C, D, Q, P, R, T] := by
        funext i; fin_cases i <;> rfl
      rwa [e] at this
    exact (no_sep_oriented hq ha hb ha35 hb35 hQ hP hR hT hmin' hcap'
      (by rw [sarea_swap₁₂]; linarith) (by rw [sarea_swap₁₂]; linarith)).elim
  · exact mul_pos hA hB

/-- The arithmetic of `(10)`. -/
theorem final_arith {a b s : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    (hs : s = 7 / 128)
    (h1 : 2 * Real.sqrt (s * a * b) ≤ a * b - s * (a + b))
    (h2 : 2 * Real.sqrt (s * (1 - a) * (1 - b)) ≤ (1 - a) * (1 - b) - s * ((1 - a) + (1 - b))) :
    False := by
  have hs0 : 0 ≤ s := by rw [hs]; norm_num
  have ha' : 0 < 1 - a := by linarith
  have hb' : 0 < 1 - b := by linarith
  obtain ⟨x, hx0, hx2, e1⟩ : ∃ x : ℝ, 0 < x ∧ x ^ 2 = a * b ∧ Real.sqrt (s * a * b) = Real.sqrt s * x :=
    ⟨Real.sqrt (a * b), Real.sqrt_pos.2 (by positivity), Real.sq_sqrt (by positivity),
      by rw [mul_assoc, Real.sqrt_mul hs0]⟩
  obtain ⟨y, hy0, hy2, e2⟩ : ∃ y : ℝ, 0 < y ∧ y ^ 2 = (1 - a) * (1 - b) ∧
      Real.sqrt (s * (1 - a) * (1 - b)) = Real.sqrt s * y :=
    ⟨Real.sqrt ((1 - a) * (1 - b)), Real.sqrt_pos.2 (by positivity), Real.sq_sqrt (by positivity),
      by rw [mul_assoc, Real.sqrt_mul hs0]⟩
  obtain ⟨r, hr0, hr2⟩ : ∃ r : ℝ, 0 ≤ r ∧ r ^ 2 = s := ⟨Real.sqrt s, Real.sqrt_nonneg _, Real.sq_sqrt hs0⟩
  have er : Real.sqrt s = r := by rw [← hr2, Real.sqrt_sq hr0]
  rw [e1, er] at h1; rw [e2, er] at h2
  have hab : 2 * x ≤ a + b := by
    by_contra h; push Not at h
    nlinarith [mul_pos (sub_pos.2 h) (by positivity : (0 : ℝ) < 2 * x + a + b), sq_nonneg (a - b)]
  have hab' : 2 * y ≤ (1 - a) + (1 - b) := by
    by_contra h; push Not at h
    nlinarith [mul_pos (sub_pos.2 h) (by positivity : (0 : ℝ) < 2 * y + (1 - a) + (1 - b)),
      sq_nonneg (a - b)]
  have k1 : 2 * r + 2 * s ≤ x := by
    by_contra h; push Not at h
    nlinarith [mul_pos hx0 (sub_pos.2 h), mul_le_mul_of_nonneg_left hab hs0]
  have k2 : 2 * r + 2 * s ≤ y := by
    by_contra h; push Not at h
    nlinarith [mul_pos hy0 (sub_pos.2 h), mul_le_mul_of_nonneg_left hab' hs0]
  have hxy : x * y ≤ (a * (1 - b) + b * (1 - a)) / 2 := by
    rw [← pow_le_pow_iff_left₀ (by positivity) (by positivity) two_ne_zero]
    have : (x * y) ^ 2 = (a * (1 - b)) * (b * (1 - a)) := by rw [mul_pow, hx2, hy2]; ring
    rw [this]; nlinarith [sq_nonneg (a * (1 - b) - b * (1 - a))]
  have hsum : x + y ≤ 1 := by
    rw [← pow_le_pow_iff_left₀ (by positivity) zero_le_one two_ne_zero]
    nlinarith
  have hr' : 7 / 32 < r := by
    by_contra h; push Not at h
    nlinarith [mul_le_mul h h hr0 (by norm_num)]
  rw [hs] at k1
  linarith

/-! ### §3. Two possible sector patterns -/

/-- The four two-interior-point bounds behind `(7)`: `a, b, 1-a, 1-b ≥ Ks > (22/3)·(7/128)`. -/
theorem eq7_full {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    {P Q R T : Point}
    (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T]) :
    a < 115 / 192 ∧ b < 115 / 192 ∧ 1 - a < 115 / 192 ∧ 1 - b < 115 / 192 := by
  have hK : 22 / 3 * (7 / 256) < (4 + 2 * Real.sqrt 3) * (7 / 256 : ℝ) := by
    have : (5 / 3 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    nlinarith
  have k1 := CornerFamilies.twoInteriorPointLemma _ _ _ P Q (Or.inl hP.1) (Or.inl hQ.1)
    (7 / 256) (by norm_num)
    (le_min_sub (by norm_num) ![0, 1, 2, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  have k2 := CornerFamilies.twoInteriorPointLemma _ _ _ P Q (Or.inl hP.2) (Or.inl hQ.2)
    (7 / 256) (by norm_num)
    (le_min_sub (by norm_num) ![0, 1, 3, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  have k3 := CornerFamilies.twoInteriorPointLemma _ _ _ R T (Or.inl hR.1) (Or.inl hT.1)
    (7 / 256) (by norm_num)
    (le_min_sub (by norm_num) ![2, 3, 0, 6, 7] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  have k4 := CornerFamilies.twoInteriorPointLemma _ _ _ R T (Or.inl hR.2) (Or.inl hT.2)
    (7 / 256) (by norm_num)
    (le_min_sub (by norm_num) ![2, 3, 1, 6, 7] (by decide) (fun i => by fin_cases i <;> rfl) hmin)
  have e1 : triangleArea ((0 : ℝ), (0 : ℝ)) (1, 0) ((1 - b) / a, b) = b / 2 := by
    rw [triangleArea_eq]; unfold sarea; rw [abs_of_pos (by simp; linarith)]; ring
  have e2 : triangleArea ((0 : ℝ), (0 : ℝ)) (1, 0) (0, a) = a / 2 := by
    rw [triangleArea_eq]; unfold sarea; rw [abs_of_pos (by simp; linarith)]; ring
  have e3 : triangleArea ((1 - b) / a, b) (0, a) ((0 : ℝ), (0 : ℝ)) = (1 - b) / 2 := by
    rw [triangleArea_eq]; unfold sarea
    rw [show (0 - (1 - b) / a) * (0 - b) - (a - b) * (0 - (1 - b) / a) = 1 - b by
      field_simp; ring, abs_of_pos (by linarith)]
  have e4 : triangleArea ((1 - b) / a, b) (0, a) ((1 : ℝ), (0 : ℝ)) = (1 - a) / 2 := by
    rw [triangleArea_eq]; unfold sarea
    rw [show (0 - (1 - b) / a) * (0 - b) - (a - b) * (1 - (1 - b) / a) = 1 - a by
      field_simp; ring, abs_of_pos (by linarith)]
  rw [e1] at k1; rw [e2] at k2; rw [e3] at k3; rw [e4] at k4
  refine ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:eq7`). In the alternative `(2,0,2,0)`, normalized
with `P, Q` in `ABO`, `R, T` in `CDO`, and every doubled area of the eight points at least
`s = 7/128`, the two-interior-point bound on `ABC, ABD, CDA, CDB` gives
`a, b, 1-a, 1-b ≥ Ks`, hence `a, b < 1 - (22/3)s = 115/192 < 3/5`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 180-200.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem eq7 {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1) {P Q R T : Point}
    (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T]) :
    a < 115 / 192 ∧ b < 115 / 192 := by
  have h := eq7_full ha ha1 hb hb1 hP hQ hR hT hmin
  exact ⟨by linarith [h.1], by linarith [h.2.1]⟩

/-! ### §§4-5. Excluding two points in each of two opposite sectors -/

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-no-separation`). In the normalized alternative
`(2,0,2,0)` at doubled threshold `s = 7/128`, with `a, b < 3/5` and triangle capacity two, the line
`PQ` does not separate `A` from `B`, and likewise `RT` does not separate `C` from `D`. The middle
sign case `(-,+)` puts three points in the triangle on `C, D` and the nearer point. The other two
cases contradict (5) at `a = b = 3/5` (9).
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 202-258.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(5), THREE_INTERIOR_TRIANGLES:Corollary5 -/
theorem claim_no_separation {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    {P Q R T : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (hcap : TriangleCapacityTwo ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (ha35 : a < 3 / 5) (hb35 : b < 3 / 5) :
    0 < sarea P Q (0, 0) * sarea P Q (1, 0) ∧
      0 < sarea R T ((1 - b) / a, b) * sarea R T (0, a) := by
  obtain ⟨hq, hW, hABD, hABC, hW', hCDB, hCDA⟩ := normal_quad ha ha1 hb hb1
  have h7 := eq7_full ha ha1 hb hb1 hP hQ hR hT hmin
  refine ⟨no_sep_general hq (by rw [hABD, hW, div_one]) (by rw [hABC, hW, div_one]) ha35 hb35
    hP hQ hR hT (by rw [hW]; linarith) hcap, ?_⟩
  have hmin' : 7 / 256 ≤ minTriangleArea
      ![((1 - b) / a, b), (0, a), (0, 0), (1, 0), R, T, P, Q] :=
    le_min_sub (by norm_num) ![2, 3, 0, 1, 6, 7, 4, 5] (by decide)
      (fun i => by fin_cases i <;> rfl) hmin
  have hcap' : TriangleCapacityTwo ![((1 - b) / a, b), (0, a), (0, 0), (1, 0), R, T, P, Q] := by
    have := TriangleCapacityTwo.comp hcap (f := ![2, 3, 0, 1, 6, 7, 4, 5]) (by decide)
    have e : ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T] ∘ ![2, 3, 0, 1, 6, 7, 4, 5] =
        ![((1 - b) / a, b), (0, a), (0, 0), (1, 0), R, T, P, Q] := by
      funext i; fin_cases i <;> rfl
    rwa [e] at this
  exact no_sep_general (a := 1 - a) (b := 1 - b) hq.rotate.rotate
    (by rw [hCDB, hW', div_one]) (by rw [hCDA, hW', div_one]) (by linarith [h7.2.2.1])
    (by linarith [h7.2.2.2]) hR hT hP hQ (by rw [hW']; linarith) hcap'

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-final`). The two same-side inequalities
contradict one another. In the normalized alternative `(2,0,2,0)` at doubled threshold
`s = 7/128`, if `PQ` leaves `A, B` on one side and `RT` leaves `C, D` on one side, then (4) for
both pairs gives `√(ab), √((1-a)(1-b)) ≥ 2√s + 2s`. This contradicts Cauchy-Schwarz, since
`4√s + 4s > 35/32 > 1` (10).
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 260-289.
Uses: FOUR_INTERIOR_QUADRILATERALS:claim-(4) -/
theorem claim_final {a b : ℝ} (ha : 0 < a) (ha1 : a < 1) (hb : 0 < b) (hb1 : b < 1)
    {P Q R T : Point} (hP : InSector P (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hQ : InSector Q (0, 0) (1, 0) ((1 - b) / a, b) (0, a))
    (hR : InSector R ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hT : InSector T ((1 - b) / a, b) (0, a) (0, 0) (1, 0))
    (hmin : 7 / 256 ≤ minTriangleArea ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q, R, T])
    (hPQ : 0 < sarea P Q (0, 0) * sarea P Q (1, 0))
    (hRT : 0 < sarea R T ((1 - b) / a, b) * sarea R T (0, a)) : False := by
  obtain ⟨hq, -, -, -, hW', hCDB, hCDA⟩ := normal_quad ha ha1 hb hb1
  have k1 := claim_4 (s := 7 / 128) ha ha1 hb hb1 (by norm_num) hP hQ
    (by
      have h := le_min_sub (Q := ![(0, 0), (1, 0), ((1 - b) / a, b), (0, a), P, Q]) (by norm_num)
        ![0, 1, 2, 3, 4, 5] (by decide) (fun i => by fin_cases i <;> rfl) hmin
      linarith) hPQ
  have k2 := claim4_general (a := 1 - a) (b := 1 - b) (s := 7 / 128) (σ := 7 / 128)
    hq.rotate.rotate (by rw [hCDB, hW', div_one]) (by rw [hCDA, hW', div_one])
    (by rw [hW', div_one]) (by norm_num) hR hT
    (by
      have h := le_min_sub (Q := ![((1 - b) / a, b), (0, a), (0, 0), (1, 0), R, T]) (by norm_num)
        ![2, 3, 0, 1, 6, 7] (by decide) (fun i => by fin_cases i <;> rfl) hmin
      linarith) hRT
  exact final_arith ha ha1 hb hb1 rfl k1.2 k2.2

/-! ### §3 and Theorem 1: counting the four sectors -/

theorem ncard_split {n : ℕ} (p r : Fin n → Prop) :
    Set.ncard {m | p m} = Set.ncard {m | p m ∧ r m} + Set.ncard {m | p m ∧ ¬ r m} :=
  (Set.ncard_inter_add_ncard_sdiff_eq_ncard {m | p m} {m | r m}).symm

/-- A point of the open sector `ABO` lies inside the quadrilateral. -/
theorem InSector.inQuad {X A B C D : Point} (hq : ConvexQuad A B C D) (h : InSector X A B C D) :
    InQuad X A B C D := by
  refine ⟨h.1.1, h.1.2.1, ?_, h.2.2.2⟩
  have e : sarea A B C * sarea C D X = sarea B C X * sarea C D A + sarea C A X * sarea C D B := by
    unfold sarea; ring
  have hCDB : 0 < sarea C D B := by rw [sarea_cycle B C D]; exact hq.2.1
  have : 0 < sarea A B C * sarea C D X := by
    rw [e]; have := h.1.2.1; have := h.1.2.2; have := hq.2.2.1; positivity
  exact pos_of_mul_pos_right this hq.1.le

/-- The sector counts of a convex quadrilateral of actual points in a configuration with triangle
capacity two: their sum is the number of interior points, and each diagonal leaves at most two
on either side. -/
theorem sector_counts {P : Fin 9 → Point} (hA : A₀ ≤ minTriangleArea P)
    (hcap : TriangleCapacityTwo P) {i j k l : Fin 9} (hq : ConvexQuad (P i) (P j) (P k) (P l)) :
    ∃ n₁ n₂ n₃ n₄ : ℕ,
      Set.ncard {m | InSector (P m) (P i) (P j) (P k) (P l)} = n₁ ∧
      Set.ncard {m | InSector (P m) (P j) (P k) (P l) (P i)} = n₂ ∧
      Set.ncard {m | InSector (P m) (P k) (P l) (P i) (P j)} = n₃ ∧
      Set.ncard {m | InSector (P m) (P l) (P i) (P j) (P k)} = n₄ ∧
      Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = n₁ + n₂ + n₃ + n₄ ∧
      n₁ + n₂ ≤ 2 ∧ n₃ + n₄ ≤ 2 ∧ n₁ + n₄ ≤ 2 ∧ n₂ + n₃ ≤ 2 := by
  have hpos : 0 < minTriangleArea P := lt_of_lt_of_le A₀_pos hA
  obtain ⟨-, -, dik⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hq.1
  obtain ⟨-, -, djl⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hq.2.1
  have nz : ∀ m, InQuad (P m) (P i) (P j) (P k) (P l) →
      sarea (P k) (P i) (P m) ≠ 0 ∧ sarea (P j) (P l) (P m) ≠ 0 := by
    intro m hm
    obtain ⟨-, a2, a3⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hm.1
    obtain ⟨-, b2, b3⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hm.2.2.1
    exact ⟨sarea_ne_zero_of_min_pos hpos k i m (Ne.symm dik) a3 b3,
      sarea_ne_zero_of_min_pos hpos j l m djl b2 a2⟩
  set q : Fin 9 → Prop := fun m => InQuad (P m) (P i) (P j) (P k) (P l) with hqdef
  set c : Fin 9 → Prop := fun m => 0 < sarea (P k) (P i) (P m) with hcdef
  set d : Fin 9 → Prop := fun m => 0 < sarea (P j) (P l) (P m) with hddef
  have neg {X Y Z : Point} (h0 : sarea X Y Z ≠ 0) (h : ¬ 0 < sarea X Y Z) : 0 < sarea Y X Z := by
    rw [sarea_swap₁₂]; push Not at h; exact neg_pos.2 (lt_of_le_of_ne h h0)
  have nn {X Y Z : Point} (h : 0 < sarea Y X Z) : ¬ 0 < sarea X Y Z := by
    rw [sarea_swap₁₂] at h; linarith
  have rot {X A B C D : Point} (h : InQuad X B C D A) : InQuad X A B C D :=
    ⟨h.2.2.2, h.1, h.2.1, h.2.2.1⟩
  have hS1 : {m | InSector (P m) (P i) (P j) (P k) (P l)} = {m | (q m ∧ c m) ∧ d m} := by
    ext m; simp only [Set.mem_ofPred_eq]
    constructor
    · intro h; exact ⟨⟨h.inQuad hq, h.1.2.2⟩, h.2.2.1⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩; exact ⟨⟨h1.1, h1.2.1, h2⟩, ⟨h1.1, h3, h1.2.2.2⟩⟩
  have hS2 : {m | InSector (P m) (P j) (P k) (P l) (P i)} = {m | (q m ∧ c m) ∧ ¬ d m} := by
    ext m; simp only [Set.mem_ofPred_eq]
    constructor
    · intro h; exact ⟨⟨rot (h.inQuad hq.rotate), h.2.2.1⟩, nn h.1.2.2⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩
      exact ⟨⟨h1.2.1, h1.2.2.1, neg (nz m h1).2 h3⟩, ⟨h1.2.1, h2, h1.1⟩⟩
  have hS3 : {m | InSector (P m) (P k) (P l) (P i) (P j)} = {m | (q m ∧ ¬ c m) ∧ ¬ d m} := by
    ext m; simp only [Set.mem_ofPred_eq]
    constructor
    · intro h; exact ⟨⟨rot (rot (h.inQuad hq.rotate.rotate)), nn h.1.2.2⟩, nn h.2.2.1⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩
      exact ⟨⟨h1.2.2.1, h1.2.2.2, neg (nz m h1).1 h2⟩, ⟨h1.2.2.1, neg (nz m h1).2 h3, h1.2.1⟩⟩
  have hS4 : {m | InSector (P m) (P l) (P i) (P j) (P k)} = {m | (q m ∧ ¬ c m) ∧ d m} := by
    ext m; simp only [Set.mem_ofPred_eq]
    constructor
    · intro h; exact ⟨⟨rot (rot (rot (h.inQuad hq.rotate.rotate.rotate))), nn h.2.2.1⟩, h.1.2.2⟩
    · rintro ⟨⟨h1, h2⟩, h3⟩
      exact ⟨⟨h1.2.2.2, h1.1, h3⟩, ⟨h1.2.2.2, neg (nz m h1).1 h2, h1.2.2.1⟩⟩
  -- capacity bounds
  have cap1 : Set.ncard {m | q m ∧ c m} ≤ 2 :=
    le_trans (Set.ncard_le_ncard (fun m (h : q m ∧ c m) => (⟨h.1.1, h.1.2.1, h.2⟩ :
      InTriangle (P m) (P i) (P j) (P k)))) (hcap i j k hq.1)
  have cap2 : Set.ncard {m | q m ∧ ¬ c m} ≤ 2 :=
    le_trans (Set.ncard_le_ncard (fun m (h : q m ∧ ¬ c m) => (⟨h.1.2.2.1, h.1.2.2.2,
      neg (nz m h.1).1 h.2⟩ : InTriangle (P m) (P k) (P l) (P i)))) (hcap k l i hq.2.2.1)
  have cap3 : Set.ncard {m | q m ∧ d m} ≤ 2 :=
    le_trans (Set.ncard_le_ncard (fun m (h : q m ∧ d m) => (⟨h.2, h.1.2.2.2, h.1.1⟩ :
      InTriangle (P m) (P j) (P l) (P i))))
      (hcap j l i (by
        rw [show sarea (P j) (P l) (P i) = sarea (P l) (P i) (P j) by unfold sarea; ring]
        exact hq.2.2.2))
  have cap4 : Set.ncard {m | q m ∧ ¬ d m} ≤ 2 :=
    le_trans (Set.ncard_le_ncard (fun m (h : q m ∧ ¬ d m) => (⟨neg (nz m h.1).2 h.2, h.1.2.1,
      h.1.2.2.1⟩ : InTriangle (P m) (P l) (P j) (P k))))
      (hcap l j k (by
        rw [show sarea (P l) (P j) (P k) = sarea (P j) (P k) (P l) by unfold sarea; ring]
        exact hq.2.1))
  have e1 : Set.ncard {m | q m} = Set.ncard {m | q m ∧ c m} + Set.ncard {m | q m ∧ ¬ c m} :=
    ncard_split _ _
  have e2 : Set.ncard {m | q m ∧ c m} = Set.ncard {m | (q m ∧ c m) ∧ d m} +
      Set.ncard {m | (q m ∧ c m) ∧ ¬ d m} := ncard_split _ _
  have e3 : Set.ncard {m | q m ∧ ¬ c m} = Set.ncard {m | (q m ∧ ¬ c m) ∧ d m} +
      Set.ncard {m | (q m ∧ ¬ c m) ∧ ¬ d m} := ncard_split _ _
  have e4 : Set.ncard {m | q m ∧ d m} = Set.ncard {m | (q m ∧ d m) ∧ c m} +
      Set.ncard {m | (q m ∧ d m) ∧ ¬ c m} := ncard_split _ _
  have e5 : Set.ncard {m | q m ∧ ¬ d m} = Set.ncard {m | (q m ∧ ¬ d m) ∧ c m} +
      Set.ncard {m | (q m ∧ ¬ d m) ∧ ¬ c m} := ncard_split _ _
  have f1 : {m | (q m ∧ d m) ∧ c m} = {m | (q m ∧ c m) ∧ d m} := by ext m; simp only [Set.mem_ofPred_eq]; tauto
  have f2 : {m | (q m ∧ d m) ∧ ¬ c m} = {m | (q m ∧ ¬ c m) ∧ d m} := by ext m; simp only [Set.mem_ofPred_eq]; tauto
  have f3 : {m | (q m ∧ ¬ d m) ∧ c m} = {m | (q m ∧ c m) ∧ ¬ d m} := by ext m; simp only [Set.mem_ofPred_eq]; tauto
  have f4 : {m | (q m ∧ ¬ d m) ∧ ¬ c m} = {m | (q m ∧ ¬ c m) ∧ ¬ d m} := by ext m; simp only [Set.mem_ofPred_eq]; tauto
  rw [f1, f2] at e4; rw [f3, f4] at e5
  have e0 : Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = Set.ncard {m | q m} := rfl
  rw [e0]
  refine ⟨_, _, _, _, congrArg Set.ncard hS1, congrArg Set.ncard hS2, congrArg Set.ncard hS3,
    congrArg Set.ncard hS4, ?_, ?_, ?_, ?_, ?_⟩ <;> omega

/-- The two-interior-point bound in doubled form. -/
theorem tw_bound {U V X Y Z : Point} (hY : CornerFamilies.InsideTriangle Y U V X)
    (hZ : CornerFamilies.InsideTriangle Z U V X) (hmin : A₀ ≤ minTriangleArea ![U, V, X, Y, Z])
    (hpos : 0 < sarea U V X) : 2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ sarea U V X := by
  have k := CornerFamilies.twoInteriorPointLemma _ _ _ _ _ hY hZ A₀ A₀_pos hmin
  rw [QuadrilateralHull.triangleArea_of_pos hpos] at k
  linarith

/-- A convex quadrilateral with vertices in the unit square has doubled area at most two. -/
theorem quadArea_le_one {A B C D : Point} (hA : A ∈ unitSquare) (hB : B ∈ unitSquare)
    (hC : C ∈ unitSquare) (hD : D ∈ unitSquare) (hq : ConvexQuad A B C D) :
    2 * quadArea A B C D ≤ 2 := by
  have h1 := CornerFamilies.claim_area_le_half _ _ _ hA hB hC
  have h2 := CornerFamilies.claim_area_le_half _ _ _ hA hC hD
  have hACD : 0 < sarea A C D := by rw [← sarea_cycle A C D]; exact hq.2.2.1
  rw [QuadrilateralHull.triangleArea_of_pos hq.1] at h1
  rw [QuadrilateralHull.triangleArea_of_pos hACD] at h2
  unfold quadArea; linarith

/-- The four normalized bounds `a, b, 1-a, 1-b < 3/5` in the alternative `(2,0,2,0)`. -/
theorem two_two_ab {A B C D P Q R T : Point} (hW1 : 2 * quadArea A B C D ≤ 2)
    (hq : ConvexQuad A B C D)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D) (hR : InSector R C D A B)
    (hT : InSector T C D A B)
    (hmin8 : A₀ ≤ minTriangleArea ![A, B, C, D, P, Q, R, T]) :
    sarea A B D / (2 * quadArea A B C D) < 3 / 5 ∧ sarea A B C / (2 * quadArea A B C D) < 3 / 5 ∧
      1 - sarea A B D / (2 * quadArea A B C D) < 3 / 5 ∧
      1 - sarea A B C / (2 * quadArea A B C D) < 3 / 5 := by
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  have hABD : 0 < sarea A B D := by rw [sarea_cycle D A B]; exact hq.2.2.2
  have hCDB : 0 < sarea C D B := by rw [sarea_cycle B C D]; exact hq.2.1
  have k1 := tw_bound (Or.inl hP.2) (Or.inl hQ.2)
    (le_min_sub (by norm_num) ![0, 1, 3, 4, 5] (by decide) (fun a => by fin_cases a <;> rfl) hmin8)
    hABD
  have k2 := tw_bound (Or.inl hP.1) (Or.inl hQ.1)
    (le_min_sub (by norm_num) ![0, 1, 2, 4, 5] (by decide) (fun a => by fin_cases a <;> rfl) hmin8)
    hq.1
  have k3 := tw_bound (Or.inl hR.1) (Or.inl hT.1)
    (le_min_sub (by norm_num) ![2, 3, 0, 6, 7] (by decide) (fun a => by fin_cases a <;> rfl) hmin8)
    hq.2.2.1
  have k4 := tw_bound (Or.inl hR.2) (Or.inl hT.2)
    (le_min_sub (by norm_num) ![2, 3, 1, 6, 7] (by decide) (fun a => by fin_cases a <;> rfl) hmin8)
    hCDB
  have eW1 : 2 * quadArea A B C D = sarea A B D + sarea C D B := by unfold quadArea sarea; ring
  have eW2 : 2 * quadArea A B C D = sarea A B C + sarea C D A := by unfold quadArea sarea; ring
  have K3 : (22 / 3 : ℝ) * A₀ < (4 + 2 * Real.sqrt 3) * A₀ := by
    have : (5 / 3 : ℝ) < Real.sqrt 3 := by rw [Real.lt_sqrt (by norm_num)]; norm_num
    nlinarith [A₀_pos]
  have hA0 := A₀_bounds.1
  set W := 2 * quadArea A B C D
  have hW0 : 0 < W := by positivity
  have key {X Y : ℝ} (hX : 2 * ((4 + 2 * Real.sqrt 3) * A₀) ≤ X) (hXY : W = Y + X) :
      Y / W < 3 / 5 := by
    rw [div_lt_iff₀ hW0]; nlinarith
  refine ⟨key k4 eW1, key k3 eW2, ?_, ?_⟩
  · have := key k1 (show W = sarea C D B + sarea A B D by linarith)
    rw [show sarea C D B = W - sarea A B D by linarith, sub_div, div_self hW0.ne'] at this
    exact this
  · have := key k2 (show W = sarea C D A + sarea A B C by linarith)
    rw [show sarea C D A = W - sarea A B C by linarith, sub_div, div_self hW0.ne'] at this
    exact this

/-- The excluded alternative `(2,0,2,0)` for eight named points. -/
theorem two_two_core {A B C D P Q R T : Point} (hW1 : 2 * quadArea A B C D ≤ 2)
    (hq : ConvexQuad A B C D)
    (hP : InSector P A B C D) (hQ : InSector Q A B C D) (hR : InSector R C D A B)
    (hT : InSector T C D A B)
    (hmin8 : A₀ ≤ minTriangleArea ![A, B, C, D, P, Q, R, T])
    (hcap8 : TriangleCapacityTwo ![A, B, C, D, P, Q, R, T]) : False := by
  have hW := QuadrilateralHull.ConvexQuad.quadArea_pos hq
  obtain ⟨ha35, hb35, ha35', hb35'⟩ := two_two_ab hW1 hq hP hQ hR hT hmin8
  obtain ⟨ha0, ha1, hb0, hb1, ha'e, hb'e, -⟩ := claim_1 hq
  set W := 2 * quadArea A B C D with hWdef
  have hW0 : 0 < W := by positivity
  have hmin8' : 7 / 256 * W ≤ minTriangleArea ![A, B, C, D, P, Q, R, T] := by
    nlinarith [A₀_bounds.1]
  have same1 := no_sep_general hq rfl rfl ha35 hb35 hP hQ hR hT hmin8' hcap8
  have hq2 := hq.rotate.rotate
  have eW' : 2 * quadArea C D A B = W := by
    rw [hWdef, QuadrilateralHull.quadArea_rotate, QuadrilateralHull.quadArea_rotate]
  have ha' : 1 - sarea A B D / W = sarea C D B / (2 * quadArea C D A B) := by
    rw [eW', ← ha'e]; congr 1; unfold sarea; ring
  have hb' : 1 - sarea A B C / W = sarea C D A / (2 * quadArea C D A B) := by
    rw [eW', ← hb'e]
  have hmin8r : 7 / 256 * (2 * quadArea C D A B) ≤ minTriangleArea ![C, D, A, B, R, T, P, Q] := by
    rw [eW']
    exact le_min_sub (by norm_num) ![2, 3, 0, 1, 6, 7, 4, 5] (by decide)
      (fun a => by fin_cases a <;> rfl) hmin8'
  have hcap8r : TriangleCapacityTwo ![C, D, A, B, R, T, P, Q] := by
    have := TriangleCapacityTwo.comp hcap8 (f := ![2, 3, 0, 1, 6, 7, 4, 5]) (by decide)
    have e : ![A, B, C, D, P, Q, R, T] ∘ ![2, 3, 0, 1, 6, 7, 4, 5] = ![C, D, A, B, R, T, P, Q] := by
      funext a; fin_cases a <;> rfl
    rwa [e] at this
  have same2 := no_sep_general hq2 ha' hb' ha35' hb35' hR hT hP hQ hmin8r hcap8r
  have g1 := claim4_general (s := 7 / 128) (σ := 7 / 128 * W) hq rfl rfl (by field_simp; rfl)
    (by positivity) hP hQ
    (by
      have := le_min_sub (Q := ![A, B, C, D, P, Q]) (by norm_num) ![0, 1, 2, 3, 4, 5]
        (by decide) (fun a => by fin_cases a <;> rfl) hmin8'
      linarith) same1
  have g2 := claim4_general (s := 7 / 128) (σ := 7 / 128 * W) hq2 ha' hb'
    (by rw [eW']; field_simp) (by positivity) hR hT
    (by
      have := le_min_sub (Q := ![C, D, A, B, R, T]) (by norm_num) ![2, 3, 0, 1, 6, 7]
        (by decide) (fun a => by fin_cases a <;> rfl) hmin8'
      linarith) same2
  exact final_arith ha0 ha1 hb0 hb1 rfl g1.2 g2.2

/-- The excluded alternative `(2,0,2,0)`: two actual points in the sector `ABO` and two in `CDO`. -/
theorem two_two_impossible {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) (hcap : TriangleCapacityTwo P) {i j k l p q r t : Fin 9}
    (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (hp : InSector (P p) (P i) (P j) (P k) (P l)) (hq' : InSector (P q) (P i) (P j) (P k) (P l))
    (hr : InSector (P r) (P k) (P l) (P i) (P j)) (ht : InSector (P t) (P k) (P l) (P i) (P j))
    (hpq : p ≠ q) (hrt : r ≠ t) : False := by
  obtain ⟨d1, d2, d3⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hq.1
  obtain ⟨-, d5, d6⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hq.2.1
  obtain ⟨d7, -, -⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) hq.2.2.2
  have side {m : Fin 9} (h : InSector (P m) (P i) (P j) (P k) (P l)) :
      m ≠ i ∧ m ≠ j ∧ m ≠ k ∧ m ≠ l := by
    obtain ⟨-, a2, a3⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.1.1
    obtain ⟨-, b2, -⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.1.2.1
    obtain ⟨-, c2, -⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.2.2.1
    exact ⟨a3.symm, a2.symm, b2.symm, c2.symm⟩
  have side' {m : Fin 9} (h : InSector (P m) (P k) (P l) (P i) (P j)) :
      m ≠ i ∧ m ≠ j ∧ m ≠ k ∧ m ≠ l := by
    obtain ⟨-, a2, a3⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.1.1
    obtain ⟨-, b2, -⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.1.2.1
    obtain ⟨-, c2, -⟩ := QuadrilateralHull.ne_of_sarea_pos (P := P) h.2.2.1
    exact ⟨b2.symm, c2.symm, a3.symm, a2.symm⟩
  have cross {m m' : Fin 9} (h : InSector (P m) (P i) (P j) (P k) (P l))
      (h' : InSector (P m') (P k) (P l) (P i) (P j)) : m ≠ m' := by
    rintro rfl
    have h1 := h.1.2.2; have h2 := h'.1.2.2
    rw [sarea_swap₁₂] at h1; linarith
  obtain ⟨p1, p2, p3, p4⟩ := side hp
  obtain ⟨q1, q2, q3, q4⟩ := side hq'
  obtain ⟨r1, r2, r3, r4⟩ := side' hr
  obtain ⟨t1, t2, t3, t4⟩ := side' ht
  have x1 := cross hp hr; have x2 := cross hp ht; have x3 := cross hq' hr; have x4 := cross hq' ht
  have hinj : Function.Injective ![i, j, k, l, p, q, r, t] := by
    rw [← List.nodup_ofFn]
    simp [List.ofFn_succ]
    tauto
  have hmin8 : A₀ ≤ minTriangleArea ![P i, P j, P k, P l, P p, P q, P r, P t] :=
    le_min_sub (by norm_num) _ hinj (fun a => by fin_cases a <;> rfl) hA
  have hcap8 : TriangleCapacityTwo ![P i, P j, P k, P l, P p, P q, P r, P t] := by
    have := TriangleCapacityTwo.comp hcap hinj
    have e : P ∘ ![i, j, k, l, p, q, r, t] = ![P i, P j, P k, P l, P p, P q, P r, P t] := by
      funext a; fin_cases a <;> rfl
    rwa [e] at this
  exact two_two_core (quadArea_le_one (hP i) (hP j) (hP k) (hP l) hq) hq hp hq' hr ht hmin8 hcap8

/-- **Claim** (`FOUR_INTERIOR_QUADRILATERALS:claim-sectors`). If a convex quadrilateral of actual
points contains exactly four further points, then global triangle capacity two makes each diagonal
split them two and two. So the sector counts in cyclic order `ABO, BCO, CDO, DAO` are
`(k, 2-k, k, 2-k)` with `k ∈ {0, 1, 2}`.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 162-178.
Uses: THREE_INTERIOR_TRIANGLES:Corollary5 -/
theorem claim_sectors {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin 9}
    (hq : ConvexQuad (P i) (P j) (P k) (P l))
    (h4 : Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = 4) :
    ∃ n : ℕ, n ≤ 2 ∧
      Set.ncard {m | InSector (P m) (P i) (P j) (P k) (P l)} = n ∧
      Set.ncard {m | InSector (P m) (P j) (P k) (P l) (P i)} = 2 - n ∧
      Set.ncard {m | InSector (P m) (P k) (P l) (P i) (P j)} = n ∧
      Set.ncard {m | InSector (P m) (P l) (P i) (P j) (P k)} = 2 - n := by
  obtain ⟨n₁, n₂, n₃, n₄, e1, e2, e3, e4, e, c1, c2, c3, c4⟩ :=
    sector_counts hA (corollary5 hP hA) hq
  refine ⟨n₁, by omega, e1, by rw [e2]; omega, by rw [e3]; omega, by rw [e4]; omega⟩

/-- **Theorem 1** (`FOUR_INTERIOR_QUADRILATERALS:Theorem1`). For nine points in the unit square
with least area at least `A₀`, a convex quadrilateral spanned by four of them contains at most four
further points. If it contains four, each of the four open diagonal sectors contains exactly one
of them. In particular two points in each of two opposite sectors is impossible.
`docs/proof/nine/FOUR_INTERIOR_QUADRILATERALS.md`, lines 9-16 (proof 162-289).
Uses: THREE_INTERIOR_TRIANGLES:Corollary5, FOUR_INTERIOR_QUADRILATERALS:claim-sectors,
FOUR_INTERIOR_QUADRILATERALS:claim-(1)-(3), FOUR_INTERIOR_QUADRILATERALS:eq7,
FOUR_INTERIOR_QUADRILATERALS:claim-no-separation, FOUR_INTERIOR_QUADRILATERALS:claim-final -/
theorem theorem1 {P : Fin 9 → Point} (hP : ∀ i, P i ∈ unitSquare)
    (hA : A₀ ≤ minTriangleArea P) {i j k l : Fin 9}
    (hq : ConvexQuad (P i) (P j) (P k) (P l)) :
    Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} ≤ 4 ∧
      (Set.ncard {m | InQuad (P m) (P i) (P j) (P k) (P l)} = 4 →
        Set.ncard {m | InSector (P m) (P i) (P j) (P k) (P l)} = 1 ∧
        Set.ncard {m | InSector (P m) (P j) (P k) (P l) (P i)} = 1 ∧
        Set.ncard {m | InSector (P m) (P k) (P l) (P i) (P j)} = 1 ∧
        Set.ncard {m | InSector (P m) (P l) (P i) (P j) (P k)} = 1) := by
  have hcap := corollary5 hP hA
  obtain ⟨n₁, n₂, n₃, n₄, e1, e2, e3, e4, e, c1, c2, c3, c4⟩ := sector_counts hA hcap hq
  refine ⟨by omega, fun h4 => ?_⟩
  rw [e1, e2, e3, e4]
  have hn : n₁ = 1 ∨ (n₁ = 2 ∧ n₃ = 2) ∨ (n₂ = 2 ∧ n₄ = 2) := by omega
  rcases hn with hn | ⟨h1, h3⟩ | ⟨h2, h4'⟩
  · omega
  · rw [h1, Set.ncard_eq_two] at e1
    rw [h3, Set.ncard_eq_two] at e3
    obtain ⟨p, q, hpq, hs⟩ := e1
    obtain ⟨r, t, hrt, hs'⟩ := e3
    have mem {S : Set (Fin 9)} {x y : Fin 9} (h : S = {x, y}) : x ∈ S ∧ y ∈ S := by
      rw [h]; simp
    exact (two_two_impossible hP hA hcap hq (mem hs).1 (mem hs).2 (mem hs').1 (mem hs').2
      hpq hrt).elim
  · rw [h2, Set.ncard_eq_two] at e2
    rw [h4', Set.ncard_eq_two] at e4
    obtain ⟨p, q, hpq, hs⟩ := e2
    obtain ⟨r, t, hrt, hs'⟩ := e4
    have mem {S : Set (Fin 9)} {x y : Fin 9} (h : S = {x, y}) : x ∈ S ∧ y ∈ S := by
      rw [h]; simp
    exact (two_two_impossible hP hA hcap hq.rotate (mem hs).1 (mem hs).2 (mem hs').1 (mem hs').2
      hpq hrt).elim

end Heilbronn.Nine.FourInteriorQuadrilaterals
