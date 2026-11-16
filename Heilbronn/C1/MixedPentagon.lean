module

public import Heilbronn.C1.TwoLower.Basic
public import Heilbronn.C1.TwoLower.PentScalar
public import Heilbronn.Corners.OneCornerCompletion
public import Heilbronn.Hulls.FourInteriorQuadrilaterals

/-! # The mixed upper pair in the C1 pentagon (`hand/C1_MIXED_PENTAGON.md`)

Role: a component on the primary route. It completes the exact-pentagon branch of
`hand/ONE_CORNER_COMPLETION.md` §4, and is cited by `hand/C1_TWO_LOWER_COMPLETION.md` Theorem 2,
step 2 (both non-lower free points inside the anchor pentagon), through
`claim_pentagon_excluded`.

Setting (`C1_MIXED_PENTAGON.md`, lines 1-32; `Setting` below): the C1 anchors (`C1Anchors`);
the four free points `L, M, P, Q` in the square; the nine-point configuration
`c1Config h c d f L M P Q` has least area at least `A₀`, so every doubled area is at least
`s = 7/64` (this note's threshold); `K = 4 + 2√3`, `ρ = 13/16 < Ks`. Two free points `L, M` are
inside `OHC`; the upper points are `P ∈ HCD ∩ HCF` and `Q ∈ CDF ∩ HCD`; the line `PQ` isolates
`C` from `H, D, F` (ONE_CORNER_COMPLETION Theorem 3, through
`OneCornerCompletion.claim_pentagon_reduction_mixed`). The reflected placement (`Q ∈ HDF`) is
equivalent by transposition.

Results:
* `eq1`: the orientation of `PQ`, and `L, P` above `OD`, `M, Q` below (after naming), from the
  alternating sector theorem `FourInteriorQuadrilaterals.theorem1` for `OCDH`;
* `eq2_3`: `hQ_x ≥ Ks`, `hc ≥ Ks`, `[HCD] ≥ Ks`;
* `eq4_6`: `d ≤ 1 - s`, `Q ∈ CDL`, `[CDL] ≤ (1 - s)² < ρ`, `P` above `DL`, `M` below `CL`;
* `claim_OF_split`: `f ≤ 1 - 3s`, `M ∈ OCF`, and exactly one of `L, P` in `OHF`;
* `theorem_main` (**Theorem**): `L ∈ OHF`, `P ∈ OCF` is impossible;
* `claim_reverse`: `P ∈ OHF`, `L ∈ OCF` is impossible;
* `claim_pentagon_excluded`: two lower points and two points in the open upper quadrilateral
  `HCDF` are impossible (the branch of C1_TWO_LOWER_COMPLETION Theorem 2, step 2).

The scalar parts (bounds (5), (9)–(14), (15)–(19)) are in `Heilbronn.C1.TwoLower.PentScalar`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1MixedPentagon

open Heilbronn.C1 Heilbronn.C1TwoLower

/-! ### Sign tools -/

/-- Angular transitivity at `D`, all three points on the positive side of `DU`. -/
theorem ang_pos {D U A B E : Point} (hA : 0 < sarea D U A) (hB : 0 < sarea D U B)
    (hE : 0 < sarea D U E) (h1 : 0 < sarea D A B) (h2 : 0 < sarea D B E) : 0 < sarea D A E := by
  have e : sarea D U B * sarea D A E = sarea D U E * sarea D A B + sarea D U A * sarea D B E := by
    unfold sarea; ring
  have p1 := mul_pos hE h1
  have p2 := mul_pos hA h2
  have : 0 < sarea D U B * sarea D A E := by rw [e]; linarith
  exact pos_of_mul_pos_right this hB.le

/-- Angular transitivity at `D`, all three points on the negative side of `DU`. -/
theorem ang_neg {D U A B E : Point} (hA : sarea D U A < 0) (hB : sarea D U B < 0)
    (hE : sarea D U E < 0) (h1 : 0 < sarea D A B) (h2 : 0 < sarea D B E) : 0 < sarea D A E := by
  have e : sarea D U B * sarea D A E = sarea D U E * sarea D A B + sarea D U A * sarea D B E := by
    unfold sarea; ring
  have p1 := mul_neg_of_neg_of_pos hE h1
  have p2 := mul_neg_of_neg_of_pos hA h2
  have : sarea D U B * sarea D A E < 0 := by rw [e]; linarith
  by_contra hn
  push Not at hn
  nlinarith [mul_nonneg_of_nonpos_of_nonpos hB.le hn]

/-- The barycentric identity of the lower triangle `OCH`. -/
theorem low_aff (h c : ℝ) (X A B : Point) :
    sarea A B X * (h * c) = sarea (ptC c) (ptH h) X * sarea A B ptO +
      sarea (ptH h) ptO X * sarea A B (ptC c) + sarea ptO (ptC c) X * sarea A B (ptH h) := by
  simp only [sarea, ptO, ptC, ptH]; ring

/-- An affine function positive at `O` and nonnegative at `C, H` is positive inside `OCH`. -/
theorem low_pos {h c : ℝ} {X A B : Point} (h0 : 0 < h) (c0 : 0 < c) (hX : InLower h c X)
    (hO : 0 < sarea A B ptO) (hC : 0 ≤ sarea A B (ptC c)) (hH : 0 ≤ sarea A B (ptH h)) :
    0 < sarea A B X := by
  obtain ⟨r1, r2, r3⟩ := hX
  have e := low_aff h c X A B
  have p1 := mul_pos r2 hO
  have p2 := mul_nonneg r3.le hC
  have p3 := mul_nonneg r1.le hH
  have : 0 < sarea A B X * (h * c) := by rw [e]; linarith
  exact pos_of_mul_pos_left this (mul_pos h0 c0).le

/-- The sign facts of a lower point. -/
theorem low_facts {h c d f : ℝ} {X : Point} (hA : C1Anchors h c d f) (hX : InLower h c X) :
    0 < sarea (ptC c) (ptD d) X ∧ 0 < sarea (ptD d) (ptH h) X ∧ 0 < sarea (ptC c) (ptF f) X ∧
      0 < sarea (ptD d) (ptF f) X ∧ 0 < sarea (ptF f) (ptH h) X ∧ 0 < X.1 ∧ 0 < X.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have q1 := mul_nonneg (sub_nonneg.2 hdh) (by linarith : (0 : ℝ) ≤ 1 - c)
  have q2 := mul_nonneg (sub_nonneg.2 hdh) (by linarith : (0 : ℝ) ≤ 1 - f)
  have q3 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h) (sub_nonneg.2 hfc)
  have q4 := mul_nonneg hd.le (by linarith : (0 : ℝ) ≤ 1 - f)
  have q5 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - d) (by linarith : (0 : ℝ) ≤ 1 - c)
  have q6 := mul_nonneg hf.le (sub_nonneg.2 hdh)
  have q7 := mul_nonneg h0.le (by linarith : (0 : ℝ) ≤ 1 - c)
  have q8 := mul_pos c0 hd
  have q9 := mul_pos hf h0
  have q10 := mul_nonneg (by linarith : (0 : ℝ) ≤ 1 - h) c0.le
  have q11 : d * f < 1 := by nlinarith
  have q12 := mul_nonneg h0.le (sub_nonneg.2 hfc)
  have hX' := hX
  obtain ⟨r1, -, r3⟩ := hX'
  have e1 : sarea (ptH h) ptO X = h * X.1 := by simp only [sarea, ptH, ptO]; ring
  have e2 : sarea ptO (ptC c) X = c * X.2 := by simp only [sarea, ptO, ptC]; ring
  refine ⟨low_pos h0 c0 hX ?_ ?_ ?_, low_pos h0 c0 hX ?_ ?_ ?_, low_pos h0 c0 hX ?_ ?_ ?_,
    low_pos h0 c0 hX ?_ ?_ ?_, low_pos h0 c0 hX ?_ ?_ ?_, ?_, ?_⟩
  all_goals first
    | (rw [e1] at r3; exact pos_of_mul_pos_right r3 h0.le)
    | (rw [e2] at r1; exact pos_of_mul_pos_right r1 c0.le)
    | (simp only [sarea, ptO, ptC, ptD, ptF, ptH]; linarith)

/-- The nine points of a C1 configuration lie in the square (a copy of
`OneCorner.c1Config_mem`). -/
theorem c1_mem {h c d f : ℝ} (hanch : C1Anchors h c d f) {W X Y Z : Point}
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare) :
    ∀ i, c1Config h c d f W X Y Z i ∈ unitSquare := by
  obtain ⟨hd, hdh, hh1, hf, hfc, hc1⟩ := hanch
  intro i
  fin_cases i
  · show ((0 : ℝ), (0 : ℝ)) ∈ unitSquare; exact ⟨le_rfl, by norm_num, le_rfl, by norm_num⟩
  · show ((c, 0) : Point) ∈ unitSquare
    exact ⟨by linarith, hc1.le, le_rfl, by norm_num⟩
  · show ((1, d) : Point) ∈ unitSquare
    exact ⟨by norm_num, le_rfl, by linarith, by linarith⟩
  · show ((f, 1) : Point) ∈ unitSquare
    exact ⟨by linarith, by linarith, by norm_num, le_rfl⟩
  · show ((0, h) : Point) ∈ unitSquare
    exact ⟨le_rfl, by norm_num, by linarith, hh1.le⟩
  · exact hW
  · exact hX
  · exact hY
  · exact hZ

/-- `L, M` distinct points of a one-element set: impossible. -/
theorem ncard_one_two {S : Set (Fin 9)} (h : S.ncard = 1) {a b : Fin 9} (ha : a ∈ S)
    (hb : b ∈ S) (hab : a ≠ b) : False := by
  obtain ⟨x, hx⟩ := Set.ncard_eq_one.1 h
  rw [hx, Set.mem_singleton_iff] at ha hb
  exact hab (ha.trans hb.symm)

/-- Three distinct members: `ncard ≥ 3`. -/
theorem three_le_ncard {S : Set (Fin 9)} {a b e : Fin 9} (hab : a ≠ b) (hae : a ≠ e)
    (hbe : b ≠ e) (ha : a ∈ S) (hb : b ∈ S) (he : e ∈ S) : 3 ≤ S.ncard := by
  have h3 : ({a, b, e} : Set (Fin 9)).ncard = 3 := Set.ncard_eq_three.2 ⟨a, b, e, hab, hae, hbe, rfl⟩
  rw [← h3]
  apply Set.ncard_le_ncard _ (Set.toFinite S)
  intro x hx
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hx
  rcases hx with rfl | rfl | rfl <;> assumption

/-- The standing setting of the note (lines 8-32): C1 anchors, free points `L, M, P, Q` in the
square, least area at least `A₀`, `L, M` strictly inside `OHC`, `P, Q` in the open upper
quadrilateral with `P ∈ HCD ∩ HCF`, `Q ∈ HCD ∩ CDF` (the signs of the diagonals `HD`, `CF`), and
the line `PQ` isolating `C` from `H, D, F`. -/
structure Setting (h c d f : ℝ) (L M P Q : Point) : Prop where
  anchors : C1Anchors h c d f
  memL : L ∈ unitSquare
  memM : M ∈ unitSquare
  memP : P ∈ unitSquare
  memQ : Q ∈ unitSquare
  competitive : A₀ ≤ minTriangleArea (c1Config h c d f L M P Q)
  lowerL : InLower h c L
  lowerM : InLower h c M
  upP : InUpperQuad h c d f P
  upQ : InUpperQuad h c d f Q
  P_HD : sarea (ptH h) (ptD d) P < 0
  P_CF : 0 < sarea (ptC c) (ptF f) P
  Q_HD : sarea (ptH h) (ptD d) Q < 0
  Q_CF : sarea (ptC c) (ptF f) Q < 0
  isolatesC : OneCornerCompletion.Isolates P Q (ptC c) (ptH h) (ptD d) (ptF f)

/-- Positive coordinates in the setting. -/
theorem Setting.pos {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q) :
    0 < h ∧ 0 < c ∧ 0 < P.1 ∧ 0 < P.2 ∧ 0 < Q.1 ∧ 0 < Q.2 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have h0 : 0 < h := by linarith
  have c0 : 0 < c := by linarith
  have hmin := hS.competitive
  obtain ⟨p0, -, p2, -⟩ := hS.memP
  obtain ⟨q0, -, q2, -⟩ := hS.memQ
  have e1 : 7 / 64 ≤ |sarea (ptH h) ptO P| := ar7 hmin 4 0 7
  have e2 : 7 / 64 ≤ |sarea ptO (ptC c) P| := ar7 hmin 0 1 7
  have e3 : 7 / 64 ≤ |sarea (ptH h) ptO Q| := ar7 hmin 4 0 8
  have e4 : 7 / 64 ≤ |sarea ptO (ptC c) Q| := ar7 hmin 0 1 8
  rw [show sarea (ptH h) ptO P = h * P.1 by simp only [sarea, ptH, ptO]; ring,
    abs_of_nonneg (mul_nonneg h0.le p0)] at e1
  rw [show sarea ptO (ptC c) P = c * P.2 by simp only [sarea, ptO, ptC]; ring,
    abs_of_nonneg (mul_nonneg c0.le p2)] at e2
  rw [show sarea (ptH h) ptO Q = h * Q.1 by simp only [sarea, ptH, ptO]; ring,
    abs_of_nonneg (mul_nonneg h0.le q0)] at e3
  rw [show sarea ptO (ptC c) Q = c * Q.2 by simp only [sarea, ptO, ptC]; ring,
    abs_of_nonneg (mul_nonneg c0.le q2)] at e4
  exact ⟨h0, c0, pos_of_mul_pos_right (by linarith) h0.le,
    pos_of_mul_pos_right (by linarith) c0.le, pos_of_mul_pos_right (by linarith) h0.le,
    pos_of_mul_pos_right (by linarith) c0.le⟩

/-- The four free points are inside the quadrilateral `OCDH`, and only they. -/
theorem quad_count {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q) :
    Set.ncard {m | QuadrilateralHull.InQuad (c1Config h c d f L M P Q m)
      (c1Config h c d f L M P Q 0) (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 2)
      (c1Config h c d f L M P Q 4)} = 4 := by
  obtain ⟨h0, c0, p1, p2, q1, q2⟩ := hS.pos
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨l1, l2, l3, -, -, -, -⟩ := low_facts hS.anchors hS.lowerL
  obtain ⟨m1, m2, m3, -, -, -, -⟩ := low_facts hS.anchors hS.lowerM
  have hPD : 0 < sarea (ptD d) (ptH h) P := by
    have := hS.P_HD; have e : sarea (ptD d) (ptH h) P = -sarea (ptH h) (ptD d) P := by
      unfold sarea; ring
    linarith
  have hQD : 0 < sarea (ptD d) (ptH h) Q := by
    have := hS.Q_HD; have e : sarea (ptD d) (ptH h) Q = -sarea (ptH h) (ptD d) Q := by
      unfold sarea; ring
    linarith
  have inL : QuadrilateralHull.InQuad L ptO (ptC c) (ptD d) (ptH h) :=
    ⟨hS.lowerL.1, l1, l2, hS.lowerL.2.2⟩
  have inM : QuadrilateralHull.InQuad M ptO (ptC c) (ptD d) (ptH h) :=
    ⟨hS.lowerM.1, m1, m2, hS.lowerM.2.2⟩
  have inP : QuadrilateralHull.InQuad P ptO (ptC c) (ptD d) (ptH h) :=
    ⟨by simp only [sarea, ptO, ptC]; nlinarith, hS.upP.2.1, hPD,
      by simp only [sarea, ptO, ptH]; nlinarith⟩
  have inQ : QuadrilateralHull.InQuad Q ptO (ptC c) (ptD d) (ptH h) :=
    ⟨by simp only [sarea, ptO, ptC]; nlinarith, hS.upQ.2.1, hQD,
      by simp only [sarea, ptO, ptH]; nlinarith⟩
  have out0 : ¬ QuadrilateralHull.InQuad ptO ptO (ptC c) (ptD d) (ptH h) := fun hq => by
    have := hq.1; simp only [sarea, ptO, ptC] at this; linarith
  have out1 : ¬ QuadrilateralHull.InQuad (ptC c) ptO (ptC c) (ptD d) (ptH h) := fun hq => by
    have := hq.1; simp only [sarea, ptO, ptC] at this; linarith
  have out2 : ¬ QuadrilateralHull.InQuad (ptD d) ptO (ptC c) (ptD d) (ptH h) := fun hq => by
    have := hq.2.1; simp only [sarea, ptC, ptD] at this; linarith
  have out3 : ¬ QuadrilateralHull.InQuad (ptF f) ptO (ptC c) (ptD d) (ptH h) := fun hq => by
    have := hq.2.2.1; simp only [sarea, ptD, ptH, ptF] at this
    nlinarith [mul_nonneg hf.le (sub_nonneg.2 hdh)]
  have out4 : ¬ QuadrilateralHull.InQuad (ptH h) ptO (ptC c) (ptD d) (ptH h) := fun hq => by
    have := hq.2.2.1; simp only [sarea, ptD, ptH] at this; linarith
  have e : {m | QuadrilateralHull.InQuad (c1Config h c d f L M P Q m)
      (c1Config h c d f L M P Q 0) (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 2)
      (c1Config h c d f L M P Q 4)} = {5, 6, 7, 8} := by
    ext m
    simp only [Set.mem_ofPred_eq, Set.mem_insert_iff, Set.mem_singleton_iff]
    fin_cases m
    · exact iff_of_false out0 (by decide)
    · exact iff_of_false out1 (by decide)
    · exact iff_of_false out2 (by decide)
    · exact iff_of_false out3 (by decide)
    · exact iff_of_false out4 (by decide)
    · exact iff_of_true inL (by decide)
    · exact iff_of_true inM (by decide)
    · exact iff_of_true inP (by decide)
    · exact iff_of_true inQ (by decide)
  rw [e, show ({5, 6, 7, 8} : Set (Fin 9)) = ↑({5, 6, 7, 8} : Finset (Fin 9)) by simp,
    Set.ncard_coe_finset]
  decide

/-- **Claim** (`C1_MIXED_PENTAGON:eq1`). In the setting, `[PQH], [PQD], [PQF] > 0 > [PQC]`; one
lower point is above `OD` and the other below; and `P` is above `OD`, `Q` below. Hence, naming
the lower points so that `L` is above `OD`, (1): `L, P` are above `OD`, `M, Q` below.
`hand/C1_MIXED_PENTAGON.md`, lines 34-59.
Uses: FOUR_INTERIOR_QUADRILATERALS:Theorem1, ONE_CORNER_COMPLETION:Theorem3. -/
theorem eq1 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q) :
    (0 < sarea P Q (ptH h) ∧ 0 < sarea P Q (ptD d) ∧ 0 < sarea P Q (ptF f) ∧
        sarea P Q (ptC c) < 0) ∧
      ((0 < sarea ptO (ptD d) L ∧ sarea ptO (ptD d) M < 0) ∨
        (0 < sarea ptO (ptD d) M ∧ sarea ptO (ptD d) L < 0)) ∧
      0 < sarea ptO (ptD d) P ∧ sarea ptO (ptD d) Q < 0 := by
  obtain ⟨h0, c0, p1, p2, q1, q2⟩ := hS.pos
  obtain ⟨i1, i2, i3⟩ := hS.isolatesC
  have hPF := hS.P_CF
  have hQF := hS.Q_CF
  have eF : sarea P Q (ptF f) - sarea P Q (ptC c) =
      sarea (ptC c) (ptF f) P - sarea (ptC c) (ptF f) Q := by unfold sarea; ring
  have hC : sarea P Q (ptC c) < 0 := by
    by_contra hn
    push Not at hn
    have : 0 < sarea P Q (ptF f) := by linarith
    nlinarith [mul_nonneg hn this.le]
  have pos_of : ∀ X : Point, sarea P Q (ptC c) * sarea P Q X < 0 → 0 < sarea P Q X := by
    intro X hX
    by_contra hn
    push Not at hn
    nlinarith [mul_nonneg_of_nonpos_of_nonpos hC.le hn]
  have sH := pos_of _ i1
  have sD := pos_of _ i2
  have sF := pos_of _ i3
  refine ⟨⟨sH, sD, sF, hC⟩, ?_⟩
  -- the alternating sector theorem for `OCDH`
  have hmin := hS.competitive
  have hsq := c1_mem hS.anchors hS.memL hS.memM hS.memP hS.memQ
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  have hq : QuadrilateralHull.ConvexQuad (c1Config h c d f L M P Q 0)
      (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 2) (c1Config h c d f L M P Q 4) := by
    show QuadrilateralHull.ConvexQuad ptO (ptC c) (ptD d) (ptH h)
    refine ⟨?_, ?_, ?_, ?_⟩ <;> simp only [sarea, ptO, ptC, ptD, ptH] <;>
      nlinarith [mul_pos c0 hd, mul_nonneg h0.le (by linarith : (0 : ℝ) ≤ 1 - c)]
  obtain ⟨S1, S2, S3, S4⟩ :=
    (FourInteriorQuadrilaterals.theorem1 (P := c1Config h c d f L M P Q) (i := 0) (j := 1)
      (k := 2) (l := 4) hsq hmin hq).2 (quad_count hS)
  obtain ⟨l1, l2, -, -, -, -, -⟩ := low_facts hS.anchors hS.lowerL
  obtain ⟨m1, m2, -, -, -, -, -⟩ := low_facts hS.anchors hS.lowerM
  have hPD : 0 < sarea (ptD d) (ptH h) P := by
    have := hS.P_HD; have e : sarea (ptD d) (ptH h) P = -sarea (ptH h) (ptD d) P := by
      unfold sarea; ring
    linarith
  have hQD : 0 < sarea (ptD d) (ptH h) Q := by
    have := hS.Q_HD; have e : sarea (ptD d) (ptH h) Q = -sarea (ptH h) (ptD d) Q := by
      unfold sarea; ring
    linarith
  have hDO : ∀ X : Point, sarea ptO (ptD d) X < 0 → 0 < sarea (ptD d) ptO X := fun X hX => by
    have e : sarea (ptD d) ptO X = -sarea ptO (ptD d) X := by unfold sarea; ring
    linarith
  -- the lower points
  have lowS1 : ∀ (m : Fin 9) (X : Point), c1Config h c d f L M P Q m = X → InLower h c X →
      0 < sarea (ptC c) (ptD d) X → sarea ptO (ptD d) X < 0 →
      m ∈ {m | FourInteriorQuadrilaterals.InSector (c1Config h c d f L M P Q m)
        (c1Config h c d f L M P Q 0) (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 2)
        (c1Config h c d f L M P Q 4)} := by
    intro m X hm hX hCD hX0
    show FourInteriorQuadrilaterals.InSector _ ptO (ptC c) (ptD d) (ptH h)
    rw [hm]
    exact ⟨⟨hX.1, hCD, hDO X hX0⟩, hX⟩
  have lowS4 : ∀ (m : Fin 9) (X : Point), c1Config h c d f L M P Q m = X → InLower h c X →
      0 < sarea (ptD d) (ptH h) X → 0 < sarea ptO (ptD d) X →
      m ∈ {m | FourInteriorQuadrilaterals.InSector (c1Config h c d f L M P Q m)
        (c1Config h c d f L M P Q 4) (c1Config h c d f L M P Q 0) (c1Config h c d f L M P Q 1)
        (c1Config h c d f L M P Q 2)} := by
    intro m X hm hX hDH hX0
    show FourInteriorQuadrilaterals.InSector _ (ptH h) ptO (ptC c) (ptD d)
    rw [hm]
    exact ⟨⟨hX.2.2, hX.1, hX.2.1⟩, ⟨hX.2.2, hX0, hDH⟩⟩
  have upS2 : ∀ (m : Fin 9) (X : Point), c1Config h c d f L M P Q m = X →
      InUpperQuad h c d f X → 0 < sarea (ptD d) (ptH h) X → 0 < X.2 →
      sarea ptO (ptD d) X < 0 →
      m ∈ {m | FourInteriorQuadrilaterals.InSector (c1Config h c d f L M P Q m)
        (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 2) (c1Config h c d f L M P Q 4)
        (c1Config h c d f L M P Q 0)} := by
    intro m X hm hX hDH hy hX0
    show FourInteriorQuadrilaterals.InSector _ (ptC c) (ptD d) (ptH h) ptO
    rw [hm]
    exact ⟨⟨hX.2.1, hDH, hX.1⟩, ⟨hX.2.1, hDO X hX0, by simp only [sarea, ptO, ptC]; nlinarith⟩⟩
  have upS3 : ∀ (m : Fin 9) (X : Point), c1Config h c d f L M P Q m = X →
      InUpperQuad h c d f X → 0 < sarea (ptD d) (ptH h) X → 0 < X.1 →
      0 < sarea ptO (ptD d) X →
      m ∈ {m | FourInteriorQuadrilaterals.InSector (c1Config h c d f L M P Q m)
        (c1Config h c d f L M P Q 2) (c1Config h c d f L M P Q 4) (c1Config h c d f L M P Q 0)
        (c1Config h c d f L M P Q 1)} := by
    intro m X hm hX hDH hx hX0
    show FourInteriorQuadrilaterals.InSector _ (ptD d) (ptH h) ptO (ptC c)
    rw [hm]
    exact ⟨⟨hDH, by simp only [sarea, ptO, ptH]; nlinarith, hX0⟩, ⟨hDH, hX.1, hX.2.1⟩⟩
  have nL : sarea ptO (ptD d) L ≠ 0 := ar_ne (by norm_num) (ar hmin 0 2 5)
  have nM : sarea ptO (ptD d) M ≠ 0 := ar_ne (by norm_num) (ar hmin 0 2 6)
  have nP : sarea ptO (ptD d) P ≠ 0 := ar_ne (by norm_num) (ar hmin 0 2 7)
  have nQ : sarea ptO (ptD d) Q ≠ 0 := ar_ne (by norm_num) (ar hmin 0 2 8)
  refine ⟨?_, ?_⟩
  · rcases lt_or_gt_of_ne nL with hL | hL <;> rcases lt_or_gt_of_ne nM with hM | hM
    · exact (ncard_one_two S1 (lowS1 5 L rfl hS.lowerL l1 hL) (lowS1 6 M rfl hS.lowerM m1 hM)
        (by decide)).elim
    · exact Or.inr ⟨hM, hL⟩
    · exact Or.inl ⟨hL, hM⟩
    · exact (ncard_one_two S4 (lowS4 5 L rfl hS.lowerL l2 hL) (lowS4 6 M rfl hS.lowerM m2 hM)
        (by decide)).elim
  · rcases lt_or_gt_of_ne nP with hP | hP <;> rcases lt_or_gt_of_ne nQ with hQ | hQ
    · exact (ncard_one_two S2 (upS2 7 P rfl hS.upP hPD p2 hP) (upS2 8 Q rfl hS.upQ hQD q2 hQ)
        (by decide)).elim
    · -- `P` below `OD`, `Q` above: then `[PQD] < 0`
      have hH0 : 0 < sarea (ptD d) (ptH h) ptO := by simp only [sarea, ptD, ptH, ptO]; linarith
      have a1 : 0 < sarea (ptD d) Q ptO := by
        have e : sarea (ptD d) Q ptO = sarea ptO (ptD d) Q := by unfold sarea; ring
        linarith
      have k := ang_pos hQD hH0 hPD a1 (hDO P hP)
      have e : sarea P Q (ptD d) = -sarea (ptD d) Q P := by unfold sarea; ring
      linarith
    · exact ⟨hP, hQ⟩
    · exact (ncard_one_two S3 (upS3 7 P rfl hS.upP hPD p1 hP) (upS3 8 Q rfl hS.upQ hQD q1 hQ)
        (by decide)).elim

/-- **Claim** (`C1_MIXED_PENTAGON:eq2-3`). With `L` above `OD` and `M` below: `L, P` are inside
`OQH` (counterclockwise), so `hQ_x ≥ Ks > ρ` (2); also `hc ≥ Ks` and `[HCD] = h(1 - c) + cd ≥ Ks` (3), where
`s = 7/64`, `K = 4 + 2√3`, `ρ = 13/16`. `hand/C1_MIXED_PENTAGON.md`, lines 61-75.
Uses: C1_MIXED_PENTAGON:eq1, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem eq2_3 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (_hMb : sarea ptO (ptD d) M < 0) :
    InTriangle L ptO Q (ptH h) ∧ InTriangle P ptO Q (ptH h) ∧
      (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * Q.1 ∧ (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * c ∧
      (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ h * (1 - c) + c * d ∧
      (13 / 16 : ℝ) < (4 + 2 * Real.sqrt 3) * (7 / 64) := by
  obtain ⟨⟨sH, -, -, -⟩, -, sP, sQ⟩ := eq1 hS
  obtain ⟨h0, c0, p1, p2, q1, q2⟩ := hS.pos
  obtain ⟨-, -, -, -, -, l1, l2⟩ := low_facts hS.anchors hS.lowerL
  have hmin := hS.competitive
  have nO : ∀ X : Point, 0 < X.1 → sarea ptO (ptH h) X < 0 := fun X hX => by
    simp only [sarea, ptO, ptH]; nlinarith
  have hOD : sarea ptO (ptH h) (ptD d) < 0 := by simp only [sarea, ptO, ptH, ptD]; linarith
  have a1 : 0 < sarea ptO Q (ptD d) := by
    have e : sarea ptO Q (ptD d) = -sarea ptO (ptD d) Q := by unfold sarea; ring
    linarith
  have oL := ang_neg (nO Q q1) hOD (nO L l1) a1 hLa
  have oP := ang_neg (nO Q q1) hOD (nO P p1) a1 sP
  have pO : ∀ X : Point, 0 < X.1 → 0 < sarea (ptH h) ptO X := fun X hX => by
    simp only [sarea, ptO, ptH]; nlinarith
  have hLC : 0 < sarea (ptH h) L (ptC c) := by
    have e : sarea (ptH h) L (ptC c) = sarea (ptC c) (ptH h) L := by unfold sarea; ring
    rw [e]; exact hS.lowerL.2.1
  have hL' := ang_pos (pO L l1) (pO (ptC c) c0) (pO Q q1) hLC hS.upQ.1
  have inL : InTriangle L ptO Q (ptH h) :=
    ⟨oL, by have e : sarea Q (ptH h) L = sarea (ptH h) L Q := by unfold sarea; ring
            rw [e]; exact hL', hS.lowerL.2.2⟩
  have inP : InTriangle P ptO Q (ptH h) :=
    ⟨oP, by have e : sarea Q (ptH h) P = sarea P Q (ptH h) := by unfold sarea; ring
            rw [e]; exact sH, pO P p1⟩
  have k1 := two_in7 hmin 0 8 4 5 7 (by decide) (Or.inl inL) (Or.inl inP)
  have k2 := two_in7 hmin 0 1 4 5 6 (by decide) (Or.inl hS.lowerL) (Or.inl hS.lowerM)
  have hPD : 0 < sarea (ptD d) (ptH h) P := by
    have := hS.P_HD; have e : sarea (ptD d) (ptH h) P = -sarea (ptH h) (ptD d) P := by
      unfold sarea; ring
    linarith
  have hQD : 0 < sarea (ptD d) (ptH h) Q := by
    have := hS.Q_HD; have e : sarea (ptD d) (ptH h) Q = -sarea (ptH h) (ptD d) Q := by
      unfold sarea; ring
    linarith
  have k3 := two_in7 hmin 4 1 2 7 8 (by decide) (Or.inl ⟨hS.upP.1, hS.upP.2.1, hPD⟩)
    (Or.inl ⟨hS.upQ.1, hS.upQ.2.1, hQD⟩)
  have e1 : sarea ptO Q (ptH h) = h * Q.1 := by simp only [sarea, ptO, ptH]; ring
  have e2 : sarea ptO (ptC c) (ptH h) = h * c := by simp only [sarea, ptO, ptC, ptH]; ring
  have e3 : sarea (ptH h) (ptC c) (ptD d) = h * (1 - c) + c * d := by
    simp only [sarea, ptH, ptC, ptD]; ring
  change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea ptO Q (ptH h)| at k1
  change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea ptO (ptC c) (ptH h)| at k2
  change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea (ptH h) (ptC c) (ptD d)| at k3
  rw [e1, abs_of_pos (mul_pos h0 q1)] at k1
  rw [e2, abs_of_pos (mul_pos h0 c0)] at k2
  obtain ⟨hd, -, -, -, -, hc⟩ := hS.anchors
  have pHCD : 0 < h * (1 - c) + c * d := by
    have := mul_pos h0 (by linarith : (0 : ℝ) < 1 - c); have := mul_pos c0 hd; linarith
  rw [e3, abs_of_pos pHCD] at k3
  have := sqrt3_bounds
  exact ⟨inL, inP, k1, k2, k3, by linarith⟩

/-- **Claim** (`C1_MIXED_PENTAGON:eq4-6`). With `L` above `OD` and `M` below: `d ≤ 1 - s` (4);
`Q` is inside `CDL`, and `[CDL] ≤ (1 - s)² < ρ` (5), so `CDL` contains no second actual point;
hence `P` is above `DL` and `M` is below `CL` (6). Here `s = 7/64`, `ρ = 13/16`.
`hand/C1_MIXED_PENTAGON.md`, lines 77-125.
Uses: C1_MIXED_PENTAGON:eq1, CORNER_FAMILIES:TwoInteriorPointLemma. -/
-- Note (lines 86-89): "`Q` above `CL` because it is above `HC`" is an angular statement at `C`
-- (the ray `CQ` is clockwise of `CH`, the ray `CL` counterclockwise of it); it is correct.
theorem eq4_6 {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) :
    d ≤ 1 - 7 / 64 ∧ InTriangle Q (ptC c) (ptD d) L ∧
      sarea (ptC c) (ptD d) L ≤ (1 - 7 / 64) ^ 2 ∧
      sarea (ptD d) L P < 0 ∧ 0 < sarea (ptC c) L M := by
  obtain ⟨-, -, -, sQ⟩ := eq1 hS
  obtain ⟨h0, c0, -, p2, -, q2⟩ := hS.pos
  obtain ⟨-, -, -, k2, -, k4⟩ := eq2_3 hS hLa hMb
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨l1, l2, -, -, -, -, ly⟩ := low_facts hS.anchors hS.lowerL
  obtain ⟨m1, m2, -, -, -, -, -⟩ := low_facts hS.anchors hS.lowerM
  have hmin := hS.competitive
  have hsq := sqrt3_bounds
  -- (4)
  have eHDF : sarea (ptH h) (ptD d) (ptF f) = 1 - h + f * (h - d) := by
    simp only [sarea, ptH, ptD, ptF]; ring
  have aHDF : 7 / 64 ≤ |sarea (ptH h) (ptD d) (ptF f)| := ar7 hmin 4 2 3
  have q6 := mul_nonneg hf.le (sub_nonneg.2 hdh)
  rw [eHDF, abs_of_nonneg (by linarith)] at aHDF
  have hd1 : d ≤ 1 - 7 / 64 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hdh) (by linarith : (0 : ℝ) ≤ 1 - f)]
  -- `Q ∈ CDL`
  have hDH0 : 0 < sarea (ptD d) (ptH h) ptO := by simp only [sarea, ptD, ptH, ptO]; linarith
  have hQD : 0 < sarea (ptD d) (ptH h) Q := by
    have := hS.Q_HD; have e : sarea (ptD d) (ptH h) Q = -sarea (ptH h) (ptD d) Q := by
      unfold sarea; ring
    linarith
  have dLO : 0 < sarea (ptD d) L ptO := by
    have e : sarea (ptD d) L ptO = sarea ptO (ptD d) L := by unfold sarea; ring
    linarith
  have dOX : ∀ X : Point, sarea ptO (ptD d) X < 0 → 0 < sarea (ptD d) ptO X := fun X hX => by
    have e : sarea (ptD d) ptO X = -sarea ptO (ptD d) X := by unfold sarea; ring
    linarith
  have qDL := ang_pos l2 hDH0 hQD dLO (dOX Q sQ)
  have mDL := ang_pos l2 hDH0 m2 dLO (dOX M hMb)
  have nC : ∀ X : Point, 0 < X.2 → sarea (ptC c) ptO X < 0 := fun X hX => by
    simp only [sarea, ptC, ptO]; nlinarith
  have cQH : 0 < sarea (ptC c) Q (ptH h) := by
    have e : sarea (ptC c) Q (ptH h) = sarea (ptH h) (ptC c) Q := by unfold sarea; ring
    rw [e]; exact hS.upQ.1
  have cPH : 0 < sarea (ptC c) P (ptH h) := by
    have e : sarea (ptC c) P (ptH h) = sarea (ptH h) (ptC c) P := by unfold sarea; ring
    rw [e]; exact hS.upP.1
  have qCL := ang_neg (nC Q q2) (nC (ptH h) h0) (nC L ly) cQH hS.lowerL.2.1
  have pCL := ang_neg (nC P p2) (nC (ptH h) h0) (nC L ly) cPH hS.lowerL.2.1
  have lC : ∀ X : Point, 0 < sarea (ptC c) X L → 0 < sarea L (ptC c) X := fun X hX => by
    have e : sarea L (ptC c) X = sarea (ptC c) X L := by unfold sarea; ring
    linarith
  have inQ : InTriangle Q (ptC c) (ptD d) L := ⟨hS.upQ.2.1, qDL, lC Q qCL⟩
  -- (5)
  have a1 : 7 / 64 ≤ |sarea (ptH h) ptO L| := ar7 hmin 4 0 5
  have a2 : 7 / 64 ≤ |sarea (ptC c) (ptH h) L| := ar7 hmin 1 4 5
  have a1' := ar_pos a1 hS.lowerL.2.2.le
  have a2' := ar_pos a2 hS.lowerL.2.1.le
  rw [show sarea (ptH h) ptO L = h * L.1 by simp only [sarea, ptH, ptO]; ring] at a1'
  rw [show sarea (ptC c) (ptH h) L = h * (c - L.1) - c * L.2 by
    simp only [sarea, ptC, ptH]; ring] at a2'
  have hcs : 7 / 64 < c := by nlinarith
  have bCDL := cdl_le h0 hh.le hc.le hcs hd.le hd1 a1' a2'
  rw [show d * (c - L.1) + (1 - c) * L.2 = sarea (ptC c) (ptD d) L by
    simp only [sarea, ptC, ptD]; ring] at bCDL
  -- (6)
  have nDLP : sarea (ptD d) L P ≠ 0 := ar_ne (by norm_num) (ar hmin 2 5 7)
  have hDLP : sarea (ptD d) L P < 0 := by
    rcases lt_or_gt_of_ne nDLP with hlt | hgt
    · exact hlt
    · exfalso
      have k := two_in7 hmin 1 2 5 8 7 (by decide) (Or.inl inQ)
        (Or.inl ⟨hS.upP.2.1, hgt, lC P pCL⟩)
      change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea (ptC c) (ptD d) L| at k
      rw [abs_of_pos l1] at k
      linarith
  have nLCM : sarea L (ptC c) M ≠ 0 := ar_ne (by norm_num) (ar hmin 5 1 6)
  have hLCM : sarea L (ptC c) M < 0 := by
    rcases lt_or_gt_of_ne nLCM with hlt | hgt
    · exact hlt
    · exfalso
      have k := two_in7 hmin 1 2 5 8 6 (by decide) (Or.inl inQ) (Or.inl ⟨m1, mDL, hgt⟩)
      change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea (ptC c) (ptD d) L| at k
      rw [abs_of_pos l1] at k
      linarith
  refine ⟨hd1, inQ, bCDL, hDLP, ?_⟩
  have e : sarea (ptC c) L M = -sarea L (ptC c) M := by unfold sarea; ring
  linarith

/-- **Claim** (`C1_MIXED_PENTAGON:claim-OF-split`, made-up id). With `L` above `OD` and `M`
below: `[CDF] ≥ 3s`, so `f ≤ 1 - 3s` (7); `M` is inside `OCF`; and exactly one of `L, P` is
inside `OHF`, the other inside `OCF`. Here `s = 7/64`. `hand/C1_MIXED_PENTAGON.md`,
lines 127-146.
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq4-6, THREE_INTERIOR_TRIANGLES:Corollary5, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_OF_split {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) :
    3 * (7 / 64) ≤ sarea (ptC c) (ptD d) (ptF f) ∧ f ≤ 1 - 3 * (7 / 64) ∧
      InTriangle M ptO (ptC c) (ptF f) ∧
      ((InTriangle L ptO (ptF f) (ptH h) ∧ InTriangle P ptO (ptC c) (ptF f)) ∨
        (InTriangle P ptO (ptF f) (ptH h) ∧ InTriangle L ptO (ptC c) (ptF f))) := by
  obtain ⟨-, -, k4⟩ := (eq2_3 hS hLa hMb).2.2.2
  obtain ⟨h0, c0, p1, p2, -, -⟩ := hS.pos
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, -, l3, -, l5, -, -⟩ := low_facts hS.anchors hS.lowerL
  obtain ⟨-, -, m3, -, -, mx, -⟩ := low_facts hS.anchors hS.lowerM
  have hmin := hS.competitive
  have hsq3 := sqrt3_bounds
  have inQ : InTriangle Q (ptC c) (ptD d) (ptF f) := ⟨hS.upQ.2.1, hS.upQ.2.2.1, by
    have e : sarea (ptF f) (ptC c) Q = -sarea (ptC c) (ptF f) Q := by unfold sarea; ring
    linarith [hS.Q_CF]⟩
  have k7 : 3 * (7 / 64) ≤ sarea (ptC c) (ptD d) (ptF f) :=
    one_in inQ (ar7 hmin 1 2 8) (ar7 hmin 2 3 8) (ar7 hmin 3 1 8)
  have hf1 : f ≤ 1 - 3 * (7 / 64) := by
    rw [show sarea (ptC c) (ptD d) (ptF f) = 1 - c + d * (c - f) by
      simp only [sarea, ptC, ptD, ptF]; ring] at k7
    nlinarith [mul_nonneg (sub_nonneg.2 hfc) (by linarith : (0 : ℝ) ≤ 1 - d)]
  have nOH : ∀ X : Point, 0 < X.1 → sarea ptO (ptH h) X < 0 := fun X hX => by
    simp only [sarea, ptO, ptH]; nlinarith
  have hOHD : sarea ptO (ptH h) (ptD d) < 0 := by simp only [sarea, ptO, ptH, ptD]; linarith
  have hOHF : sarea ptO (ptH h) (ptF f) < 0 := by
    simp only [sarea, ptO, ptH, ptF]; nlinarith [mul_pos h0 hf]
  have hODF : 0 < sarea ptO (ptD d) (ptF f) := by
    simp only [sarea, ptO, ptD, ptF]; nlinarith [mul_le_mul_of_nonneg_left hfc hd.le]
  have oMD : 0 < sarea ptO M (ptD d) := by
    have e : sarea ptO M (ptD d) = -sarea ptO (ptD d) M := by unfold sarea; ring
    linarith
  have oMF := ang_neg (nOH M mx) hOHD hOHF oMD hODF
  have inM : InTriangle M ptO (ptC c) (ptF f) := ⟨hS.lowerM.1, m3, by
    have e : sarea (ptF f) ptO M = sarea ptO M (ptF f) := by unfold sarea; ring
    linarith⟩
  have hsq := c1_mem hS.anchors hS.memL hS.memM hS.memP hS.memQ
  have cap := ThreeInteriorTriangles.corollary5 hsq hmin 0 1 3
    (by show 0 < sarea ptO (ptC c) (ptF f); simp only [sarea, ptO, ptC, ptF]; linarith)
  have nL : sarea ptO (ptF f) L ≠ 0 := ar_ne (by norm_num) (ar hmin 0 3 5)
  have nP : sarea ptO (ptF f) P ≠ 0 := ar_ne (by norm_num) (ar hmin 0 3 7)
  have toOCF : ∀ X : Point, 0 < sarea ptO (ptC c) X → 0 < sarea (ptC c) (ptF f) X →
      sarea ptO (ptF f) X < 0 → InTriangle X ptO (ptC c) (ptF f) := fun X h1 h2 h3 =>
    ⟨h1, h2, by
      have e : sarea (ptF f) ptO X = -sarea ptO (ptF f) X := by unfold sarea; ring
      linarith⟩
  have oCP : 0 < sarea ptO (ptC c) P := by simp only [sarea, ptO, ptC]; nlinarith
  have hOP : 0 < sarea (ptH h) ptO P := by simp only [sarea, ptH, ptO]; nlinarith
  rcases lt_or_gt_of_ne nL with hL | hL <;> rcases lt_or_gt_of_ne nP with hP | hP
  · exfalso
    have := three_le_ncard (S := {m | InTriangle (c1Config h c d f L M P Q m)
      (c1Config h c d f L M P Q 0) (c1Config h c d f L M P Q 1) (c1Config h c d f L M P Q 3)})
      (a := 5) (b := 6) (e := 7) (by decide) (by decide) (by decide)
      (toOCF L hS.lowerL.1 l3 hL) inM (toOCF P oCP hS.P_CF hP)
    omega
  · exact ⟨k7, hf1, inM, Or.inr ⟨⟨hP, hS.upP.2.2.2, hOP⟩, toOCF L hS.lowerL.1 l3 hL⟩⟩
  · exact ⟨k7, hf1, inM, Or.inl ⟨⟨hL, l5, hS.lowerL.2.2⟩, toOCF P oCP hS.P_CF hP⟩⟩
  · exfalso
    have k := two_in7 hmin 0 3 4 5 7 (by decide) (Or.inl ⟨hL, l5, hS.lowerL.2.2⟩)
      (Or.inl ⟨hP, hS.upP.2.2.2, hOP⟩)
    change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea ptO (ptF f) (ptH h)| at k
    rw [show sarea ptO (ptF f) (ptH h) = f * h by simp only [sarea, ptO, ptF, ptH]; ring,
      abs_of_pos (mul_pos hf h0)] at k
    nlinarith [mul_le_mul_of_nonneg_left hh.le hf.le]

/-- The barycentric inequality (8): `P` inside `FLD` with the affine function `[H·Q]`. -/
theorem bary_ineq {F L D P H Q : Point} (hwF : 7 / 64 ≤ sarea L D P)
    (hwD : 7 / 64 ≤ sarea F L P) (hη : 7 / 64 ≤ sarea H P Q)
    (hB0 : 0 ≤ sarea H L Q + sarea H Q F) (hB1 : 0 ≤ sarea H L Q + sarea H Q D)
    (hA0 : 0 ≤ sarea F L D) :
    0 ≤ sarea F L D * sarea H L Q -
      7 / 64 * (sarea F L D + 2 * sarea H L Q + (sarea H Q F + sarea H Q D)) := by
  have iden : sarea F L D * sarea H P Q = sarea F L D * sarea H L Q -
      sarea L D P * (sarea H L Q + sarea H Q F) - sarea F L P * (sarea H L Q + sarea H Q D) := by
    unfold sarea; ring
  nlinarith [mul_le_mul_of_nonneg_left hη hA0, mul_nonneg (sub_nonneg.2 hwF) hB0,
    mul_nonneg (sub_nonneg.2 hwD) hB1]

/-- The actual areas at the ear point `Q` (below `OD`), in coordinates `Q = (x, t)`, and the
empty triangle `HDF`. -/
theorem q_facts {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (sQ : sarea ptO (ptD d) Q < 0) :
    7 / 64 ≤ d * Q.1 - Q.2 ∧ 7 / 64 ≤ d * (c - Q.1) + (1 - c) * Q.2 ∧
      7 / 64 ≤ (1 - d) * (1 - Q.1) - (1 - f) * (Q.2 - d) ∧ f * Q.2 < Q.1 ∧ Q.2 < h ∧
      Q.1 ≤ 1 ∧ 7 / 64 ≤ 1 - h + f * (h - d) := by
  obtain ⟨h0, -, -, -, q1, -⟩ := hS.pos
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, qx1, -, -⟩ := hS.memQ
  have hmin := hS.competitive
  have aHDF : 7 / 64 ≤ |sarea (ptH h) (ptD d) (ptF f)| := ar7 hmin 4 2 3
  have q6 := mul_nonneg hf.le (sub_nonneg.2 hdh)
  rw [show sarea (ptH h) (ptD d) (ptF f) = 1 - h + f * (h - d) by
    simp only [sarea, ptH, ptD, ptF]; ring, abs_of_nonneg (by linarith)] at aHDF
  have aODQ : 7 / 64 ≤ |sarea ptO (ptD d) Q| := ar7 hmin 0 2 8
  have hODQ := ar_neg aODQ sQ.le
  rw [show sarea ptO (ptD d) Q = Q.2 - d * Q.1 by simp only [sarea, ptO, ptD]; ring] at hODQ
  have aCDQ : 7 / 64 ≤ |sarea (ptC c) (ptD d) Q| := ar7 hmin 1 2 8
  have hCDQ := ar_pos aCDQ hS.upQ.2.1.le
  rw [show sarea (ptC c) (ptD d) Q = d * (c - Q.1) + (1 - c) * Q.2 by
    simp only [sarea, ptC, ptD]; ring] at hCDQ
  have aDFQ : 7 / 64 ≤ |sarea (ptD d) (ptF f) Q| := ar7 hmin 2 3 8
  have hDFQ := ar_pos aDFQ hS.upQ.2.2.1.le
  rw [show sarea (ptD d) (ptF f) Q = (1 - d) * (1 - Q.1) - (1 - f) * (Q.2 - d) by
    simp only [sarea, ptD, ptF]; ring] at hDFQ
  -- `Q` is on the `C`-side of `OF`
  have nOH : sarea ptO (ptH h) Q < 0 := by simp only [sarea, ptO, ptH]; nlinarith
  have hOHD : sarea ptO (ptH h) (ptD d) < 0 := by simp only [sarea, ptO, ptH, ptD]; linarith
  have hOHF : sarea ptO (ptH h) (ptF f) < 0 := by
    simp only [sarea, ptO, ptH, ptF]; nlinarith [mul_pos h0 hf]
  have hODF : 0 < sarea ptO (ptD d) (ptF f) := by
    simp only [sarea, ptO, ptD, ptF]; nlinarith [mul_le_mul_of_nonneg_left hfc hd.le]
  have oQD : 0 < sarea ptO Q (ptD d) := by
    have e : sarea ptO Q (ptD d) = -sarea ptO (ptD d) Q := by unfold sarea; ring
    linarith
  have oQF := ang_neg nOH hOHD hOHF oQD hODF
  rw [show sarea ptO Q (ptF f) = Q.1 - f * Q.2 by simp only [sarea, ptO, ptF]; ring] at oQF
  have hth : Q.2 < h := by nlinarith [mul_le_mul_of_nonneg_left qx1 hd.le]
  exact ⟨by linarith, hCDQ, hDFQ, by linarith, hth, qx1, aHDF⟩

/-- §4 of the note: in the alternative `L ∈ OHF`, `P ∈ OCF`, the point `P` is inside `FLD`, and
the barycentric inequality (8) holds for `A = [FLD]`, `B = [HLQ]`, `T = [HQF] + [HQD]`. -/
theorem main_bary {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0)
    (hL : InTriangle L ptO (ptF f) (ptH h)) (hP : InTriangle P ptO (ptC c) (ptF f)) :
    3 * (7 / 64) ≤ sarea (ptF f) L (ptD d) ∧ 7 / 64 ≤ sarea (ptH h) L Q ∧
      0 ≤ sarea (ptF f) L (ptD d) * sarea (ptH h) L Q - 7 / 64 * (sarea (ptF f) L (ptD d) +
        2 * sarea (ptH h) L Q + (sarea (ptH h) Q (ptF f) + sarea (ptH h) Q (ptD d))) := by
  obtain ⟨⟨sH, -, -, -⟩, -, -, -⟩ := eq1 hS
  obtain ⟨inL, -⟩ := eq2_3 hS hLa hMb
  obtain ⟨-, -, -, hDLP, -⟩ := eq4_6 hS hLa hMb
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, -, -, l4, -, -, -⟩ := low_facts hS.anchors hS.lowerL
  have hmin := hS.competitive
  have hFDL : sarea (ptF f) (ptD d) L < 0 := by
    have e : sarea (ptF f) (ptD d) L = -sarea (ptD d) (ptF f) L := by unfold sarea; ring
    linarith
  have hFDO : sarea (ptF f) (ptD d) ptO < 0 := by
    simp only [sarea, ptF, ptD, ptO]; nlinarith [mul_pos hf (by linarith : (0 : ℝ) < 1 - d)]
  have hFDP : sarea (ptF f) (ptD d) P < 0 := by
    have e : sarea (ptF f) (ptD d) P = -sarea (ptD d) (ptF f) P := by unfold sarea; ring
    linarith [hS.upP.2.2.1]
  have hFLO : 0 < sarea (ptF f) L ptO := by
    have e : sarea (ptF f) L ptO = sarea ptO (ptF f) L := by unfold sarea; ring
    linarith [hL.1]
  have fLP := ang_neg hFDL hFDO hFDP hFLO hP.2.2
  have lDP : 0 < sarea L (ptD d) P := by
    have e : sarea L (ptD d) P = -sarea (ptD d) L P := by unfold sarea; ring
    linarith
  have inP : InTriangle P (ptF f) L (ptD d) := ⟨fLP, lDP, hS.upP.2.2.1⟩
  have hA : 3 * (7 / 64) ≤ sarea (ptF f) L (ptD d) :=
    one_in inP (ar7 hmin 3 5 7) (ar7 hmin 5 2 7) (ar7 hmin 2 3 7)
  have hLQ : 0 < sarea (ptH h) L Q := by
    have e : sarea (ptH h) L Q = sarea Q (ptH h) L := by unfold sarea; ring
    linarith [inL.2.1]
  have aB : 7 / 64 ≤ |sarea (ptH h) L Q| := ar7 hmin 4 5 8
  have hB := ar_pos aB hLQ.le
  have hHQF : 0 < sarea (ptH h) Q (ptF f) := by
    have e : sarea (ptH h) Q (ptF f) = sarea (ptF f) (ptH h) Q := by unfold sarea; ring
    linarith [hS.upQ.2.2.2]
  have hHQD : 0 < sarea (ptH h) Q (ptD d) := by
    have e : sarea (ptH h) Q (ptD d) = -sarea (ptH h) (ptD d) Q := by unfold sarea; ring
    linarith [hS.Q_HD]
  have hHPQ : 0 < sarea (ptH h) P Q := by
    have e : sarea (ptH h) P Q = sarea P Q (ptH h) := by unfold sarea; ring
    linarith
  have aη : 7 / 64 ≤ |sarea (ptH h) P Q| := ar7 hmin 4 7 8
  have awF : 7 / 64 ≤ |sarea L (ptD d) P| := ar7 hmin 5 2 7
  have awD : 7 / 64 ≤ |sarea (ptF f) L P| := ar7 hmin 3 5 7
  exact ⟨hA, hB, bary_ineq (ar_pos awF lDP.le) (ar_pos awD fLP.le) (ar_pos aη hHPQ.le)
    (by linarith) (by linarith) (by linarith)⟩

/-- **Theorem** (`C1_MIXED_PENTAGON:Theorem`). The alternative `L ∈ OHF`, `P ∈ OCF` is
impossible at the competitive threshold. `hand/C1_MIXED_PENTAGON.md`, lines 148-326 (statement
lines 148-151; proof §§4–6: `P ∈ FDL`, the barycentric inequality (8)
`Φ = AB - s(A + 2B + T) ≥ 0`, the bounds (9)–(13), and the quartics `N₁, N₂ > 0` on
`[3s, 1 - 3s]`; the scalar part is `main_scalar`).
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq2-3, C1_MIXED_PENTAGON:eq4-6,
C1_MIXED_PENTAGON:claim-OF-split. -/
theorem theorem_main {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0)
    (hL : InTriangle L ptO (ptF f) (ptH h)) (hP : InTriangle P ptO (ptC c) (ptF f)) :
    False := by
  obtain ⟨hA, hB, hΦ⟩ := main_bary hS hLa hMb hL hP
  obtain ⟨-, -, k1, k2, k3, k4⟩ := eq2_3 hS hLa hMb
  obtain ⟨hODQ, hCDQ, hDFQ, hxft, hth, qx1, aHDF⟩ := q_facts hS (eq1 hS).2.2.2
  obtain ⟨kCDF, -, -, -⟩ := claim_OF_split hS hLa hMb
  obtain ⟨h0, c0, -, -, q1, -⟩ := hS.pos
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, -, -, -, -, lx, -⟩ := low_facts hS.anchors hS.lowerL
  have hmin := hS.competitive
  have hfh : 3 * (7 / 64) ≤ sarea ptO (ptF f) (ptH h) :=
    one_in hL (ar7 hmin 0 3 5) (ar7 hmin 3 4 5) (ar7 hmin 4 0 5)
  rw [show sarea ptO (ptF f) (ptH h) = h * f by simp only [sarea, ptO, ptF, ptH]; ring] at hfh
  rw [show sarea (ptC c) (ptD d) (ptF f) = 1 - c + d * (c - f) by
    simp only [sarea, ptC, ptD, ptF]; ring] at kCDF
  have aHOL : 7 / 64 ≤ |sarea (ptH h) ptO L| := ar7 hmin 4 0 5
  have hl := ar_pos aHOL hS.lowerL.2.2.le
  rw [show sarea (ptH h) ptO L = h * L.1 by simp only [sarea, ptH, ptO]; ring] at hl
  have aOFL : 7 / 64 ≤ |sarea ptO (ptF f) L| := ar7 hmin 0 3 5
  have hOFL := ar_pos aOFL hL.1.le
  rw [show sarea ptO (ptF f) L = f * L.2 - L.1 by simp only [sarea, ptO, ptF]; ring] at hOFL
  clear hmin aHOL aOFL
  exact main_scalar (by simp only [sarea, ptF, ptD]; ring) (by simp only [sarea, ptH]; ring)
    (by simp only [sarea, ptH, ptF, ptD]; ring) h0 hh.le c0 hc.le hd hdh hf hfc
    (lt_of_lt_of_le k4 k2) (lt_of_lt_of_le k4 k3) (lt_of_lt_of_le k4 k1) aHDF hfh kCDF hl hOFL
    hODQ hCDQ hDFQ hxft hth qx1 lx q1 hA hB hΦ

/-- **Claim** (`C1_MIXED_PENTAGON:claim-reverse`, made-up id). The reverse alternative
`P ∈ OHF`, `L ∈ OCF` is also impossible: `L, M ∈ OCP` gives `cz ≥ Ks` (15) for `P = (p, z)`,
`P ∈ HCQ` gives `(h - z)V ≥ s(2h - t)` (16), and (17)–(19) end in `-57/2048 < 0` (the scalar
part is `rev_scalar`). `hand/C1_MIXED_PENTAGON.md`, lines 328-428.
Uses: C1_MIXED_PENTAGON:eq1, C1_MIXED_PENTAGON:eq4-6, C1_MIXED_PENTAGON:claim-OF-split,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_reverse {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0)
    (hP : InTriangle P ptO (ptF f) (ptH h)) (hL : InTriangle L ptO (ptC c) (ptF f)) :
    False := by
  obtain ⟨⟨sH, -, -, -⟩, -, -, sQ⟩ := eq1 hS
  obtain ⟨-, -, -, -, -, k4⟩ := eq2_3 hS hLa hMb
  obtain ⟨hd1, -, -, -, -⟩ := eq4_6 hS hLa hMb
  obtain ⟨-, -, inM, -⟩ := claim_OF_split hS hLa hMb
  obtain ⟨h0, c0, p1, p2, -, -⟩ := hS.pos
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hS.anchors
  obtain ⟨-, -, -, -, -, lx, ly⟩ := low_facts hS.anchors hS.lowerL
  obtain ⟨-, -, -, -, -, mx, my⟩ := low_facts hS.anchors hS.lowerM
  obtain ⟨-, qx1, -, -⟩ := hS.memQ
  have hmin := hS.competitive
  -- `L, M ∈ OCP`
  have nC : ∀ X : Point, 0 < X.2 → sarea (ptC c) ptO X < 0 := fun X hX => by
    simp only [sarea, ptC, ptO]; nlinarith
  have nOH : ∀ X : Point, 0 < X.1 → sarea ptO (ptH h) X < 0 := fun X hX => by
    simp only [sarea, ptO, ptH]; nlinarith
  have hOHF : sarea ptO (ptH h) (ptF f) < 0 := by
    simp only [sarea, ptO, ptH, ptF]; nlinarith [mul_pos h0 hf]
  have cPH : 0 < sarea (ptC c) P (ptH h) := by
    have e : sarea (ptC c) P (ptH h) = sarea (ptH h) (ptC c) P := by unfold sarea; ring
    rw [e]; exact hS.upP.1
  have inOCP : ∀ X : Point, 0 < X.1 → 0 < X.2 → InLower h c X →
      InTriangle X ptO (ptC c) (ptF f) → InTriangle X ptO (ptC c) P := by
    intro X hx hy hX hXF
    have oXF : 0 < sarea ptO X (ptF f) := by
      have e : sarea ptO X (ptF f) = sarea (ptF f) ptO X := by unfold sarea; ring
      linarith [hXF.2.2]
    have oXP := ang_neg (nOH X hx) hOHF (nOH P p1) oXF hP.1
    refine ⟨hX.1, ang_neg (nC P p2) (nC (ptH h) h0) (nC X hy) cPH hX.2.1, ?_⟩
    have e : sarea P ptO X = sarea ptO X P := by unfold sarea; ring
    linarith
  have k := two_in7 hmin 0 1 7 5 6 (by decide) (Or.inl (inOCP L lx ly hS.lowerL hL))
    (Or.inl (inOCP M mx my hS.lowerM inM))
  change (4 + 2 * Real.sqrt 3) * (7 / 64) ≤ |sarea ptO (ptC c) P| at k
  rw [show sarea ptO (ptC c) P = c * P.2 by simp only [sarea, ptO, ptC]; ring,
    abs_of_pos (mul_pos c0 p2)] at k
  -- the areas at `P`, `Q`
  have aHCP : 7 / 64 ≤ |sarea (ptH h) (ptC c) P| := ar7 hmin 4 1 7
  have hHCP := ar_pos aHCP hS.upP.1.le
  rw [show sarea (ptH h) (ptC c) P = h * P.1 + c * P.2 - h * c by
    simp only [sarea, ptH, ptC]; ring] at hHCP
  have hHPQ0 : 0 < sarea (ptH h) P Q := by
    have e : sarea (ptH h) P Q = sarea P Q (ptH h) := by unfold sarea; ring
    linarith
  have aHPQ : 7 / 64 ≤ |sarea (ptH h) P Q| := ar7 hmin 4 7 8
  have hHPQ := ar_pos aHPQ hHPQ0.le
  rw [show sarea (ptH h) P Q = Q.1 * (h - P.2) - (h - Q.2) * P.1 by
    simp only [sarea, ptH]; ring] at hHPQ
  have aODQ : 7 / 64 ≤ |sarea ptO (ptD d) Q| := ar7 hmin 0 2 8
  have hODQ := ar_neg aODQ sQ.le
  rw [show sarea ptO (ptD d) Q = Q.2 - d * Q.1 by simp only [sarea, ptO, ptD]; ring] at hODQ
  have aCDQ : 7 / 64 ≤ |sarea (ptC c) (ptD d) Q| := ar7 hmin 1 2 8
  have hCDQ := ar_pos aCDQ hS.upQ.2.1.le
  rw [show sarea (ptC c) (ptD d) Q = d * (c - Q.1) + (1 - c) * Q.2 by
    simp only [sarea, ptC, ptD]; ring] at hCDQ
  have hV := hS.upQ.1
  rw [show sarea (ptH h) (ptC c) Q = h * Q.1 + c * Q.2 - h * c by
    simp only [sarea, ptH, ptC]; ring] at hV
  have hth : Q.2 < h := by nlinarith [mul_le_mul_of_nonneg_left qx1 hd.le]
  exact rev_scalar h0 hh.le c0 hc.le hd hdh hd1 qx1 (by linarith) hHCP hHPQ (by linarith) hCDQ
    hth hV

/-! ### The mixed placements -/

/-- The mixed placement with the lower points named. -/
theorem mixed_named {h c d f : ℝ} {L M P Q : Point} (hS : Setting h c d f L M P Q)
    (hLa : 0 < sarea ptO (ptD d) L) (hMb : sarea ptO (ptD d) M < 0) : False := by
  obtain ⟨-, -, -, hsplit⟩ := claim_OF_split hS hLa hMb
  rcases hsplit with ⟨hL, hP⟩ | ⟨hP, hL⟩
  · exact theorem_main hS hLa hMb hL hP
  · exact claim_reverse hS hLa hMb hP hL

/-- The mixed placement `P ∈ HCD ∩ HCF`, `Q ∈ HCD ∩ CDF` is impossible (Theorem 3 of
ONE_CORNER_COMPLETION supplies the isolating line). -/
theorem mixed {h c d f : ℝ} {L M P Q : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M P Q))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hPq : InUpperQuad h c d f P) (hQq : InUpperQuad h c d f Q)
    (hP1 : sarea (ptH h) (ptD d) P < 0) (hP2 : 0 < sarea (ptC c) (ptF f) P)
    (hQ1 : sarea (ptH h) (ptD d) Q < 0) (hQ2 : sarea (ptC c) (ptF f) Q < 0) : False := by
  have dh : ∀ X : Point, sarea (ptH h) (ptD d) X < 0 → 0 < sarea (ptD d) (ptH h) X :=
    fun X hX => by
      have e : sarea (ptD d) (ptH h) X = -sarea (ptH h) (ptD d) X := by unfold sarea; ring
      linarith
  have fc : ∀ X : Point, sarea (ptC c) (ptF f) X < 0 → 0 < sarea (ptF f) (ptC c) X :=
    fun X hX => by
      have e : sarea (ptF f) (ptC c) X = -sarea (ptC c) (ptF f) X := by unfold sarea; ring
      linarith
  have iso := OneCornerCompletion.claim_pentagon_reduction_mixed h c d f hA L M Q P
    (by rw [min_c1_swap34]; exact hmin)
    ⟨Or.inl ⟨hPq.1, hPq.2.1, dh P hP1⟩, Or.inl ⟨hPq.1, hP2, hPq.2.2.2⟩⟩
    ⟨Or.inl ⟨hQq.1, hQq.2.1, dh Q hQ1⟩, Or.inl ⟨hQq.2.1, hQq.2.2.1, fc Q hQ2⟩⟩
  have e : ∀ X : Point, sarea Q P X = -sarea P Q X := fun X => by unfold sarea; ring
  obtain ⟨i1, i2, i3⟩ := iso
  have iso' : OneCornerCompletion.Isolates P Q (ptC c) (ptH h) (ptD d) (ptF f) := by
    refine ⟨?_, ?_, ?_⟩
    · have := i1; rw [show ((c, 0) : Point) = ptC c from rfl, show ((0, h) : Point) = ptH h from rfl,
        e, e, neg_mul_neg] at this; exact this
    · have := i2; rw [show ((c, 0) : Point) = ptC c from rfl, show ((1, d) : Point) = ptD d from rfl,
        e, e, neg_mul_neg] at this; exact this
    · have := i3; rw [show ((c, 0) : Point) = ptC c from rfl, show ((f, 1) : Point) = ptF f from rfl,
        e, e, neg_mul_neg] at this; exact this
  have hS : Setting h c d f L M P Q :=
    ⟨hA, hL, hM, hP, hQ, hmin, hLl, hMl, hPq, hQq, hP1, hP2, hQ1, hQ2, iso'⟩
  obtain ⟨-, hLM, -, -⟩ := eq1 hS
  rcases hLM with ⟨hLa, hMb⟩ | ⟨hMa, hLb⟩
  · exact mixed_named hS hLa hMb
  · have hS' : Setting h c d f M L P Q :=
      ⟨hA, hM, hL, hP, hQ, by rw [min_c1_swap12]; exact hmin, hMl, hLl, hPq, hQq, hP1, hP2, hQ1,
        hQ2, iso'⟩
    exact mixed_named hS' hMa hLb

/-- Transposition of the upper quadrilateral. -/
theorem up_tp {h c d f : ℝ} {X : Point} (hX : InUpperQuad h c d f X) :
    InUpperQuad c h f d (tp X) := by
  obtain ⟨a1, a2, a3, a4⟩ := hX
  have e1 := sarea_tp (ptC c) (ptH h) X
  have e2 := sarea_tp (ptH h) (ptF f) X
  have e3 := sarea_tp (ptF f) (ptD d) X
  have e4 := sarea_tp (ptD d) (ptC c) X
  rw [tp_C, tp_H] at e1; rw [tp_H, tp_F] at e2; rw [tp_F, tp_D] at e3; rw [tp_D, tp_C] at e4
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [e1]; have e : sarea (ptC c) (ptH h) X = -sarea (ptH h) (ptC c) X := by unfold sarea; ring
    linarith
  · rw [e2]; have e : sarea (ptH h) (ptF f) X = -sarea (ptF f) (ptH h) X := by unfold sarea; ring
    linarith
  · rw [e3]; have e : sarea (ptF f) (ptD d) X = -sarea (ptD d) (ptF f) X := by unfold sarea; ring
    linarith
  · rw [e4]; have e : sarea (ptD d) (ptC c) X = -sarea (ptC c) (ptD d) X := by unfold sarea; ring
    linarith

/-- The reflected mixed placement `P ∈ HCD ∩ HCF`, `Q ∈ HDF ∩ HCF` is impossible, by
transposition. -/
theorem mixed_refl {h c d f : ℝ} {L M P Q : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M P Q))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hPq : InUpperQuad h c d f P) (hQq : InUpperQuad h c d f Q)
    (hP1 : sarea (ptH h) (ptD d) P < 0) (hP2 : 0 < sarea (ptC c) (ptF f) P)
    (hQ1 : 0 < sarea (ptH h) (ptD d) Q) (hQ2 : 0 < sarea (ptC c) (ptF f) Q) : False := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have t1 : ∀ X : Point, sarea (ptH c) (ptD f) (tp X) = -sarea (ptC c) (ptF f) X := fun X => by
    have := sarea_tp (ptC c) (ptF f) X; rwa [tp_C, tp_F] at this
  have t2 : ∀ X : Point, sarea (ptC h) (ptF d) (tp X) = -sarea (ptH h) (ptD d) X := fun X => by
    have := sarea_tp (ptH h) (ptD d) X; rwa [tp_H, tp_D] at this
  refine mixed (h := c) (c := h) (d := f) (f := d) ⟨hf, hfc, hc, hd, hdh, hh⟩ (tp_mem hL)
    (tp_mem hM) (tp_mem hP) (tp_mem hQ) (by rw [min_c1_tp]; exact hmin) (inLower_tp hLl)
    (inLower_tp hMl) (up_tp hPq) (up_tp hQq) ?_ ?_ ?_ ?_
  · rw [t1]; linarith
  · rw [t2]; linarith
  · rw [t1]; linarith
  · rw [t2]; linarith

/-- **Claim** (`C1_MIXED_PENTAGON:claim-pentagon-excluded`, made-up id; restated). Two lower
points and two points in the open upper quadrilateral `HCDF` are impossible. The two upper points
are sorted by the diagonals `HD`, `CF`: opposite diagonal sectors
(`OneCorner.claim_pentagon_opposite_quadrants`), both in `HDF` or both in `CDF`
(`OneCorner.claim_pentagon_HDF_CDF`), both central (`OneCornerCompletion.claim_pentagon_reduction`),
and the mixed placements (`mixed`, `mixed_refl`). `hand/C1_MIXED_PENTAGON.md`, lines 430-434
(and ONE_CORNER_COMPLETION.md §4).
Uses: ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER:claim-pentagon-opposite-quadrants,
ONE_CORNER:claim-pentagon-HDF-CDF, ONE_CORNER_COMPLETION:Theorem3, C1_MIXED_PENTAGON:eq1,
C1_MIXED_PENTAGON:claim-OF-split, C1_MIXED_PENTAGON:Theorem, C1_MIXED_PENTAGON:claim-reverse. -/
-- Restated (internal; its only user is `C1TwoLowerCompletion.core`): the original form assumed
-- all four free points in the open pentagon and derived the two lower points from
-- ONE_CORNER's occupancy theorems; the caller already has the two lower points.
theorem claim_pentagon_excluded {h c d f : ℝ} {L M U V : Point} (hA : C1Anchors h c d f)
    (hL : L ∈ unitSquare) (hM : M ∈ unitSquare) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea (c1Config h c d f L M U V))
    (hLl : InLower h c L) (hMl : InLower h c M)
    (hUq : InUpperQuad h c d f U) (hVq : InUpperQuad h c d f V) : False := by
  have hmin' : A₀ ≤ minTriangleArea (c1Config h c d f L M V U) := by
    rw [min_c1_swap34]; exact hmin
  have nU1 : sarea (ptH h) (ptD d) U ≠ 0 := ar_ne (by norm_num) (ar hmin 4 2 7)
  have nU2 : sarea (ptC c) (ptF f) U ≠ 0 := ar_ne (by norm_num) (ar hmin 1 3 7)
  have nV1 : sarea (ptH h) (ptD d) V ≠ 0 := ar_ne (by norm_num) (ar hmin 4 2 8)
  have nV2 : sarea (ptC c) (ptF f) V ≠ 0 := ar_ne (by norm_num) (ar hmin 1 3 8)
  have hW : CornerFamilies.InsideTriangle L (0, 0) (0, h) (c, 0) := Or.inr hLl
  have hX : CornerFamilies.InsideTriangle M (0, 0) (0, h) (c, 0) := Or.inr hMl
  have dh : ∀ X : Point, sarea (ptH h) (ptD d) X < 0 → 0 < sarea (ptD d) (ptH h) X :=
    fun X hX => by
      have e : sarea (ptD d) (ptH h) X = -sarea (ptH h) (ptD d) X := by unfold sarea; ring
      linarith
  have fc : ∀ X : Point, sarea (ptC c) (ptF f) X < 0 → 0 < sarea (ptF f) (ptC c) X :=
    fun X hX => by
      have e : sarea (ptF f) (ptC c) X = -sarea (ptC c) (ptF f) X := by unfold sarea; ring
      linarith
  -- the four sectors
  have opp : sarea (ptH h) (ptD d) U * sarea (ptH h) (ptD d) V < 0 →
      sarea (ptC c) (ptF f) U * sarea (ptC c) (ptF f) V < 0 → False := fun h1 h2 =>
    OneCorner.claim_pentagon_opposite_quadrants h c d f hA L M U V hmin hW hX hUq hVq h1 h2
  have both := OneCorner.claim_pentagon_HDF_CDF h c d f hA L M U V hmin hW hX
  have hdf : ∀ X : Point, InUpperQuad h c d f X → 0 < sarea (ptH h) (ptD d) X →
      CornerFamilies.InsideTriangle X (0, h) (1, d) (f, 1) := fun X hX h1 =>
    Or.inl ⟨h1, hX.2.2.1, hX.2.2.2⟩
  have cdf : ∀ X : Point, InUpperQuad h c d f X → sarea (ptC c) (ptF f) X < 0 →
      CornerFamilies.InsideTriangle X (c, 0) (1, d) (f, 1) := fun X hX h1 =>
    Or.inl ⟨hX.2.1, hX.2.2.1, fc X h1⟩
  have cen : ∀ X : Point, InUpperQuad h c d f X → sarea (ptH h) (ptD d) X < 0 →
      0 < sarea (ptC c) (ptF f) X →
      CornerFamilies.InsideTriangle X (0, h) (c, 0) (1, d) ∧
        CornerFamilies.InsideTriangle X (0, h) (c, 0) (f, 1) := fun X hX h1 h2 =>
    ⟨Or.inl ⟨hX.1, hX.2.1, dh X h1⟩, Or.inl ⟨hX.1, h2, hX.2.2.2⟩⟩
  rcases lt_or_gt_of_ne nU1 with u1 | u1 <;> rcases lt_or_gt_of_ne nV1 with v1 | v1 <;>
    rcases lt_or_gt_of_ne nU2 with u2 | u2 <;> rcases lt_or_gt_of_ne nV2 with v2 | v2
  · exact both.2 ⟨cdf U hUq u2, cdf V hVq v2⟩
  · exact mixed hA hL hM hV hU hmin' hLl hMl hVq hUq v1 v2 u1 u2
  · exact mixed hA hL hM hU hV hmin hLl hMl hUq hVq u1 u2 v1 v2
  · exact OneCornerCompletion.claim_pentagon_reduction h c d f hA L M U V hmin
      (cen U hUq u1 u2) (cen V hVq v1 v2)
  · exact both.2 ⟨cdf U hUq u2, cdf V hVq v2⟩
  · exact opp (mul_neg_of_neg_of_pos u1 v1) (mul_neg_of_neg_of_pos u2 v2)
  · exact opp (mul_neg_of_neg_of_pos u1 v1) (mul_neg_of_pos_of_neg u2 v2)
  · exact mixed_refl hA hL hM hU hV hmin hLl hMl hUq hVq u1 u2 v1 v2
  · exact both.2 ⟨cdf U hUq u2, cdf V hVq v2⟩
  · exact opp (mul_neg_of_pos_of_neg u1 v1) (mul_neg_of_neg_of_pos u2 v2)
  · exact opp (mul_neg_of_pos_of_neg u1 v1) (mul_neg_of_pos_of_neg u2 v2)
  · exact mixed_refl hA hL hM hV hU hmin' hLl hMl hVq hUq v1 v2 u1 u2
  · exact both.1 ⟨hdf U hUq u1, hdf V hVq v1⟩
  · exact both.1 ⟨hdf U hUq u1, hdf V hVq v1⟩
  · exact both.1 ⟨hdf U hUq u1, hdf V hVq v1⟩
  · exact both.1 ⟨hdf U hUq u1, hdf V hVq v1⟩

end Heilbronn.C1MixedPentagon
