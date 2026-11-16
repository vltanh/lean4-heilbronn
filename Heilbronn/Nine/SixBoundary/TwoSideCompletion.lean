module

public import Heilbronn.Nine.SixBoundary.TwoSideProjection
public import Heilbronn.Nine.SixBoundary.TwoSideCompletionCert
public import Heilbronn.Nine.SevenBoundary.MixedAboveCompletion

/-! # Completion of the two-side-cap N family with a lower point
(`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`)

Role: primary route. Theorem 1 closes the occupancy N6-02 `(1,0,1;1)` of
`docs/proof/nine/UNRESTRICTED.md`, Section 4, when the anchor-interior point is below `HC` (the "lower-point
companion" of `SIX_BOUNDARY_TWO_SIDE_UPPER.md`); it is also used by Corollary 2 there.

Setting (1): `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed
cap `CD(1,0)`, `Y = (z, w)` in the closed cap `FH(0,1)`, `Q = (r, t)` in the closed virtual
triangle `(0,0)HC`; no height-order or joining-line assumption. Competitive: least area at least
`A₀`, so every doubled area is at least `μ ≥ 2A₀ > s = 7/64`. With `L = h - a`, `M = c - b`.

The manuscript's citation of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` Theorem 1 (lines 412-414)
is replaced by `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` Theorem 2, in the form
`SevenBoundaryMixedAboveCompletion.theorem2_nConfig` (exactly seven contacts, strict bound).

Section 1 shows that projecting `x` to `1` keeps every threshold when `(t - a)[AQX] ≤ 0` (3), and
projecting `w` to `1` keeps every threshold when `(r - b)[BQY] ≥ 0` (4). Sections 2-4 exclude
the four quadrants of `Q` relative to `(b, a)` in which both fail (5).

Results:
* `claim_obstruction`: (3) and (4) are sufficient for the two projections (`proj_X`, `proj_Y`:
  every triangle through the moved point keeps its doubled area at least the original minimum,
  `min_le_replace`), and their joint failure (5) forces `sgn(y - a) = sgn(t - a) ≠ 0` and
  `sgn(z - b) = sgn(r - b) ≠ 0`;
* `claim_quadrant_I`, `claim_mixed_quadrants`, `claim_quadrant_III`: (5) is impossible in each
  quadrant. Each is closed by a cubic certificate found by linear programming
  (`Heilbronn.Nine.SixBoundary.TwoSideCompletionCert`, on the doubled-area costs of fourteen
  triangles with known orientation), replacing the scalar arguments of Sections 2-4 and Lemma 3;
* `theorem1`: with exactly six contacts the least area is below `A₀` (one projection reaches seven
  contacts, where `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` Theorem 2 is strict).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SixBoundaryTwoSideCompletion

open SixBoundary

/-- The standing setting (1) of `docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` in the competitive
case: `X ∈ CD(1,0)`, `Y ∈ FH(0,1)`, `Q ∈ (0,0)HC`, least area at least `A₀`. -/
def LowerSetting (a h b c d f : ℝ) (X Y Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapL f h Y ∧ Q ∈ unitSquare ∧ InT0 h c Q ∧
    A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q)

/-- Both sufficient projection conditions fail (5): `(t - a)[AQX] > 0` and `(r - b)[BQY] < 0`. -/
def BadSigns (a b : ℝ) (X Y Q : Point) : Prop :=
  0 < (Q.2 - a) * sarea (ptA a) Q X ∧ (Q.1 - b) * sarea (ptB b) Q Y < 0

/-! ### The points of the configuration by index (`rfl` rewrites at type `Point`) -/

theorem nC_mk0 (a h b c d f : ℝ) (X Y Z : Point) (hk : 0 < 9) :
    nConfig a h b c d f X Y Z ⟨0, hk⟩ = (0, a) := rfl

theorem nC_mk1 (a h b c d f : ℝ) (X Y Z : Point) (hk : 1 < 9) :
    nConfig a h b c d f X Y Z ⟨1, hk⟩ = (0, h) := rfl

theorem nC_mk2 (a h b c d f : ℝ) (X Y Z : Point) (hk : 2 < 9) :
    nConfig a h b c d f X Y Z ⟨2, hk⟩ = (b, 0) := rfl

theorem nC_mk3 (a h b c d f : ℝ) (X Y Z : Point) (hk : 3 < 9) :
    nConfig a h b c d f X Y Z ⟨3, hk⟩ = (c, 0) := rfl

theorem nC_mk4 (a h b c d f : ℝ) (X Y Z : Point) (hk : 4 < 9) :
    nConfig a h b c d f X Y Z ⟨4, hk⟩ = (1, d) := rfl

theorem nC_mk5 (a h b c d f : ℝ) (X Y Z : Point) (hk : 5 < 9) :
    nConfig a h b c d f X Y Z ⟨5, hk⟩ = (f, 1) := rfl

theorem nC_mk6 (a h b c d f : ℝ) (X Y Z : Point) (hk : 6 < 9) :
    nConfig a h b c d f X Y Z ⟨6, hk⟩ = X := rfl

theorem nC_mk7 (a h b c d f : ℝ) (X Y Z : Point) (hk : 7 < 9) :
    nConfig a h b c d f X Y Z ⟨7, hk⟩ = Y := rfl

theorem nC_mk8 (a h b c d f : ℝ) (X Y Z : Point) (hk : 8 < 9) :
    nConfig a h b c d f X Y Z ⟨8, hk⟩ = Z := rfl

theorem nC_0 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 0 = (0, a) := rfl

theorem nC_1 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 1 = (0, h) := rfl

theorem nC_2 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 2 = (b, 0) := rfl

theorem nC_3 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 3 = (c, 0) := rfl

theorem nC_4 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 4 = (1, d) := rfl

theorem nC_5 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 5 = (f, 1) := rfl

theorem nC_6 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 6 = X := rfl

theorem nC_7 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 7 = Y := rfl

theorem nC_8 (a h b c d f : ℝ) (X Y Z : Point) : nConfig a h b c d f X Y Z 8 = Z := rfl

theorem aP_0 (a h b c d f : ℝ) : anchorPts a h b c d f 0 = (0, a) := rfl

theorem aP_1 (a h b c d f : ℝ) : anchorPts a h b c d f 1 = (0, h) := rfl

theorem aP_2 (a h b c d f : ℝ) : anchorPts a h b c d f 2 = (b, 0) := rfl

theorem aP_3 (a h b c d f : ℝ) : anchorPts a h b c d f 3 = (c, 0) := rfl

theorem aP_4 (a h b c d f : ℝ) : anchorPts a h b c d f 4 = (1, d) := rfl

theorem aP_5 (a h b c d f : ℝ) : anchorPts a h b c d f 5 = (f, 1) := rfl


/-! ### Replacing one point -/

/-- If a configuration differs from `P` only at the index `k`, and every triangle through `k`
has area at least `m ≤ minTriangleArea P`, then its least area is at least `m`. -/
theorem min_le_replace {P P' : Fin 9 → Point} {k : Fin 9} {m : ℝ}
    (hm : m ≤ minTriangleArea P) (hsame : ∀ i, i ≠ k → P' i = P i)
    (hk : ∀ i j, i ≠ k → j ≠ k → i ≠ j → m ≤ triangleArea (P' i) (P' j) (P' k)) :
    m ≤ minTriangleArea P' := by
  refine le_minTriangleArea (by norm_num) P' fun i j l hij hjl => ?_
  by_cases hi : i = k
  · subst hi
    rw [← triangleArea_cycle]
    exact hk j l (ne_of_gt hij) (ne_of_gt (hij.trans hjl)) (ne_of_lt hjl)
  by_cases hj : j = k
  · subst hj
    rw [triangleArea_cycle]
    exact hk l i (ne_of_gt hjl) hi (ne_of_gt (hij.trans hjl))
  by_cases hl : l = k
  · subst hl
    exact hk i j hi hj (ne_of_lt hij)
  rw [hsame i hi, hsame j hj, hsame l hl]
  exact hm.trans (minTriangleArea_le_of_lt P hij hjl)

theorem abs_sarea_swap₂₃ (p q r : Point) : |sarea p r q| = |sarea p q r| := by
  rw [sarea_swap₂₃, abs_neg]

theorem abs_sarea_swap₁₂ (p q r : Point) : |sarea q p r| = |sarea p q r| := by
  rw [sarea_swap₁₂, abs_neg]

/-- The pair bound of the replaced point, from the ordered pairs. -/
theorem pair_bound_symm {P : Fin 9 → Point} {k : Fin 9} {μ : ℝ}
    (h : ∀ i j : Fin 9, i < j → i ≠ k → j ≠ k → μ ≤ |sarea (P i) (P j) (P k)|) :
    ∀ i j, i ≠ k → j ≠ k → i ≠ j → μ / 2 ≤ triangleArea (P i) (P j) (P k) := by
  intro i j hi hj hij
  rw [triangleArea_eq]
  rcases lt_or_gt_of_ne hij with h1 | h1
  · linarith [h i j h1 hi hj]
  · have := h j i h1 hj hi
    rw [abs_sarea_swap₁₂] at this
    linarith

/-- The indices other than `6`: an anchor, `Y` (`7`) or `Q` (`8`). -/
theorem idx6 (a h b c d f : ℝ) (X Y Q : Point) (i : Fin 9) (hi : i ≠ 6) :
    (∃ k : Fin 6, i.val = k.val ∧ nConfig a h b c d f X Y Q i = anchorPts a h b c d f k) ∨
      (i.val = 7 ∧ nConfig a h b c d f X Y Q i = Y) ∨
      (i.val = 8 ∧ nConfig a h b c d f X Y Q i = Q) := by
  obtain ⟨i, hi'⟩ := i
  interval_cases i
  · exact Or.inl ⟨0, rfl, rfl⟩
  · exact Or.inl ⟨1, rfl, rfl⟩
  · exact Or.inl ⟨2, rfl, rfl⟩
  · exact Or.inl ⟨3, rfl, rfl⟩
  · exact Or.inl ⟨4, rfl, rfl⟩
  · exact Or.inl ⟨5, rfl, rfl⟩
  · exact absurd rfl hi
  · exact Or.inr (Or.inl ⟨rfl, rfl⟩)
  · exact Or.inr (Or.inr ⟨rfl, rfl⟩)

/-- The indices other than `7`: an anchor, `X` (`6`) or `Q` (`8`). -/
theorem idx7 (a h b c d f : ℝ) (X Y Q : Point) (i : Fin 9) (hi : i ≠ 7) :
    (∃ k : Fin 6, i.val = k.val ∧ nConfig a h b c d f X Y Q i = anchorPts a h b c d f k) ∨
      (i.val = 6 ∧ nConfig a h b c d f X Y Q i = X) ∨
      (i.val = 8 ∧ nConfig a h b c d f X Y Q i = Q) := by
  obtain ⟨i, hi'⟩ := i
  interval_cases i
  · exact Or.inl ⟨0, rfl, rfl⟩
  · exact Or.inl ⟨1, rfl, rfl⟩
  · exact Or.inl ⟨2, rfl, rfl⟩
  · exact Or.inl ⟨3, rfl, rfl⟩
  · exact Or.inl ⟨4, rfl, rfl⟩
  · exact Or.inl ⟨5, rfl, rfl⟩
  · exact Or.inr (Or.inl ⟨rfl, rfl⟩)
  · exact absurd rfl hi
  · exact Or.inr (Or.inr ⟨rfl, rfl⟩)

/-- Three kinds of points through the moved point `M`: anchors, and two further points `U`, `V`;
the pairwise doubled-area bounds give the bound for every pair of distinct indices. -/
theorem kinds_bound {a h b c d f μ : ℝ} {M U V : Point} {P : Fin 9 → Point} {k u v : ℕ}
    (hidx : ∀ i : Fin 9, i.val ≠ k →
      (∃ l : Fin 6, i.val = l.val ∧ P i = anchorPts a h b c d f l) ∨ (i.val = u ∧ P i = U) ∨
        (i.val = v ∧ P i = V))
    (_hu : 6 ≤ u) (_hv : 6 ≤ v) (_huv : u ≠ v)
    (bAA : ∀ l₁ l₂ : Fin 6, l₁ ≠ l₂ →
      μ ≤ |sarea (anchorPts a h b c d f l₁) (anchorPts a h b c d f l₂) M|)
    (bAU : ∀ l : Fin 6, μ ≤ |sarea (anchorPts a h b c d f l) U M|)
    (bAV : ∀ l : Fin 6, μ ≤ |sarea (anchorPts a h b c d f l) V M|)
    (bUV : μ ≤ |sarea U V M|) :
    ∀ i j : Fin 9, i.val ≠ k → j.val ≠ k → i ≠ j → μ ≤ |sarea (P i) (P j) M| := by
  intro i j hi hj hij
  have hval : i.val ≠ j.val := fun e => hij (Fin.ext e)
  rcases hidx i hi with ⟨l₁, e₁, p₁⟩ | ⟨e₁, p₁⟩ | ⟨e₁, p₁⟩ <;>
    rcases hidx j hj with ⟨l₂, e₂, p₂⟩ | ⟨e₂, p₂⟩ | ⟨e₂, p₂⟩ <;> rw [p₁, p₂]
  · exact bAA l₁ l₂ (fun e => hval (by rw [e₁, e₂, e]))
  · exact bAU l₁
  · exact bAV l₁
  · rw [abs_sarea_swap₁₂]; exact bAU l₂
  · exact absurd (e₁.trans e₂.symm) hval
  · exact bUV
  · rw [abs_sarea_swap₁₂]; exact bAV l₂
  · rw [abs_sarea_swap₁₂]; exact bUV
  · exact absurd (e₁.trans e₂.symm) hval

/-- The anchor-pair bound for unordered pairs. -/
theorem anchorPair_ne {a h b c d f μ : ℝ} {M : Point}
    (hB : SixBoundaryExterior.AnchorPairBound a h b c d f μ M) (l₁ l₂ : Fin 6) (hl : l₁ ≠ l₂) :
    μ ≤ |sarea (anchorPts a h b c d f l₁) (anchorPts a h b c d f l₂) M| := by
  rcases lt_or_gt_of_ne hl with h1 | h1
  · exact hB l₁ l₂ h1
  · rw [abs_sarea_swap₁₂]; exact hB l₂ l₁ h1

/-- **Section 1, projection of `X`**: under (3) the least area does not decrease as `x` moves
to `x' ∈ [x, 1]`. -/
theorem proj_X {a h b c d f : ℝ} {X Y Q : Point} (hS : LowerSetting a h b c d f X Y Q)
    (h3 : (Q.2 - a) * sarea (ptA a) Q X ≤ 0) (x' : ℝ) (hxx : X.1 ≤ x') (hx1 : x' ≤ 1) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤
      minTriangleArea (nConfig a h b c d f (x', X.2) Y Q) := by
  obtain ⟨hN, hX, hY, hQ, hQT, hmin⟩ := hS
  set m := minTriangleArea (nConfig a h b c d f X Y Q) with hm
  have hμ : 7 / 64 ≤ 2 * m := by linarith [A₀_bounds.1]
  have hmin' : 2 * m / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨XA, XQ, XA0⟩ :=
    (SixBoundaryTwoSideProjection.claim_X_projection hN hX hY hQ hQT hμ hmin').1 x' hxx hx1
  obtain ⟨XYa, XYq⟩ := SixBoundaryTwoSideProjection.claim_XY_pairs hN hX hY hQ hQT hμ hmin' x'
    Y.2 hxx hx1 le_rfl hY.1.2.2.2
  have bAU : ∀ l : Fin 6, 2 * m ≤ |sarea (anchorPts a h b c d f l) Y (x', X.2)| := fun l => by
    rw [abs_sarea_swap₂₃]; exact XYa l
  have bAV : ∀ l : Fin 6, 2 * m ≤ |sarea (anchorPts a h b c d f l) Q (x', X.2)| := by
    intro l
    rw [abs_sarea_swap₂₃]
    rcases eq_or_ne l 0 with rfl | hl
    · exact XA0 h3
    · exact XQ l hl
  have bUV : 2 * m ≤ |sarea Y Q (x', X.2)| := by
    have := XYq; rw [sarea_cycle] at this; exact this
  have K := kinds_bound (P := nConfig a h b c d f (x', X.2) Y Q) (k := 6) (u := 7) (v := 8)
    (fun i hi => idx6 a h b c d f (x', X.2) Y Q i (fun e => hi (by rw [e]; rfl)))
    (by norm_num) (by norm_num) (by norm_num) (anchorPair_ne XA) bAU bAV bUV
  refine min_le_replace (k := 6) le_rfl (fun i hi => ?_) (fun i j hi hj hij => ?_)
  · rcases idx6 a h b c d f (x', X.2) Y Q i hi with ⟨l, e, p⟩ | ⟨e, p⟩ | ⟨e, p⟩
    · rw [p]
      have := idx6 a h b c d f X Y Q i hi
      rcases this with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · rw [p', show l' = l from Fin.ext (by omega)]
      · have := l.isLt; omega
      · have := l.isLt; omega
    · rw [p]
      rcases idx6 a h b c d f X Y Q i hi with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · have := l'.isLt; omega
      · exact p'.symm
      · omega
    · rw [p]
      rcases idx6 a h b c d f X Y Q i hi with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · have := l'.isLt; omega
      · omega
      · exact p'.symm
  · have := K i j (fun e => hi (Fin.ext e)) (fun e => hj (Fin.ext e)) hij
    rw [triangleArea_eq, show nConfig a h b c d f (x', X.2) Y Q 6 = (x', X.2) from rfl]
    linarith

/-- **Section 1, projection of `Y`**: under (4) the least area does not decrease as `w` moves
to `w' ∈ [w, 1]`. -/
theorem proj_Y {a h b c d f : ℝ} {X Y Q : Point} (hS : LowerSetting a h b c d f X Y Q)
    (h4 : 0 ≤ (Q.1 - b) * sarea (ptB b) Q Y) (w' : ℝ) (hww : Y.2 ≤ w') (hw1 : w' ≤ 1) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤
      minTriangleArea (nConfig a h b c d f X (Y.1, w') Q) := by
  obtain ⟨hN, hX, hY, hQ, hQT, hmin⟩ := hS
  set m := minTriangleArea (nConfig a h b c d f X Y Q) with hm
  have hμ : 7 / 64 ≤ 2 * m := by linarith [A₀_bounds.1]
  have hmin' : 2 * m / 2 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨YA, YQ, YB⟩ :=
    (SixBoundaryTwoSideProjection.claim_X_projection hN hX hY hQ hQT hμ hmin').2 w' hww hw1
  obtain ⟨XYa, XYq⟩ := SixBoundaryTwoSideProjection.claim_XY_pairs hN hX hY hQ hQT hμ hmin' X.1
    w' le_rfl hX.1.2.1 hww hw1
  have bAU : ∀ l : Fin 6, 2 * m ≤ |sarea (anchorPts a h b c d f l) X (Y.1, w')| := fun l =>
    XYa l
  have bAV : ∀ l : Fin 6, 2 * m ≤ |sarea (anchorPts a h b c d f l) Q (Y.1, w')| := by
    intro l
    rw [abs_sarea_swap₂₃]
    rcases eq_or_ne l 2 with rfl | hl
    · exact YB h4
    · exact YQ l hl
  have bUV : 2 * m ≤ |sarea X Q (Y.1, w')| := by
    have := XYq; rw [abs_sarea_swap₁₂] at this; exact this
  have K := kinds_bound (P := nConfig a h b c d f X (Y.1, w') Q) (k := 7) (u := 6) (v := 8)
    (fun i hi => idx7 a h b c d f X (Y.1, w') Q i (fun e => hi (by rw [e]; rfl)))
    (by norm_num) (by norm_num) (by norm_num) (anchorPair_ne YA) bAU bAV bUV
  refine min_le_replace (k := 7) le_rfl (fun i hi => ?_) (fun i j hi hj hij => ?_)
  · rcases idx7 a h b c d f X (Y.1, w') Q i hi with ⟨l, e, p⟩ | ⟨e, p⟩ | ⟨e, p⟩
    · rw [p]
      rcases idx7 a h b c d f X Y Q i hi with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · rw [p', show l' = l from Fin.ext (by omega)]
      · have := l.isLt; omega
      · have := l.isLt; omega
    · rw [p]
      rcases idx7 a h b c d f X Y Q i hi with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · have := l'.isLt; omega
      · exact p'.symm
      · omega
    · rw [p]
      rcases idx7 a h b c d f X Y Q i hi with ⟨l', e', p'⟩ | ⟨e', p'⟩ | ⟨e', p'⟩
      · have := l'.isLt; omega
      · omega
      · exact p'.symm
  · have := K i j (fun e => hi (Fin.ext e)) (fun e => hj (Fin.ext e)) hij
    rw [triangleArea_eq, show nConfig a h b c d f X (Y.1, w') Q 7 = (Y.1, w') from rfl]
    linarith

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-obstruction`). In the setting (1):
if `(t - a)[AQX] ≤ 0` (3), moving `x` to any `x' ∈ [x, 1]` does not decrease the least area;
if `(r - b)[BQY] ≥ 0` (4), moving `w` to any `w' ∈ [w, 1]` does not decrease it; and if both
fail (5), then `(y - a)(t - a) > 0` and `(z - b)(r - b) > 0` (so `t ≠ a`, `r ≠ b`, and `Q` lies
in one of four open quadrants relative to `(b, a)`).
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 52-110.
Uses: SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2, SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-BQX-sign,
SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-X-projection,
SIX_BOUNDARY_TWO_SIDE_PROJECTION:claim-XY-pairs, SIX_BOUNDARY_EXTERIOR:Lemma6 -/
theorem claim_obstruction {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) :
    ((Q.2 - a) * sarea (ptA a) Q X ≤ 0 → ∀ x' : ℝ, X.1 ≤ x' → x' ≤ 1 →
      minTriangleArea (nConfig a h b c d f X Y Q) ≤
        minTriangleArea (nConfig a h b c d f (x', X.2) Y Q)) ∧
    (0 ≤ (Q.1 - b) * sarea (ptB b) Q Y → ∀ w' : ℝ, Y.2 ≤ w' → w' ≤ 1 →
      minTriangleArea (nConfig a h b c d f X Y Q) ≤
        minTriangleArea (nConfig a h b c d f X (Y.1, w') Q)) ∧
    (BadSigns a b X Y Q → 0 < (X.2 - a) * (Q.2 - a) ∧ 0 < (Y.1 - b) * (Q.1 - b)) := by
  refine ⟨proj_X hS, proj_Y hS, fun hbad => ?_⟩
  obtain ⟨hN, hX, hY, hQ, hQT, hmin⟩ := hS
  obtain ⟨g1, g2⟩ := hbad
  obtain ⟨⟨x0, -, -, -⟩, -⟩ := hX
  obtain ⟨q0, -, q1, -⟩ := hQ
  obtain ⟨⟨-, -, w0, -⟩, -⟩ := hY
  simp only [sarea] at g1 g2
  constructor
  · have : 0 < Q.1 * ((Q.2 - a) * (X.2 - a)) := by nlinarith [mul_nonneg x0 (sq_nonneg (Q.2 - a))]
    have := pos_of_mul_pos_right this q0
    linarith
  · have : 0 < Q.2 * ((Q.1 - b) * (Y.1 - b)) := by nlinarith [mul_nonneg w0 (sq_nonneg (Q.1 - b))]
    have := pos_of_mul_pos_right this q1
    linarith

/-! ### The four bad quadrants, by certificates -/

/-- The coordinates `a, h, b, c, d, f, x, y, z, w, r, t` as a point of the cube. -/
def zeta (a h b c d f x y z w r t : ℝ) : ℕ → ℝ
  | 0 => a | 1 => h | 2 => b | 3 => c | 4 => d | 5 => f | 6 => x | 7 => y
  | 8 => z | 9 => w | 10 => r | 11 => t | _ => 0

/-- The real facts of the setting (1) behind the common atoms of the quadrant certificates. -/
structure LowerFacts (a h b c d f x y z w r t : ℝ) : Prop where
  ha : 0 < a
  hah : a < h
  hh : h < 1
  hb : 0 < b
  hbc : b < c
  hc : c < 1
  had : a ≤ d
  hdh : d ≤ h
  hbf : b ≤ f
  hfc : f ≤ c
  x1 : x ≤ 1
  hxc : c ≤ x
  y0 : 0 ≤ y
  hyd : y ≤ d
  w1 : w ≤ 1
  hwh : h ≤ w
  z0 : 0 ≤ z
  hzf : z ≤ f
  r0 : 0 ≤ r
  t0 : 0 ≤ t
  hrc : r ≤ c
  hth : t ≤ h
  cABC : 7 / 64 ≤ a * (c - b)
  cABH : 7 / 64 ≤ b * (h - a)
  cBCX : 7 / 64 ≤ (c - b) * y
  cAHY : 7 / 64 ≤ (h - a) * z
  cCDX : 7 / 64 ≤ d * (x - c) - (1 - c) * y
  cFHY : 7 / 64 ≤ (1 - h) * (f - z) - f * (1 - w)
  cHDF : 7 / 64 ≤ 1 - h + f * (h - d)
  cCDF : 7 / 64 ≤ 1 - c + d * (c - f)
  cAHQ : 7 / 64 ≤ (h - a) * r
  cBCQ : 7 / 64 ≤ (c - b) * t
  cHCQ : 7 / 64 ≤ c * (h - t) - h * r
  cABQ : 7 / 64 ≤ b * (t - a) + a * r

theorem LowerFacts.zeta_mem {a h b c d f x y z w r t : ℝ} (H : LowerFacts a h b c d f x y z w r t)
    (i : ℕ) : 0 ≤ zeta a h b c d f x y z w r t i ∧ zeta a h b c d f x y z w r t i ≤ 1 := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, x1, hxc, y0, hyd, w1, hwh, z0, hzf, r0, t0,
    hrc, hth, -⟩ := H
  rcases i with _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | _ | i <;>
    simp only [zeta] <;> constructor <;> linarith

/-- The 34 common atoms are nonnegative. -/
theorem LowerFacts.common {a h b c d f x y z w r t : ℝ} (H : LowerFacts a h b c d f x y z w r t) :
    0 ≤ a ∧ 0 ≤ h - a ∧ 0 ≤ 1 - h ∧ 0 ≤ b ∧ 0 ≤ c - b ∧ 0 ≤ 1 - c ∧ 0 ≤ d - a ∧ 0 ≤ h - d ∧
      0 ≤ f - b ∧ 0 ≤ c - f ∧ 0 ≤ 1 - x ∧ 0 ≤ x - c ∧ 0 ≤ y ∧ 0 ≤ d - y ∧ 0 ≤ 1 - w ∧
      0 ≤ w - h ∧ 0 ≤ z ∧ 0 ≤ f - z ∧ 0 ≤ r ∧ 0 ≤ t ∧ 0 ≤ c - r ∧ 0 ≤ h - t := by
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, x1, hxc, y0, hyd, w1, hwh, z0, hzf, r0, t0,
    hrc, hth, -⟩ := H
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    linarith

/-- A quadrant certificate closes a quadrant: the atoms are the common ones, the two quadrant
signs `e₁, e₂ ≥ 0` and the two signed costs `g₁, g₂ ≥ 7/64`. -/
theorem quad_false {a h b c d f x y z w r t : ℝ} (H : LowerFacts a h b c d f x y z w r t)
    {atoms : List Cert.Expr} {ts : List (ℤ × List ℕ)} (hck : Cert.check atoms ts = true)
    (hatoms : ∀ e ∈ atoms, 0 ≤ e.eval (zeta a h b c d f x y z w r t)) : False :=
  Cert.check_sound hck _ H.zeta_mem hatoms

section Quadrants

open Cert Cert.Expr QuadCert

variable {a h b c d f x y z w r t : ℝ}

theorem quad_I (H : LowerFacts a h b c d f x y z w r t) (ht : a ≤ t) (hr : b ≤ r)
    (hA : 7 / 64 ≤ r * (y - a) - (t - a) * x) (hB : 7 / 64 ≤ -((r - b) * w - t * (z - b))) :
    False := by
  have C := H.common
  have cABC := H.cABC; have cABH := H.cABH; have cBCX := H.cBCX; have cAHY := H.cAHY
  have cCDX := H.cCDX; have cFHY := H.cFHY; have cHDF := H.cHDF; have cCDF := H.cCDF
  have cAHQ := H.cAHQ; have cBCQ := H.cBCQ; have cHCQ := H.cHCQ; have cABQ := H.cABQ
  refine quad_false H qI_check ?_
  simp only [qIAtoms, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_v, eval_minus, eval_times, eval_zero, eval_one, eval_k, zeta]
  push_cast
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22⟩ := C
  refine ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22, by linarith, by linarith, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    linarith

theorem quad_M1 (H : LowerFacts a h b c d f x y z w r t) (ht : a ≤ t) (hr : r ≤ b)
    (hA : 7 / 64 ≤ r * (y - a) - (t - a) * x) (hB : 7 / 64 ≤ (r - b) * w - t * (z - b)) :
    False := by
  have C := H.common
  have cABC := H.cABC; have cABH := H.cABH; have cBCX := H.cBCX; have cAHY := H.cAHY
  have cCDX := H.cCDX; have cFHY := H.cFHY; have cHDF := H.cHDF; have cCDF := H.cCDF
  have cAHQ := H.cAHQ; have cBCQ := H.cBCQ; have cHCQ := H.cHCQ; have cABQ := H.cABQ
  refine quad_false H qM1_check ?_
  simp only [qM1Atoms, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_v, eval_minus, eval_times, eval_zero, eval_one, eval_k, zeta]
  push_cast
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22⟩ := C
  refine ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22, by linarith, by linarith, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    linarith

theorem quad_M2 (H : LowerFacts a h b c d f x y z w r t) (ht : t ≤ a) (hr : b ≤ r)
    (hA : 7 / 64 ≤ -(r * (y - a) - (t - a) * x)) (hB : 7 / 64 ≤ -((r - b) * w - t * (z - b))) :
    False := by
  have C := H.common
  have cABC := H.cABC; have cABH := H.cABH; have cBCX := H.cBCX; have cAHY := H.cAHY
  have cCDX := H.cCDX; have cFHY := H.cFHY; have cHDF := H.cHDF; have cCDF := H.cCDF
  have cAHQ := H.cAHQ; have cBCQ := H.cBCQ; have cHCQ := H.cHCQ; have cABQ := H.cABQ
  refine quad_false H qM2_check ?_
  simp only [qM2Atoms, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_v, eval_minus, eval_times, eval_zero, eval_one, eval_k, zeta]
  push_cast
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22⟩ := C
  refine ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22, by linarith, by linarith, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    linarith

theorem quad_III (H : LowerFacts a h b c d f x y z w r t) (ht : t ≤ a) (hr : r ≤ b)
    (hA : 7 / 64 ≤ -(r * (y - a) - (t - a) * x)) (hB : 7 / 64 ≤ (r - b) * w - t * (z - b)) :
    False := by
  have C := H.common
  have cABC := H.cABC; have cABH := H.cABH; have cBCX := H.cBCX; have cAHY := H.cAHY
  have cCDX := H.cCDX; have cFHY := H.cFHY; have cHDF := H.cHDF; have cCDF := H.cCDF
  have cAHQ := H.cAHQ; have cBCQ := H.cBCQ; have cHCQ := H.cHCQ; have cABQ := H.cABQ
  refine quad_false H qIII_check ?_
  simp only [qIIIAtoms, List.forall_mem_cons, List.not_mem_nil, IsEmpty.forall_iff, implies_true,
    and_true, eval_v, eval_minus, eval_times, eval_zero, eval_one, eval_k, zeta]
  push_cast
  obtain ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22⟩ := C
  refine ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20,
    c21, c22, by linarith, by linarith, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    linarith

end Quadrants

/-- The cap costs of the setting (1). -/
theorem lower_areas1 {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y)
    (h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    7 / 64 ≤ (c - b) * X.2 ∧ 7 / 64 ≤ (h - a) * Y.1 ∧ 7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
      7 / 64 ≤ (1 - h) * (f - Y.1) - f * (1 - Y.2) := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨⟨x0, x1, y0, y1⟩, cX⟩ := hX
  obtain ⟨⟨z0, z1, w0, w1⟩, cY⟩ := hY
  refine ⟨?_, ?_, ?_, ?_⟩
  · have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := X)
      (by simp only [sarea]; nlinarith) (area_of_le_min h7 2 3 6)
    simp only [sarea] at this; linarith
  · have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := Y)
      (by simp only [sarea]; nlinarith) (area_of_le_min h7 0 1 7)
    simp only [sarea] at this; linarith
  · have := sarea_le_of_nonpos hp (p := (c, 0)) (q := (1, d)) (r := X) cX
      (area_of_le_min h7 3 4 6)
    simp only [sarea] at this; linarith
  · have := sarea_le_of_nonpos hp (p := (f, 1)) (q := (0, h)) (r := Y) cY
      (area_of_le_min h7 5 1 7)
    simp only [sarea] at this; linarith

/-- The costs of the lower point `Q`. -/
theorem lower_areas2 {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (_hQ : Q ∈ unitSquare) (hQT : InT0 h c Q) (hABQ : 0 < sarea (ptA a) (ptB b) Q)
    (h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    7 / 64 ≤ (h - a) * Q.1 ∧ 7 / 64 ≤ (c - b) * Q.2 ∧ 7 / 64 ≤ c * (h - Q.2) - h * Q.1 ∧
      7 / 64 ≤ b * (Q.2 - a) + a * Q.1 := by
  have hp : (0 : ℝ) < 7 / 128 := by norm_num
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  obtain ⟨q0, q1, q2⟩ := hQT
  refine ⟨?_, ?_, ?_, ?_⟩
  · have := sarea_le_of_nonpos hp (p := (0, a)) (q := (0, h)) (r := Q)
      (by simp only [sarea]; nlinarith) (area_of_le_min h7 0 1 8)
    simp only [sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg hp (p := (b, 0)) (q := (c, 0)) (r := Q)
      (by simp only [sarea]; nlinarith) (area_of_le_min h7 2 3 8)
    simp only [sarea] at this; linarith
  · have := sarea_le_of_nonpos hp (p := (0, h)) (q := (c, 0)) (r := Q)
      (by simp only [sarea] at q2 ⊢; linarith) (area_of_le_min h7 1 3 8)
    simp only [sarea] at this; linarith
  · have := two_mul_le_sarea_of_nonneg hp (p := (0, a)) (q := (b, 0)) (r := Q) hABQ.le
      (area_of_le_min h7 0 2 8)
    simp only [sarea] at this; linarith

/-- The facts of the setting (1), from a competitive configuration. -/
theorem lowerFacts_of {a h b c d f : ℝ} {X Y Q : Point} (hS : LowerSetting a h b c d f X Y Q) :
    LowerFacts a h b c d f X.1 X.2 Y.1 Y.2 Q.1 Q.2 := by
  obtain ⟨hN, hX, hY, hQ, hQT, hmin⟩ := hS
  have h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := A₀_bounds.1.le.trans hmin
  have hpos : 0 < minTriangleArea (nConfig a h b c d f X Y Q) := by linarith
  obtain ⟨⟨hxc, hy, hyd⟩, ⟨hzf, hz, hhw⟩, ⟨hr0, ht0, hT⟩⟩ :=
    SixBoundaryTwoSideProjection.orders hN hX hY hQ hQT hpos
  obtain ⟨hABC, hABH, hHDF, hCDF⟩ := SixBoundaryHull.anchor_areas hN h7
  have hABQ := (SixBoundaryExterior.theorem2 hN hX.1 hY.1 hQ hmin).2.2
  simp only [InCap00, not_and, not_le] at hABQ
  obtain ⟨hBCX, hAHY, hCDX, hFHY⟩ := lower_areas1 hN hX hY h7
  obtain ⟨hAHQ, hBCQ, hHCQ, hABQ2⟩ := lower_areas2 hN hQ hQT (hABQ hQ) h7
  have x1 := hX.1.2.1
  have w1 := hY.1.2.2.2
  clear hmin h7 hpos hABQ hX hY hQ hQT
  obtain ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc⟩ := hN
  have hrc : Q.1 ≤ c := by
    have : h * Q.1 < h * c := by nlinarith [mul_nonneg (show (0:ℝ) ≤ c by linarith) ht0.le]
    exact (lt_of_mul_lt_mul_left this (by linarith)).le
  have hth : Q.2 ≤ h := by
    have : c * Q.2 < c * h := by nlinarith [mul_nonneg (show (0:ℝ) ≤ h by linarith) hr0.le]
    exact (lt_of_mul_lt_mul_left this (by linarith)).le
  exact ⟨ha, hah, hh, hb, hbc, hc, had, hdh, hbf, hfc, x1, hxc.le, hy.le, hyd.le, w1, hhw.le,
    hz.le, hzf.le, hr0.le, ht0.le, hrc, hth, hABC, hABH, hBCX, hAHY, hCDX, hFHY,
    hHDF, hCDF, hAHQ, hBCQ, hHCQ, hABQ2⟩

/-- The two bad signs give area bounds for `AQX` and `BQY` in the quadrant of `Q`. -/
theorem bad_bounds {a h b c d f : ℝ} {X Y Q : Point} (hS : LowerSetting a h b c d f X Y Q)
    (hbad : BadSigns a b X Y Q) :
    (a < Q.2 → 7 / 64 ≤ Q.1 * (X.2 - a) - (Q.2 - a) * X.1) ∧
      (Q.2 < a → 7 / 64 ≤ -(Q.1 * (X.2 - a) - (Q.2 - a) * X.1)) ∧
      (b < Q.1 → 7 / 64 ≤ -((Q.1 - b) * Y.2 - Q.2 * (Y.1 - b))) ∧
      (Q.1 < b → 7 / 64 ≤ (Q.1 - b) * Y.2 - Q.2 * (Y.1 - b)) := by
  obtain ⟨hN, hX, hY, hQ, hQT, hmin⟩ := hS
  have h7 : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) := A₀_bounds.1.le.trans hmin
  have bA := SixBoundaryTwoSideProjection.mu_le_abs (P := nConfig a h b c d f X Y Q) (μ := 7 / 64)
    (by linarith) 0 8 6
  have bB := SixBoundaryTwoSideProjection.mu_le_abs (P := nConfig a h b c d f X Y Q) (μ := 7 / 64)
    (by linarith) 2 8 7
  change 7 / 64 ≤ |sarea (0, a) Q X| at bA
  change 7 / 64 ≤ |sarea (b, 0) Q Y| at bB
  obtain ⟨g1, g2⟩ := hbad
  simp only [sarea] at g1 g2 bA bB
  have eA : (Q.1 - 0) * (X.2 - a) - (Q.2 - a) * (X.1 - 0) = Q.1 * (X.2 - a) - (Q.2 - a) * X.1 := by
    ring
  have eB : (Q.1 - b) * (Y.2 - 0) - (Q.2 - 0) * (Y.1 - b) = (Q.1 - b) * Y.2 - Q.2 * (Y.1 - b) := by
    ring
  rw [eA] at g1 bA
  rw [eB] at g2 bB
  refine ⟨fun ht => ?_, fun ht => ?_, fun hr => ?_, fun hr => ?_⟩
  · have : 0 < Q.1 * (X.2 - a) - (Q.2 - a) * X.1 := pos_of_mul_pos_right g1 (by linarith)
    rw [abs_of_pos this] at bA; exact bA
  · have : Q.1 * (X.2 - a) - (Q.2 - a) * X.1 < 0 := by
      by_contra hc; push Not at hc; nlinarith
    rw [abs_of_neg this] at bA; exact bA
  · have : (Q.1 - b) * Y.2 - Q.2 * (Y.1 - b) < 0 := by
      by_contra hc; push Not at hc; nlinarith
    rw [abs_of_neg this] at bB; exact bB
  · have : 0 < (Q.1 - b) * Y.2 - Q.2 * (Y.1 - b) := by
      by_contra hc; push Not at hc; nlinarith
    rw [abs_of_pos this] at bB; exact bB

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-I`). In the setting (1), the
joint failure (5) is impossible with `t > a`, `r > b` (certificate `QuadCert.qI_check`; the
manuscript's argument gives `s ≤ q³(1 - q) ≤ 27/256 < 7/64` with `q = √(hc)`).
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 112-162. -/
theorem claim_quadrant_I {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q) (ht : a < Q.2)
    (hr : b < Q.1) : False := by
  have B := bad_bounds hS hbad
  exact quad_I (lowerFacts_of hS) ht.le hr.le (B.1 ht) (B.2.2.1 hr)

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-mixed-quadrants`). In the setting (1), the
joint failure (5) is impossible with `t > a`, `r < b`, and with `t < a`, `r > b` (certificates
`QuadCert.qM1_check`, `QuadCert.qM2_check`). `docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`,
lines 164-240. -/
theorem claim_mixed_quadrants {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q)
    (hq : (a < Q.2 ∧ Q.1 < b) ∨ (Q.2 < a ∧ b < Q.1)) : False := by
  have B := bad_bounds hS hbad
  rcases hq with ⟨ht, hr⟩ | ⟨ht, hr⟩
  · exact quad_M1 (lowerFacts_of hS) ht.le hr.le (B.1 ht) (B.2.2.2 hr)
  · exact quad_M2 (lowerFacts_of hS) ht.le hr.le (B.2.1 ht) (B.2.2.1 hr)

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-III`). In the setting (1), the
joint failure (5) is impossible with `t < a`, `r < b` (certificate `QuadCert.qIII_check`; the
manuscript's argument goes through (13), (14) and Lemma 3, which are not needed here).
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 242-306, 388. -/
theorem claim_quadrant_III {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q) (ht : Q.2 < a)
    (hr : Q.1 < b) : False := by
  have B := bad_bounds hS hbad
  exact quad_III (lowerFacts_of hS) ht.le hr.le (B.2.1 ht) (B.2.2.2 hr)

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:Theorem1`), in the six-contact form used by
the assembly: a configuration with one free point `X` in the cap `CD(1,0)`, one `Y` in the cap
`FH(0,1)`, the third `Q` in the virtual triangle `(0,0)HC`, and exactly six boundary contacts, has
least area below `A₀`. (One of the conditions (3), (4) holds; projecting that cap point to its
side keeps the least area and gives exactly seven contacts, where
`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` Theorem 2 is strict.)
`docs/proof/nine/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 21-35, 390-421.
Uses: SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-obstruction,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-I,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-mixed-quadrants,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-III, SIX_BOUNDARY_EXTERIOR:Theorem2,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2 -/
theorem theorem1 {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q)
    (hsix : ExactlySixContacts X Y Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) < A₀ := by
  by_contra hge
  push Not at hge
  have hS : LowerSetting a h b c d f X Y Q := ⟨hN, hX, hY, hQ, hQT, hge⟩
  obtain ⟨o3, o4, o5⟩ := claim_obstruction hS
  obtain ⟨⟨x0, x1, y0, y1⟩, ⟨z0, z1, w0, w1⟩, ⟨q0, q1, q2, q3⟩⟩ := hsix
  have opY : SevenBoundaryMixedAboveCompletion.InOpenSquare Y := ⟨z0, z1, w0, w1⟩
  have opQ : SevenBoundaryMixedAboveCompletion.InOpenSquare Q := ⟨q0, q1, q2, q3⟩
  have opX : SevenBoundaryMixedAboveCompletion.InOpenSquare X := ⟨x0, x1, y0, y1⟩
  by_cases h3 : (Q.2 - a) * sarea (ptA a) Q X ≤ 0
  · have k := o3 h3 1 x1.le le_rfl
    have h7 : SevenBoundaryMixedAboveCompletion.ExactlySevenContacts ((1 : ℝ), X.2) Y Q :=
      Or.inl ⟨⟨⟨by norm_num, le_rfl, y0.le, y1.le⟩, Or.inr (Or.inl rfl), fun ⟨_, h⟩ => by
        rcases h with h | h <;> simp only at h <;> linarith⟩, opY, opQ⟩
    have := SevenBoundaryMixedAboveCompletion.theorem2_nConfig hN h7
    linarith
  by_cases h4 : 0 ≤ (Q.1 - b) * sarea (ptB b) Q Y
  · have k := o4 h4 1 w1.le le_rfl
    have h7 : SevenBoundaryMixedAboveCompletion.ExactlySevenContacts X (Y.1, (1 : ℝ)) Q :=
      Or.inr (Or.inl ⟨opX, ⟨⟨z0.le, z1.le, by norm_num, le_rfl⟩, Or.inr (Or.inr (Or.inr rfl)),
        fun ⟨h, _⟩ => by rcases h with h | h <;> simp only at h <;> linarith⟩, opQ⟩)
    have := SevenBoundaryMixedAboveCompletion.theorem2_nConfig hN h7
    linarith
  push Not at h3 h4
  have hbad : BadSigns a b X Y Q := ⟨h3, h4⟩
  obtain ⟨hya, hzb⟩ := o5 hbad
  have hta : Q.2 ≠ a := fun e => by rw [e] at hya; simp at hya
  have hrb : Q.1 ≠ b := fun e => by rw [e] at hzb; simp at hzb
  rcases lt_or_gt_of_ne hta with ht | ht <;> rcases lt_or_gt_of_ne hrb with hr | hr
  · exact claim_quadrant_III hS hbad ht hr
  · exact claim_mixed_quadrants hS hbad (Or.inr ⟨ht, hr⟩)
  · exact claim_mixed_quadrants hS hbad (Or.inl ⟨ht, hr⟩)
  · exact claim_quadrant_I hS hbad ht hr

end Heilbronn.Nine.SixBoundaryTwoSideCompletion
