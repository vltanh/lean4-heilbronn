module

public import Heilbronn.Corners.CornerFamilies.SixPoint
public import Heilbronn.Corners.OppositeCorners

/-! # Two points in the central part of a quadrilateral (`hand/ONE_CORNER_COMPLETION.md`)

**Role.** A component of the primary N6 and C1 routes. Theorems 1–3 and the general identities
of §§1–2 are cited by the C1 notes (`C1_ZERO_LOWER`, `C1_ONE_LOWER_TOP_CAP`,
`C1_ONE_LOWER_SIDE_CAP`, `C1_TWO_LOWER_SIDE_CAP`, `C1_TOP_CAP_RADIAL_SPLIT`,
`C1_TOP_CAP_COMMON_CELL`, `C1_TWO_LOWER_COMPLETION`, `C1_MIXED_PENTAGON`) and by the six- and
seven-boundary notes; they are therefore stated for an arbitrary convex quadrilateral and, for
the identities, an arbitrary positive doubled threshold `σ`, *before* the normalization of the
quadrilateral area (as the users cite them). §4 is a narrative index of the C1 two-lower
completion; only its two concrete reductions are stated.

**Setting** (lines 13–92). `A, B, C, D` are the cyclic vertices of a convex quadrilateral
(`IsConvexQuad`, either orientation) of area `S = quadArea A B C D`; `quadConfig A B C D P Q`
is the six points. With doubled areas `a = 2[ABD]` (`areaA`), `b = 2[ABC]` (`areaB`),
`W = 2S` (`areaW`) and the overlap `J = a + b - W` (`overlapJ`), the canonical half-square
coordinates (4) are `A = (0,0)`, `B = (1,1)`, `D = (0,h)`, `C = (f,1)` with `h = J/b`,
`β = 1 - f = J/a`, reached by an affine map multiplying doubled areas by `J/(ab) = 1/T`
(`T = ab/J`); this is the `OPPOSITE_CORNERS.md` frame with `(A, E, H, F) = (A, B, D, C)`, in
which the central cell `ABC ∩ ABD` is cell II. The manuscript normalizes `W = 1` and `s = 7/64`.

"Every doubled area of the six points is at least `σ`" is `σ / 2 ≤ minTriangleArea (quadConfig …)`.
`d_V = sarea P Q V` is the pair-line sign of `V`; `Isolates P Q V V₁ V₂ V₃` says the line `PQ`
puts `V` on one side and `V₁, V₂, V₃` strictly on the other.

**Results.**

* `theorem1`, `theorem1_of_le_half` (Theorem 1), `theorem2`, `theorem2_of_le_half` (Theorem 2),
  `theorem3` (Theorem 3);
* the general identities (`ONE_CORNER_COMPLETION:claim-general-identities`):
  `claim_canonical_frame` (4), `claim_sign_list` (5), `claim_middle_case`, `eq6`, `eq6_B`,
  `eq9`, `eq10`;
* §4: `claim_pentagon_reduction`, `claim_pentagon_reduction_mixed`.

**Implicit in the manuscript.** The general identities need the canonical frame, i.e. `J > 0`
(Theorems 1–3 derive it from their thresholds; the downstream users check it, e.g.
`C1_TOP_CAP_COMMON_CELL` "canonical overlap"); it is a hypothesis here.

**Citation gap in §4** (inventory 02): lines 467–472 credit "the quadrilateral theorems" with
reducing the pentagonal branch to the mixed placements; Theorems 2–3 exclude only same-sector
pairs, and the opposite-sector pairs and the pairs inside `CDF` or `HDF` are excluded by
`ONE_CORNER.md` §§7–8 (`OneCorner.claim_pentagon_opposite_quadrants`,
`OneCorner.claim_pentagon_HDF_CDF`). Only the two concrete reductions of §4 are stated here.

**Proof organization.** The canonical frame (4) is the explicit map `frameMap A B C D`
(`X ↦ ([AXD]/[ABD], [AXD]/[ABD] + h[ABX]/[ABD])`, orientation-free, determinant `h/[ABD]`); it sends
the six points to `halfSquareConfig h f`, a central point to cell II, and multiplies the minimum
area by `t = J/(ab)` (`frame_min`). The general identities are proved for a counterclockwise
quadrilateral (`*_ccw`) by applying the `OPPOSITE_CORNERS.md` lemmas in the frame, and transported to
the clockwise case by the reflection `(x, y) ↦ (y, x)` (with `P, Q` swapped). Theorems 1–2 use
only the general identities; Theorem 3 uses the frame of `(B, A, D, C)` (negative determinant).
The bounds `a, b ≥ (4 + 2√3)σ` come from `CornerFamilies.twoInteriorPointLemma`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.OneCornerCompletion

open Heilbronn.CornerFamilies (InsideTriangle ConvexQuad)
open Heilbronn.OppositeCorners (halfSquare halfSquareConfig lineL lineK lineN CellI CellII swapPt)

/-- `A, B, C, D` are the cyclic vertices of a convex quadrilateral, in either orientation. -/
def IsConvexQuad (A B C D : Point) : Prop := ConvexQuad A B C D ∨ ConvexQuad D C B A

/-- The area `S` of the quadrilateral `ABCD`. -/
def quadArea (A B C D : Point) : ℝ := |sarea A B C + sarea A C D| / 2

/-- The six points `A, B, C, D, P, Q`. -/
def quadConfig (A B C D P Q : Point) : Fin 6 → Point := ![A, B, C, D, P, Q]

/-- `a = 2 area(ABD)`. -/
def areaA (A B _C D : Point) : ℝ := |sarea A B D|

/-- `b = 2 area(ABC)`. -/
def areaB (A B C _D : Point) : ℝ := |sarea A B C|

/-- `W = 2 area(ABCD)`. -/
def areaW (A B C D : Point) : ℝ := |sarea A B C + sarea A C D|

/-- The overlap `J = a + b - W` (`= ab/T`). -/
def overlapJ (A B C D : Point) : ℝ := areaA A B C D + areaB A B C D - areaW A B C D

/-- `P, Q` are a central pair: both strictly inside `ABC` and `ABD`. -/
def CentralPair (A B C D P Q : Point) : Prop :=
  InsideTriangle P A B C ∧ InsideTriangle P A B D ∧ InsideTriangle Q A B C ∧
    InsideTriangle Q A B D

/-- The line `PQ` puts `V` strictly on one side and `V₁, V₂, V₃` strictly on the other. -/
def Isolates (P Q V V₁ V₂ V₃ : Point) : Prop :=
  sarea P Q V * sarea P Q V₁ < 0 ∧ sarea P Q V * sarea P Q V₂ < 0 ∧
    sarea P Q V * sarea P Q V₃ < 0

/-! ### Infrastructure: a map scaling all areas, the canonical frame, orientation -/

/-- A map multiplying every doubled signed area by `k` multiplies the least area by `|k|`. -/
theorem minTriangleArea_comp_scale {n : ℕ} (g : Point → Point) (k : ℝ)
    (hg : ∀ x y z, sarea (g x) (g y) (g z) = k * sarea x y z) (P : Fin n → Point) :
    minTriangleArea (g ∘ P) = |k| * minTriangleArea P := by
  have ht : ∀ x y z, triangleArea (g x) (g y) (g z) = |k| * triangleArea x y z := by
    intro x y z; simp only [triangleArea_eq, hg, abs_mul]; ring
  rcases lt_or_ge n 3 with hn | hn
  · have : IsEmpty (Triple n) := ⟨fun t => by have := t.1.2.2.2; omega⟩
    rw [minTriangleArea_def, minTriangleArea_def, Real.iInf_of_isEmpty, Real.iInf_of_isEmpty,
      mul_zero]
  obtain ⟨i, j, l, hij, hjl, hmin⟩ := exists_minTriangleArea_eq hn P
  apply le_antisymm
  · rw [hmin, ← ht]
    exact minTriangleArea_le_of_lt (g ∘ P) hij hjl
  · refine le_minTriangleArea hn _ fun i' j' l' h1 h2 => ?_
    simp only [Function.comp, ht]
    exact mul_le_mul_of_nonneg_left (minTriangleArea_le_of_lt P h1 h2) (abs_nonneg _)

/-- The parameter `h` of the canonical frame, `(2[ABD] - 2[ACD]) / 2[ABC]` (signed). -/
def frameH (A B C D : Point) : ℝ := (sarea A B D - sarea A C D) / sarea A B C

/-- The parameter `f` of the canonical frame, `2[ACD] / 2[ABD]` (signed). -/
def frameF (A B C D : Point) : ℝ := sarea A C D / sarea A B D

/-- The canonical affine frame (4): `A ↦ (0,0)`, `B ↦ (1,1)`, `D ↦ (0,h)`, `C ↦ (f,1)`. -/
def frameMap (A B C D : Point) (X : Point) : Point :=
  (sarea A X D / sarea A B D,
    sarea A X D / sarea A B D + frameH A B C D * (sarea A B X / sarea A B D))

theorem frameMap_sarea {A B C D : Point} (ha : sarea A B D ≠ 0) (X Y Z : Point) :
    sarea (frameMap A B C D X) (frameMap A B C D Y) (frameMap A B C D Z) =
      frameH A B C D / sarea A B D * sarea X Y Z := by
  have key : (sarea A Y D - sarea A X D) * (sarea A B Z - sarea A B X) -
      (sarea A B Y - sarea A B X) * (sarea A Z D - sarea A X D) = sarea A B D * sarea X Y Z := by
    simp only [sarea]; ring
  have gen : ∀ h u₁ v₁ u₂ v₂ u₃ v₃ : ℝ, sarea (u₁, u₁ + h * v₁) (u₂, u₂ + h * v₂) (u₃, u₃ + h * v₃) =
      h * ((u₂ - u₁) * (v₃ - v₁) - (v₂ - v₁) * (u₃ - u₁)) := by
    intros; simp only [sarea]; ring
  simp only [frameMap]
  rw [gen]
  have hk : sarea X Y Z = ((sarea A Y D - sarea A X D) * (sarea A B Z - sarea A B X) -
      (sarea A B Y - sarea A B X) * (sarea A Z D - sarea A X D)) / sarea A B D := by
    rw [key]; field_simp
  rw [hk]
  field_simp

theorem frameMap_A (A B C D : Point) : frameMap A B C D A = (0, 0) := by
  simp [frameMap, sarea]

theorem frameMap_B {A B C D : Point} (ha : sarea A B D ≠ 0) : frameMap A B C D B = (1, 1) := by
  have e : sarea A B B = 0 := by simp only [sarea]; ring
  simp [frameMap, e, div_self ha]

theorem frameMap_D {A B C D : Point} (ha : sarea A B D ≠ 0) :
    frameMap A B C D D = (0, frameH A B C D) := by
  have e : sarea A D D = 0 := by simp only [sarea]; ring
  simp [frameMap, e, div_self ha]

theorem frameMap_C {A B C D : Point} (ha : sarea A B D ≠ 0) (hb : sarea A B C ≠ 0) :
    frameMap A B C D C = (frameF A B C D, 1) := by
  simp only [frameMap, frameF, frameH]
  ext
  · rfl
  · simp only
    field_simp
    ring

/-- The canonical frame as an explicit affine map, with determinant `h / 2[ABD]`. -/
theorem frameMap_eq_affineMap (A B C D : Point) (ha : sarea A B D ≠ 0) :
    ∃ m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ : ℝ, m₁₁ * m₂₂ - m₁₂ * m₂₁ = frameH A B C D / sarea A B D ∧
      ∀ X, affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ X = frameMap A B C D X := by
  set a := sarea A B D with hadef
  set h := frameH A B C D
  refine ⟨(D.2 - A.2) / a, -(D.1 - A.1) / a,
    (D.2 - A.2) / a - h * (B.2 - A.2) / a, -(D.1 - A.1) / a + h * (B.1 - A.1) / a,
    (-A.1 * (D.2 - A.2) + A.2 * (D.1 - A.1)) / a,
    (-A.1 * (D.2 - A.2) + A.2 * (D.1 - A.1)) / a + h * (-(B.1 - A.1) * A.2 + (B.2 - A.2) * A.1) / a,
    ?_, ?_⟩
  · have ha' : (D.2 - A.2) * (B.1 - A.1) - (D.1 - A.1) * (B.2 - A.2) = a := by
      rw [hadef]; simp only [sarea]; ring
    calc (D.2 - A.2) / a * (-(D.1 - A.1) / a + h * (B.1 - A.1) / a) -
          -(D.1 - A.1) / a * ((D.2 - A.2) / a - h * (B.2 - A.2) / a)
        = h * ((D.2 - A.2) * (B.1 - A.1) - (D.1 - A.1) * (B.2 - A.2)) / a ^ 2 := by ring
      _ = h * a / a ^ 2 := by rw [ha']
      _ = h / a := by field_simp
  · intro X
    simp only [affineMap, frameMap]
    rw [← hadef]
    ext <;> simp only [sarea] <;> ring

theorem frame_min (A B C D P Q : Point) (ha : sarea A B D ≠ 0) (hb : sarea A B C ≠ 0) :
    minTriangleArea (halfSquareConfig (frameH A B C D) (frameF A B C D) (frameMap A B C D P)
      (frameMap A B C D Q)) =
      |frameH A B C D / sarea A B D| * minTriangleArea (quadConfig A B C D P Q) := by
  have e : halfSquareConfig (frameH A B C D) (frameF A B C D) (frameMap A B C D P)
      (frameMap A B C D Q) =
      frameMap A B C D ∘ (quadConfig A B C D P Q ∘ Equiv.swap (2 : Fin 6) 3) := by
    funext i
    fin_cases i <;>
      simp [halfSquareConfig, quadConfig, frameMap_A, frameMap_B ha, frameMap_C ha hb,
        frameMap_D ha, Equiv.swap_apply_of_ne_of_ne]
  rw [e, minTriangleArea_comp_scale _ _ (frameMap_sarea ha), minTriangleArea_comp_perm]

theorem frame_vals {A B C D : Point} (ha : sarea A B D ≠ 0) (hb : sarea A B C ≠ 0) (X : Point) :
    lineL (frameF A B C D) (frameMap A B C D X) = frameH A B C D / sarea A B D * sarea A C X ∧
    lineK (frameH A B C D) (frameMap A B C D X) = frameH A B C D / sarea A B D * sarea B D X ∧
    lineN (frameH A B C D) (frameF A B C D) (frameMap A B C D X) =
      frameH A B C D / sarea A B D * sarea D C X ∧
    (frameMap A B C D X).2 - (frameMap A B C D X).1 =
      frameH A B C D / sarea A B D * sarea A B X ∧
    frameH A B C D * (frameMap A B C D X).1 = frameH A B C D / sarea A B D * sarea D A X ∧
    (1 - frameF A B C D) * (1 - (frameMap A B C D X).2) =
      frameH A B C D / sarea A B D * sarea B C X := by
  have hA := frameMap_A A B C D
  have hB := frameMap_B (C := C) ha
  have hC := frameMap_C ha hb
  have hD := frameMap_D (C := C) ha
  have sc := frameMap_sarea (C := C) ha
  set M := frameMap A B C D
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · simp only [lineL]; rw [← hA, ← hC, sc]
  · simp only [lineK]; rw [← hB, ← hD, sc]
  · simp only [lineN]; rw [← hD, ← hC, sc]
  · have : (M X).2 - (M X).1 = sarea (0, 0) (1, 1) (M X) := by simp only [sarea]; ring
    rw [this, ← hA, ← hB, sc]
  · have : frameH A B C D * (M X).1 = sarea (0, frameH A B C D) (0, 0) (M X) := by
      simp only [sarea]; ring
    rw [this, ← hA, ← hD, sc]
  · have : (1 - frameF A B C D) * (1 - (M X).2) = sarea (1, 1) (frameF A B C D, 1) (M X) := by
      simp only [sarea]; ring
    rw [this, ← hB, ← hC, sc]

/-- The barycentric identity: `[ABC]·g(X) = [BCX] g(A) + [CAX] g(B) + [ABX] g(C)` for
`g = [UV·]`. -/
theorem bary (A B C X U V : Point) :
    sarea A B C * sarea U V X =
      sarea B C X * sarea U V A + sarea C A X * sarea U V B + sarea A B X * sarea U V C := by
  simp only [sarea]; ring

/-- The signs of a counterclockwise convex quadrilateral. -/
theorem ccw_signs {A B C D : Point} (hq : ConvexQuad A B C D) :
    0 < sarea A B D ∧ 0 < sarea A B C ∧ 0 < sarea A C D ∧ 0 < sarea B C D := by
  obtain ⟨h1, h2, h3, h4⟩ := hq
  refine ⟨?_, h1, ?_, h2⟩
  · rw [sarea_cycle D A B]; exact h4
  · rw [← sarea_cycle A C D]; exact h3

theorem quad_identity (A B C D : Point) :
    sarea A B C + sarea A C D = sarea A B D + sarea B C D := by
  simp only [sarea]; ring

theorem ccw_areas {A B C D : Point} (hq : ConvexQuad A B C D) :
    areaA A B C D = sarea A B D ∧ areaB A B C D = sarea A B C ∧
      areaW A B C D = sarea A B C + sarea A C D ∧
      quadArea A B C D = (sarea A B C + sarea A C D) / 2 ∧
      overlapJ A B C D = sarea A B D - sarea A C D := by
  obtain ⟨ha, hb, hc, -⟩ := ccw_signs hq
  have hW : areaW A B C D = sarea A B C + sarea A C D := abs_of_pos (by linarith)
  refine ⟨abs_of_pos ha, abs_of_pos hb, hW, ?_, ?_⟩
  · simp only [quadArea]; rw [abs_of_pos (by linarith)]
  · simp only [overlapJ, areaA, areaB]; rw [hW, abs_of_pos ha, abs_of_pos hb]; ring

/-- In a positively oriented triangle, "strictly inside" has the counterclockwise edge signs. -/
theorem inT_of_inside {X A B C : Point} (h : InsideTriangle X A B C) (hABC : 0 < sarea A B C) :
    InTriangle X A B C := by
  rcases h with h | ⟨h1, h2, h3⟩
  · exact h
  · have := sarea_add_sarea_add_sarea A C B X
    have := sarea_swap₂₃ A B C
    linarith

/-- A point strictly inside `ABC` of a counterclockwise convex quadrilateral `ABCD` is on the
inner side of the edges `CD` and `DA`. -/
theorem inQuad_of_ABC {A B C D X : Point} (hq : ConvexQuad A B C D) (hX : InTriangle X A B C) :
    0 < sarea C D X ∧ 0 < sarea D A X := by
  obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
  obtain ⟨x1, x2, x3⟩ := hX
  have b1 := bary A B C X C D
  have b2 := bary A B C X D A
  have e1 : sarea C D A = sarea A C D := sarea_cycle A C D
  have e2 : sarea C D B = sarea B C D := by rw [← sarea_cycle B C D]
  have e3 : sarea C D C = 0 := by simp only [sarea]; ring
  have e4 : sarea D A A = 0 := by simp only [sarea]; ring
  have e5 : sarea D A B = sarea A B D := by rw [← sarea_cycle D A B]
  have e6 : sarea D A C = sarea A C D := by rw [sarea_cycle C D A, sarea_cycle A C D]
  rw [e1, e2, e3] at b1
  rw [e4, e5, e6] at b2
  constructor
  · by_contra hc'; push Not at hc'
    nlinarith [mul_pos x2 hc, mul_pos x3 he, mul_nonpos_iff.2 (Or.inl ⟨hb.le, hc'⟩)]
  · by_contra hc'; push Not at hc'
    nlinarith [mul_pos x3 ha, mul_pos x1 hc, mul_nonpos_iff.2 (Or.inl ⟨hb.le, hc'⟩)]

/-- The canonical frame of a counterclockwise convex quadrilateral with `J > 0`: its parameters
are in `(0, 1)` and its scale `t = h / 2[ABD] = J/(ab)` is positive. -/
theorem ccw_frame_params {A B C D : Point} (hq : ConvexQuad A B C D)
    (hJ : sarea A C D < sarea A B D) :
    0 < frameH A B C D ∧ frameH A B C D < 1 ∧ 0 < frameF A B C D ∧ frameF A B C D < 1 ∧
      0 < frameH A B C D / sarea A B D := by
  obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
  have hq' := quad_identity A B C D
  have h1 : 0 < frameH A B C D := div_pos (by linarith) hb
  refine ⟨h1, ?_, div_pos hc ha, ?_, div_pos h1 ha⟩
  · rw [frameH, div_lt_one hb]; linarith
  · rw [frameF, div_lt_one ha]; exact hJ

/-- A central point of a counterclockwise convex quadrilateral with `J > 0` lies strictly inside
the half-square `T` and in cell II of the canonical frame. -/
theorem central_frame {A B C D X : Point} (hq : ConvexQuad A B C D)
    (hJ : sarea A C D < sarea A B D) (hX1 : InTriangle X A B C) (hX2 : InTriangle X A B D) :
    frameMap A B C D X ∈ halfSquare ∧
      CellII (frameH A B C D) (frameF A B C D) (frameMap A B C D X) ∧
      0 < (frameMap A B C D X).1 ∧ (frameMap A B C D X).1 < (frameMap A B C D X).2 ∧
      (frameMap A B C D X).2 < 1 := by
  obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
  obtain ⟨h0, h1, f0, f1, k0⟩ := ccw_frame_params hq hJ
  obtain ⟨vL, vK, vN, vw, vx, vy⟩ := frame_vals ha.ne' hb.ne' X
  obtain ⟨q1, -⟩ := inQuad_of_ABC hq hX1
  have sAC : sarea A C X < 0 := by have := hX1.2.2; rw [sarea_swap₁₂] at this; linarith
  have sDC : sarea D C X < 0 := by rw [sarea_swap₁₂]; linarith
  have px : 0 < (frameMap A B C D X).1 := by
    have := mul_pos k0 hX2.2.2; rw [← vx] at this; exact pos_of_mul_pos_right this h0.le
  have pw : 0 < (frameMap A B C D X).2 - (frameMap A B C D X).1 := by
    rw [vw]; exact mul_pos k0 hX1.1
  have py : 0 < 1 - (frameMap A B C D X).2 := by
    have := mul_pos k0 hX1.2.1; rw [← vy] at this
    exact pos_of_mul_pos_right this (by linarith)
  refine ⟨⟨px.le, by linarith, by linarith⟩, ⟨?_, ?_, ?_⟩, px, by linarith, by linarith⟩
  · rw [vL]; exact mul_neg_of_pos_of_neg k0 sAC
  · rw [vK]; exact mul_pos k0 hX2.2.1
  · rw [vN]; exact mul_neg_of_pos_of_neg k0 sDC

theorem cw_signs {A B C D : Point} (hq : ConvexQuad D C B A) :
    sarea A B D < 0 ∧ sarea A B C < 0 ∧ sarea A C D < 0 ∧ sarea B C D < 0 := by
  obtain ⟨h1, h2, h3, h4⟩ := ccw_signs hq
  have e1 := sarea_swap₁₃ A B D
  have e2 := sarea_swap₁₃ A B C
  have e3 := sarea_swap₁₃ A C D
  have e4 := sarea_swap₁₃ B C D
  refine ⟨by linarith, by linarith, by linarith, by linarith⟩

/-- The canonical frame of a convex quadrilateral (either orientation) with `J > 0`. -/
theorem frame_general {A B C D : Point} (hq : IsConvexQuad A B C D) (hJ : 0 < overlapJ A B C D) :
    sarea A B D ≠ 0 ∧ sarea A B C ≠ 0 ∧ 0 < areaA A B C D ∧ 0 < areaB A B C D ∧
      overlapJ A B C D < areaA A B C D ∧ overlapJ A B C D < areaB A B C D ∧
      frameH A B C D = overlapJ A B C D / areaB A B C D ∧
      frameF A B C D = 1 - overlapJ A B C D / areaA A B C D ∧
      |frameH A B C D / sarea A B D| = overlapJ A B C D / (areaA A B C D * areaB A B C D) := by
  have hqi := quad_identity A B C D
  rcases hq with hq | hq
  · obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
    obtain ⟨eA, eB, eW, -, eJ⟩ := ccw_areas hq
    rw [eJ] at hJ ⊢
    rw [eA, eB]
    refine ⟨ha.ne', hb.ne', ha, hb, by linarith, by linarith, rfl, ?_, ?_⟩
    · simp only [frameF]; field_simp; ring
    · simp only [frameH]; rw [abs_of_pos (div_pos (div_pos (by linarith) hb) ha)]
      field_simp
  · obtain ⟨ha, hb, hc, he⟩ := cw_signs hq
    have eA : areaA A B C D = -sarea A B D := abs_of_neg ha
    have eB : areaB A B C D = -sarea A B C := abs_of_neg hb
    have eW : areaW A B C D = -(sarea A B C + sarea A C D) := abs_of_neg (by linarith)
    have eJ : overlapJ A B C D = sarea A C D - sarea A B D := by
      simp only [overlapJ]; rw [eA, eB, eW]; ring
    rw [eJ] at hJ ⊢
    rw [eA, eB]
    have ha' := ha.ne
    have hb' := hb.ne
    refine ⟨ha.ne, hb.ne, by linarith, by linarith, by linarith, by linarith, ?_, ?_, ?_⟩
    · simp only [frameH]; field_simp; ring
    · simp only [frameF]; field_simp; ring
    · simp only [frameH]
      rw [abs_of_neg (div_neg_of_pos_of_neg (div_pos_of_neg_of_neg (by linarith) hb) ha)]
      field_simp; ring

/-! ### Orientation and relabelling -/

theorem sarea_swapPt (p q r : Point) :
    sarea (swapPt p) (swapPt q) (swapPt r) = -sarea p q r := by
  simp only [swapPt, sarea]; ring

theorem inTriangle_swapPt {X A B C : Point} :
    InTriangle (swapPt X) (swapPt A) (swapPt C) (swapPt B) ↔ InTriangle X A B C := by
  simp only [InTriangle, sarea_swapPt]
  have e1 := sarea_swap₁₂ A C X
  have e2 := sarea_swap₁₂ C B X
  have e3 := sarea_swap₁₂ B A X
  constructor <;> rintro ⟨a, b, c⟩ <;> exact ⟨by linarith, by linarith, by linarith⟩

theorem insideTriangle_swapPt {X A B C : Point} :
    InsideTriangle (swapPt X) (swapPt A) (swapPt B) (swapPt C) ↔ InsideTriangle X A B C := by
  unfold InsideTriangle
  rw [inTriangle_swapPt (B := C) (C := B), inTriangle_swapPt, or_comm]

theorem insideTriangle_swap₁₂ {X A B C : Point} :
    InsideTriangle X B A C ↔ InsideTriangle X A B C := by
  unfold InsideTriangle InTriangle
  constructor <;> rintro (⟨a, b, c⟩ | ⟨a, b, c⟩)
  · exact Or.inr ⟨b, c, a⟩
  · exact Or.inl ⟨c, a, b⟩
  · exact Or.inr ⟨b, c, a⟩
  · exact Or.inl ⟨c, a, b⟩

theorem convexQuad_swapPt {A B C D : Point} :
    ConvexQuad (swapPt A) (swapPt B) (swapPt C) (swapPt D) ↔ ConvexQuad D C B A := by
  simp only [ConvexQuad, sarea_swapPt]
  have e1 := sarea_swap₁₃ A B C
  have e2 := sarea_swap₁₃ B C D
  have e3 := sarea_swap₁₃ C D A
  have e4 := sarea_swap₁₃ D A B
  constructor <;> rintro ⟨a, b, c, d⟩ <;>
    exact ⟨by linarith, by linarith, by linarith, by linarith⟩

theorem convexQuad_relabel {A B C D : Point} (hq : IsConvexQuad A B C D) :
    IsConvexQuad B A D C := by
  rcases hq with ⟨a, b, c, d⟩ | ⟨a, b, c, d⟩
  · exact Or.inr ⟨c, d, a, b⟩
  · exact Or.inl ⟨c, d, a, b⟩

theorem centralPair_swapPt {A B C D P Q : Point} :
    CentralPair (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt Q) (swapPt P) ↔
      CentralPair A B C D P Q := by
  simp only [CentralPair, insideTriangle_swapPt]; tauto

theorem centralPair_swap {A B C D P Q : Point} :
    CentralPair A B C D Q P ↔ CentralPair A B C D P Q := by
  simp only [CentralPair]; tauto

theorem centralPair_relabel {A B C D P Q : Point} :
    CentralPair B A D C P Q ↔ CentralPair A B C D P Q := by
  simp only [CentralPair, insideTriangle_swap₁₂]; tauto

theorem min_quadConfig_swapPt (A B C D P Q : Point) :
    minTriangleArea (quadConfig (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt P)
      (swapPt Q)) = minTriangleArea (quadConfig A B C D P Q) := by
  have e : quadConfig (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt P) (swapPt Q) =
      swapPt ∘ quadConfig A B C D P Q := by
    funext i; fin_cases i <;> rfl
  rw [e, minTriangleArea_comp_scale _ (-1) (fun x y z => by rw [sarea_swapPt]; ring)]
  simp

theorem min_quadConfig_swap (A B C D P Q : Point) :
    minTriangleArea (quadConfig A B C D Q P) = minTriangleArea (quadConfig A B C D P Q) := by
  have e : quadConfig A B C D Q P = quadConfig A B C D P Q ∘ Equiv.swap (4 : Fin 6) 5 := by
    funext i; fin_cases i <;> simp [quadConfig, Equiv.swap_apply_of_ne_of_ne]
  rw [e, minTriangleArea_comp_perm]

theorem min_quadConfig_relabel (A B C D P Q : Point) :
    minTriangleArea (quadConfig B A D C P Q) = minTriangleArea (quadConfig A B C D P Q) := by
  have e : quadConfig B A D C P Q =
      quadConfig A B C D P Q ∘ (Equiv.swap (0 : Fin 6) 1 * Equiv.swap (2 : Fin 6) 3) := by
    funext i; fin_cases i <;> simp [quadConfig, Equiv.swap_apply_of_ne_of_ne]
  rw [e, minTriangleArea_comp_perm]

theorem areas_swapPt (A B C D : Point) :
    areaA (swapPt A) (swapPt B) (swapPt C) (swapPt D) = areaA A B C D ∧
      areaB (swapPt A) (swapPt B) (swapPt C) (swapPt D) = areaB A B C D ∧
      areaW (swapPt A) (swapPt B) (swapPt C) (swapPt D) = areaW A B C D ∧
      quadArea (swapPt A) (swapPt B) (swapPt C) (swapPt D) = quadArea A B C D ∧
      overlapJ (swapPt A) (swapPt B) (swapPt C) (swapPt D) = overlapJ A B C D := by
  have hW : areaW (swapPt A) (swapPt B) (swapPt C) (swapPt D) = areaW A B C D := by
    simp only [areaW, sarea_swapPt]; rw [← neg_add, abs_neg]
  refine ⟨?_, ?_, hW, ?_, ?_⟩
  · simp only [areaA, sarea_swapPt, abs_neg]
  · simp only [areaB, sarea_swapPt, abs_neg]
  · simp only [quadArea, sarea_swapPt]; rw [← neg_add, abs_neg]
  · simp only [overlapJ, hW]; simp only [areaA, areaB, sarea_swapPt, abs_neg]

theorem areas_relabel (A B C D : Point) :
    areaA B A D C = areaB A B C D ∧ areaB B A D C = areaA A B C D ∧
      areaW B A D C = areaW A B C D ∧ quadArea B A D C = quadArea A B C D ∧
      overlapJ B A D C = overlapJ A B C D := by
  have e1 : sarea B A C = -sarea A B C := sarea_swap₁₂ A B C
  have e2 : sarea B A D = -sarea A B D := sarea_swap₁₂ A B D
  have e3 : sarea B A D + sarea B D C = -(sarea A B C + sarea A C D) := by
    simp only [sarea]; ring
  have hA : areaA B A D C = areaB A B C D := by simp only [areaA, areaB, e1, abs_neg]
  have hB : areaB B A D C = areaA A B C D := by simp only [areaA, areaB, e2, abs_neg]
  have hW : areaW B A D C = areaW A B C D := by simp only [areaW, e3, abs_neg]
  refine ⟨hA, hB, hW, ?_, ?_⟩
  · simp only [quadArea, e3, abs_neg]
  · simp only [overlapJ, hA, hB, hW]; ring

theorem isolates_swapPt (P Q V V₁ V₂ V₃ : Point) :
    Isolates (swapPt P) (swapPt Q) (swapPt V) (swapPt V₁) (swapPt V₂) (swapPt V₃) ↔
      Isolates P Q V V₁ V₂ V₃ := by
  simp only [Isolates, sarea_swapPt, neg_mul_neg]

theorem isolates_swap (P Q V V₁ V₂ V₃ : Point) :
    Isolates Q P V V₁ V₂ V₃ ↔ Isolates P Q V V₁ V₂ V₃ := by
  simp only [Isolates, sarea_swap₁₂ P Q, neg_mul_neg]

theorem sarea_swapPt_swap (P Q V : Point) :
    sarea (swapPt Q) (swapPt P) (swapPt V) = sarea P Q V := by
  rw [sarea_swapPt, sarea_swap₁₂, neg_neg]

/-- The doubled areas of a convex quadrilateral in absolute form (either orientation). -/
theorem quad_abs {A B C D : Point} (hq : IsConvexQuad A B C D) :
    areaW A B C D - areaA A B C D = |sarea B C D| ∧ areaW A B C D - areaB A B C D = |sarea A C D| ∧
      0 < areaA A B C D ∧ 0 < areaB A B C D ∧ 0 < |sarea A C D| ∧ 0 < |sarea B C D| ∧
      quadArea A B C D = areaW A B C D / 2 := by
  have hqi := quad_identity A B C D
  have hS : quadArea A B C D = areaW A B C D / 2 := rfl
  rcases hq with hq | hq
  · obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
    obtain ⟨eA, eB, eW, -, -⟩ := ccw_areas hq
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, hS⟩
    · rw [eA, eW, abs_of_pos he]; linarith
    · rw [eB, eW, abs_of_pos hc]; linarith
    · rw [eA]; exact ha
    · rw [eB]; exact hb
    · rw [abs_of_pos hc]; exact hc
    · rw [abs_of_pos he]; exact he
  · obtain ⟨ha, hb, hc, he⟩ := cw_signs hq
    have eA : areaA A B C D = -sarea A B D := abs_of_neg ha
    have eB : areaB A B C D = -sarea A B C := abs_of_neg hb
    have eW : areaW A B C D = -(sarea A B C + sarea A C D) := abs_of_neg (by linarith)
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, hS⟩
    · rw [eA, eW, abs_of_neg he]; linarith
    · rw [eB, eW, abs_of_neg hc]; linarith
    · rw [eA]; linarith
    · rw [eB]; linarith
    · rw [abs_of_neg hc]; linarith
    · rw [abs_of_neg he]; linarith

/-- The two-interior-point bound for the two containing triangles of a pair. -/
theorem two_inside_bound {A B C D P Q : Point} {σ : ℝ} (hσ : 0 < σ)
    (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q)) :
    (InsideTriangle P A B D → InsideTriangle Q A B D →
      (4 + 2 * Real.sqrt 3) * σ ≤ areaA A B C D) ∧
    (InsideTriangle P A B C → InsideTriangle Q A B C →
      (4 + 2 * Real.sqrt 3) * σ ≤ areaB A B C D) := by
  constructor
  · intro hP hQ
    have hm : σ / 2 ≤ minTriangleArea ![A, B, D, P, Q] :=
      hmin.trans (OppositeCorners.min_sub (quadConfig A B C D P Q) 0 1 3 4 5 (by decide))
    have := CornerFamilies.twoInteriorPointLemma A B D P Q hP hQ (σ / 2) (by positivity) hm
    rw [triangleArea_eq] at this
    simp only [areaA]; linarith
  · intro hP hQ
    have hm : σ / 2 ≤ minTriangleArea ![A, B, C, P, Q] :=
      hmin.trans (OppositeCorners.min_sub (quadConfig A B C D P Q) 0 1 2 4 5 (by decide))
    have := CornerFamilies.twoInteriorPointLemma A B C P Q hP hQ (σ / 2) (by positivity) hm
    rw [triangleArea_eq] at this
    simp only [areaB]; linarith

/-- `K = 4 + 2√3 > 149/20`. -/
theorem K_gt : (149 / 20 : ℝ) < 4 + 2 * Real.sqrt 3 := by
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have h0 : 0 ≤ Real.sqrt 3 := Real.sqrt_nonneg 3
  nlinarith

/-- The relations of the canonical frame of a counterclockwise quadrilateral, with
`t = h / 2[ABD]`: `h = ta`, `β = 1 - f = tb` and `2[ACD] = a - tab`. -/
theorem ccw_rel {A B C D : Point} (hq : ConvexQuad A B C D) :
    frameH A B C D = frameH A B C D / sarea A B D * sarea A B D ∧
      1 - frameF A B C D = frameH A B C D / sarea A B D * sarea A B C ∧
      sarea A C D = sarea A B D - frameH A B C D / sarea A B D * sarea A B D * sarea A B C := by
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  have ha' := ha.ne'
  have hb' := hb.ne'
  simp only [frameH, frameF]
  refine ⟨by field_simp, by field_simp, by field_simp; ring_nf⟩

/-! ### Counterclockwise cores of the general identities -/

theorem sign_list_ccw {A B C D P Q : Point} (hq : ConvexQuad A B C D)
    (hP1 : InTriangle P A B C) (hP2 : InTriangle P A B D)
    (hB : 0 < sarea P Q B) (hD : 0 < sarea P Q D) : 0 < sarea P Q C := by
  have id : sarea B D P * sarea P Q C =
      sarea B C P * sarea P Q D - sarea P Q B * sarea D C P := by
    simp only [sarea]; ring
  obtain ⟨q1, -⟩ := inQuad_of_ABC hq hP1
  have h1 : 0 < sarea B D P := hP2.2.1
  have h2 : 0 < sarea B C P := hP1.2.1
  have h3 : sarea D C P < 0 := by rw [sarea_swap₁₂]; linarith
  have : 0 < sarea B D P * sarea P Q C := by
    rw [id]; nlinarith [mul_pos h2 hD, mul_pos hB (neg_pos.2 h3)]
  exact pos_of_mul_pos_right this h1.le

theorem middle_case_ccw {A B C D P Q : Point} {σ : ℝ} (hq : ConvexQuad A B C D)
    (hP1 : InTriangle P A B C) (hQ1 : InTriangle Q A B C)
    (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hD : sarea P Q D < 0) (hC : 0 < sarea P Q C) :
    3 * σ ≤ max (sarea A C D) (sarea B C D) := by
  obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
  obtain ⟨q1, -⟩ := inQuad_of_ABC hq hP1
  have a1 : σ ≤ |sarea D Q P| := OppositeCorners.abs_sarea_ge hmin 3 5 4
  have a2 : σ ≤ |sarea Q C P| := OppositeCorners.abs_sarea_ge hmin 5 2 4
  have a3 : σ ≤ |sarea C D P| := OppositeCorners.abs_sarea_ge hmin 2 3 4
  have tri : InTriangle P D Q C := by
    refine ⟨?_, ?_, q1⟩
    · rw [sarea_cycle, sarea_swap₂₃]; linarith
    · rw [sarea_cycle]; exact hC
  have b := OppositeCorners.three_le_of_inTriangle tri a1 a2 a3
  have e : sarea D Q C = sarea C D Q := sarea_cycle C D Q
  have bq := bary A B C Q C D
  have e1 : sarea C D A = sarea A C D := sarea_cycle A C D
  have e2 : sarea C D B = sarea B C D := by rw [← sarea_cycle B C D]
  have e3 : sarea C D C = 0 := by simp only [sarea]; ring
  rw [e1, e2, e3] at bq
  set M := max (sarea A C D) (sarea B C D)
  have hM1 : sarea A C D ≤ M := le_max_left _ _
  have hM2 : sarea B C D ≤ M := le_max_right _ _
  have k1 := mul_le_mul_of_nonneg_left hM1 hQ1.2.1.le
  have k2 := mul_le_mul_of_nonneg_left hM2 hQ1.2.2.le
  have k3 : 0 ≤ sarea A B Q * M := mul_nonneg hQ1.1.le (hc.le.trans hM1)
  have hsum := sarea_add_sarea_add_sarea A B C Q
  have hbM : sarea A B C * M = sarea A B Q * M + sarea B C Q * M + sarea C A Q * M := by
    rw [← hsum]; ring
  have : sarea A B C * sarea C D Q ≤ sarea A B C * M := by linarith
  have := le_of_mul_le_mul_left this hb
  linarith

/-- (6) in the counterclockwise case with `d_B, d_D > 0`, from (24)–(25) in the canonical frame. -/
theorem eq6_ccw {A B C D P Q : Point} {σ : ℝ} (hσ : 0 < σ) (hq : ConvexQuad A B C D)
    (hP1 : InTriangle P A B C) (hP2 : InTriangle P A B D) (hQ1 : InTriangle Q A B C)
    (hQ2 : InTriangle Q A B D) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : sarea A C D < sarea A B D) (hB : 0 < sarea P Q B) (hD : 0 < sarea P Q D) :
    0 < sarea A B D * sarea A B C - σ * ((sarea A B C + sarea A C D) + sarea A B D) ∧
      4 * σ * (sarea A B C + sarea A C D) * (sarea A B D * sarea A B C) ≤
        (sarea A B D * sarea A B C - σ * ((sarea A B C + sarea A C D) + sarea A B D)) ^ 2 := by
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  obtain ⟨h0, h1, f0, f1, k0⟩ := ccw_frame_params hq hJ
  obtain ⟨PT, PII, -⟩ := central_frame hq hJ hP1 hP2
  obtain ⟨QT, -, -⟩ := central_frame hq hJ hQ1 hQ2
  have dE : 0 < sarea (frameMap A B C D P) (frameMap A B C D Q) (1, 1) := by
    rw [← frameMap_B (C := C) ha.ne', frameMap_sarea ha.ne']; exact mul_pos k0 hB
  have dH : 0 < sarea (frameMap A B C D P) (frameMap A B C D Q) (0, frameH A B C D) := by
    rw [← frameMap_D ha.ne', frameMap_sarea ha.ne']; exact mul_pos k0 hD
  have hm := frame_min A B C D P Q ha.ne' hb.ne'
  obtain ⟨eh, eβ, ec⟩ := ccw_rel hq
  set t := frameH A B C D / sarea A B D with ht
  have hm' : t * σ / 2 ≤ minTriangleArea (halfSquareConfig (frameH A B C D) (frameF A B C D)
      (frameMap A B C D P) (frameMap A B C D Q)) := by
    rw [hm, abs_of_pos k0]; have := mul_le_mul_of_nonneg_left hmin k0.le; linarith
  obtain ⟨-, r1, r2⟩ := OppositeCorners.eq24_25 _ _ _ h0 h1 f0 f1 (mul_pos k0 hσ) _ _ PT QT hm'
    PII dE dH
  rw [eβ, eh] at r1 r2
  rw [ec]
  set a := sarea A B D
  set b := sarea A B C
  have key1 : t ^ 2 * (a * b - σ * ((b + (a - t * a * b)) + a)) =
      t * a * (t * b) - t * σ * (t * b + 2 * (t * a) - t * a * (t * b)) := by ring
  have key2 : t ^ 4 * (4 * σ * (b + (a - t * a * b)) * (a * b)) =
      4 * (t * σ) * (t * a + t * b - t * a * (t * b)) * (t * a * (t * b)) := by ring
  have key3 : t ^ 4 * (a * b - σ * ((b + (a - t * a * b)) + a)) ^ 2 =
      (t * a * (t * b) - t * σ * (t * b + 2 * (t * a) - t * a * (t * b))) ^ 2 := by ring
  have ht2 : 0 < t ^ 2 := by positivity
  have ht4 : 0 < t ^ 4 := by positivity
  constructor
  · have : 0 < t ^ 2 * (a * b - σ * ((b + (a - t * a * b)) + a)) := by linarith
    exact pos_of_mul_pos_right this ht2.le
  · have : t ^ 4 * (4 * σ * (b + (a - t * a * b)) * (a * b)) ≤
        t ^ 4 * (a * b - σ * ((b + (a - t * a * b)) + a)) ^ 2 := by linarith
    exact le_of_mul_le_mul_left this ht4

/-! ### The general identities of §§1–2 -/

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the canonical normalization (4):
if `J = a + b - W > 0`, an affine map with `|det| = J/(ab)` sends `A, B, D, C` to `(0,0)`,
`(1,1)`, `(0,h)`, `(1 - β, 1)` with `h = J/b`, `β = J/a`, both in `(0, 1)` (the manuscript's
`h = a/T`, `β = b/T` after normalizing `W = 1`). `hand/ONE_CORNER_COMPLETION.md`, lines 67–92. -/
theorem claim_canonical_frame (A B C D : Point) (hq : IsConvexQuad A B C D)
    (hJ : 0 < overlapJ A B C D) :
    0 < overlapJ A B C D / areaB A B C D ∧ overlapJ A B C D / areaB A B C D < 1 ∧
      0 < overlapJ A B C D / areaA A B C D ∧ overlapJ A B C D / areaA A B C D < 1 ∧
      ∃ m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ : ℝ,
        |m₁₁ * m₂₂ - m₁₂ * m₂₁| = overlapJ A B C D / (areaA A B C D * areaB A B C D) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ A = (0, 0) ∧ affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ B = (1, 1) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ D = (0, overlapJ A B C D / areaB A B C D) ∧
        affineMap m₁₁ m₁₂ m₂₁ m₂₂ e₁ e₂ C = (1 - overlapJ A B C D / areaA A B C D, 1) := by
  obtain ⟨ha, hb, pa, pb, ja, jb, eh, ef, edet⟩ := frame_general hq hJ
  obtain ⟨m₁₁, m₁₂, m₂₁, m₂₂, e₁, e₂, hdet, hM⟩ := frameMap_eq_affineMap A B C D ha
  refine ⟨div_pos hJ pb, (div_lt_one pb).2 jb, div_pos hJ pa, (div_lt_one pa).2 ja,
    m₁₁, m₁₂, m₂₁, m₂₂, e₁, e₂, by rw [hdet, edet], ?_, ?_, ?_, ?_⟩
  · rw [hM, frameMap_A]
  · rw [hM, frameMap_B ha]
  · rw [hM, frameMap_D ha, eh]
  · rw [hM, frameMap_C ha hb, ef]

set_option linter.unusedVariables false in
/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the sign list (5) at any
threshold: for a central pair in general position (`J > 0`), orienting `PQ` so that
`d_A < 0 < d_B`, `d_D > 0` forces `d_C > 0`; so `(d_D, d_C)` is `(+,+)`, `(-,+)` or `(-,-)`.
`hand/ONE_CORNER_COMPLETION.md`, lines 94–127.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (23) -/
theorem claim_sign_list (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hgp : 0 < minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B)
    (hD : 0 < sarea P Q D) : 0 < sarea P Q C := by
  rcases hq with hq | hq
  · obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
    exact sign_list_ccw hq (inT_of_inside hc.1 hb) (inT_of_inside hc.2.1 ha) hB hD
  · have hq' := convexQuad_swapPt.2 hq
    obtain ⟨ha, hb, -, -⟩ := ccw_signs hq'
    obtain ⟨hQ1, hQ2, -, -⟩ := centralPair_swapPt.2 hc
    have := sign_list_ccw hq' (inT_of_inside hQ1 hb) (inT_of_inside hQ2 ha)
      (by rw [sarea_swapPt_swap]; exact hB) (by rw [sarea_swapPt_swap]; exact hD)
    rwa [sarea_swapPt_swap] at this

set_option linter.unusedVariables false in
/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the middle case at any
threshold `σ > 0`: if `d_A < 0 < d_B` and `d_D < 0 < d_C`, then `P` is strictly inside `DCQ`, so
`3σ ≤ 2[DCQ] ≤ max(2[DCA], 2[DCB]) = max(W - b, W - a)`.
`hand/ONE_CORNER_COMPLETION.md`, lines 129–147. -/
theorem claim_middle_case (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ)
    (hq : IsConvexQuad A B C D) (hc : CentralPair A B C D P Q)
    (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hA : sarea P Q A < 0) (hB : 0 < sarea P Q B) (hD : sarea P Q D < 0) (hC : 0 < sarea P Q C) :
    3 * σ ≤ max (areaW A B C D - areaB A B C D) (areaW A B C D - areaA A B C D) := by
  rcases hq with hq | hq
  · obtain ⟨ha, hb, hc', he⟩ := ccw_signs hq
    obtain ⟨eA, eB, eW, -, -⟩ := ccw_areas hq
    have hqi := quad_identity A B C D
    rw [eA, eB, eW, show sarea A B C + sarea A C D - sarea A B C = sarea A C D by ring,
      show sarea A B C + sarea A C D - sarea A B D = sarea B C D by linarith]
    exact middle_case_ccw hq (inT_of_inside hc.1 hb) (inT_of_inside hc.2.2.1 hb) hmin hD hC
  · have hq' := convexQuad_swapPt.2 hq
    obtain ⟨ha, hb, hc', he⟩ := ccw_signs hq'
    obtain ⟨eA, eB, eW, -, -⟩ := ccw_areas hq'
    obtain ⟨hQ1, -, hP1, -⟩ := centralPair_swapPt.2 hc
    have hm : σ / 2 ≤ minTriangleArea (quadConfig (swapPt A) (swapPt B) (swapPt C) (swapPt D)
        (swapPt Q) (swapPt P)) := by
      rw [min_quadConfig_swapPt, min_quadConfig_swap]; exact hmin
    have := middle_case_ccw hq' (inT_of_inside hQ1 hb) (inT_of_inside hP1 hb) hm
      (by rw [sarea_swapPt_swap]; exact hD) (by rw [sarea_swapPt_swap]; exact hC)
    obtain ⟨fA, fB, fW, -, -⟩ := areas_swapPt A B C D
    have hqi := quad_identity (swapPt A) (swapPt B) (swapPt C) (swapPt D)
    rw [← fA, ← fB, ← fW, eA, eB, eW,
      show sarea (swapPt A) (swapPt B) (swapPt C) + sarea (swapPt A) (swapPt C) (swapPt D) -
        sarea (swapPt A) (swapPt B) (swapPt C) = sarea (swapPt A) (swapPt C) (swapPt D) by ring,
      show sarea (swapPt A) (swapPt B) (swapPt C) + sarea (swapPt A) (swapPt C) (swapPt D) -
        sarea (swapPt A) (swapPt B) (swapPt D) = sarea (swapPt B) (swapPt C) (swapPt D) by linarith]
    exact this

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (6) before the
normalization `W = 1` (as used by `C1_TOP_CAP_RADIAL_SPLIT` (2), `C1_ONE_LOWER_SIDE_CAP`):
for a central pair whose line isolates `A`, at any threshold `σ > 0` with `J > 0`,
`ab - σ(W + a) > 0` and `[ab - σ(W + a)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 149–172.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem eq6 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hiso : Isolates P Q A B C D) :
    0 < areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D) ∧
      4 * σ * areaW A B C D * (areaA A B C D * areaB A B C D) ≤
        (areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D)) ^ 2 := by
  suffices H : ∀ A B C D P Q : Point, ConvexQuad A B C D → CentralPair A B C D P Q →
      σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q) → 0 < overlapJ A B C D →
      Isolates P Q A B C D →
      0 < areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D) ∧
        4 * σ * areaW A B C D * (areaA A B C D * areaB A B C D) ≤
          (areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaA A B C D)) ^ 2 by
    rcases hq with hq | hq
    · exact H A B C D P Q hq hc hmin hJ hiso
    · obtain ⟨e1, e2, e3, -, e5⟩ := areas_swapPt A B C D
      have := H (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt Q) (swapPt P)
        (convexQuad_swapPt.2 hq) (centralPair_swapPt.2 hc)
        (by rw [min_quadConfig_swapPt, min_quadConfig_swap]; exact hmin) (by rw [e5]; exact hJ)
        ((isolates_swapPt Q P A B C D).2 ((isolates_swap P Q A B C D).2 hiso))
      rwa [e1, e2, e3] at this
  intro A B C D P Q hq hc hmin hJ hiso
  obtain ⟨eA, eB, eW, -, eJ⟩ := ccw_areas hq
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  rw [eA, eB, eW]
  have hJ' : sarea A C D < sarea A B D := by rw [eJ] at hJ; linarith
  obtain ⟨hP1, hP2, hQ1, hQ2⟩ := hc
  have hP1' := inT_of_inside hP1 hb
  have hP2' := inT_of_inside hP2 ha
  have hQ1' := inT_of_inside hQ1 hb
  have hQ2' := inT_of_inside hQ2 ha
  obtain ⟨i1, -, i3⟩ := hiso
  have hA0 : sarea P Q A ≠ 0 := by intro h0; rw [h0, zero_mul] at i1; exact lt_irrefl 0 i1
  rcases lt_or_gt_of_ne hA0 with dA | dA
  · have dB : 0 < sarea P Q B := by
      by_contra hc'; push Not at hc'; nlinarith [mul_nonneg_of_nonpos_of_nonpos dA.le hc']
    have dD : 0 < sarea P Q D := by
      by_contra hc'; push Not at hc'; nlinarith [mul_nonneg_of_nonpos_of_nonpos dA.le hc']
    exact eq6_ccw hσ hq hP1' hP2' hQ1' hQ2' hmin hJ' dB dD
  · have dB : sarea P Q B < 0 := by
      by_contra hc'; push Not at hc'; nlinarith [mul_nonneg dA.le hc']
    have dD : sarea P Q D < 0 := by
      by_contra hc'; push Not at hc'; nlinarith [mul_nonneg dA.le hc']
    exact eq6_ccw hσ hq hQ1' hQ2' hP1' hP2' (by rw [min_quadConfig_swap]; exact hmin) hJ'
      (by rw [sarea_swap₁₂]; linarith) (by rw [sarea_swap₁₂]; linarith)

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (6) with `a, b`
interchanged (the case `(d_D, d_C) = (-,-)`): if the line of the central pair isolates `B`,
`ab - σ(W + b) > 0` and `[ab - σ(W + b)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 168–172.

Uses: OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem eq6_B (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hiso : Isolates P Q B A C D) :
    0 < areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaB A B C D) ∧
      4 * σ * areaW A B C D * (areaA A B C D * areaB A B C D) ≤
        (areaA A B C D * areaB A B C D - σ * (areaW A B C D + areaB A B C D)) ^ 2 := by
  obtain ⟨e1, e2, e3, -, e5⟩ := areas_relabel A B C D
  have := eq6 B A D C P Q σ hσ (convexQuad_relabel hq) (centralPair_relabel.2 hc)
    (by rw [min_quadConfig_relabel]; exact hmin) (by rw [e5]; exact hJ)
    ⟨hiso.1, hiso.2.2, hiso.2.1⟩
  rw [e1, e2, e3, mul_comm (areaB A B C D)] at this
  exact this

/-- The normalized form of the contradiction (7): with `s = 7/64`, `x, y ≤ 1 - s`, a positive
bracket `xy - s(1 + x)` and `(xy - s(1 + x))² ≥ 4sxy` are incompatible (root monotonicity in `y`,
then in `x`). -/
theorem eq7_norm (x y : ℝ) (hx0 : 0 ≤ x) (hy : y ≤ 57 / 64)
    (hpos : 0 < x * y - 7 / 64 * (1 + x))
    (hsq : 4 * (7 / 64) * (x * y) ≤ (x * y - 7 / 64 * (1 + x)) ^ 2) (hx : x ≤ 57 / 64) :
    False := by
  have hxy : x * y ≤ x * (57 / 64) := mul_le_mul_of_nonneg_left hy hx0
  have hu4 : 4 * (7 / 64) < x * y - 7 / 64 * (1 + x) := by
    by_contra hc; push Not at hc
    nlinarith [mul_le_mul_of_nonneg_left hc hpos.le]
  have hB : 0 ≤ (x * (57 / 64) - 7 / 64 * (1 + x)) ^ 2 - 4 * (7 / 64) * (x * (57 / 64)) := by
    have e : (x * (57 / 64) - 7 / 64 * (1 + x)) ^ 2 - 4 * (7 / 64) * (x * (57 / 64)) =
        ((x * y - 7 / 64 * (1 + x)) ^ 2 - 4 * (7 / 64) * (x * y)) +
          x * (57 / 64 - y) * (x * (57 / 64) + x * y - 2 * (7 / 64) * (1 + x) - 4 * (7 / 64)) := by
      ring
    have h1 : 0 ≤ x * (57 / 64 - y) := mul_nonneg hx0 (by linarith)
    have h2 : 0 ≤ x * (57 / 64) + x * y - 2 * (7 / 64) * (1 + x) - 4 * (7 / 64) := by linarith
    rw [e]; nlinarith [mul_nonneg h1 h2]
  have hx7 : 7 / 50 < x := by linarith
  have e2 : (57 / 64 * (57 / 64) - 7 / 64 * (1 + 57 / 64)) ^ 2 - 4 * (7 / 64) * (57 / 64 * (57 / 64)) -
      ((x * (57 / 64) - 7 / 64 * (1 + x)) ^ 2 - 4 * (7 / 64) * (x * (57 / 64))) =
      (57 / 64 - x) * ((50 / 64) ^ 2 * (57 / 64 + x) - 2 * (7 / 64) * (50 / 64) -
        4 * (7 / 64) * (57 / 64)) := by ring
  have h3 : 0 ≤ (57 / 64 - x) * ((50 / 64) ^ 2 * (57 / 64 + x) - 2 * (7 / 64) * (50 / 64) -
      4 * (7 / 64) * (57 / 64)) := mul_nonneg (by linarith) (by linarith)
  have hval : (57 / 64 * (57 / 64) - 7 / 64 * (1 + 57 / 64) : ℝ) ^ 2 -
      4 * (7 / 64) * (57 / 64 * (57 / 64)) = -13151 / 4194304 := by norm_num
  linarith

/-- (7) in homogeneous form: at `σ = 7W/64`, `a, b ≤ W - σ`, the bracket `ab - σ(W + a)` positive
and `[ab - σ(W + a)]² ≥ 4σWab` are incompatible. -/
theorem eq7_contra {a b W : ℝ} (hW : 0 < W) (ha0 : 0 ≤ a) (ha : a ≤ W - 7 / 64 * W)
    (hb : b ≤ W - 7 / 64 * W) (hpos : 0 < a * b - 7 / 64 * W * (W + a))
    (hsq : 4 * (7 / 64 * W) * W * (a * b) ≤ (a * b - 7 / 64 * W * (W + a)) ^ 2) : False := by
  obtain ⟨x, rfl⟩ : ∃ x, a = x * W := ⟨a / W, by field_simp⟩
  obtain ⟨y, rfl⟩ : ∃ y, b = y * W := ⟨b / W, by field_simp⟩
  have hW2 : 0 < W ^ 2 := by positivity
  have hW4 : 0 < W ^ 4 := by positivity
  have e1 : x * W * (y * W) - 7 / 64 * W * (W + x * W) = W ^ 2 * (x * y - 7 / 64 * (1 + x)) := by
    ring
  have e2 : 4 * (7 / 64 * W) * W * (x * W * (y * W)) = W ^ 4 * (4 * (7 / 64) * (x * y)) := by ring
  have e3 : (x * W * (y * W) - 7 / 64 * W * (W + x * W)) ^ 2 =
      W ^ 4 * (x * y - 7 / 64 * (1 + x)) ^ 2 := by ring
  rw [e1] at hpos
  rw [e2, e3] at hsq
  refine eq7_norm x y (nonneg_of_mul_nonneg_left (by linarith) hW) ?_
    (pos_of_mul_pos_right hpos hW2.le) (le_of_mul_le_mul_left hsq hW4) ?_
  · nlinarith
  · nlinarith

/-- The normalized numerical part of Theorem 2: (9), the height bound (10), `b ≤ a ≤ 1 - s`,
`v > s` are incompatible at `s = 7/64` (the two rational intervals (11)–(13)). -/
theorem thm2_norm (x y z : ℝ) (hyx : y ≤ x) (hx : x ≤ 57 / 64) (hy0 : 0 < y) (hy1 : y < 1)
    (hz : 7 / 64 < z) (hF : 0 ≤ x * y * (z - 7 / 64) - 7 / 64 * z * (x + y) - z ^ 2)
    (h10 : z * (1 - y) ≤ y * (1 - y) - 7 / 64 * x) : False := by
  have hx0 : 0 < x := by linarith
  have dA : 0 < y * (z - 7 / 64) - 7 / 64 * z := by
    by_contra h; push Not at h
    nlinarith [mul_le_mul_of_nonneg_left h hx0.le]
  have dB : 0 < x * (z - 7 / 64) - 7 / 64 * z := by
    by_contra h; push Not at h
    nlinarith [mul_le_mul_of_nonneg_left h hy0.le]
  have dB' : 0 < 57 / 64 * (z - 7 / 64) - 7 / 64 * z := by nlinarith
  have F1 : 0 ≤ 57 / 64 * y * (z - 7 / 64) - 7 / 64 * z * (57 / 64 + y) - z ^ 2 := by
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 57 / 64 - x) dA.le]
  rcases le_or_gt y (17 / 20) with hy | hy
  · have F2 : 0 ≤ 57 / 64 * (17 / 20) * (z - 7 / 64) - 7 / 64 * z * (57 / 64 + 17 / 20) - z ^ 2 := by
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 17 / 20 - y) dB'.le]
    nlinarith [sq_nonneg (z - (57 / 64 * (17 / 20) - 7 / 64 * (57 / 64 + 17 / 20)) / 2)]
  · have hzV : z ≤ 221 / 960 := by
      by_contra hc; push Not at hc
      nlinarith [mul_pos (by linarith : (0 : ℝ) < z - 221 / 960) (by linarith : (0 : ℝ) < 1 - y),
        mul_nonneg (by linarith : (0 : ℝ) ≤ y - 17 / 20) (by linarith : (0 : ℝ) ≤ y - 13 / 48)]
    have F3 : 0 ≤ 57 / 64 * (57 / 64) * (z - 7 / 64) - 7 / 64 * z * (57 / 64 + 57 / 64) - z ^ 2 := by
      nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 57 / 64 - y) dB'.le]
    nlinarith [mul_nonneg (by linarith : (0 : ℝ) ≤ 221 / 960 - z)
      (by linarith : (0 : ℝ) ≤ 57 / 64 * (57 / 64) - 2 * (7 / 64) * (57 / 64) - 221 / 960 - z)]

theorem abs_sarea_swapPt (p q r : Point) :
    |sarea (swapPt p) (swapPt q) (swapPt r)| = |sarea p q r| := by
  rw [sarea_swapPt, abs_neg]

/-- (9) in the counterclockwise case with `d_A, d_B < 0`, from (21) in the canonical frame. -/
theorem eq9_ccw {A B C D P Q : Point} {σ : ℝ} (hσ : 0 < σ) (hq : ConvexQuad A B C D)
    (hP1 : InTriangle P A B C) (hP2 : InTriangle P A B D) (hQ1 : InTriangle Q A B C)
    (hQ2 : InTriangle Q A B D) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : sarea A C D < sarea A B D) (hA : sarea P Q A < 0) (hB : sarea P Q B < 0) :
    0 ≤ sarea A B D * sarea A B C * (min (sarea A B P) (sarea A B Q) - σ) -
      σ * min (sarea A B P) (sarea A B Q) * (sarea A B D + sarea A B C) -
      (sarea A B C + sarea A C D) * min (sarea A B P) (sarea A B Q) ^ 2 := by
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  obtain ⟨h0, h1, f0, f1, k0⟩ := ccw_frame_params hq hJ
  obtain ⟨PT, PII, -⟩ := central_frame hq hJ hP1 hP2
  obtain ⟨QT, QII, -⟩ := central_frame hq hJ hQ1 hQ2
  have dA' : sarea (frameMap A B C D P) (frameMap A B C D Q) (0, 0) < 0 := by
    rw [← frameMap_A A B C D, frameMap_sarea ha.ne']; exact mul_neg_of_pos_of_neg k0 hA
  have dE' : sarea (frameMap A B C D P) (frameMap A B C D Q) (1, 1) < 0 := by
    rw [← frameMap_B (C := C) ha.ne', frameMap_sarea ha.ne']; exact mul_neg_of_pos_of_neg k0 hB
  have hm := frame_min A B C D P Q ha.ne' hb.ne'
  have vP := (frame_vals ha.ne' hb.ne' P).2.2.2.1
  have vQ := (frame_vals ha.ne' hb.ne' Q).2.2.2.1
  obtain ⟨eh, eβ, ec⟩ := ccw_rel hq
  set t := frameH A B C D / sarea A B D with ht
  have hm' : t * σ / 2 ≤ minTriangleArea (halfSquareConfig (frameH A B C D) (frameF A B C D)
      (frameMap A B C D P) (frameMap A B C D Q)) := by
    rw [hm, abs_of_pos k0]; have := mul_le_mul_of_nonneg_left hmin k0.le; linarith
  obtain ⟨-, core⟩ :=
    OppositeCorners.eq21_core _ _ _ h0 h1 f0 f1 (mul_pos k0 hσ) _ _ PT QT hm' PII QII dA' dE'
  rw [vP, vQ, ← mul_min_of_nonneg _ _ k0.le] at core
  rw [eβ, eh] at core
  rw [ec]
  set a := sarea A B D
  set b := sarea A B C
  set v := min (sarea A B P) (sarea A B Q)
  have key : t ^ 3 * (a * b * (v - σ) - σ * v * (a + b) - (b + (a - t * a * b)) * v ^ 2) =
      ((t * a * (t * b) - t * σ * (t * a + t * b)) * (t * v) -
        (t * a + t * b - t * a * (t * b)) * (t * v) ^ 2) - t * a * (t * b) * (t * σ) := by ring
  have : 0 ≤ t ^ 3 * (a * b * (v - σ) - σ * v * (a + b) - (b + (a - t * a * b)) * v ^ 2) := by
    rw [key]; linarith
  exact (mul_nonneg_iff_of_pos_left (by positivity)).1 this

/-- The height bound behind (10), in the frame of `OPPOSITE_CORNERS.md`: a point with
`-L, -N ≥ σ` and `h ≥ β` has `f(β - w) ≥ σ`. -/
theorem height_bound_frame {h f σ : ℝ} {X : Point} (hh : 0 < h) (hβ : 0 ≤ 1 - f)
    (hβh : 1 - f ≤ h) (hL : σ ≤ -lineL f X) (hN : σ ≤ -lineN h f X) :
    σ ≤ f * ((1 - f) - (X.2 - X.1)) := by
  rw [(OppositeCorners.eq4 h f X).1] at hL
  rw [(OppositeCorners.eq4 h f X).2.2] at hN
  have k1 := mul_le_mul_of_nonneg_left hN hβ
  have k2 := mul_le_mul_of_nonneg_left hL (by linarith : (0 : ℝ) ≤ h - (1 - f))
  have : h * σ ≤ h * (f * ((1 - f) - (X.2 - X.1))) := by linarith
  exact le_of_mul_le_mul_left this hh

/-- (10) in the counterclockwise case. -/
theorem eq10_ccw {A B C D P Q : Point} {σ : ℝ} (hq : ConvexQuad A B C D)
    (hP1 : InTriangle P A B C) (hP2 : InTriangle P A B D) (hQ1 : InTriangle Q A B C)
    (hQ2 : InTriangle Q A B D) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : sarea A C D < sarea A B D) (hab : sarea A B C ≤ sarea A B D) :
    sarea A B P ≤ sarea A B C - σ * sarea A B D / sarea A C D ∧
      sarea A B Q ≤ sarea A B C - σ * sarea A B D / sarea A C D := by
  obtain ⟨ha, hb, hc, -⟩ := ccw_signs hq
  obtain ⟨h0, h1, f0, f1, k0⟩ := ccw_frame_params hq hJ
  obtain ⟨PT, PII, -⟩ := central_frame hq hJ hP1 hP2
  obtain ⟨QT, QII, -⟩ := central_frame hq hJ hQ1 hQ2
  have hm := frame_min A B C D P Q ha.ne' hb.ne'
  have vP := (frame_vals ha.ne' hb.ne' P).2.2.2.1
  have vQ := (frame_vals ha.ne' hb.ne' Q).2.2.2.1
  obtain ⟨eh, eβ, -⟩ := ccw_rel hq
  set t := frameH A B C D / sarea A B D with ht
  have hm' : t * σ / 2 ≤ minTriangleArea (halfSquareConfig (frameH A B C D) (frameF A B C D)
      (frameMap A B C D P) (frameMap A B C D Q)) := by
    rw [hm, abs_of_pos k0]; have := mul_le_mul_of_nonneg_left hmin k0.le; linarith
  have hβh : 1 - frameF A B C D ≤ frameH A B C D := by
    rw [eβ, eh]; exact mul_le_mul_of_nonneg_left hab k0.le
  have one : ∀ X : Point, CellII (frameH A B C D) (frameF A B C D) (frameMap A B C D X) →
      t * σ ≤ |lineL (frameF A B C D) (frameMap A B C D X)| →
      t * σ ≤ |lineN (frameH A B C D) (frameF A B C D) (frameMap A B C D X)| →
      (frameMap A B C D X).2 - (frameMap A B C D X).1 = t * sarea A B X →
      sarea A B X ≤ sarea A B C - σ * sarea A B D / sarea A C D := by
    intro X hII aL aN vX
    have hL := OppositeCorners.le_neg_of_abs_ge aL hII.1.le
    have hN := OppositeCorners.le_neg_of_abs_ge aN hII.2.2.le
    have := height_bound_frame (σ := t * σ) (X := frameMap A B C D X) h0 (by linarith) hβh
      (by linarith) (by linarith)
    rw [vX, eβ] at this
    have e : frameF A B C D * (t * sarea A B C - t * sarea A B X) =
        t * (sarea A C D * (sarea A B C - sarea A B X) / sarea A B D) := by
      simp only [frameF]; field_simp
    rw [e] at this
    have h2 := le_of_mul_le_mul_left this k0
    rw [le_div_iff₀ ha] at h2
    rw [le_sub_iff_add_le, ← le_sub_iff_add_le', div_le_iff₀ hc]
    linarith
  exact ⟨one P PII (OppositeCorners.abs_sarea_ge hm' 0 3 4) (OppositeCorners.abs_sarea_ge hm' 2 3 4)
      vP,
    one Q QII (OppositeCorners.abs_sarea_ge hm' 0 3 5) (OppositeCorners.abs_sarea_ge hm' 2 3 5) vQ⟩

/-- The algebraic consequences of (9). -/
theorem eq9_tail {a b W σ v : ℝ} (ha : 0 < a) (hb : 0 < b) (hW : 0 < W) (hσ : 0 < σ)
    (hv : 0 < v) (hF : 0 ≤ a * b * (v - σ) - σ * v * (a + b) - W * v ^ 2) :
    σ < v ∧ 0 < a * b - σ * (a + b) ∧ 4 * σ * W * (a * b) ≤ (a * b - σ * (a + b)) ^ 2 := by
  have hab := mul_pos ha hb
  have h1 : σ < v := by
    by_contra h; push Not at h
    nlinarith [mul_le_mul_of_nonneg_left h hab.le, mul_pos (mul_pos hσ hv) (add_pos ha hb),
      mul_pos hW (pow_pos hv 2)]
  have h2 : 0 < a * b - σ * (a + b) := by
    by_contra h; push Not at h
    nlinarith [mul_le_mul_of_nonneg_left h hv.le, mul_pos hW (pow_pos hv 2), mul_pos hab hσ]
  refine ⟨h1, h2, ?_⟩
  nlinarith [sq_nonneg (a * b - σ * (a + b) - 2 * W * v), mul_nonneg hW.le hF]

/-! ### §1. Theorem 1 -/

/-- **Theorem 1** (`ONE_CORNER_COMPLETION:Theorem1`): for a convex quadrilateral `ABCD` of area
`S > 0` and two points `P, Q` strictly inside both `ABC` and `ABD` such that the line `PQ`
separates `A` and `B`, the six points have minimum triangle area strictly less than `7S/64`.
`hand/ONE_CORNER_COMPLETION.md`, lines 25–209.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, OPPOSITE_CORNERS:claim-II-II-opposite-sign (23),
OPPOSITE_CORNERS:claim-pair-I-II (15)–(16), OPPOSITE_CORNERS:claim-weighted-identity,
OPPOSITE_CORNERS:claim-II-II-opposite-sign (24)–(25) -/
theorem theorem1 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hsep : sarea P Q A * sarea P Q B < 0) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 64 * quadArea A B C D := by
  by_contra hcon; push Not at hcon
  obtain ⟨dWa, dWb, pa, pb, pc, pe, hS⟩ := quad_abs hq
  have hW : 0 < areaW A B C D := by linarith
  have hσ : 0 < 7 / 64 * areaW A B C D := by positivity
  have hmin : 7 / 64 * areaW A B C D / 2 ≤ minTriangleArea (quadConfig A B C D P Q) := by
    rw [hS] at hcon; linarith
  have hK := K_gt
  have kK : 149 / 20 * (7 / 64 * areaW A B C D) ≤
      (4 + 2 * Real.sqrt 3) * (7 / 64 * areaW A B C D) :=
    mul_le_mul_of_nonneg_right hK.le hσ.le
  have ce : 7 / 64 * areaW A B C D ≤ |sarea B C D| := OppositeCorners.abs_sarea_ge hmin 1 2 3
  have cc : 7 / 64 * areaW A B C D ≤ |sarea A C D| := OppositeCorners.abs_sarea_ge hmin 0 2 3
  -- the core, for an orientation `d_A < 0 < d_B` of the pair line
  have core : ∀ P Q : Point, CentralPair A B C D P Q →
      7 / 64 * areaW A B C D / 2 ≤ minTriangleArea (quadConfig A B C D P Q) →
      sarea P Q A < 0 → 0 < sarea P Q B → False := by
    intro P Q hc hmin dA dB
    obtain ⟨kA, kB⟩ := two_inside_bound hσ hmin
    have ka := kA hc.2.1 hc.2.2.2
    have kb := kB hc.1 hc.2.2.1
    have hJ : 0 < overlapJ A B C D := by simp only [overlapJ]; linarith
    have hgp : 0 < minTriangleArea (quadConfig A B C D P Q) := by linarith
    have aD : 7 / 64 * areaW A B C D ≤ |sarea P Q D| := OppositeCorners.abs_sarea_ge hmin 4 5 3
    have aC : 7 / 64 * areaW A B C D ≤ |sarea P Q C| := OppositeCorners.abs_sarea_ge hmin 4 5 2
    rcases lt_or_gt_of_ne (OppositeCorners.ne_zero_of_abs_ge hσ aD) with dD | dD
    · rcases lt_or_gt_of_ne (OppositeCorners.ne_zero_of_abs_ge hσ aC) with dC | dC
      · -- `(-,-)`: the line isolates `B`
        obtain ⟨r1, r2⟩ := eq6_B A B C D P Q _ hσ hq hc hmin hJ
          ⟨mul_neg_of_pos_of_neg dB dA, mul_neg_of_pos_of_neg dB dC,
            mul_neg_of_pos_of_neg dB dD⟩
        rw [mul_comm (areaA A B C D)] at r1 r2
        exact eq7_contra hW pb.le (by linarith) (by linarith) r1 r2
      · -- the middle case
        have := claim_middle_case A B C D P Q _ hσ hq hc hmin dA dB dD dC
        rcases le_total (areaW A B C D - areaB A B C D) (areaW A B C D - areaA A B C D) with
          h | h
        · rw [max_eq_right h] at this; linarith
        · rw [max_eq_left h] at this; linarith
    · have dC := claim_sign_list A B C D P Q hq hc hgp hJ dA dB dD
      obtain ⟨r1, r2⟩ := eq6 A B C D P Q _ hσ hq hc hmin hJ
        ⟨mul_neg_of_neg_of_pos dA dB, mul_neg_of_neg_of_pos dA dC, mul_neg_of_neg_of_pos dA dD⟩
      exact eq7_contra hW pa.le (by linarith) (by linarith) r1 r2
  rcases lt_or_gt_of_ne (show sarea P Q A ≠ 0 by
    intro h0; rw [h0, zero_mul] at hsep; exact lt_irrefl 0 hsep) with dA | dA
  · exact core P Q hc hmin dA (by nlinarith)
  · refine core Q P (centralPair_swap.2 hc) (by rw [min_quadConfig_swap]; exact hmin) ?_ ?_
    · rw [sarea_swap₁₂]; linarith
    · rw [sarea_swap₁₂]; nlinarith

/-- **Theorem 1** (`ONE_CORNER_COMPLETION:Theorem1`), last sentence: when `S ≤ 1/2` the minimum
area is below `7/128` (`< A₀`). `hand/ONE_CORNER_COMPLETION.md`, lines 36–37.

Uses: ONE_CORNER_COMPLETION:Theorem1 -/
theorem theorem1_of_le_half (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hsep : sarea P Q A * sarea P Q B < 0)
    (hS : quadArea A B C D ≤ 1 / 2) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 128 := by
  have := theorem1 A B C D P Q hq hc hsep
  linarith

/-! ### §2. Theorem 2 -/

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), equation (9) before the
normalization `W = 1` (as used by `SIX_BOUNDARY_HULL` line 740, `SEVEN_BOUNDARY_RIGHT_PAIR` (12)):
for a central pair whose line keeps `A, B` on the same side, at any threshold `σ > 0` with
`J > 0`, the smaller doubled height `v = min(2[ABP], 2[ABQ])` satisfies
`F = ab(v - σ) - σv(a + b) - Wv² ≥ 0`; hence `v > σ`, and maximizing in `v`,
`ab - σ(a + b) > 0` and `[ab - σ(a + b)]² ≥ 4σWab`.
`hand/ONE_CORNER_COMPLETION.md`, lines 227–257.

Uses: OPPOSITE_CORNERS:claim-II-II-same-sign (21)–(22) -/
theorem eq9 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hsame : 0 < sarea P Q A * sarea P Q B) :
    let a := areaA A B C D
    let b := areaB A B C D
    let W := areaW A B C D
    let v := min |sarea A B P| |sarea A B Q|
    0 ≤ a * b * (v - σ) - σ * v * (a + b) - W * v ^ 2 ∧ σ < v ∧
      0 < a * b - σ * (a + b) ∧ 4 * σ * W * (a * b) ≤ (a * b - σ * (a + b)) ^ 2 := by
  have hF : 0 ≤ areaA A B C D * areaB A B C D * (min |sarea A B P| |sarea A B Q| - σ) -
      σ * min |sarea A B P| |sarea A B Q| * (areaA A B C D + areaB A B C D) -
      areaW A B C D * min |sarea A B P| |sarea A B Q| ^ 2 := by
    suffices H : ∀ A B C D P Q : Point, ConvexQuad A B C D → CentralPair A B C D P Q →
        σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q) → 0 < overlapJ A B C D →
        0 < sarea P Q A * sarea P Q B →
        0 ≤ areaA A B C D * areaB A B C D * (min |sarea A B P| |sarea A B Q| - σ) -
          σ * min |sarea A B P| |sarea A B Q| * (areaA A B C D + areaB A B C D) -
          areaW A B C D * min |sarea A B P| |sarea A B Q| ^ 2 by
      rcases hq with hq | hq
      · exact H A B C D P Q hq hc hmin hJ hsame
      · obtain ⟨e1, e2, e3, -, e5⟩ := areas_swapPt A B C D
        have := H (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt Q) (swapPt P)
          (convexQuad_swapPt.2 hq) (centralPair_swapPt.2 hc)
          (by rw [min_quadConfig_swapPt, min_quadConfig_swap]; exact hmin) (by rw [e5]; exact hJ)
          (by rw [sarea_swapPt_swap, sarea_swapPt_swap]; exact hsame)
        rwa [e1, e2, e3, abs_sarea_swapPt, abs_sarea_swapPt, min_comm] at this
    intro A B C D P Q hq hc hmin hJ hsame
    obtain ⟨eA, eB, eW, -, eJ⟩ := ccw_areas hq
    obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
    have hJ' : sarea A C D < sarea A B D := by rw [eJ] at hJ; linarith
    obtain ⟨hP1, hP2, hQ1, hQ2⟩ := hc
    have hP1' := inT_of_inside hP1 hb
    have hP2' := inT_of_inside hP2 ha
    have hQ1' := inT_of_inside hQ1 hb
    have hQ2' := inT_of_inside hQ2 ha
    rw [eA, eB, eW, abs_of_pos hP1'.1, abs_of_pos hQ1'.1]
    rcases lt_or_gt_of_ne (show sarea P Q A ≠ 0 by
      intro h0; rw [h0, zero_mul] at hsame; exact lt_irrefl 0 hsame) with dA | dA
    · have dB : sarea P Q B < 0 := by
        by_contra h; push Not at h; nlinarith [mul_nonpos_iff.2 (Or.inr ⟨dA.le, h⟩)]
      have := eq9_ccw hσ hq hP1' hP2' hQ1' hQ2' hmin hJ' dA dB
      linarith
    · have dB : 0 < sarea P Q B := by
        by_contra h; push Not at h; nlinarith [mul_nonpos_iff.2 (Or.inl ⟨dA.le, h⟩)]
      have := eq9_ccw hσ hq hQ1' hQ2' hP1' hP2' (by rw [min_quadConfig_swap]; exact hmin) hJ'
        (by rw [sarea_swap₁₂]; linarith) (by rw [sarea_swap₁₂]; linarith)
      rw [min_comm] at this
      linarith
  obtain ⟨-, -, pa, pb, -, -, -⟩ := quad_abs hq
  have hW : 0 < areaW A B C D := by have := (quad_abs hq).1; have := (quad_abs hq).2.2.2.2.2.1; linarith
  have hv : 0 < min |sarea A B P| |sarea A B Q| := by
    have h1 : σ ≤ |sarea A B P| := OppositeCorners.abs_sarea_ge hmin 0 1 4
    have h2 : σ ≤ |sarea A B Q| := OppositeCorners.abs_sarea_ge hmin 0 1 5
    exact lt_min (by linarith) (by linarith)
  exact ⟨hF, eq9_tail pa pb hW hσ hv hF⟩

set_option linter.unusedVariables false in
/-- **Claim** (`ONE_CORNER_COMPLETION:claim-general-identities`), the opposite-edge height bound
(10) before the normalization `W = 1`: for a central pair with `a ≥ b`, at any threshold
`σ > 0` with `J > 0`, each point `X ∈ {P, Q}` has `2[ABX] ≤ b - σa/(W - b)`
(normalized: `v ≤ b - sa/(1 - b) ≤ V(b) = b - sb/(1 - b)`).
`hand/ONE_CORNER_COMPLETION.md`, lines 259–291. -/
theorem eq10 (A B C D P Q : Point) (σ : ℝ) (hσ : 0 < σ) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hmin : σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q))
    (hJ : 0 < overlapJ A B C D) (hab : areaB A B C D ≤ areaA A B C D) :
    |sarea A B P| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) ∧
      |sarea A B Q| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) := by
  suffices H : ∀ A B C D P Q : Point, ConvexQuad A B C D → CentralPair A B C D P Q →
      σ / 2 ≤ minTriangleArea (quadConfig A B C D P Q) → 0 < overlapJ A B C D →
      areaB A B C D ≤ areaA A B C D →
      |sarea A B P| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) ∧
        |sarea A B Q| ≤ areaB A B C D - σ * areaA A B C D / (areaW A B C D - areaB A B C D) by
    rcases hq with hq | hq
    · exact H A B C D P Q hq hc hmin hJ hab
    · obtain ⟨e1, e2, e3, -, e5⟩ := areas_swapPt A B C D
      have := H (swapPt A) (swapPt B) (swapPt C) (swapPt D) (swapPt Q) (swapPt P)
        (convexQuad_swapPt.2 hq) (centralPair_swapPt.2 hc)
        (by rw [min_quadConfig_swapPt, min_quadConfig_swap]; exact hmin) (by rw [e5]; exact hJ)
        (by rw [e1, e2]; exact hab)
      rw [e1, e2, e3, abs_sarea_swapPt, abs_sarea_swapPt] at this
      exact ⟨this.2, this.1⟩
  intro A B C D P Q hq hc hmin hJ hab
  obtain ⟨eA, eB, eW, -, eJ⟩ := ccw_areas hq
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  have hJ' : sarea A C D < sarea A B D := by rw [eJ] at hJ; linarith
  obtain ⟨hP1, hP2, hQ1, hQ2⟩ := hc
  have hP1' := inT_of_inside hP1 hb
  have hP2' := inT_of_inside hP2 ha
  have hQ1' := inT_of_inside hQ1 hb
  have hQ2' := inT_of_inside hQ2 ha
  rw [eA, eB] at hab
  rw [eA, eB, eW, abs_of_pos hP1'.1, abs_of_pos hQ1'.1,
    show sarea A B C + sarea A C D - sarea A B C = sarea A C D by ring]
  exact eq10_ccw hq hP1' hP2' hQ1' hQ2' hmin hJ' hab

/-- **Theorem 2** (`ONE_CORNER_COMPLETION:Theorem2`), the central-pair quadrilateral bound: for a
convex quadrilateral `ABCD` of area `S` and two points strictly inside both `ABC` and `ABD`, the
six points have minimum triangle area strictly less than `7S/64` (no separation hypothesis).
Equivalently, at minimum area `≥ 7S/64` some hull diagonal separates the two interior points.
`hand/ONE_CORNER_COMPLETION.md`, lines 211–350.

Uses: ONE_CORNER_COMPLETION:Theorem1, OPPOSITE_CORNERS:claim-II-II-same-sign (21)–(22) -/
theorem theorem2 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 64 * quadArea A B C D := by
  suffices H : ∀ A B C D P Q : Point, IsConvexQuad A B C D → CentralPair A B C D P Q →
      areaB A B C D ≤ areaA A B C D →
      minTriangleArea (quadConfig A B C D P Q) < 7 / 64 * quadArea A B C D by
    rcases le_total (areaB A B C D) (areaA A B C D) with hab | hab
    · exact H A B C D P Q hq hc hab
    · obtain ⟨e1, e2, -, e4, -⟩ := areas_relabel A B C D
      have := H B A D C P Q (convexQuad_relabel hq) (centralPair_relabel.2 hc)
        (by rw [e1, e2]; exact hab)
      rwa [min_quadConfig_relabel, e4] at this
  intro A B C D P Q hq hc hab
  by_contra hcon; push Not at hcon
  rcases lt_or_ge (sarea P Q A * sarea P Q B) 0 with hsep | hsame
  · exact absurd (theorem1 A B C D P Q hq hc hsep) (not_lt.2 hcon)
  obtain ⟨dWa, dWb, pa, pb, pc, pe, hS⟩ := quad_abs hq
  have hW : 0 < areaW A B C D := by linarith
  have hσ : 0 < 7 / 64 * areaW A B C D := by positivity
  have hmin : 7 / 64 * areaW A B C D / 2 ≤ minTriangleArea (quadConfig A B C D P Q) := by
    rw [hS] at hcon; linarith
  obtain ⟨kA, kB⟩ := two_inside_bound hσ hmin
  have ka := kA hc.2.1 hc.2.2.2
  have kb := kB hc.1 hc.2.2.1
  have hK := K_gt
  have kK : 149 / 20 * (7 / 64 * areaW A B C D) ≤
      (4 + 2 * Real.sqrt 3) * (7 / 64 * areaW A B C D) :=
    mul_le_mul_of_nonneg_right hK.le hσ.le
  have ce : 7 / 64 * areaW A B C D ≤ |sarea B C D| := OppositeCorners.abs_sarea_ge hmin 1 2 3
  have cc : 7 / 64 * areaW A B C D ≤ |sarea A C D| := OppositeCorners.abs_sarea_ge hmin 0 2 3
  have hJ : 0 < overlapJ A B C D := by simp only [overlapJ]; linarith
  have aA : 7 / 64 * areaW A B C D ≤ |sarea P Q A| := OppositeCorners.abs_sarea_ge hmin 4 5 0
  have aB : 7 / 64 * areaW A B C D ≤ |sarea P Q B| := OppositeCorners.abs_sarea_ge hmin 4 5 1
  have hprod : 0 < sarea P Q A * sarea P Q B :=
    lt_of_le_of_ne hsame (mul_ne_zero (OppositeCorners.ne_zero_of_abs_ge hσ aA)
      (OppositeCorners.ne_zero_of_abs_ge hσ aB)).symm
  obtain ⟨hF, hv, -, -⟩ := eq9 A B C D P Q _ hσ hq hc hmin hJ hprod
  obtain ⟨h10, -⟩ := eq10 A B C D P Q _ hσ hq hc hmin hJ hab
  have h10' := (min_le_left |sarea A B P| |sarea A B Q|).trans h10
  have hWb : 0 < areaW A B C D - areaB A B C D := by linarith
  have hWa : 7 / 64 * areaW A B C D ≤ areaW A B C D - areaA A B C D := by linarith
  clear kA kB ka kb kK hK ce cc aA aB hprod h10 hmin hcon hsame hS hc hq dWa dWb pc pe hJ
  generalize areaA A B C D = a at *
  generalize areaB A B C D = b at *
  generalize areaW A B C D = W at *
  generalize min |sarea A B P| |sarea A B Q| = v at *
  obtain ⟨x, rfl⟩ : ∃ x, a = x * W := ⟨a / W, by field_simp⟩
  obtain ⟨y, rfl⟩ : ∃ y, b = y * W := ⟨b / W, by field_simp⟩
  obtain ⟨z, rfl⟩ : ∃ z, v = z * W := ⟨v / W, by field_simp⟩
  have hW3 : 0 < W ^ 3 := by positivity
  refine thm2_norm x y z (le_of_mul_le_mul_right hab hW) ?_ (pos_of_mul_pos_left pb hW.le) ?_
    ?_ ?_ ?_
  · nlinarith
  · nlinarith
  · nlinarith
  · have e : x * W * (y * W) * (z * W - 7 / 64 * W) - 7 / 64 * W * (z * W) * (x * W + y * W) -
        W * (z * W) ^ 2 = W ^ 3 * (x * y * (z - 7 / 64) - 7 / 64 * z * (x + y) - z ^ 2) := by ring
    rw [e] at hF
    exact (mul_nonneg_iff_of_pos_left hW3).1 hF
  · have hy1 : 0 < 1 - y := by nlinarith
    have e : y * W - 7 / 64 * W * (x * W) / (W - y * W) =
        W * (y - 7 / 64 * x / (1 - y)) := by
      have : W - y * W = W * (1 - y) := by ring
      rw [this]
      field_simp
    rw [e] at h10'
    have h := le_of_mul_le_mul_left (by linarith : W * z ≤ W * (y - 7 / 64 * x / (1 - y))) hW
    have h2 := mul_le_mul_of_nonneg_right h hy1.le
    rw [sub_mul, div_mul_cancel₀ _ hy1.ne'] at h2
    linarith

/-- **Theorem 2** (`ONE_CORNER_COMPLETION:Theorem2`), the form at `S ≤ 1/2`: minimum area below
`7/128`. `hand/ONE_CORNER_COMPLETION.md`, lines 211–225 (with lines 36–37).

Uses: ONE_CORNER_COMPLETION:Theorem2 -/
theorem theorem2_of_le_half (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hc : CentralPair A B C D P Q) (hS : quadArea A B C D ≤ 1 / 2) :
    minTriangleArea (quadConfig A B C D P Q) < 7 / 128 := by
  have := theorem2 A B C D P Q hq hc
  linarith

/-! ### §3. Theorem 3 -/

/-- The canonical frame of the relabelled quadrilateral `(B, A, D, C)` of a counterclockwise
`ABCD` (used in Theorem 3, with the labels `(A', E', H', F') = (B, A, C, D)`): with
`t = (b - e)/(ab)`, `h = tb`, `β = ta`, and the frame multiplies doubled areas by `-t`. -/
theorem rel_BADC {A B C D : Point} (hq : ConvexQuad A B C D) :
    frameH B A D C = (sarea A B C - sarea B C D) / (sarea A B D * sarea A B C) * sarea A B C ∧
      1 - frameF B A D C =
        (sarea A B C - sarea B C D) / (sarea A B D * sarea A B C) * sarea A B D ∧
      frameH B A D C / sarea B A C = -((sarea A B C - sarea B C D) / (sarea A B D * sarea A B C)) ∧
      sarea B A C ≠ 0 ∧ sarea B A D ≠ 0 := by
  obtain ⟨ha, hb, -, -⟩ := ccw_signs hq
  have e1 : sarea B A C = -sarea A B C := sarea_swap₁₂ A B C
  have e2 : sarea B A D = -sarea A B D := sarea_swap₁₂ A B D
  have e3 : sarea B D C = -sarea B C D := sarea_swap₂₃ B C D
  have ha' := ha.ne'
  have hb' := hb.ne'
  simp only [frameH, frameF, e1, e2, e3]
  refine ⟨by field_simp; ring, by field_simp, by field_simp; ring,
    by simpa using hb', by simpa using ha'⟩

/-- The two discriminant contradictions of Theorem 3, (14): with `σ = 7W/64` and
`b ≥ (149/20)σ`, neither `a(W - a) ≥ σ(2W + b - a)` nor `a(W - a) ≥ σ(W + a + b)` holds. -/
theorem thm3_poly {a b W : ℝ} (hW : 0 < W) (hb : 149 / 20 * (7 / 64 * W) ≤ b) :
    a * (W - a) < 7 / 64 * W * (2 * W + b - a) ∧ a * (W - a) < 7 / 64 * W * (W + a + b) := by
  constructor
  · nlinarith [sq_nonneg (a - 71 / 128 * W), sq_pos_of_pos hW]
  · nlinarith [sq_nonneg (a - 57 / 128 * W), sq_pos_of_pos hW]

/-- Theorem 3 for a counterclockwise quadrilateral. -/
theorem theorem3_ccw {A B C D P Q : Point} (hq : ConvexQuad A B C D)
    (hmin : 7 / 64 * quadArea A B C D ≤ minTriangleArea (quadConfig A B C D P Q))
    (hP : InTriangle P A B C) (hQ : InTriangle Q A B C)
    (hPBCD : InTriangle P B C D) (hQABD : InTriangle Q A B D) :
    Isolates P Q B A C D := by
  obtain ⟨ha, hb, hc, he⟩ := ccw_signs hq
  obtain ⟨-, eB, -, eS, -⟩ := ccw_areas hq
  have hqi := quad_identity A B C D
  have hW : 0 < sarea A B C + sarea A C D := by linarith
  have hσ : 0 < 7 / 64 * (sarea A B C + sarea A C D) := by positivity
  have hm : 7 / 64 * (sarea A B C + sarea A C D) / 2 ≤
      minTriangleArea (quadConfig A B C D P Q) := by rw [eS] at hmin; linarith
  have kb := (two_inside_bound hσ hm).2 (Or.inl hP) (Or.inl hQ)
  rw [eB] at kb
  have hK := K_gt
  have kK : 149 / 20 * (7 / 64 * (sarea A B C + sarea A C D)) ≤
      (4 + 2 * Real.sqrt 3) * (7 / 64 * (sarea A B C + sarea A C D)) :=
    mul_le_mul_of_nonneg_right hK.le hσ.le
  have a3 := OppositeCorners.three_le_of_inTriangle hQABD (OppositeCorners.abs_sarea_ge hm 0 1 5)
    (OppositeCorners.abs_sarea_ge hm 1 3 5) (OppositeCorners.abs_sarea_ge hm 3 0 5)
  have e3 := OppositeCorners.three_le_of_inTriangle hPBCD (OppositeCorners.abs_sarea_ge hm 1 2 4)
    (OppositeCorners.abs_sarea_ge hm 2 3 4) (OppositeCorners.abs_sarea_ge hm 3 1 4)
  obtain ⟨qP1, qP2⟩ := inQuad_of_ABC hq hP
  obtain ⟨qQ1, -⟩ := inQuad_of_ABC hq hQ
  -- the frame of `(B, A, D, C)`
  obtain ⟨eh, eβ, ek, hBAC, hBAD⟩ := rel_BADC hq
  set t := (sarea A B C - sarea B C D) / (sarea A B D * sarea A B C) with ht
  have ht0 : 0 < t := div_pos (by linarith) (mul_pos ha hb)
  have htab : t * sarea A B D * sarea A B C = sarea A B C - sarea B C D := by
    rw [ht]; field_simp
  set h := frameH B A D C with hh
  set f := frameF B A D C with hf
  have h0 : 0 < h := by rw [eh]; positivity
  have h1 : h < 1 := by
    rw [eh, ht]; rw [div_mul_eq_mul_div, div_lt_one (mul_pos ha hb)]; nlinarith
  have f1 : f < 1 := by have : 0 < t * sarea A B D := by positivity
                        linarith
  have f0 : 0 < f := by
    have : t * sarea A B D < 1 := by
      rw [ht, div_mul_eq_mul_div, div_lt_one (mul_pos ha hb)]; nlinarith
    linarith
  have vals := fun X => frame_vals (A := B) (B := A) (C := D) (D := C) hBAC hBAD X
  have sc := frameMap_sarea (A := B) (B := A) (C := D) (D := C) hBAC
  -- `P' = M P` is in cell I, `Q' = M Q` in cell II, both in `T`
  have neg : ∀ x : ℝ, x < 0 → 0 < -t * x := fun x hx => mul_pos_of_neg_of_neg (by linarith) hx
  have pos : ∀ x : ℝ, 0 < x → -t * x < 0 := fun x hx => mul_neg_of_neg_of_pos (by linarith) hx
  have memT : ∀ X : Point, 0 < sarea B C X → 0 < sarea A B X → 0 < sarea D A X →
      frameMap B A D C X ∈ halfSquare := by
    intro X x1 x2 x3
    obtain ⟨-, -, -, vw, vx, vy⟩ := vals X
    rw [ek] at vw vx vy
    have px : 0 < (frameMap B A D C X).1 := by
      have : 0 < h * (frameMap B A D C X).1 := by
        rw [vx]; apply neg; rw [sarea_swap₁₂]; linarith
      exact pos_of_mul_pos_right this h0.le
    have pw : 0 < (frameMap B A D C X).2 - (frameMap B A D C X).1 := by
      rw [vw]; apply neg; rw [sarea_swap₁₂]; linarith
    have py : 0 < 1 - (frameMap B A D C X).2 := by
      have : 0 < (1 - f) * (1 - (frameMap B A D C X).2) := by
        rw [vy]; apply neg; rw [sarea_swap₁₂]; linarith
      exact pos_of_mul_pos_right this (by linarith)
    exact ⟨px.le, by linarith, by linarith⟩
  have PT := memT P hP.2.1 hP.1 qP2
  have QT := memT Q hQ.2.1 hQ.1 hQABD.2.2
  obtain ⟨LP, KP, NP, -, -, -⟩ := vals P
  obtain ⟨LQ, KQ, NQ, -, -, -⟩ := vals Q
  rw [ek] at LP KP NP LQ KQ NQ
  have PI : CellI h f (frameMap B A D C P) := by
    refine ⟨?_, ?_, ?_⟩
    · rw [LP]; apply neg; rw [sarea_swap₁₂]; linarith [hPBCD.2.2]
    · rw [KP]; apply neg; rw [sarea_swap₁₂]; linarith [hP.2.2]
    · rw [NP]; exact pos _ hPBCD.2.1
  have QII : CellII h f (frameMap B A D C Q) := by
    refine ⟨?_, ?_, ?_⟩
    · rw [LQ]; exact pos _ hQABD.2.1
    · rw [KQ]; apply neg; rw [sarea_swap₁₂]; linarith [hQ.2.2]
    · rw [NQ]; exact pos _ qQ1
  -- the frame threshold `tσ`
  have hm' : t * (7 / 64 * (sarea A B C + sarea A C D)) / 2 ≤
      minTriangleArea (halfSquareConfig h f (frameMap B A D C P) (frameMap B A D C Q)) := by
    rw [frame_min B A D C P Q hBAC hBAD, ek, abs_neg, abs_of_pos ht0, min_quadConfig_relabel]
    have := mul_le_mul_of_nonneg_left hm ht0.le; linarith
  have hσ' : 0 < t * (7 / 64 * (sarea A B C + sarea A C D)) := mul_pos ht0 hσ
  have dd : ∀ V : Point, sarea (frameMap B A D C P) (frameMap B A D C Q) (frameMap B A D C V) =
      -t * sarea P Q V := fun V => by rw [sc, ek]
  have mB : frameMap B A D C B = (0, 0) := frameMap_A B A D C
  have mA : frameMap B A D C A = (1, 1) := frameMap_B hBAC
  have mC : frameMap B A D C C = (0, h) := frameMap_D hBAC
  have mD : frameMap B A D C D = (f, 1) := frameMap_C hBAC hBAD
  obtain ⟨d1, d2, d3⟩ := OppositeCorners.eq14 h f _ h0 h1 f0 f1 hσ' _ _ PT QT hm' PI QII
  rw [← mB, dd] at d1
  rw [← mD, dd] at d2
  rw [← mC, ← mA, dd, dd] at d3
  have dB : 0 < sarea P Q B := by
    by_contra hc'; push Not at hc'
    have := mul_nonneg_of_nonpos_of_nonpos (by linarith : -t ≤ 0) hc'; linarith
  have dD : sarea P Q D < 0 := by
    by_contra hc'; push Not at hc'
    have := mul_nonpos_iff.2 (Or.inr ⟨(by linarith : -t ≤ 0), hc'⟩); linarith
  have aC : 7 / 64 * (sarea A B C + sarea A C D) ≤ |sarea P Q C| :=
    OppositeCorners.abs_sarea_ge hm 4 5 2
  have aA : 7 / 64 * (sarea A B C + sarea A C D) ≤ |sarea P Q A| :=
    OppositeCorners.abs_sarea_ge hm 4 5 0
  have hrel : t * sarea A B D * sarea A B C = sarea A B D + sarea A B C -
      (sarea A B C + sarea A C D) := by rw [htab]; linarith
  have eβ' : f = 1 - t * sarea A B D := by linarith
  rcases lt_or_gt_of_ne (OppositeCorners.ne_zero_of_abs_ge hσ aC) with dC | dC <;>
    rcases lt_or_gt_of_ne (OppositeCorners.ne_zero_of_abs_ge hσ aA) with dA | dA
  · exact ⟨mul_neg_of_pos_of_neg dB dA, mul_neg_of_pos_of_neg dB dC, mul_neg_of_pos_of_neg dB dD⟩
  · -- §5.1 in the frame
    exfalso
    have r := (OppositeCorners.claim_pair_I_II_51 h f _ h0 h1 f0 f1 hσ' _ _ PT QT hm' PI QII
      (by rw [← mC, dd]; exact neg _ dC) (by rw [← mA, dd]; exact pos _ dA)).2
    rw [eβ, eh, eβ'] at r
    set a := sarea A B D
    set b := sarea A B C
    set W := sarea A B C + sarea A C D
    set σ := 7 / 64 * W with hσd
    have key : t ^ 2 * (a * (W - a) - σ * (2 * W + b - a)) =
        t * b * (t * a) * (1 - t * a) - t * σ * (3 * (t * b) + t * a - 2 * (t * b) * (t * a)) +
          t ^ 2 * (a - 2 * σ) * (t * a * b - (a + b - W)) := by ring
    have hE : t * a * b - (a + b - W) = 0 := by rw [hrel]; ring
    have : 0 ≤ t ^ 2 * (a * (W - a) - σ * (2 * W + b - a)) := by
      rw [key, hE, mul_zero, add_zero]; linarith
    have := (mul_nonneg_iff_of_pos_left (by positivity)).1 this
    have h2 := (thm3_poly (a := a) (b := b) hW (by linarith [hσd])).1
    rw [← hσd] at h2
    linarith
  · -- §5.2 in the frame
    exfalso
    have hba : sarea A B D < sarea A B C := by
      by_contra hc'; push Not at hc'; linarith
    have hin : InTriangle (frameMap B A D C P) (0, h) (frameMap B A D C Q) (f, 1) := by
      refine ⟨?_, ?_, ?_⟩
      · rw [sarea_cycle, sarea_swap₂₃, ← mC, dd]; linarith [pos _ dC]
      · rw [sarea_cycle, ← mD, dd]; exact d2
      · have e : sarea (f, 1) (0, h) (frameMap B A D C P) = -lineN h f (frameMap B A D C P) := by
          simp only [lineN, sarea]; ring
        rw [e]; linarith [PI.2.2]
    have hβh : 1 - f ≤ h := by rw [eβ, eh]; exact mul_le_mul_of_nonneg_left hba.le ht0.le
    have r := (OppositeCorners.eq15_16 h f _ h0 h1 f0 f1 hσ' _ _ PT QT hm' QII hin hβh).2
    rw [eβ, eh, eβ'] at r
    set a := sarea A B D
    set b := sarea A B C
    set W := sarea A B C + sarea A C D
    set σ := 7 / 64 * W with hσd
    have key : t ^ 2 * (a * (W - a) - σ * (W + a + b)) =
        t * b * (t * a) * (1 - t * a) - t * σ * (2 * (t * b) + 2 * (t * a) - t * b * (t * a)) +
          t ^ 2 * (a - σ) * (t * a * b - (a + b - W)) := by ring
    have hE : t * a * b - (a + b - W) = 0 := by rw [hrel]; ring
    have : 0 ≤ t ^ 2 * (a * (W - a) - σ * (W + a + b)) := by
      rw [key, hE, mul_zero, add_zero]; linarith
    have := (mul_nonneg_iff_of_pos_left (by positivity)).1 this
    have h2 := (thm3_poly (a := a) (b := b) hW (by linarith [hσd])).2
    rw [← hσd] at h2
    linarith
  · exact absurd ⟨pos _ dC, pos _ dA⟩ d3

/-- **Theorem 3** (`ONE_CORNER_COMPLETION:Theorem3`), the mixed-pair line: for a convex
quadrilateral `ABCD` of area `S` whose six-point minimum area is at least `7S/64`, if `P, Q` are
strictly inside `ABC`, `P` strictly inside `BCD` and `Q` strictly inside `ABD`, then the line
`PQ` puts `B` on one side and `A, C, D` on the other. `hand/ONE_CORNER_COMPLETION.md`,
lines 352–439.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, OPPOSITE_CORNERS:claim-pair-I-II (5.1),
OPPOSITE_CORNERS:claim-pair-I-II (15)–(16) -/
theorem theorem3 (A B C D P Q : Point) (hq : IsConvexQuad A B C D)
    (hmin : 7 / 64 * quadArea A B C D ≤ minTriangleArea (quadConfig A B C D P Q))
    (hP : InsideTriangle P A B C) (hQ : InsideTriangle Q A B C)
    (hPBCD : InsideTriangle P B C D) (hQABD : InsideTriangle Q A B D) :
    Isolates P Q B A C D := by
  rcases hq with hq | hq
  · obtain ⟨ha, hb, -, he⟩ := ccw_signs hq
    exact theorem3_ccw hq hmin (inT_of_inside hP hb) (inT_of_inside hQ hb)
      (inT_of_inside hPBCD he) (inT_of_inside hQABD ha)
  · have hq' := convexQuad_swapPt.2 hq
    obtain ⟨ha, hb, -, he⟩ := ccw_signs hq'
    obtain ⟨-, -, -, e4, -⟩ := areas_swapPt A B C D
    have := theorem3_ccw hq' (by rw [e4, min_quadConfig_swapPt]; exact hmin)
      (inT_of_inside (insideTriangle_swapPt.2 hP) hb) (inT_of_inside (insideTriangle_swapPt.2 hQ) hb)
      (inT_of_inside (insideTriangle_swapPt.2 hPBCD) he)
      (inT_of_inside (insideTriangle_swapPt.2 hQABD) ha)
    exact (isolates_swapPt P Q B A C D).1 this

/-! ### §4. Application to the pentagonal C1 branch -/

/-- The upper quadrilateral `HCDF` of a C1 configuration is convex (counterclockwise), with doubled
area `W = 1 - (h - d)(c - f) ≤ 1`. -/
theorem pent_quad {h c d f : ℝ} (hanch : C1Anchors h c d f) :
    IsConvexQuad (0, h) (c, 0) (1, d) (f, 1) ∧ quadArea (0, h) (c, 0) (1, d) (f, 1) ≤ 1 / 2 := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  have hW : sarea (0, h) (c, 0) (1, d) + sarea (0, h) (1, d) (f, 1) = 1 - (h - d) * (c - f) := by
    simp only [sarea]; ring
  have p1 : 0 ≤ (h - d) * (c - f) := mul_nonneg (by linarith) (by linarith)
  have p2 : (h - d) * (c - f) < 1 := by nlinarith
  refine ⟨Or.inl ⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · simp only [sarea]; nlinarith
  · simp only [sarea]; nlinarith
  · simp only [sarea]; nlinarith
  · simp only [sarea]; nlinarith
  · simp only [quadArea]; rw [hW, abs_of_pos (by linarith)]; linarith

/-- The six points `H, C, D, F` and two free points form a sub-configuration of the C1
configuration. -/
theorem pent_sub (h c d f : ℝ) (W X Y Z : Point) :
    minTriangleArea (c1Config h c d f W X Y Z) ≤
      minTriangleArea (quadConfig (0, h) (c, 0) (1, d) (f, 1) Y Z) := by
  have := le_min_comp (by norm_num) (c1Config h c d f W X Y Z)
    (f := ![(4 : Fin 9), 1, 2, 3, 7, 8]) (by decide)
  convert this using 2
  funext i; fin_cases i <;> rfl

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-pentagon-reduction`), the central upper pair: in a C1
configuration (anchors `O, C = (c,0), D = (1,d), F = (f,1), H = (0,h)`) of minimum area at least
`A₀`, two free points cannot both lie in `HCD ∩ HCF` (Theorem 2 with `(A,B,C,D) = (H,C,D,F)`,
`W = 1 - (h - d)(c - f) ≤ 1`). `hand/ONE_CORNER_COMPLETION.md`, lines 441–465.

Uses: ONE_CORNER_COMPLETION:Theorem2 -/
theorem claim_pentagon_reduction (h c d f : ℝ) (hanch : C1Anchors h c d f) (W X Y Z : Point)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X Y Z))
    (hY : InsideTriangle Y (0, h) (c, 0) (1, d) ∧ InsideTriangle Y (0, h) (c, 0) (f, 1))
    (hZ : InsideTriangle Z (0, h) (c, 0) (1, d) ∧ InsideTriangle Z (0, h) (c, 0) (f, 1)) :
    False := by
  obtain ⟨hq, hS⟩ := pent_quad hanch
  have := theorem2_of_le_half _ _ _ _ Y Z hq ⟨hY.1, hY.2, hZ.1, hZ.2⟩ hS
  have := pent_sub h c d f W X Y Z
  linarith [A₀_bounds.1]

/-- **Claim** (`ONE_CORNER_COMPLETION:claim-pentagon-reduction`), the mixed upper placement: in a
C1 configuration of minimum area at least `A₀`, if the free point `Q` is in `HCD ∩ HCF` and the
free point `P` is in `HCD ∩ CDF`, then the line `PQ` isolates `C` from `H, D, F` (Theorem 3
with `(A,B,C,D) = (H,C,D,F)`); the reflected placement isolates `H`.
`hand/ONE_CORNER_COMPLETION.md`, lines 467–472.

Uses: ONE_CORNER_COMPLETION:Theorem3 -/
theorem claim_pentagon_reduction_mixed (h c d f : ℝ) (hanch : C1Anchors h c d f)
    (W X P Q : Point) (hmin : A₀ ≤ minTriangleArea (c1Config h c d f W X P Q))
    (hQ : InsideTriangle Q (0, h) (c, 0) (1, d) ∧ InsideTriangle Q (0, h) (c, 0) (f, 1))
    (hP : InsideTriangle P (0, h) (c, 0) (1, d) ∧ InsideTriangle P (c, 0) (1, d) (f, 1)) :
    Isolates P Q (c, 0) (0, h) (1, d) (f, 1) := by
  obtain ⟨hq, hS⟩ := pent_quad hanch
  have hsub := pent_sub h c d f W X P Q
  exact theorem3 _ _ _ _ P Q hq (by linarith [A₀_bounds.1]) hP.1 hQ.1 hP.2 hQ.2

end Heilbronn.OneCornerCompletion
