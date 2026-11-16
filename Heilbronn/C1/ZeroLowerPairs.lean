module

public import Heilbronn.C1.ZeroLower
public import Heilbronn.C1.ZeroLowerModel

/-! # Zero-lower C1: two upper points, and the three-top-cap seeds (`hand/C1_ZERO_LOWER.md` §5)

The initial signs of §5 that involve two free points beyond the radial rule:
* `Comp.upper_pair`: two points of the upper quadrilateral `HCDF` lie in different sectors of
  its diagonals `HD, CF` (ONE_CORNER_COMPLETION Theorem 2), and the signs `[V P Q]` at the four
  vertices are those of the checker's `upper_pair_signs`: (13) when a diagonal separates them,
  and the isolated middle vertex (ONE_CORNER_COMPLETION Theorem 3) when only one does;
* `Comp.three_seeds`: for three top-cap points (16), Lemma 3 and the seeds (17).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.C1ZeroLower

open Heilbronn.C1 Cover Model

variable {h c d f : ℝ} {Q : Fin 4 → Point}

/-- A signed triangle with increasing indices below `9`, holding for the configuration. -/
def FHolds (P : ℕ → Point) (f : SFact) : Prop :=
  f.1.1 < f.1.2.1 ∧ f.1.2.1 < f.1.2.2 ∧ f.1.2.2 < 9 ∧ SFact.Holds P f

/-- `X` has the anchor-ray word `w` (`C1_ZERO_LOWER.md` (11)): `[VᵤVᵥX] > 0` exactly when
`wsign w u v`. -/
def WordAt (P : ℕ → Point) (X : Point) (w : ℕ) : Prop :=
  ∀ u v : ℕ, u < 5 → v < 5 → u ≠ v → (0 < sarea (P u) (P v) X ↔ wsign w u v = true)

/-- The sector of an upper word for the diagonals `HD`, `CF` (checker `upper_sector`). -/
def sector (w : ℕ) : Bool × Bool := (wsign w 4 2, wsign w 1 3)

theorem WordAt.pos {P : ℕ → Point} {X : Point} {w u v : ℕ} (hw : WordAt P X w) (hu : u < 5)
    (hv : v < 5) (huv : u ≠ v) (hs : wsign w u v = true) : 0 < sarea (P u) (P v) X :=
  (hw u v hu hv huv).2 hs

theorem Comp.word_neg (H : Comp h c d f Q) {a : Fin 4} {w : ℕ}
    (W : WordAt (cfg h c d f Q) (Q a) w) {u v : ℕ} (hu : u < 5) (hv : v < 5)
    (huv : u ≠ v) (hw : wsign w u v = false) :
    sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) < 0 := by
  have h1 := H.areaF u v a hu hv huv
  have h2 : ¬ 0 < sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) := by
    rw [W u v hu hv huv, hw]; simp
  rcases lt_or_ge (sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a)) 0 with h3 | h3
  · exact h3
  · have : sarea (cfg h c d f Q u) (cfg h c d f Q v) (Q a) = 0 := le_antisymm (not_lt.1 h2) h3
    rw [this, abs_zero] at h1; linarith [A₀_pos]

/-- The upper words have all four edge signs of `HCDF` positive. -/
theorem word_upper : ∀ w : Fin 11, cat w = 0 →
    wsign w 4 1 = true ∧ wsign w 1 2 = true ∧ wsign w 2 3 = true ∧ wsign w 3 4 = true := by
  decide +kernel

/-- **(13)**, the crossing rule at an endpoint `A` of a diagonal `AB` of a convex quadrilateral,
`X₁` the vertex after `A`: if `X, Y` (inside, so on the positive side of `AX₁`) are separated by
the line `AB`, then `[XYA]` has the sign opposite to `[ABX]`. Identity:
`[AX₁B][AYX] = [ABX][AX₁Y] - [ABY][AX₁X]`. -/
theorem cross {A X1 B X Y : Point} (h1 : 0 < sarea A X1 B) (hX : 0 < sarea A X1 X)
    (hY : 0 < sarea A X1 Y) (hs : sarea A B X * sarea A B Y < 0) :
    sarea X Y A * sarea A B X < 0 := by
  have e : sarea A X1 B * sarea A Y X =
      sarea A B X * sarea A X1 Y - sarea A B Y * sarea A X1 X := by unfold sarea; ring
  have e2 : sarea X Y A = -sarea A Y X := by unfold sarea; ring
  rw [e2]
  rcases lt_or_gt_of_ne (show sarea A B X ≠ 0 by
    intro h0; rw [h0, zero_mul] at hs; exact lt_irrefl _ hs) with hx | hx
  · have hy : 0 < sarea A B Y := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hx.le hn]
    have hR : sarea A B X * sarea A X1 Y - sarea A B Y * sarea A X1 X < 0 := by
      nlinarith [mul_neg_of_neg_of_pos hx hY, mul_pos hy hX]
    have : sarea A Y X < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg h1.le hn]
    nlinarith
  · have hy : sarea A B Y < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hx.le hn]
    have hR : 0 < sarea A B X * sarea A X1 Y - sarea A B Y * sarea A X1 X := by
      nlinarith [mul_pos hx hY, mul_neg_of_neg_of_pos hy hX]
    have : 0 < sarea A Y X := by
      by_contra hn; push Not at hn; nlinarith [mul_nonpos_of_nonneg_of_nonpos h1.le hn]
    nlinarith

/-- Two points in the same diagonal sector of a convex quadrilateral of area at most `1/2`
contradict the least area `A₀` (ONE_CORNER_COMPLETION Theorem 2). -/
theorem central_false {A B C D X Y : Point} (hq : CornerFamilies.ConvexQuad A B C D)
    (hS : sarea A B C + sarea A C D ≤ 1) (hmin : A₀ ≤ minTriangleArea ![A, B, C, D, X, Y])
    (h1 : InTriangle X A B C) (h2 : InTriangle X A B D) (h3 : InTriangle Y A B C)
    (h4 : InTriangle Y A B D) : False := by
  have := OneCornerCompletion.theorem2_of_le_half A B C D X Y (Or.inl hq)
    ⟨Or.inl h1, Or.inl h2, Or.inl h3, Or.inl h4⟩ (by
      unfold OneCornerCompletion.quadArea
      rw [abs_of_pos (by linarith [hq.1, (show 0 < sarea A C D by
        have := hq.2.2.1; unfold sarea at this ⊢; nlinarith)])]
      linarith)
  have hA := A₀_bounds
  have := hmin.trans this.le
  linarith [hA.1]

/-- The isolated middle vertex (ONE_CORNER_COMPLETION Theorem 3): `P, Q ∈ ABC`, `P ∈ BCD`,
`Q ∈ ABD` in a convex quadrilateral of area at most `1/2`: the line `PQ` isolates `B`. -/
theorem iso_of {A B C D P Q : Point} (hq : CornerFamilies.ConvexQuad A B C D)
    (hS : sarea A B C + sarea A C D ≤ 1) (hmin : A₀ ≤ minTriangleArea ![A, B, C, D, P, Q])
    (hP : InTriangle P A B C) (hQ : InTriangle Q A B C) (hPBCD : InTriangle P B C D)
    (hQABD : InTriangle Q A B D) : OneCornerCompletion.Isolates P Q B A C D := by
  refine OneCornerCompletion.theorem3 A B C D P Q (Or.inl hq) ?_ (Or.inl hP) (Or.inl hQ)
    (Or.inl hPBCD) (Or.inl hQABD)
  unfold OneCornerCompletion.quadArea OneCornerCompletion.quadConfig
  have hA := A₀_bounds
  have : |sarea A B C + sarea A C D| ≤ 1 := by
    rw [abs_le]; constructor
    · have := hq.1; have h2 : 0 < sarea A C D := by
        have := hq.2.2.1; unfold sarea at this ⊢; nlinarith
      linarith
    · exact hS
  nlinarith

theorem Comp.min6 (H : Comp h c d f Q) (a b e g : ℕ) (i j : Fin 4) (hij : i ≠ j)
    (hd : [a, b, e, g].Nodup) (ha : a < 5) (hb : b < 5) (he : e < 5) (hg : g < 5) :
    A₀ ≤ minTriangleArea ![cfg h c d f Q a, cfg h c d f Q b, cfg h c d f Q e, cfg h c d f Q g,
      Q i, Q j] := by
  have hm := H.min_sub (by norm_num) ![a, b, e, g, i.val + 5, j.val + 5]
    (by intro x; fin_cases x <;> simp <;> omega)
    (by
      intro x y hxy
      simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
        List.nodup_nil, and_true] at hd
      fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega)
  have e : (fun x => cfg h c d f Q (![a, b, e, g, i.val + 5, j.val + 5] x)) =
      ![cfg h c d f Q a, cfg h c d f Q b, cfg h c d f Q e, cfg h c d f Q g, Q i, Q j] := by
    funext x; fin_cases x <;> first | rfl | exact cfg_free h c d f Q _
  rwa [e] at hm

/-- A point strictly inside the upper quadrilateral `HCDF` (its four edge signs). -/
structure UpperPt (h c d f : ℝ) (X : Point) : Prop where
  hc : 0 < sarea (0, h) (c, 0) X
  cd : 0 < sarea (c, 0) (1, d) X
  df : 0 < sarea (1, d) (f, 1) X
  fh : 0 < sarea (f, 1) (0, h) X

/-- The least-area hypotheses for two points with the four cyclic rotations of `HCDF`. -/
structure QuadMin (h c d f : ℝ) (X Y : Point) : Prop where
  hcdf : A₀ ≤ minTriangleArea ![(0, h), (c, 0), (1, d), (f, 1), X, Y]
  cdfh : A₀ ≤ minTriangleArea ![(c, 0), (1, d), (f, 1), (0, h), X, Y]
  dfhc : A₀ ≤ minTriangleArea ![(1, d), (f, 1), (0, h), (c, 0), X, Y]
  fhcd : A₀ ≤ minTriangleArea ![(f, 1), (0, h), (c, 0), (1, d), X, Y]

theorem quad_facts (hA : C1Anchors h c d f) :
    CornerFamilies.ConvexQuad (0, h) (c, 0) (1, d) (f, 1) ∧
    CornerFamilies.ConvexQuad (c, 0) (1, d) (f, 1) (0, h) ∧
    CornerFamilies.ConvexQuad (1, d) (f, 1) (0, h) (c, 0) ∧
    CornerFamilies.ConvexQuad (f, 1) (0, h) (c, 0) (1, d) ∧
    sarea (0, h) (c, 0) (1, d) + sarea (0, h) (1, d) (f, 1) ≤ 1 ∧
    sarea (c, 0) (1, d) (f, 1) + sarea (c, 0) (f, 1) (0, h) ≤ 1 ∧
    sarea (1, d) (f, 1) (0, h) + sarea (1, d) (0, h) (c, 0) ≤ 1 ∧
    sarea (f, 1) (0, h) (c, 0) + sarea (f, 1) (c, 0) (1, d) ≤ 1 := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  have aHCD : 0 < sarea (0, h) (c, 0) (1, d) := by simp only [sarea]; nlinarith
  have aCDF : 0 < sarea (c, 0) (1, d) (f, 1) := by simp only [sarea]; nlinarith
  have aDFH : 0 < sarea (1, d) (f, 1) (0, h) := by simp only [sarea]; nlinarith
  have aFHC : 0 < sarea (f, 1) (0, h) (c, 0) := by simp only [sarea]; nlinarith
  have w := mul_nonneg (sub_nonneg.2 hdh) (sub_nonneg.2 hfc)
  refine ⟨⟨aHCD, aCDF, aDFH, aFHC⟩, ⟨aCDF, aDFH, aFHC, aHCD⟩, ⟨aDFH, aFHC, aHCD, aCDF⟩,
    ⟨aFHC, aHCD, aCDF, aDFH⟩, ?_, ?_, ?_, ?_⟩ <;> simp only [sarea] <;> nlinarith

theorem sarea_self₁₂' (p r : Point) : sarea p p r = 0 := by unfold sarea; ring
theorem sarea_self₁₃' (p q : Point) : sarea p q p = 0 := by unfold sarea; ring

theorem sw' (p q R : Point) : sarea q p R = -sarea p q R := sarea_swap₁₂ p q R

theorem xy' (X Y V : Point) : sarea Y X V = -sarea X Y V := by unfold sarea; ring

/-- (13) at both ends of the diagonal `HD`. -/
theorem sepHD_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (hs : sarea (0, h) (1, d) X * sarea (0, h) (1, d) Y < 0) :
    sarea X Y (0, h) * sarea (0, h) (1, d) X < 0 ∧
      0 < sarea X Y (1, d) * sarea (0, h) (1, d) X := by
  obtain ⟨q1, -, q3, -, -⟩ := quad_facts hA
  refine ⟨cross q1.1 ux.hc uy.hc hs, ?_⟩
  have hs2 : sarea (1, d) (0, h) X * sarea (1, d) (0, h) Y < 0 := by
    rw [sw' (0, h) (1, d) X, sw' (0, h) (1, d) Y, neg_mul_neg]; exact hs
  have := cross q3.1 ux.df uy.df hs2
  rw [sw' (0, h) (1, d) X, mul_neg] at this; linarith

/-- (13) at both ends of the diagonal `CF`. -/
theorem sepCF_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (hs : sarea (c, 0) (f, 1) X * sarea (c, 0) (f, 1) Y < 0) :
    sarea X Y (c, 0) * sarea (c, 0) (f, 1) X < 0 ∧
      0 < sarea X Y (f, 1) * sarea (c, 0) (f, 1) X := by
  obtain ⟨-, q2, -, q4, -⟩ := quad_facts hA
  refine ⟨cross q2.1 ux.cd uy.cd hs, ?_⟩
  have hs2 : sarea (f, 1) (c, 0) X * sarea (f, 1) (c, 0) Y < 0 := by
    rw [sw' (c, 0) (f, 1) X, sw' (c, 0) (f, 1) Y, neg_mul_neg]; exact hs
  have := cross q4.1 ux.fh uy.fh hs2
  rw [sw' (c, 0) (f, 1) X, mul_neg] at this; linarith

/-- The isolation, symmetrized in the two points. -/
theorem iso_sym {X Y A B C D : Point}
    (hiso : ∀ {P R : Point}, P = X ∧ R = Y ∨ P = Y ∧ R = X →
      0 < sarea D B P → 0 < sarea B D R → OneCornerCompletion.Isolates P R B A C D)
    (hcase : 0 < sarea D B X ∧ 0 < sarea B D Y ∨ 0 < sarea D B Y ∧ 0 < sarea B D X) :
    sarea X Y B * sarea X Y A < 0 ∧ sarea X Y B * sarea X Y C < 0 ∧
      sarea X Y B * sarea X Y D < 0 := by
  rcases hcase with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact hiso (Or.inl ⟨rfl, rfl⟩) h1 h2
  · obtain ⟨i1, i2, i3⟩ := hiso (Or.inr ⟨rfl, rfl⟩) h1 h2
    rw [xy' X Y B, xy' X Y A] at i1; rw [xy' X Y B, xy' X Y C] at i2
    rw [xy' X Y B, xy' X Y D] at i3
    rw [neg_mul_neg] at i1 i2 i3
    exact ⟨i1, i2, i3⟩

theorem disc_of {A B X Y : Point} (hs : sarea A B X * sarea A B Y < 0) :
    0 < sarea B A X ∧ 0 < sarea A B Y ∨ 0 < sarea B A Y ∧ 0 < sarea A B X := by
  rw [sw' A B X, sw' A B Y]
  rcases lt_or_gt_of_ne (show sarea A B X ≠ 0 by
    intro h0; rw [h0, zero_mul] at hs; exact lt_irrefl _ hs) with hx | hx
  · have hy : 0 < sarea A B Y := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg_of_nonpos_of_nonpos hx.le hn]
    exact Or.inl ⟨by linarith, hy⟩
  · have hy : sarea A B Y < 0 := by
      by_contra hn; push Not at hn; nlinarith [mul_nonneg hx.le hn]
    exact Or.inr ⟨by linarith, hx⟩

theorem disc_of' {A B X Y : Point} (hs : sarea A B X * sarea A B Y < 0) :
    0 < sarea A B X ∧ 0 < sarea B A Y ∨ 0 < sarea A B Y ∧ 0 < sarea B A X := by
  rcases disc_of hs with ⟨a, b⟩ | ⟨a, b⟩
  · exact Or.inr ⟨b, a⟩
  · exact Or.inl ⟨b, a⟩

/-- Both points in `HDF`, separated by `CF`: the line isolates `F`. -/
theorem isoF_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) (m' : QuadMin h c d f Y X)
    (hX : 0 < sarea (0, h) (1, d) X) (hY : 0 < sarea (0, h) (1, d) Y)
    (hs : sarea (c, 0) (f, 1) X * sarea (c, 0) (f, 1) Y < 0) :
    sarea X Y (f, 1) * sarea X Y (1, d) < 0 ∧ sarea X Y (f, 1) * sarea X Y (0, h) < 0 ∧
      sarea X Y (f, 1) * sarea X Y (c, 0) < 0 := by
  obtain ⟨-, -, q3, -, -, -, w3, -⟩ := quad_facts hA
  refine iso_sym (A := (1, d)) (C := (0, h)) (D := (c, 0)) ?_ (disc_of' hs)
  intro P R hPR hP hR
  rcases hPR with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact iso_of q3 w3 m.dfhc ⟨ux.df, ux.fh, hX⟩ ⟨uy.df, uy.fh, hY⟩
      ⟨ux.fh, ux.hc, hP⟩ ⟨uy.df, hR, uy.cd⟩
  · exact iso_of q3 w3 m'.dfhc ⟨uy.df, uy.fh, hY⟩ ⟨ux.df, ux.fh, hX⟩
      ⟨uy.fh, uy.hc, hP⟩ ⟨ux.df, hR, ux.cd⟩

/-- Both points in `HCD`, separated by `CF`: the line isolates `C`. -/
theorem isoC_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) (m' : QuadMin h c d f Y X)
    (hX : sarea (0, h) (1, d) X < 0) (hY : sarea (0, h) (1, d) Y < 0)
    (hs : sarea (c, 0) (f, 1) X * sarea (c, 0) (f, 1) Y < 0) :
    sarea X Y (c, 0) * sarea X Y (0, h) < 0 ∧ sarea X Y (c, 0) * sarea X Y (1, d) < 0 ∧
      sarea X Y (c, 0) * sarea X Y (f, 1) < 0 := by
  obtain ⟨q1, -, -, -, w1, -, -, -⟩ := quad_facts hA
  refine iso_sym (A := (0, h)) (C := (1, d)) (D := (f, 1)) ?_ (disc_of hs)
  intro P R hPR hP hR
  rcases hPR with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact iso_of q1 w1 m.hcdf ⟨ux.hc, ux.cd, by rw [sw']; linarith⟩
      ⟨uy.hc, uy.cd, by rw [sw']; linarith⟩ ⟨ux.cd, ux.df, hP⟩ ⟨uy.hc, hR, uy.fh⟩
  · exact iso_of q1 w1 m'.hcdf ⟨uy.hc, uy.cd, by rw [sw']; linarith⟩
      ⟨ux.hc, ux.cd, by rw [sw']; linarith⟩ ⟨uy.cd, uy.df, hP⟩ ⟨ux.hc, hR, ux.fh⟩

/-- Both points in `HCF`, separated by `HD`: the line isolates `H`. -/
theorem isoH_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) (m' : QuadMin h c d f Y X)
    (hX : 0 < sarea (c, 0) (f, 1) X) (hY : 0 < sarea (c, 0) (f, 1) Y)
    (hs : sarea (0, h) (1, d) X * sarea (0, h) (1, d) Y < 0) :
    sarea X Y (0, h) * sarea X Y (f, 1) < 0 ∧ sarea X Y (0, h) * sarea X Y (c, 0) < 0 ∧
      sarea X Y (0, h) * sarea X Y (1, d) < 0 := by
  obtain ⟨-, -, -, q4, -, -, -, w4⟩ := quad_facts hA
  refine iso_sym (A := (f, 1)) (C := (c, 0)) (D := (1, d)) ?_ (disc_of hs)
  intro P R hPR hP hR
  rcases hPR with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact iso_of q4 w4 m.fhcd ⟨ux.fh, ux.hc, hX⟩ ⟨uy.fh, uy.hc, hY⟩ ⟨ux.hc, ux.cd, hP⟩
      ⟨uy.fh, hR, uy.df⟩
  · exact iso_of q4 w4 m'.fhcd ⟨uy.fh, uy.hc, hY⟩ ⟨ux.fh, ux.hc, hX⟩ ⟨uy.hc, uy.cd, hP⟩
      ⟨ux.fh, hR, ux.df⟩

/-- Both points in `CDF`, separated by `HD`: the line isolates `D`. -/
theorem isoD_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) (m' : QuadMin h c d f Y X)
    (hX : sarea (c, 0) (f, 1) X < 0) (hY : sarea (c, 0) (f, 1) Y < 0)
    (hs : sarea (0, h) (1, d) X * sarea (0, h) (1, d) Y < 0) :
    sarea X Y (1, d) * sarea X Y (c, 0) < 0 ∧ sarea X Y (1, d) * sarea X Y (f, 1) < 0 ∧
      sarea X Y (1, d) * sarea X Y (0, h) < 0 := by
  obtain ⟨-, q2, -, -, -, w2, -, -⟩ := quad_facts hA
  refine iso_sym (A := (c, 0)) (C := (f, 1)) (D := (0, h)) ?_ (disc_of' hs)
  intro P R hPR hP hR
  rcases hPR with ⟨rfl, rfl⟩ | ⟨rfl, rfl⟩
  · exact iso_of q2 w2 m.cdfh ⟨ux.cd, ux.df, by rw [sw']; linarith⟩
      ⟨uy.cd, uy.df, by rw [sw']; linarith⟩ ⟨ux.df, ux.fh, hP⟩ ⟨uy.cd, hR, uy.hc⟩
  · exact iso_of q2 w2 m'.cdfh ⟨uy.cd, uy.df, by rw [sw']; linarith⟩
      ⟨ux.cd, ux.df, by rw [sw']; linarith⟩ ⟨uy.df, uy.fh, hP⟩ ⟨ux.cd, hR, ux.hc⟩

/-- Two upper points are in different sectors (ONE_CORNER_COMPLETION Theorem 2). -/
theorem sectors_of (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) {a b : Bool}
    (xHD : OrientHolds a (sarea (0, h) (1, d) X)) (xCF : OrientHolds b (sarea (c, 0) (f, 1) X))
    (yHD : OrientHolds a (sarea (0, h) (1, d) Y)) (yCF : OrientHolds b (sarea (c, 0) (f, 1) Y)) :
    False := by
  obtain ⟨q1, q2, q3, q4, w1, w2, w3, w4⟩ := quad_facts hA
  cases a <;> cases b <;>
    simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at xHD xCF yHD yCF
  · exact central_false q2 w2 m.cdfh ⟨ux.cd, ux.df, by rw [sw']; linarith⟩
      ⟨ux.cd, by rw [sw']; linarith, ux.hc⟩ ⟨uy.cd, uy.df, by rw [sw']; linarith⟩
      ⟨uy.cd, by rw [sw']; linarith, uy.hc⟩
  · exact central_false q1 w1 m.hcdf ⟨ux.hc, ux.cd, by rw [sw']; linarith⟩
      ⟨ux.hc, xCF, ux.fh⟩ ⟨uy.hc, uy.cd, by rw [sw']; linarith⟩ ⟨uy.hc, yCF, uy.fh⟩
  · exact central_false q3 w3 m.dfhc ⟨ux.df, ux.fh, xHD⟩
      ⟨ux.df, by rw [sw']; linarith, ux.cd⟩ ⟨uy.df, uy.fh, yHD⟩
      ⟨uy.df, by rw [sw']; linarith, uy.cd⟩
  · exact central_false q4 w4 m.fhcd ⟨ux.fh, ux.hc, xCF⟩ ⟨ux.fh, xHD, ux.df⟩
      ⟨uy.fh, uy.hc, yCF⟩ ⟨uy.fh, yHD, uy.df⟩

set_option maxHeartbeats 1000000 in
/-- The signs of `upperPair` (the checker's `upper_pair_signs`), from (13) and the isolation. -/
theorem upper_signs (hA : C1Anchors h c d f) {X Y : Point} (ux : UpperPt h c d f X)
    (uy : UpperPt h c d f Y) (m : QuadMin h c d f X Y) (m' : QuadMin h c d f Y X)
    {wi wj : ℕ} (hsec : sector wi ≠ sector wj)
    (xHD : OrientHolds (wsign wi 4 2) (sarea (0, h) (1, d) X))
    (xCF : OrientHolds (wsign wi 1 3) (sarea (c, 0) (f, 1) X))
    (yHD : OrientHolds (wsign wj 4 2) (sarea (0, h) (1, d) Y))
    (yCF : OrientHolds (wsign wj 1 3) (sarea (c, 0) (f, 1) Y))
    (Q : Fin 4 → Point) (v : ℕ) (hv : v < 5) (sg : Bool) (hsg : upperPair wi wj v = some sg) :
    OrientHolds sg (sarea X Y (cfg h c d f Q v)) := by
  simp only [OrientHolds] at xHD xCF yHD yCF
  cases hx1 : wsign wi 4 2 <;> cases hy1 : wsign wj 4 2 <;> cases hx2 : wsign wi 1 3 <;>
    cases hy2 : wsign wj 1 3 <;>
    simp only [hx1, hy1, hx2, hy2, Bool.false_eq_true, ite_false, ite_true] at xHD xCF yHD yCF <;>
    (try (exfalso; apply hsec; simp only [sector, hx1, hy1, hx2, hy2]; done)) <;>
    (try have f1 := sepHD_of hA ux uy (mul_neg_of_pos_of_neg xHD yHD)) <;>
    (try have f1 := sepHD_of hA ux uy (mul_neg_of_neg_of_pos xHD yHD)) <;>
    (try have f2 := sepCF_of hA ux uy (mul_neg_of_pos_of_neg xCF yCF)) <;>
    (try have f2 := sepCF_of hA ux uy (mul_neg_of_neg_of_pos xCF yCF)) <;>
    (try have f3 := isoF_of hA ux uy m m' xHD yHD (mul_neg_of_pos_of_neg xCF yCF)) <;>
    (try have f3 := isoF_of hA ux uy m m' xHD yHD (mul_neg_of_neg_of_pos xCF yCF)) <;>
    (try have f3 := isoC_of hA ux uy m m' xHD yHD (mul_neg_of_pos_of_neg xCF yCF)) <;>
    (try have f3 := isoC_of hA ux uy m m' xHD yHD (mul_neg_of_neg_of_pos xCF yCF)) <;>
    (try have f3 := isoH_of hA ux uy m m' xCF yCF (mul_neg_of_pos_of_neg xHD yHD)) <;>
    (try have f3 := isoH_of hA ux uy m m' xCF yCF (mul_neg_of_neg_of_pos xHD yHD)) <;>
    (try have f3 := isoD_of hA ux uy m m' xCF yCF (mul_neg_of_pos_of_neg xHD yHD)) <;>
    (try have f3 := isoD_of hA ux uy m m' xCF yCF (mul_neg_of_neg_of_pos xHD yHD)) <;>
    interval_cases v <;>
    simp only [upperPair, hx1, hy1, hx2, hy2, ne_eq, not_true_eq_false, Bool.false_eq_true,
      ite_false, ite_true, Option.some.injEq, reduceCtorEq, and_self, Bool.not_true, Bool.not_false,
      not_false_eq_true, true_and, and_true, OfNat.ofNat_ne_zero, one_ne_zero] at hsg <;>
    subst hsg <;>
    simp (config := { decide := true }) only [cfg, ite_true, ite_false, OrientHolds] <;>
    nlinarith

/-- **Two upper points** (`C1_ZERO_LOWER.md` §5, (13), ONE_CORNER_COMPLETION Theorems 2–3): two
free points of `HCDF` with upper words lie in different diagonal sectors, and every sign
predicted by `upperPair` holds. -/
theorem Comp.upper_pair (H : Comp h c d f Q) {i j : Fin 4} (hij : i ≠ j) {wi wj : ℕ}
    (hwi : wi < 11) (hwj : wj < 11) (ci : cat wi = 0) (cj : cat wj = 0)
    (Wi : WordAt (cfg h c d f Q) (Q i) wi) (Wj : WordAt (cfg h c d f Q) (Q j) wj) :
    sector wi ≠ sector wj ∧ ∀ v, v < 5 → ∀ sg, upperPair wi wj v = some sg →
      OrientHolds sg (sarea (cfg h c d f Q v) (Q i) (Q j)) := by
  have upt : ∀ (a : Fin 4) (w : ℕ), w < 11 → cat w = 0 → WordAt (cfg h c d f Q) (Q a) w →
      UpperPt h c d f (Q a) := by
    intro a w hw cw W
    obtain ⟨r1, r2, r3, r4⟩ := word_upper ⟨w, hw⟩ cw
    exact ⟨W.pos (by norm_num) (by norm_num) (by norm_num) r1,
      W.pos (by norm_num) (by norm_num) (by norm_num) r2,
      W.pos (by norm_num) (by norm_num) (by norm_num) r3,
      W.pos (by norm_num) (by norm_num) (by norm_num) r4⟩
  have diag : ∀ (a : Fin 4) (w : ℕ), WordAt (cfg h c d f Q) (Q a) w →
      OrientHolds (wsign w 4 2) (sarea (0, h) (1, d) (Q a)) ∧
        OrientHolds (wsign w 1 3) (sarea (c, 0) (f, 1) (Q a)) := by
    intro a w W
    constructor
    · cases hs : wsign w 4 2
      · exact H.word_neg W (by norm_num) (by norm_num) (by norm_num) hs
      · exact W.pos (by norm_num) (by norm_num) (by norm_num) hs
    · cases hs : wsign w 1 3
      · exact H.word_neg W (by norm_num) (by norm_num) (by norm_num) hs
      · exact W.pos (by norm_num) (by norm_num) (by norm_num) hs
  have mm : ∀ a b : Fin 4, a ≠ b → QuadMin h c d f (Q a) (Q b) := fun a b hab =>
    ⟨H.min6 4 1 2 3 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
      H.min6 1 2 3 4 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
      H.min6 2 3 4 1 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num),
      H.min6 3 4 1 2 a b hab (by decide) (by norm_num) (by norm_num) (by norm_num) (by norm_num)⟩
  have ux := upt i wi hwi ci Wi
  have uy := upt j wj hwj cj Wj
  obtain ⟨xHD, xCF⟩ := diag i wi Wi
  obtain ⟨yHD, yCF⟩ := diag j wj Wj
  have hsec : sector wi ≠ sector wj := by
    intro heq
    unfold sector at heq
    simp only [Prod.mk.injEq] at heq
    rw [heq.1] at xHD; rw [heq.2] at xCF
    exact sectors_of H.hA ux uy (mm i j hij) xHD xCF yHD yCF
  refine ⟨hsec, fun v hv sg hsg => ?_⟩
  rw [show sarea (cfg h c d f Q v) (Q i) (Q j) = sarea (Q i) (Q j) (cfg h c d f Q v) from
    (sarea_cycle _ _ _).symm]
  exact upper_signs H.hA ux uy (mm i j hij) (mm j i hij.symm) hsec xHD xCF yHD yCF Q v hv sg hsg

/-! ### Lemma 3: three top-cap points -/

/-- A closed half-plane `ℓ(p) ≥ m` (`ℓ` affine) contains the convex hull of a set it contains. -/
theorem hull_le {S : Set Point} (α β γ m : ℝ) (hS : ∀ p ∈ S, m ≤ α * p.1 + β * p.2 + γ) :
    ∀ p ∈ convexHull ℝ S, m ≤ α * p.1 + β * p.2 + γ := by
  have hc : Convex ℝ {p : Point | m ≤ α * p.1 + β * p.2 + γ} := by
    intro p hp q hq a b ha hb hab
    simp only [Set.mem_ofPred_eq, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd,
      smul_eq_mul] at hp hq ⊢
    have e1 : γ = a * γ + b * γ := by rw [← add_mul, hab, one_mul]
    have e2 : m = a * m + b * m := by rw [← add_mul, hab, one_mul]
    have k1 := mul_le_mul_of_nonneg_left hp ha
    have k2 := mul_le_mul_of_nonneg_left hq hb
    nlinarith
  exact fun p hp => convexHull_min (fun q hq => hS q hq) hc hp

theorem sarea_affine (A B p : Point) :
    sarea A B p = (-(B.2 - A.2)) * p.1 + (B.1 - A.1) * p.2 +
      ((B.2 - A.2) * A.1 - (B.1 - A.1) * A.2) := by
  unfold sarea; ring

/-- A point of the hull of a counterclockwise triangle, with nonzero areas against its edges, is
strictly inside. -/
theorem inside_of_hull {A B C X : Point} (hABC : 0 < sarea A B C)
    (hX : X ∈ convexHull ℝ ({A, B, C} : Set Point)) (h1 : sarea A B X ≠ 0)
    (h2 : sarea B C X ≠ 0) (h3 : sarea C A X ≠ 0) : InTriangle X A B C := by
  have key : ∀ U V W : Point, 0 < sarea U V W → ({A, B, C} : Set Point) ⊆ {U, V, W} →
      sarea U V A ≥ 0 ∧ sarea U V B ≥ 0 ∧ sarea U V C ≥ 0 → 0 ≤ sarea U V X := by
    intro U V W _ _ hge
    have := hull_le (S := {A, B, C}) _ _ _ 0 (fun p hp => by
      rw [← sarea_affine]
      simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
      rcases hp with rfl | rfl | rfl <;> linarith [hge.1, hge.2.1, hge.2.2]) X hX
    rwa [← sarea_affine] at this
  have z13 : ∀ p q : Point, sarea p q p ≥ 0 := fun p q => le_of_eq (sarea_self₁₃' p q).symm
  have z23 : ∀ p q : Point, sarea p q q ≥ 0 := fun p q => by
    rw [show sarea p q q = 0 by unfold sarea; ring]
  have c1 : sarea B C A = sarea A B C := sarea_cycle A B C
  have c2 : sarea C A B = sarea A B C := by rw [← sarea_cycle, sarea_cycle]
  have e1 : 0 ≤ sarea A B X := key A B C hABC le_rfl ⟨z13 A B, z23 A B, hABC.le⟩
  have e2 : 0 ≤ sarea B C X := key B C A (by rw [c1]; exact hABC)
    (by intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢; tauto)
    ⟨by rw [c1]; exact hABC.le, z13 B C, z23 B C⟩
  have e3 : 0 ≤ sarea C A X := key C A B (by rw [c2]; exact hABC)
    (by intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp ⊢; tauto)
    ⟨z23 C A, by rw [c2]; exact hABC.le, z13 C A⟩
  exact ⟨lt_of_le_of_ne e1 (Ne.symm h1), lt_of_le_of_ne e2 (Ne.symm h2),
    lt_of_le_of_ne e3 (Ne.symm h3)⟩

/-- The degenerate hull: a top-cap point is not on the segment `DF`. -/
theorem seg_false {S : Set Point} (hS : S ⊆ {(f, 1), (1, d)}) {Y : Point}
    (hY : Y ∈ convexHull ℝ S) (hT : InTopCap d f Y) : False := by
  have := hull_le (S := S) _ _ _ 0 (fun p hp => by
    rw [← sarea_affine (1, d) (f, 1) p]
    rcases (show p = (f, 1) ∨ p = (1, d) by simpa using hS hp) with rfl | rfl <;>
      simp only [sarea] <;> linarith) Y hY
  rw [← sarea_affine] at this
  unfold InTopCap ptD ptF at hT; linarith

/-- A triangle `F, D, X` of top-cap points cannot hold two further points of the configuration
(two-interior-point lemma: its doubled area is at most `Ω₀ < ρ`). -/
theorem Comp.tri_false (H : Comp h c d f Q) {k s t : Fin 4} (hks : k ≠ s) (hkt : k ≠ t)
    (hst : s ≠ t) (hk : InTopCap d f (Q k)) (_hs : InTopCap d f (Q s)) (_ht : InTopCap d f (Q t))
    {S : Set Point} (hS : S ⊆ {(f, 1), (1, d), Q k}) (hYs : Q s ∈ convexHull ℝ S)
    (hYt : Q t ∈ convexHull ℝ S) : False := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  obtain ⟨-, -, a3, a4⟩ := H.anchor_bounds
  have t0 := two_A₀.1
  have hpos : 0 < sarea (f, 1) (1, d) (Q k) := by
    unfold InTopCap ptD ptF at hk; rw [← sarea_cycle, sarea_swap₁₂] at hk ⊢
    have := sarea_cycle (1, d) (f, 1) (Q k); unfold sarea at *; nlinarith
  have hsub : convexHull ℝ S ⊆ convexHull ℝ ({(f, 1), (1, d), Q k} : Set Point) :=
    convexHull_mono hS
  have ins : ∀ x : Fin 4, x ≠ k → Q x ∈ convexHull ℝ S → InTriangle (Q x) (f, 1) (1, d) (Q k) := by
    intro x hxk hx
    have n1 := H.areaF 3 2 x
    have n2 := H.areaFF 2 k x (by norm_num) hxk.symm
    have n3 := H.area (k.val + 5) 3 (x.val + 5) (by omega) (by norm_num) (by omega) (by omega)
      (by omega) (by intro e; exact hxk (Fin.ext (by omega)))
    rw [cfg_free, cfg_free] at n3
    simp only [cfg] at n1 n2 n3
    refine inside_of_hull hpos (hsub hx) ?_ ?_ ?_ <;> intro h0 <;>
      first | (rw [h0, abs_zero] at n1; linarith) | (rw [h0, abs_zero] at n2; linarith) |
        (rw [h0, abs_zero] at n3; linarith)
  have := H.two_inside (a := 3) (b := 2) (e := k.val + 5) (j₁ := s.val + 5) (j₂ := t.val + 5)
    (by norm_num) (by norm_num) (by omega) (by omega) (by omega)
    (by simp only [List.nodup_cons, List.mem_cons, List.not_mem_nil, or_false, not_or,
      List.nodup_nil, and_true, not_false_eq_true]
        refine ⟨⟨by norm_num, by omega, by omega, by omega⟩, ⟨by omega, by omega, by omega⟩,
          ⟨fun e => hks (Fin.ext (by omega)), fun e => hkt (Fin.ext (by omega))⟩,
          fun e => hst (Fin.ext (by omega))⟩)
    (Or.inl (by rw [cfg_free, cfg_free]; exact ins s (Ne.symm hks) hYs))
    (Or.inl (by rw [cfg_free, cfg_free]; exact ins t (Ne.symm hkt) hYt))
  rw [cfg_free] at this
  simp only [cfg] at this
  rw [abs_of_pos hpos] at this
  have hΩ : sarea (f, 1) (1, d) (Q k) ≤ (1 - d) * (1 - f) := by
    obtain ⟨x0, x1, y0, y1⟩ := H.sq k
    simp only [sarea]; nlinarith [mul_nonneg (sub_nonneg.2 (hdh.trans hh.le)) (sub_nonneg.2 x1),
      mul_nonneg (sub_nonneg.2 (hfc.trans hc.le)) (sub_nonneg.2 y1)]
  obtain ⟨-, -, p3, p4⟩ := H.params_ge
  have := mul_le_mul (show 1 - d ≤ 65 / 73 by linarith) (show 1 - f ≤ 65 / 73 by linarith)
    (by linarith) (by norm_num)
  nlinarith

theorem orient_holds {P : ℕ → Point} {a b e : ℕ} {sg : Bool} (ha : a < 9) (hb : b < 9)
    (he : e < 9) (hs : OrientHolds sg (sarea (P a) (P b) (P e))) : FHolds P (orient a b e sg) := by
  have hne : sarea (P a) (P b) (P e) ≠ 0 := by
    cases sg <;> simp only [OrientHolds, Bool.false_eq_true, ite_false, ite_true] at hs <;>
      [exact hs.ne; exact hs.ne']
  have n1 : a ≠ b := by rintro rfl; exact hne (sarea_self₁₂' _ _)
  have n2 : b ≠ e := by rintro rfl; exact hne (by unfold sarea; ring)
  have n3 : a ≠ e := by rintro rfl; exact hne (sarea_self₁₃' _ _)
  have c1 := sarea_cycle (P a) (P b) (P e)
  have c2 := sarea_cycle (P b) (P e) (P a)
  unfold orient
  split_ifs with h1 h2 h3 h4 h5
  · exact ⟨h1.1, h1.2, he, hs⟩
  · exact ⟨h2.1, h2.2, ha, by simp only [SFact.Holds]; rw [c1]; exact hs⟩
  · exact ⟨h3.1, h3.2, hb, by simp only [SFact.Holds]; rw [c2, c1]; exact hs⟩
  · refine ⟨h4.1, h4.2, he, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₁₂, orientHolds_not]; exact hs
  · refine ⟨h5.1, h5.2, hb, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₂₃, orientHolds_not]; exact hs
  · refine ⟨by simp only; omega, by simp only; omega, ha, ?_⟩
    simp only [SFact.Holds]; rw [sarea_swap₁₃, orientHolds_not]; exact hs

/-- The line `RS` of two top-cap points with `D, F` on its positive side and `E = (1,1)` beyond
it: every point of the square on the pentagon side of `DF` is on its positive side
(`Ω₀ ℓ(P) = (1-f)(1-y)ℓ(D) + (1-d)(1-x)ℓ(F) - [DFP]ℓ(E)`). -/
theorem ell_pos (hA : C1Anchors h c d f) {R S P : Point} (hD : 0 < sarea R S (1, d))
    (hF : 0 < sarea R S (f, 1)) (hE : sarea R S (1, 1) < 0) (hP : P ∈ unitSquare)
    (hDF : 0 < sarea (1, d) (f, 1) P) : 0 < sarea R S P := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := hA
  obtain ⟨x0, x1, y0, y1⟩ := hP
  have e : (1 - d) * (1 - f) * sarea R S P = (1 - f) * (1 - P.2) * sarea R S (1, d) +
      (1 - d) * (1 - P.1) * sarea R S (f, 1) - sarea (1, d) (f, 1) P * sarea R S (1, 1) := by
    unfold sarea; ring
  have k1 : 0 ≤ (1 - f) * (1 - P.2) * sarea R S (1, d) :=
    mul_nonneg (mul_nonneg (by linarith) (by linarith)) hD.le
  have k2 : 0 ≤ (1 - d) * (1 - P.1) * sarea R S (f, 1) :=
    mul_nonneg (mul_nonneg (by linarith) (by linarith)) hF.le
  have k3 : 0 < -(sarea (1, d) (f, 1) P * sarea R S (1, 1)) := by nlinarith
  have hΩ : 0 < (1 - d) * (1 - f) := mul_pos (by linarith) (by linarith)
  by_contra hn; push Not at hn
  nlinarith [mul_nonpos_of_nonneg_of_nonpos hΩ.le hn]

theorem inj5 {s0 s1 s2 : ℕ} (h0 : 5 ≤ s0) (h1 : 5 ≤ s1) (h2 : 5 ≤ s2) (h01 : s0 ≠ s1)
    (h02 : s0 ≠ s2) (h12 : s1 ≠ s2) : Function.Injective ![3, 2, s0, s1, s2] := by
  intro x y hxy
  fin_cases x <;> fin_cases y <;> simp at hxy ⊢ <;> omega

set_option maxHeartbeats 2000000 in
/-- **Lemma 3 and the seeds (17)** (`C1_ZERO_LOWER:Lemma3`): in a three-top-cap case (16), with
the free points labelled by angle from `O` among equal words, the seeds of one choice of the
inner cap point hold. -/
theorem Comp.three_seeds (H : Comp h c d f Q) (hfd : f ≤ d) {ks : List ℕ}
    (hks : ks ∈ topThreeCases) (hw : ∀ a : Fin 4, WordAt (cfg h c d f Q) (Q a) (kw ks a))
    (horder : ∀ a b : Fin 4, a < b → kw ks a = kw ks b → 0 < sarea (0, 0) (Q a) (Q b)) :
    ∃ i, i < 3 ∧ AllHold (FHolds (cfg h c d f Q)) (seedRaw ks i) := by
  obtain ⟨hd, hdh, hh, hf, hfc, hc⟩ := H.hA
  have t0 := two_A₀
  obtain ⟨-, -, a3, a4⟩ := H.anchor_bounds
  obtain ⟨-, -, p3, p4⟩ := H.params_ge
  have hk : kw ks 0 = 3 ∧ kw ks 1 = 3 ∧ kw ks 2 = 3 ∧ cat (kw ks 3) = 0 ∧ kw ks 3 < 11 ∧
      caps ks = [5, 6, 7] := by
    simp only [topThreeCases, List.mem_cons, List.not_mem_nil, or_false] at hks
    rcases hks with rfl | rfl | rfl | rfl <;> decide
  obtain ⟨k0, k1, k2, k3, k3', hcaps⟩ := hk
  have top : ∀ a : Fin 4, kw ks a = 3 → InTopCap d f (Q a) := fun a ha =>
    H.word_neg (u := 2) (v := 3) (hw a) (by norm_num) (by norm_num) (by norm_num)
      (by rw [ha]; decide)
  have topc : ∀ k : Fin 3, InTopCap d f (Q k.castSucc) := by
    intro k; fin_cases k
    exacts [top 0 k0, top 1 k1, top 2 k2]
  have U3 : UpperPt h c d f (Q 3) := by
    obtain ⟨r1, r2, r3, r4⟩ := word_upper ⟨kw ks 3, k3'⟩ k3
    exact ⟨(hw 3).pos (by norm_num) (by norm_num) (by norm_num) r1,
      (hw 3).pos (by norm_num) (by norm_num) (by norm_num) r2,
      (hw 3).pos (by norm_num) (by norm_num) (by norm_num) r3,
      (hw 3).pos (by norm_num) (by norm_num) (by norm_num) r4⟩
  have hull : ∀ k : Fin 3, Q k.castSucc ∈ convexHull ℝ ({(f, 1), (1, d), ptE} : Set Point) := by
    intro k
    have := top_mem_hull H.hA (H.hQ _) (topc k)
    rwa [Set.insert_comm] at this
  have hFDE : 0 < sarea (f, 1) (1, d) ptE := by simp only [sarea]; nlinarith
  have hΩ : sarea (f, 1) (1, d) ptE ≤ 65 / 73 * (65 / 73) := by
    simp only [sarea]
    nlinarith [mul_le_mul (show 1 - d ≤ 65 / 73 by linarith) (show 1 - f ≤ 65 / 73 by linarith)
      (by linarith) (by norm_num)]
  -- the hull of `F, D` and the three cap points is not a triangle
  have hnt : ¬ TypeII.TriangularHull ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    rintro ⟨a, b, e, hall⟩
    set P5 : Fin 5 → Point := ![(f, 1), (1, d), Q 0, Q 1, Q 2] with hP5
    have r0 := (H.top_row 0 (topc 0)); have r1 := (H.top_row 1 (topc 1))
    have r2 := (H.top_row 2 (topc 2))
    have xb : ∀ m : Fin 5, m ≠ 0 → f + 2 * A₀ ≤ (P5 m).1 := by
      intro m hm
      fin_cases m
      · exact absurd rfl hm
      all_goals (simp [hP5]; linarith [r0.1, r1.1, r2.1])
    have yb : ∀ m : Fin 5, m ≠ 1 → d + 2 * A₀ ≤ (P5 m).2 := by
      intro m hm
      fin_cases m
      · simp [hP5]; linarith
      · exact absurd rfl hm
      all_goals (simp [hP5]; linarith [r0.2.1, r1.2.1, r2.2.1])
    have vF : a = 0 ∨ b = 0 ∨ e = 0 := by
      by_contra hn; push Not at hn
      have := hull_le 1 0 0 (f + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := xb a hn.1; linarith
        · have := xb b hn.2.1; linarith
        · have := xb e hn.2.2; linarith) _ (hall 0)
      simp [hP5] at this; linarith
    have vD : a = 1 ∨ b = 1 ∨ e = 1 := by
      by_contra hn; push Not at hn
      have := hull_le 0 1 0 (d + 2 * A₀) (by
        intro p hp; simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
        rcases hp with rfl | rfl | rfl
        · have := yb a hn.1; linarith
        · have := yb b hn.2.1; linarith
        · have := yb e hn.2.2; linarith) _ (hall 1)
      simp [hP5] at this; linarith
    have closeK : ∀ k : Fin 5,
        ({P5 a, P5 b, P5 e} : Set Point) ⊆ {(f, 1), (1, d), P5 k} → False := by
      intro k hk
      fin_cases k
      · exact seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto) (hall 2)
          (topc 0)
      · exact seg_false (fun p hp => by have := hk hp; simp [hP5] at this ⊢; tauto) (hall 2)
          (topc 0)
      · exact H.tri_false (k := 0) (s := 1) (t := 2) (by decide) (by decide) (by decide) (topc 0)
          (topc 1) (topc 2) hk (hall 3) (hall 4)
      · exact H.tri_false (k := 1) (s := 0) (t := 2) (by decide) (by decide) (by decide) (topc 1)
          (topc 0) (topc 2) hk (hall 2) (hall 4)
      · exact H.tri_false (k := 2) (s := 0) (t := 1) (by decide) (by decide) (by decide) (topc 2)
          (topc 0) (topc 1) hk (hall 2) (hall 3)
    have sub : ∀ x y z : Fin 5, ∀ p : Point, p ∈ ({P5 x, P5 y, P5 z} : Set Point) →
        p = P5 x ∨ p = P5 y ∨ p = P5 z := by
      intro x y z p hp; simpa only [Set.mem_insert_iff, Set.mem_singleton_iff] using hp
    rcases vF with rfl | rfl | rfl <;> rcases vD with h1 | h1 | h1 <;> (try subst h1) <;>
      first
      | exact absurd h1 (by decide)
      | exact closeK e (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK b (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
      | exact closeK a (fun p hp => by rcases sub _ _ _ p hp with rfl | rfl | rfl <;> simp [hP5])
  have hm5 := H.min_sub (by norm_num) ![3, 2, 5, 6, 7] (by intro x; fin_cases x <;> simp)
    (by decide)
  have e5 : (fun x => cfg h c d f Q (![3, 2, 5, 6, 7] x)) = ![(f, 1), (1, d), Q 0, Q 1, Q 2] := by
    funext x; fin_cases x <;> rfl
  rw [e5] at hm5
  obtain ⟨W', σ, hS, harea⟩ := TypeII.claim_support_normalization hFDE (hull 0) (hull 1) (hull 2)
    (lt_of_lt_of_le A₀_pos hm5) hnt
  have hQσ : ∀ k : Fin 3, ![Q (0 : Fin 3).castSucc, Q (1 : Fin 3).castSucc,
      Q (2 : Fin 3).castSucc] k = Q k.castSucc := by intro k; fin_cases k <;> rfl
  simp only [hQσ] at hS
  have hm := H.min_sub (by norm_num) ![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5]
    (by intro x; fin_cases x <;> simp <;> omega)
    (inj5 (by omega) (by omega) (by omega)
      (fun e => (by decide : (0 : Fin 3) ≠ 1) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (0 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega))))
      (fun e => (by decide : (1 : Fin 3) ≠ 2) (σ.injective (Fin.ext (by omega)))))
  have e6 : (fun x => cfg h c d f Q (![3, 2, (σ 0).val + 5, (σ 1).val + 5, (σ 2).val + 5] x)) =
      ![(f, 1), (1, d), Q (σ 0).castSucc, Q (σ 1).castSucc, Q (σ 2).castSucc] := by
    funext x; fin_cases x
    · rfl
    · rfl
    · exact cfg_free h c d f Q (σ 0).castSucc
    · exact cfg_free h c d f Q (σ 1).castSucc
    · exact cfg_free h c d f Q (σ 2).castSucc
  rw [e6] at hm
  have h1 : sarea (f, 1) (1, d) W' ≤ 1 := by nlinarith
  have rl := rho_lt
  rcases support_cells hS h1 hm with ⟨-, -, hK⟩ | ⟨hTR, hTS⟩ | ⟨-, -, hK⟩
  · exfalso; nlinarith
  rotate_left
  · exfalso; nlinarith
  -- the line `RS` (`R` on the leg of `D`, `S` on the leg of `F`)
  obtain ⟨a2, b2, ha2, hb2, hab2, hSe⟩ := hS.2.1
  obtain ⟨a1, b1, ha1, hb1, hab1, hRe⟩ := hS.2.2.1
  have hW := hS.1
  obtain rfl : a1 = 1 - b1 := by linarith
  obtain rfl : a2 = 1 - b2 := by linarith
  have lD : 0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (1, d) := by
    rw [← hRe, ← hSe]
    have e : sarea ((1 - b1) • ((1 : ℝ), d) + b1 • W') ((1 - b2) • (f, (1 : ℝ)) + b2 • W') (1, d) =
        b1 * (1 - b2) * sarea (f, 1) (1, d) W' := by
      simp only [sarea, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
      ring
    rw [e]; exact mul_pos (mul_pos hb1 ha2) hW
  have lF : 0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (f, 1) := by
    rw [← hRe, ← hSe]
    have e : sarea ((1 - b1) • ((1 : ℝ), d) + b1 • W') ((1 - b2) • (f, (1 : ℝ)) + b2 • W') (f, 1) =
        (1 - b1) * b2 * sarea (f, 1) (1, d) W' := by
      simp only [sarea, Prod.fst_add, Prod.snd_add, Prod.smul_fst, Prod.smul_snd, smul_eq_mul]
      ring
    rw [e]; exact mul_pos (mul_pos ha1 hb2) hW
  have idf : ∀ R S P : Point, (1 - d) * (1 - f) * sarea R S P = (1 - f) * (1 - P.2) *
      sarea R S (1, d) + (1 - d) * (1 - P.1) * sarea R S (f, 1) -
        sarea (1, d) (f, 1) P * sarea R S (1, 1) := fun R S P => by unfold sarea; ring
  have lE : sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (1, 1) < 0 := by
    by_contra hn; push Not at hn
    have dR : sarea (1, d) (f, 1) (Q (σ 1).castSucc) < 0 := topc (σ 1)
    have dS : sarea (1, d) (f, 1) (Q (σ 0).castSucc) < 0 := topc (σ 0)
    obtain ⟨x0, x1, y0, y1⟩ := H.sq (σ 1).castSucc
    obtain ⟨u0, u1, v0, v1⟩ := H.sq (σ 0).castSucc
    have iR := idf (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 1).castSucc)
    have iS := idf (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 0).castSucc)
    rw [show sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 1).castSucc) = 0 by
      unfold sarea; ring, mul_zero] at iR
    rw [show sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 0).castSucc) = 0 by
      unfold sarea; ring, mul_zero] at iS
    have q3 := mul_nonpos_of_nonpos_of_nonneg dR.le hn
    have q3' := mul_nonpos_of_nonpos_of_nonneg dS.le hn
    have f1 : (0 : ℝ) < 1 - f := by linarith
    have d1 : (0 : ℝ) < 1 - d := by linarith
    have qa := mul_nonneg (mul_nonneg f1.le (sub_nonneg.2 y1)) lD.le
    have qb := mul_nonneg (mul_nonneg d1.le (sub_nonneg.2 x1)) lF.le
    have qc := mul_nonneg (mul_nonneg f1.le (sub_nonneg.2 v1)) lD.le
    have qd := mul_nonneg (mul_nonneg d1.le (sub_nonneg.2 u1)) lF.le
    have ry : (Q (σ 1).castSucc).2 = 1 := by
      by_contra hne; have := mul_pos (mul_pos f1 (sub_pos.2 (lt_of_le_of_ne y1 hne))) lD; linarith
    have rx : (Q (σ 1).castSucc).1 = 1 := by
      by_contra hne; have := mul_pos (mul_pos d1 (sub_pos.2 (lt_of_le_of_ne x1 hne))) lF; linarith
    have sy : (Q (σ 0).castSucc).2 = 1 := by
      by_contra hne; have := mul_pos (mul_pos f1 (sub_pos.2 (lt_of_le_of_ne v1 hne))) lD; linarith
    have sx : (Q (σ 0).castSucc).1 = 1 := by
      by_contra hne; have := mul_pos (mul_pos d1 (sub_pos.2 (lt_of_le_of_ne u1 hne))) lF; linarith
    have : Q (σ 1).castSucc = Q (σ 0).castSucc := Prod.ext (by rw [rx, sx]) (by rw [ry, sy])
    rw [this] at lD; simp [sarea] at lD
  have pos : ∀ P : Point, P ∈ unitSquare → 0 < sarea (1, d) (f, 1) P →
      0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) P := fun P hP hDF =>
    ell_pos H.hA lD lF lE hP hDF
  have sq0 : ((0 : ℝ), (0 : ℝ)) ∈ unitSquare := ⟨le_rfl, zero_le_one, le_rfl, zero_le_one⟩
  have lO := pos (0, 0) sq0 (by simp only [sarea]; nlinarith)
  have lC := pos (c, 0) ⟨by linarith, by linarith, le_rfl, zero_le_one⟩ (by simp only [sarea]; nlinarith)
  have lH := pos (0, h) ⟨le_rfl, zero_le_one, by linarith, by linarith⟩ (by simp only [sarea]; nlinarith)
  have lX := pos (Q 3) (H.hQ 3) U3.df
  have lT : 0 < sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 2).castSucc) := by
    have iT : sarea (1, d) (f, 1) (Q (σ 1).castSucc) *
        sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (Q (σ 2).castSucc) =
        -sarea (Q (σ 1).castSucc) (f, 1) (Q (σ 2).castSucc) *
          sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (1, d) -
        sarea (1, d) (Q (σ 1).castSucc) (Q (σ 2).castSucc) *
          sarea (Q (σ 1).castSucc) (Q (σ 0).castSucc) (f, 1) := by unfold sarea; ring
    have dR : sarea (1, d) (f, 1) (Q (σ 1).castSucc) < 0 := topc (σ 1)
    by_contra hn; push Not at hn
    nlinarith [mul_nonneg_of_nonpos_of_nonpos dR.le hn, mul_pos hTR.2.2 lD, mul_pos hTR.2.1 lF]
  have cyc : ∀ V R S : Point, sarea V R S = sarea R S V := fun V R S => (sarea_cycle V R S).symm
  have fO : 0 < sarea (0, 0) (Q (σ 1).castSucc) (Q (σ 0).castSucc) := by rw [cyc]; exact lO
  have fC : 0 < sarea (c, 0) (Q (σ 1).castSucc) (Q (σ 0).castSucc) := by rw [cyc]; exact lC
  have fD : 0 < sarea (1, d) (Q (σ 1).castSucc) (Q (σ 0).castSucc) := by rw [cyc]; exact lD
  have fF : 0 < sarea (f, 1) (Q (σ 1).castSucc) (Q (σ 0).castSucc) := by rw [cyc]; exact lF
  have fH : 0 < sarea (0, h) (Q (σ 1).castSucc) (Q (σ 0).castSucc) := by rw [cyc]; exact lH
  have gDR : 0 < sarea (1, d) (Q (σ 1).castSucc) (Q (σ 2).castSucc) := hTR.2.1
  have gFR : sarea (f, 1) (Q (σ 1).castSucc) (Q (σ 2).castSucc) < 0 := by
    rw [sw']; linarith [hTR.2.2]
  have gDS : 0 < sarea (1, d) (Q (σ 0).castSucc) (Q (σ 2).castSucc) := hTS.2.1
  have gFS : sarea (f, 1) (Q (σ 0).castSucc) (Q (σ 2).castSucc) < 0 := by
    rw [sw']; linarith [hTS.2.2]
  -- the labels: `R` comes before `S` (angle from `O`)
  have kw3 : ∀ k : Fin 3, kw ks k.castSucc = 3 := by intro k; fin_cases k; exacts [k0, k1, k2]
  have hord : σ 1 < σ 0 := by
    rcases lt_trichotomy (σ 1) (σ 0) with hl | hl | hl
    · exact hl
    · exact absurd (σ.injective hl) (by decide)
    · have := horder (σ 0).castSucc (σ 1).castSucc (Fin.castSucc_lt_castSucc_iff.2 hl)
        (by rw [kw3, kw3])
      rw [sarea_swap₂₃] at this; linarith
  have hperm : ∀ τ : Equiv.Perm (Fin 3), τ 1 < τ 0 → (τ 0 = 1 ∧ τ 1 = 0 ∧ τ 2 = 2) ∨
      (τ 0 = 2 ∧ τ 1 = 0 ∧ τ 2 = 1) ∨ (τ 0 = 2 ∧ τ 1 = 1 ∧ τ 2 = 0) := by decide
  rcases hperm σ hord with ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ | ⟨e0, e1, e2⟩ <;>
    simp only [e0, e1, e2] at fO fC fD fF fH lT lX gDR gFR gDS gFS
  · refine ⟨2, by norm_num, fun g hg => ?_⟩
    have e : seedRaw ks 2 = [orient 0 5 6 true, orient 1 5 6 true, orient 2 5 6 true,
        orient 3 5 6 true, orient 4 5 6 true, orient 5 6 7 true, orient 5 6 8 true,
        orient 2 5 7 true, orient 3 5 7 false, orient 2 6 7 true, orient 3 6 7 false] := by
      unfold seedRaw; rw [hcaps]; rfl
    rw [e] at hg
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
    rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      apply orient_holds (by norm_num) (by norm_num) (by norm_num) <;>
      simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] <;>
      first | exact fO | exact fC | exact fD | exact fF | exact fH | exact lT | exact lX |
        exact gDR | exact gFR | exact gDS | exact gFS
  · refine ⟨1, by norm_num, fun g hg => ?_⟩
    have e : seedRaw ks 1 = [orient 0 5 7 true, orient 1 5 7 true, orient 2 5 7 true,
        orient 3 5 7 true, orient 4 5 7 true, orient 5 7 6 true, orient 5 7 8 true,
        orient 2 5 6 true, orient 3 5 6 false, orient 2 7 6 true, orient 3 7 6 false] := by
      unfold seedRaw; rw [hcaps]; rfl
    rw [e] at hg
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
    rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      apply orient_holds (by norm_num) (by norm_num) (by norm_num) <;>
      simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] <;>
      first | exact fO | exact fC | exact fD | exact fF | exact fH | exact lT | exact lX |
        exact gDR | exact gFR | exact gDS | exact gFS
  · refine ⟨0, by norm_num, fun g hg => ?_⟩
    have e : seedRaw ks 0 = [orient 0 6 7 true, orient 1 6 7 true, orient 2 6 7 true,
        orient 3 6 7 true, orient 4 6 7 true, orient 6 7 5 true, orient 6 7 8 true,
        orient 2 6 5 true, orient 3 6 5 false, orient 2 7 5 true, orient 3 7 5 false] := by
      unfold seedRaw; rw [hcaps]; rfl
    rw [e] at hg
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hg
    rcases hg with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      apply orient_holds (by norm_num) (by norm_num) (by norm_num) <;>
      simp only [OrientHolds, ite_true, ite_false, Bool.false_eq_true] <;>
      first | exact fO | exact fC | exact fD | exact fF | exact fH | exact lT | exact lX |
        exact gDR | exact gFR | exact gDS | exact gFS

end Heilbronn.C1ZeroLower
