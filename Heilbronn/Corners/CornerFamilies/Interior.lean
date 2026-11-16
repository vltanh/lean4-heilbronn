module

public import Heilbronn.Common.Families

/-! # Corner families: interior points of a triangle (`hand/CORNER_FAMILIES.md` §§1, 7–8)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). This part holds the
general area bounds for a triangle with interior points that the rest of the note (and about
fifteen other notes) use, proved here before the star lemma of §2 needs them:

* the two-interior-point lemma (13), `twoInteriorPointLemma`, from the identity
  `S·d = (d + e₂)X₁ + (d + e₁)X₂ + (d + e₁)(d + e₂)` (`two_core`), which replaces the
  manuscript's affine coordinates (lines 421–472);
* the six-point triangular-hull theorem (14), `sixPointTriangularHullTheorem`, through the
  labelled seven-face mesh (`mesh_core`, lines 516–661);
* the tools: sub-configurations (`min_sub`), containment (`inTri_trans`), the fan of an
  interior point (`fan_cases`), and the inequality behind (20) (`mesh_ineq`).

Definitions: `InsideTriangle` (strictly inside, either orientation), `InClosedTriangle`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-! ### Shared notions -/

/-- `X` lies strictly inside the triangle `ABC`, whose vertices may be in either orientation. -/
def InsideTriangle (X A B C : Point) : Prop := InTriangle X A B C ∨ InTriangle X A C B

/-- `X` lies in the closed triangle `ABC` (either orientation): the three edge signs are all
`≥ 0` or all `≤ 0`. For a nondegenerate triangle this is its convex hull. -/
def InClosedTriangle (X A B C : Point) : Prop :=
  (0 ≤ sarea A B X ∧ 0 ≤ sarea B C X ∧ 0 ≤ sarea C A X) ∨
    (sarea A B X ≤ 0 ∧ sarea B C X ≤ 0 ∧ sarea C A X ≤ 0)

/-! ### Tools -/

/-- A sub-configuration (or a relabelling) given by an injective index map keeps the bound on the
least area. -/
theorem min_sub {n m : ℕ} {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P)
    (Q : Fin m → Point) (f : Fin m → Fin n) (hm : 3 ≤ m) (hf : Function.Injective f)
    (hQ : ∀ i, Q i = P (f i)) : t ≤ minTriangleArea Q := by
  obtain rfl : Q = P ∘ f := funext hQ
  exact h.trans (le_min_comp hm P hf)

/-- `min_sub` with injectivity from a left inverse (cheaper to check by `decide`). -/
theorem min_sub' {n m : ℕ} {P : Fin n → Point} {t : ℝ} (h : t ≤ minTriangleArea P)
    (Q : Fin m → Point) (f : Fin m → Fin n) (g : Fin n → Fin m) (hm : 3 ≤ m)
    (hg : ∀ i, g (f i) = i) (hQ : ∀ i, Q i = P (f i)) : t ≤ minTriangleArea Q :=
  min_sub h Q f hm (Function.LeftInverse.injective hg) hQ

theorem two_le_abs {p q r : Point} {t : ℝ} (h : t ≤ triangleArea p q r) :
    2 * t ≤ |sarea p q r| := by
  rw [triangleArea_eq] at h; linarith

theorem sarea_ne_of {p q r : Point} {t : ℝ} (ht : 0 < t) (h : t ≤ triangleArea p q r) :
    sarea p q r ≠ 0 := by
  intro h0; have := two_le_abs h; rw [h0, abs_zero] at this; linarith

theorem ge_of_pos {p q r : Point} {t : ℝ} (ht : 0 < t) (h : t ≤ triangleArea p q r)
    (hp : 0 < sarea p q r) : 2 * t ≤ sarea p q r :=
  two_mul_le_sarea_of_nonneg ht hp.le h

theorem le_of_neg {p q r : Point} {t : ℝ} (ht : 0 < t) (h : t ≤ triangleArea p q r)
    (hn : sarea p q r < 0) : sarea p q r ≤ -(2 * t) :=
  sarea_le_of_nonpos ht hn.le h

theorem pos_of_mul_pos_right' {a b : ℝ} (h : 0 < a * b) (hb : 0 < b) : 0 < a := by
  by_contra hc; push Not at hc; nlinarith [mul_nonpos_of_nonpos_of_nonneg hc hb.le]

theorem inTri_rot {X A B C : Point} (h : InTriangle X A B C) : InTriangle X B C A :=
  ⟨h.2.1, h.2.2, h.1⟩

theorem inTri_pos {X A B C : Point} (h : InTriangle X A B C) : 0 < sarea A B C := by
  have := sarea_add_sarea_add_sarea A B C X; linarith [h.1, h.2.1, h.2.2]

/-- Containment is transitive for triangles on a common edge: `X ∈ int PQY` and `Y ∈ int PQZ`
give `X ∈ int PQZ`. -/
theorem inTri_trans {X Y Z P Q : Point} (hX : InTriangle X P Q Y) (hY : InTriangle Y P Q Z) :
    InTriangle X P Q Z := by
  obtain ⟨h1, h2, h3⟩ := hX
  obtain ⟨g1, g2, g3⟩ := hY
  have hPQY : 0 < sarea P Q Y := inTri_pos ⟨h1, h2, h3⟩
  have hPQZ : 0 < sarea P Q Z := inTri_pos ⟨g1, g2, g3⟩
  refine ⟨h1, ?_, ?_⟩
  · have e : sarea Q Z X * sarea P Q Y = sarea Q Y X * sarea P Q Z + sarea P Q X * sarea Q Z Y := by
      unfold sarea; ring
    exact pos_of_mul_pos_right' (by rw [e]; positivity) hPQY
  · have e : sarea Z P X * sarea P Q Y = sarea Y P X * sarea P Q Z + sarea P Q X * sarea Z P Y := by
      unfold sarea; ring
    exact pos_of_mul_pos_right' (by rw [e]; positivity) hPQY

/-- A point inside `ABC` and off the three lines through an interior point `Y` and the vertices
lies strictly inside one of the three fan triangles `ABY, BCY, CAY`. -/
theorem fan_cases {A B C Y P : Point} (hY : InTriangle Y A B C) (hP : InTriangle P A B C)
    (ha : sarea Y A P ≠ 0) (hb : sarea Y B P ≠ 0) (hc : sarea Y C P ≠ 0) :
    InTriangle P A B Y ∨ InTriangle P B C Y ∨ InTriangle P C A Y := by
  obtain ⟨y1, y2, y3⟩ := hY
  obtain ⟨p1, p2, p3⟩ := hP
  have e : sarea B C Y * sarea Y A P + sarea C A Y * sarea Y B P + sarea A B Y * sarea Y C P = 0 := by
    unfold sarea; ring
  have s1 : sarea B Y P = -sarea Y B P := sarea_swap₁₂ _ _ _
  have s2 : sarea C Y P = -sarea Y C P := sarea_swap₁₂ _ _ _
  have s3 : sarea A Y P = -sarea Y A P := sarea_swap₁₂ _ _ _
  rcases ha.lt_or_gt with ha | ha <;> rcases hb.lt_or_gt with hb | hb <;>
    rcases hc.lt_or_gt with hc | hc
  · nlinarith [mul_pos y2 (neg_pos.2 ha), mul_pos y3 (neg_pos.2 hb), mul_pos y1 (neg_pos.2 hc)]
  · exact Or.inr (Or.inr ⟨p3, by linarith, hc⟩)
  · exact Or.inr (Or.inl ⟨p2, by linarith, hb⟩)
  · exact Or.inr (Or.inr ⟨p3, by linarith, hc⟩)
  · exact Or.inl ⟨p1, by linarith, ha⟩
  · exact Or.inl ⟨p1, by linarith, ha⟩
  · exact Or.inr (Or.inl ⟨p2, by linarith, hb⟩)
  · nlinarith [mul_pos y2 ha, mul_pos y3 hb, mul_pos y1 hc]

/-! ### §7. Two interior points -/

/-- The two-interior-point bound in signed form. `R` is the vertex alone on its side of the line
`PQ` (`d = [PQR] > 0`), `S₁, S₂` the other two (`e₁ = -[PQS₁]`, `e₂ = -[PQS₂]`), `X₁ = [RS₁P]`,
`X₂ = [RQS₂]`; the identity `S·d = (d + e₂)X₁ + (d + e₁)X₂ + (d + e₁)(d + e₂)` and
`d + 3s²/d ≥ 2√3 s` give (13) (lines 433–472). -/
theorem two_core {R S₁ S₂ P Q : Point} {s : ℝ} (hs : 0 < s) (hd : s ≤ sarea P Q R)
    (he₁ : s ≤ -sarea P Q S₁) (he₂ : s ≤ -sarea P Q S₂) (hX₁ : s ≤ sarea R S₁ P)
    (hX₂ : s ≤ sarea R Q S₂) : (4 + 2 * Real.sqrt 3) * s ≤ sarea R S₁ S₂ := by
  have key : sarea R S₁ S₂ * sarea P Q R =
      (sarea P Q R + -sarea P Q S₂) * sarea R S₁ P + (sarea P Q R + -sarea P Q S₁) * sarea R Q S₂ +
        (sarea P Q R + -sarea P Q S₁) * (sarea P Q R + -sarea P Q S₂) := by
    unfold sarea; ring
  set S := sarea R S₁ S₂
  set d := sarea P Q R
  set e₁ := -sarea P Q S₁
  set e₂ := -sarea P Q S₂
  set X₁ := sarea R S₁ P
  set X₂ := sarea R Q S₂
  have h3 : Real.sqrt 3 ^ 2 = 3 := Real.sq_sqrt (by norm_num)
  have m1 : (d + s) * s ≤ (d + e₂) * X₁ := mul_le_mul (by linarith) hX₁ hs.le (by linarith)
  have m2 : (d + s) * s ≤ (d + e₁) * X₂ := mul_le_mul (by linarith) hX₂ hs.le (by linarith)
  have m3 : (d + s) * (d + s) ≤ (d + e₁) * (d + e₂) :=
    mul_le_mul (by linarith) (by linarith) (by linarith) (by linarith)
  have hsq : 0 ≤ d ^ 2 - 2 * Real.sqrt 3 * s * d + 3 * s ^ 2 := by
    have e : d ^ 2 - 2 * Real.sqrt 3 * s * d + 3 * s ^ 2 = (d - Real.sqrt 3 * s) ^ 2 := by
      linear_combination (-s ^ 2) * h3
    rw [e]; positivity
  have : (4 + 2 * Real.sqrt 3) * s * d ≤ S * d := by nlinarith
  exact le_of_mul_le_mul_right this (by linarith)

/-- The two-interior-point lemma for a counterclockwise triangle, in doubled form. -/
theorem two_ccw {A B C P Q : Point} {t : ℝ} (ht : 0 < t) (hP : InTriangle P A B C)
    (hQ : InTriangle Q A B C) (hmin : t ≤ minTriangleArea ![A, B, C, P, Q]) :
    (4 + 2 * Real.sqrt 3) * (2 * t) ≤ sarea A B C := by
  have hs : 0 < 2 * t := by linarith
  obtain ⟨p1, p2, p3⟩ := hP
  obtain ⟨q1, q2, q3⟩ := hQ
  -- the ten triangles
  have tABP : 2 * t ≤ sarea A B P := ge_of_pos ht (area_of_le_min hmin 0 1 3) p1
  have tBCP : 2 * t ≤ sarea B C P := ge_of_pos ht (area_of_le_min hmin 1 2 3) p2
  have tCAP : 2 * t ≤ sarea C A P := ge_of_pos ht (area_of_le_min hmin 2 0 3) p3
  have tABQ : 2 * t ≤ sarea A B Q := ge_of_pos ht (area_of_le_min hmin 0 1 4) q1
  have tBCQ : 2 * t ≤ sarea B C Q := ge_of_pos ht (area_of_le_min hmin 1 2 4) q2
  have tCAQ : 2 * t ≤ sarea C A Q := ge_of_pos ht (area_of_le_min hmin 2 0 4) q3
  have aA : 2 * t ≤ |sarea P Q A| := two_le_abs (area_of_le_min hmin 3 4 0)
  have aB : 2 * t ≤ |sarea P Q B| := two_le_abs (area_of_le_min hmin 3 4 1)
  have aC : 2 * t ≤ |sarea P Q C| := two_le_abs (area_of_le_min hmin 3 4 2)
  have e : sarea B C P * sarea P Q A + sarea C A P * sarea P Q B + sarea A B P * sarea P Q C = 0 := by
    unfold sarea; ring
  have sw : ∀ X : Point, sarea Q P X = -sarea P Q X := fun X => sarea_swap₁₂ _ _ _
  have c1 : sarea A P C = sarea C A P := sarea_cycle C A P
  have c2 : sarea B P A = sarea A B P := sarea_cycle A B P
  have c3 : sarea C P B = sarea B C P := sarea_cycle B C P
  have c4 : sarea A Q C = sarea C A Q := sarea_cycle C A Q
  have c5 : sarea B Q A = sarea A B Q := sarea_cycle A B Q
  have c6 : sarea C Q B = sarea B C Q := sarea_cycle B C Q
  rcases le_or_gt 0 (sarea P Q A) with hA | hA <;> rcases le_or_gt 0 (sarea P Q B) with hB | hB <;>
    rcases le_or_gt 0 (sarea P Q C) with hC | hC
  · -- (+,+,+): impossible
    rw [abs_of_nonneg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_nonneg hC] at aC
    nlinarith [mul_pos (by linarith : (0:ℝ) < sarea B C P) (by linarith : (0:ℝ) < sarea P Q A),
      mul_pos (by linarith : (0:ℝ) < sarea C A P) (by linarith : (0:ℝ) < sarea P Q B),
      mul_pos (by linarith : (0:ℝ) < sarea A B P) (by linarith : (0:ℝ) < sarea P Q C)]
  · -- (+,+,-): R = C, swap
    rw [abs_of_nonneg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_neg hC] at aC
    have := two_core (R := C) (S₁ := A) (S₂ := B) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (+,-,+): R = B, swap
    rw [abs_of_nonneg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_nonneg hC] at aC
    have := two_core (R := B) (S₁ := C) (S₂ := A) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (+,-,-): R = A
    rw [abs_of_nonneg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_neg hC] at aC
    exact two_core (R := A) (S₁ := B) (S₂ := C) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
  · -- (-,+,+): R = A, swap
    rw [abs_of_neg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_nonneg hC] at aC
    exact two_core (R := A) (S₁ := B) (S₂ := C) (P := Q) (Q := P) hs (by rw [sw]; linarith)
      (by rw [sw]; linarith) (by rw [sw]; linarith) (by linarith) (by linarith)
  · -- (-,+,-): R = B
    rw [abs_of_neg hA] at aA; rw [abs_of_nonneg hB] at aB; rw [abs_of_neg hC] at aC
    have := two_core (R := B) (S₁ := C) (S₂ := A) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (-,-,+): R = C
    rw [abs_of_neg hA] at aA; rw [abs_of_neg hB] at aB; rw [abs_of_nonneg hC] at aC
    have := two_core (R := C) (S₁ := A) (S₂ := B) (P := P) (Q := Q) hs (by linarith)
      (by linarith) (by linarith) (by linarith) (by linarith)
    linarith [sarea_cycle A B C, sarea_cycle B C A]
  · -- (-,-,-): impossible
    nlinarith [mul_pos (by linarith : (0:ℝ) < sarea B C P) (neg_pos.2 hA),
      mul_pos (by linarith : (0:ℝ) < sarea C A P) (neg_pos.2 hB),
      mul_pos (by linarith : (0:ℝ) < sarea A B P) (neg_pos.2 hC)]

/-- Two points in one fan triangle `ABW` of an interior point `W`: `[ABC] ≥ (6 + 2√3)s`
(the common step of lines 479–486 and 531–539), doubled form. -/
theorem fan_two {A B C W P Q : Point} {t : ℝ} (ht : 0 < t) (hW : InTriangle W A B C)
    (hP : InTriangle P A B W) (hQ : InTriangle Q A B W)
    (hmin : t ≤ minTriangleArea ![A, B, C, W, P, Q]) :
    (6 + 2 * Real.sqrt 3) * (2 * t) ≤ sarea A B C := by
  have h1 := two_ccw ht hP hQ (min_sub hmin ![A, B, W, P, Q] ![0, 1, 3, 4, 5] (by norm_num)
    (by decide) (by intro i; fin_cases i <;> simp))
  have h2 : 2 * t ≤ sarea B C W := ge_of_pos ht (area_of_le_min hmin 1 2 3) hW.2.1
  have h3 : 2 * t ≤ sarea C A W := ge_of_pos ht (area_of_le_min hmin 2 0 3) hW.2.2
  have e := sarea_add_sarea_add_sarea A B C W
  linarith

/-- The two orientations: two points strictly inside `ABC` are inside with the same orientation. -/
theorem inside_orient {X Y A B C : Point} (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) :
    (InTriangle X A B C ∧ InTriangle Y A B C) ∨ (InTriangle X A C B ∧ InTriangle Y A C B) := by
  have sw : sarea A C B = -sarea A B C := sarea_swap₂₃ _ _ _
  rcases hX with hX | hX <;> rcases hY with hY | hY
  · exact Or.inl ⟨hX, hY⟩
  · linarith [(inTri_pos hX), (inTri_pos hY)]
  · linarith [(inTri_pos hX), (inTri_pos hY)]
  · exact Or.inr ⟨hX, hY⟩

theorem half_le {A B C : Point} {k t : ℝ} (h : k * (2 * t) ≤ sarea A B C) :
    k * t ≤ triangleArea A B C := by
  rw [triangleArea_eq]; linarith [le_abs_self (sarea A B C)]

theorem sqrt3_gt : (1.7 : ℝ) < Real.sqrt 3 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt5_lt : Real.sqrt 5 < 2.25 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

theorem sqrt5_gt : (2.2 : ℝ) < Real.sqrt 5 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem sqrt2_lt : Real.sqrt 2 < 1.42 := by
  rw [Real.sqrt_lt' (by norm_num)]; norm_num

theorem sqrt2_gt : (1.41 : ℝ) < Real.sqrt 2 := by
  rw [Real.lt_sqrt (by norm_num)]; norm_num

theorem Gamma_le : (11 + 3 * Real.sqrt 5) / 2 ≤ 6 + 2 * Real.sqrt 3 := by
  linarith [sqrt3_gt, sqrt5_lt]

/-! ### §8. The six-point theorem -/

/-- The inequality behind (20): with all thirteen areas at least `s`, (18) and (19), the
connectors satisfy `a + b + c ≥ 3φs` (`Z₀ ≥ 3(√5 - 1)/2`, lines 624–661). -/
theorem mesh_ineq {x y z a b c k uA uB uC vA vB vC s : ℝ} (hs : 0 < s) (hx : s ≤ x)
    (hy : s ≤ y) (hz : s ≤ z) (ha : s ≤ a) (hb : s ≤ b) (hc : s ≤ c) (hk : s ≤ k)
    (huA : s ≤ uA) (huB : s ≤ uB) (huC : s ≤ uC) (hvA : s ≤ vA) (hvB : s ≤ vB) (hvC : s ≤ vC)
    (h18a : a = uA + vA - k) (h18b : b = uB + vB - k) (h18c : c = uC + vC - k)
    (h19a : x * k = a * b - uA * vB) (h19b : y * k = b * c - uB * vC)
    (h19c : z * k = c * a - uC * vA) :
    3 * ((1 + Real.sqrt 5) / 2) * s ≤ a + b + c := by
  have p1 : s * (uA + vB) - s ^ 2 ≤ uA * vB := by
    nlinarith [mul_nonneg (sub_nonneg.2 huA) (sub_nonneg.2 hvB)]
  have p2 : s * (uB + vC) - s ^ 2 ≤ uB * vC := by
    nlinarith [mul_nonneg (sub_nonneg.2 huB) (sub_nonneg.2 hvC)]
  have p3 : s * (uC + vA) - s ^ 2 ≤ uC * vA := by
    nlinarith [mul_nonneg (sub_nonneg.2 huC) (sub_nonneg.2 hvA)]
  have hxyz : 3 * s * k ≤ (x + y + z) * k := by nlinarith
  have hsum : s * (a + b + c) + 3 * s ^ 2 ≤ a * b + b * c + c * a := by nlinarith
  have hq : 0 ≤ (a + b + c) ^ 2 - 3 * s * (a + b + c) - 9 * s ^ 2 := by
    nlinarith [sq_nonneg (a - b), sq_nonneg (b - c), sq_nonneg (c - a)]
  have h5 : Real.sqrt 5 ^ 2 = 5 := Real.sq_sqrt (by norm_num)
  have h5' : 0 ≤ Real.sqrt 5 := Real.sqrt_nonneg 5
  set σ := a + b + c
  have e : (σ - (3 + 3 * Real.sqrt 5) / 2 * s) * (σ - (3 - 3 * Real.sqrt 5) / 2 * s) =
      σ ^ 2 - 3 * s * σ - 9 * s ^ 2 := by
    linear_combination (-(9 / 4) * s ^ 2) * h5
  by_contra hcon
  push Not at hcon
  have h1 : σ - (3 + 3 * Real.sqrt 5) / 2 * s < 0 := by linarith
  have h2 : 0 < σ - (3 - 3 * Real.sqrt 5) / 2 * s := by nlinarith
  nlinarith [mul_neg_of_neg_of_pos h1 h2]

/-- The labelled mesh (`Z ∈ int ABY`, `X ∈ int BCY`, counterclockwise `ABC`) gives the six-point
bound, or two points share a fan triangle (lines 543–661). Doubled form. -/
theorem mesh_core {A B C X Y Z : Point} {t : ℝ} (ht : 0 < t) (hY : InTriangle Y A B C)
    (hZ : InTriangle Z A B Y) (hX : InTriangle X B C Y)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    (11 + 3 * Real.sqrt 5) / 2 * (2 * t) ≤ sarea A B C := by
  have hZ' : InTriangle Z A B C := inTri_trans hZ hY
  have hX' : InTriangle X A B C := inTri_rot (inTri_rot (inTri_trans hX (inTri_rot hY)))
  have hG := Gamma_le
  have ht2 : 0 < 2 * t := by linarith
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  -- the fan of `Z` at `Y`
  rcases fan_cases hZ' hY (sarea_ne_of ht (area_of_le_min hmin 5 0 4))
      (sarea_ne_of ht (area_of_le_min hmin 5 1 4)) (sarea_ne_of ht (area_of_le_min hmin 5 2 4))
    with hYZ | hYZ | hYCAZ
  · exfalso; linarith [hYZ.2.1, hZ.2.1, sarea_swap₂₃ B Y Z]
  · have := fan_two (A := B) (B := C) (C := A) (W := Z) (P := X) (Q := Y) ht (inTri_rot hZ')
      (inTri_trans hX hYZ) hYZ (min_sub hmin ![B, C, A, Z, X, Y] ![1, 2, 0, 5, 3, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    nlinarith
  -- the fan of `Z` at `X`
  rcases fan_cases hZ' hX' (sarea_ne_of ht (area_of_le_min hmin 5 0 3))
      (sarea_ne_of ht (area_of_le_min hmin 5 1 3)) (sarea_ne_of ht (area_of_le_min hmin 5 2 3))
    with hXZ | hXBCZ | hXZ
  · exfalso; have h := inTri_trans hXZ hZ; linarith [h.2.1, hX.2.2, sarea_swap₁₂ B Y X]
  swap
  · have := fan_two (A := C) (B := A) (C := B) (W := Z) (P := X) (Q := Y) ht (inTri_rot (inTri_rot hZ'))
      hXZ hYCAZ (min_sub hmin ![C, A, B, Z, X, Y] ![2, 0, 1, 5, 3, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    nlinarith
  -- the fan of `X` at `Y`
  rcases fan_cases hX' hY (sarea_ne_of ht (area_of_le_min hmin 3 0 4))
      (sarea_ne_of ht (area_of_le_min hmin 3 1 4)) (sarea_ne_of ht (area_of_le_min hmin 3 2 4))
    with hYX | hYX | hYCAX
  · have := fan_two (A := A) (B := B) (C := C) (W := X) (P := Z) (Q := Y) ht hX'
      (inTri_trans hZ hYX) hYX (min_sub hmin ![A, B, C, X, Z, Y] ![0, 1, 2, 3, 5, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    nlinarith
  · exfalso; linarith [hYX.2.1, hX.2.1, sarea_swap₂₃ C Y X]
  -- the fan of `X` at `Z`
  rcases fan_cases hX' hZ' (sarea_ne_of ht (area_of_le_min hmin 3 0 5))
      (sarea_ne_of ht (area_of_le_min hmin 3 1 5)) (sarea_ne_of ht (area_of_le_min hmin 3 2 5))
    with hZABX | hZX | hZX
  rotate_left
  · exfalso; have h := inTri_trans hZX hX; linarith [h.2.2, hZ.2.1, sarea_swap₁₂ B Y Z]
  · have := fan_two (A := C) (B := A) (C := B) (W := X) (P := Z) (Q := Y) ht (inTri_rot (inTri_rot hX'))
      hZX hYCAX (min_sub hmin ![C, A, B, X, Z, Y] ![2, 0, 1, 3, 5, 4] (by norm_num)
        (by decide) (by intro i; fin_cases i <;> simp))
    nlinarith
  -- the central triangle is positive
  have hk : 0 < sarea Z X Y := by
    have hk0 : sarea Z X Y ≠ 0 := sarea_ne_of ht (area_of_le_min hmin 5 3 4)
    rcases hk0.lt_or_gt with hk | hk
    · exfalso
      have hYZBX : InTriangle Y Z B X :=
        ⟨by linarith [hZ.2.1, sarea_cycle Z B Y], by linarith [hX.2.2, sarea_cycle Y B X],
          by linarith [sarea_swap₁₂ Z X Y]⟩
      have h := inTri_trans hYZBX (inTri_rot (inTri_rot hXBCZ))
      linarith [h.2.2, hYCAZ.2.2, sarea_swap₁₂ Z C Y]
    · exact hk
  -- the thirteen areas
  have ex : 2 * t ≤ sarea A B Z := ge_of_pos ht (area_of_le_min hmin 0 1 5) hZ.1
  have ey : 2 * t ≤ sarea B C X := ge_of_pos ht (area_of_le_min hmin 1 2 3) hX.1
  have ez : 2 * t ≤ sarea C A Y := ge_of_pos ht (area_of_le_min hmin 2 0 4) hY.2.2
  have ea : 2 * t ≤ sarea A Z Y := ge_of_pos ht (area_of_le_min hmin 0 5 4)
    (by rw [sarea_cycle Y A Z]; exact hZ.2.2)
  have eb : 2 * t ≤ sarea B X Z := ge_of_pos ht (area_of_le_min hmin 1 3 5) hZABX.2.1
  have ec : 2 * t ≤ sarea C Y X := ge_of_pos ht (area_of_le_min hmin 2 4 3) hX.2.1
  have ek : 2 * t ≤ sarea Z X Y := ge_of_pos ht (area_of_le_min hmin 5 3 4) hk
  have euA : 2 * t ≤ sarea A Z X := ge_of_pos ht (area_of_le_min hmin 0 5 3)
    (by rw [sarea_cycle X A Z]; exact hZABX.2.2)
  have euB : 2 * t ≤ sarea B X Y := ge_of_pos ht (area_of_le_min hmin 1 3 4)
    (by rw [sarea_cycle Y B X]; exact hX.2.2)
  have euC : 2 * t ≤ sarea C Y Z := ge_of_pos ht (area_of_le_min hmin 2 4 5)
    (by rw [sarea_cycle Z C Y]; exact hYCAZ.2.2)
  have evA : 2 * t ≤ sarea A X Y := ge_of_pos ht (area_of_le_min hmin 0 3 4) hYCAX.2.1
  have evB : 2 * t ≤ sarea B Y Z := ge_of_pos ht (area_of_le_min hmin 1 4 5) hZ.2.1
  have evC : 2 * t ≤ sarea C Z X := ge_of_pos ht (area_of_le_min hmin 2 5 3) hXBCZ.2.1
  have tiling : sarea A B C = sarea A B Z + sarea B C X + sarea C A Y + sarea A Z Y +
      sarea B X Z + sarea C Y X + sarea Z X Y := by unfold sarea; ring
  have h18a : sarea A Z Y = sarea A Z X + sarea A X Y - sarea Z X Y := by unfold sarea; ring
  have h18b : sarea B X Z = sarea B X Y + sarea B Y Z - sarea Z X Y := by unfold sarea; ring
  have h18c : sarea C Y X = sarea C Y Z + sarea C Z X - sarea Z X Y := by unfold sarea; ring
  have h19a : sarea A B Z * sarea Z X Y = sarea A Z Y * sarea B X Z - sarea A Z X * sarea B Y Z := by
    unfold sarea; ring
  have h19b : sarea B C X * sarea Z X Y = sarea B X Z * sarea C Y X - sarea B X Y * sarea C Z X := by
    unfold sarea; ring
  have h19c : sarea C A Y * sarea Z X Y = sarea C Y X * sarea A Z Y - sarea C Y Z * sarea A X Y := by
    unfold sarea; ring
  have := mesh_ineq ht2 ex ey ez ea eb ec ek euA euB euC evA evB evC h18a h18b h18c h19a h19b h19c
  nlinarith

/-- The six-point theorem for a counterclockwise triangle, doubled form. -/
theorem six_core {A B C X Y Z : Point} {t : ℝ} (ht : 0 < t) (hX : InTriangle X A B C)
    (hY : InTriangle Y A B C) (hZ : InTriangle Z A B C)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    (11 + 3 * Real.sqrt 5) / 2 * (2 * t) ≤ sarea A B C := by
  have hG := Gamma_le
  have ht2 : 0 < 2 * t := by linarith
  have cyc1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have cyc2 : sarea C A B = sarea A B C := (sarea_cycle B C A).trans cyc1
  rcases fan_cases hY hX (sarea_ne_of ht (area_of_le_min hmin 4 0 3))
      (sarea_ne_of ht (area_of_le_min hmin 4 1 3)) (sarea_ne_of ht (area_of_le_min hmin 4 2 3))
    with hXY | hXY | hXY <;>
  rcases fan_cases hY hZ (sarea_ne_of ht (area_of_le_min hmin 4 0 5))
      (sarea_ne_of ht (area_of_le_min hmin 4 1 5)) (sarea_ne_of ht (area_of_le_min hmin 4 2 5))
    with hZY | hZY | hZY
  · have := fan_two (A := A) (B := B) (C := C) (W := Y) (P := X) (Q := Z) ht hY hXY hZY
      (min_sub hmin ![A, B, C, Y, X, Z] ![0, 1, 2, 4, 3, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    nlinarith
  · exact mesh_core (A := A) (B := B) (C := C) (X := Z) (Y := Y) (Z := X) ht hY hXY hZY
      (min_sub hmin ![A, B, C, Z, Y, X] ![0, 1, 2, 5, 4, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
  · have := mesh_core (A := C) (B := A) (C := B) (X := X) (Y := Y) (Z := Z) ht (inTri_rot (inTri_rot hY)) hZY hXY
      (min_sub hmin ![C, A, B, X, Y, Z] ![2, 0, 1, 3, 4, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    linarith
  · exact mesh_core (A := A) (B := B) (C := C) (X := X) (Y := Y) (Z := Z) ht hY hZY hXY hmin
  · have := fan_two (A := B) (B := C) (C := A) (W := Y) (P := X) (Q := Z) ht (inTri_rot hY) hXY hZY
      (min_sub hmin ![B, C, A, Y, X, Z] ![1, 2, 0, 4, 3, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    nlinarith
  · have := mesh_core (A := B) (B := C) (C := A) (X := Z) (Y := Y) (Z := X) ht (inTri_rot hY) hXY hZY
      (min_sub hmin ![B, C, A, Z, Y, X] ![1, 2, 0, 5, 4, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    linarith
  · have := mesh_core (A := C) (B := A) (C := B) (X := Z) (Y := Y) (Z := X) ht (inTri_rot (inTri_rot hY)) hXY hZY
      (min_sub hmin ![C, A, B, Z, Y, X] ![2, 0, 1, 5, 4, 3] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    linarith
  · have := mesh_core (A := B) (B := C) (C := A) (X := X) (Y := Y) (Z := Z) ht (inTri_rot hY) hZY hXY
      (min_sub hmin ![B, C, A, X, Y, Z] ![1, 2, 0, 3, 4, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    linarith
  · have := fan_two (A := C) (B := A) (C := B) (W := Y) (P := X) (Q := Z) ht (inTri_rot (inTri_rot hY)) hXY hZY
      (min_sub hmin ![C, A, B, Y, X, Z] ![2, 0, 1, 4, 3, 5] (by norm_num) (by decide)
        (by intro i; fin_cases i <;> simp))
    nlinarith

/-- **Two-interior-point lemma** (`CORNER_FAMILIES:TwoInteriorPointLemma`), equation (13): a
triangle `ABC` containing two points `P, Q` strictly inside, such that all triangles of the five
points have area at least `t > 0`, has area at least `(4 + 2√3)t`.
`hand/CORNER_FAMILIES.md`, lines 421–472. (Proof: the identity of `two_core` replaces the
manuscript's affine coordinates.) -/
theorem twoInteriorPointLemma (A B C P Q : Point) (hP : InsideTriangle P A B C)
    (hQ : InsideTriangle Q A B C) (t : ℝ) (ht : 0 < t)
    (hmin : t ≤ minTriangleArea ![A, B, C, P, Q]) :
    (4 + 2 * Real.sqrt 3) * t ≤ triangleArea A B C := by
  rcases inside_orient hP hQ with ⟨hP, hQ⟩ | ⟨hP, hQ⟩
  · exact half_le (two_ccw ht hP hQ hmin)
  · rw [← triangleArea_swap₂₃]
    exact half_le (two_ccw ht hP hQ (min_sub hmin ![A, C, B, P, Q] ![0, 2, 1, 3, 4] (by norm_num)
      (by decide) (by intro i; fin_cases i <;> simp)))

/-- **Six-point triangular-hull theorem** (`CORNER_FAMILIES:SixPointTriangularHullTheorem`),
equation (14): six points whose convex hull is a triangle `ABC` (the other three strictly
inside) and whose triangles all have area at least `t` satisfy
`area(ABC) ≥ Γt`, `Γ = (11 + 3√5)/2`; the constant is sharp (`claim_Gamma_sharp`).
`hand/CORNER_FAMILIES.md`, lines 516–672.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, CORNER_FAMILIES:claim-nondistributed-bound -/
theorem sixPointTriangularHullTheorem (A B C X Y Z : Point) (hX : InsideTriangle X A B C)
    (hY : InsideTriangle Y A B C) (hZ : InsideTriangle Z A B C) (t : ℝ)
    (hmin : t ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    (11 + 3 * Real.sqrt 5) / 2 * t ≤ triangleArea A B C := by
  rcases le_or_gt t 0 with ht | ht
  · have : 0 ≤ (11 + 3 * Real.sqrt 5) / 2 := by positivity
    nlinarith [triangleArea_nonneg A B C]
  rcases inside_orient hX hY with ⟨hX', hY'⟩ | ⟨hX', hY'⟩ <;>
    rcases inside_orient hX hZ with ⟨-, hZ'⟩ | ⟨hX'', hZ'⟩
  · exact half_le (six_core ht hX' hY' hZ' hmin)
  · exfalso; linarith [(inTri_pos hX'), (inTri_pos hX''), sarea_swap₂₃ A B C]
  · exfalso; linarith [(inTri_pos hX'), (inTri_pos hZ'), sarea_swap₂₃ A B C]
  · rw [← triangleArea_swap₂₃]
    exact half_le (six_core ht hX' hY' hZ' (min_sub hmin ![A, C, B, X, Y, Z] ![0, 2, 1, 3, 4, 5]
      (by norm_num) (by decide) (by intro i; fin_cases i <;> simp)))

end Heilbronn.CornerFamilies
