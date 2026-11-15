module

public import Heilbronn.Six.TwoSideProjection

/-! # Completion of the two-side-cap N family with a lower point
(`hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`)

Role: primary route. Theorem 1 closes the occupancy N6-02 `(1,0,1;1)` of
`hand/UNRESTRICTED.md`, Section 4, when the anchor-interior point is below `HC` (the "lower-point
companion" of `SIX_BOUNDARY_TWO_SIDE_UPPER.md`); it is also used by Corollary 2 there.

Setting (1): `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed
cap `CD(1,0)`, `Y = (z, w)` in the closed cap `FH(0,1)`, `Q = (r, t)` in the closed virtual
triangle `(0,0)HC`; no height-order or joining-line assumption. Competitive: least area at least
`A₀`, so every doubled area is at least `μ ≥ 2A₀ > s = 7/64`. With `L = h - a`, `M = c - b`.

Section 1 shows that projecting `x` to `1` keeps every threshold when `(t - a)[AQX] ≤ 0` (3), and
projecting `w` to `1` keeps every threshold when `(r - b)[BQY] ≥ 0` (4). Sections 2-4 exclude
the four quadrants of `Q` relative to `(b, a)` in which both fail (5).

Results:
* `claim_obstruction`: (3) and (4) are sufficient for the two projections, and their joint
  failure (5) forces `sgn(y - a) = sgn(t - a) ≠ 0` and `sgn(z - b) = sgn(r - b) ≠ 0`;
* `claim_quadrant_I`, `claim_mixed_quadrants`, `claim_quadrant_III`: (5) is impossible in each
  quadrant;
* `lemma3`: `min{λ²q²(1-λ), q²(1-λ)(1-q)/(1-λq)} ≤ 16/147 < 7/64` for `0 < λ, q < 1`;
* `theorem1`: in the whole occupancy (1) the least area is at most `A₀`, with equality only
  for `x = w = 1` and the optimal configuration.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoSideCompletion

open SixBoundary

/-- The standing setting (1) of `hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` in the competitive
case: `X ∈ CD(1,0)`, `Y ∈ FH(0,1)`, `Q ∈ (0,0)HC`, least area at least `A₀`. -/
def LowerSetting (a h b c d f : ℝ) (X Y Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapL f h Y ∧ Q ∈ unitSquare ∧ InT0 h c Q ∧
    A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q)

/-- Both sufficient projection conditions fail (5): `(t - a)[AQX] > 0` and `(r - b)[BQY] < 0`. -/
def BadSigns (a b : ℝ) (X Y Q : Point) : Prop :=
  0 < (Q.2 - a) * sarea (ptA a) Q X ∧ (Q.1 - b) * sarea (ptB b) Q Y < 0

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-obstruction`). In the setting (1):
if `(t - a)[AQX] ≤ 0` (3), moving `x` to any `x' ∈ [x, 1]` does not decrease the least area;
if `(r - b)[BQY] ≥ 0` (4), moving `w` to any `w' ∈ [w, 1]` does not decrease it; and if both
fail (5), then `(y - a)(t - a) > 0` and `(z - b)(r - b) > 0` (so `t ≠ a`, `r ≠ b`, and `Q` lies
in one of four open quadrants relative to `(b, a)`).
`hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 52-110.
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
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-I`). In the setting (1), the
joint failure (5) is impossible with `t > a`, `r > b` (it would give `s ≤ q³(1 - q) ≤ 27/256 <
7/64` with `q = √(hc)`). `hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 112-162. -/
theorem claim_quadrant_I {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q) (ht : a < Q.2)
    (hr : b < Q.1) : False := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-mixed-quadrants`). In the setting (1), the
joint failure (5) is impossible with `t > a`, `r < b`, and (by transposition) with `t < a`,
`r > b`. `hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 164-240.
Uses: SIX_BOUNDARY_HULL:claim-transposition -/
theorem claim_mixed_quadrants {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q)
    (hq : (a < Q.2 ∧ Q.1 < b) ∨ (Q.2 < a ∧ b < Q.1)) : False := by
  sorry

/-- **Lemma 3** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:Lemma3`). For `0 < λ, q < 1`,
`min{λ²q²(1 - λ), q²(1 - λ)(1 - q)/(1 - λq)} ≤ 16/147 < 7/64`.
`hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 308-386. -/
theorem lemma3 {l q : ℝ} (hl : 0 < l) (hl1 : l < 1) (hq : 0 < q) (hq1 : q < 1) :
    min (l ^ 2 * q ^ 2 * (1 - l)) (q ^ 2 * (1 - l) * (1 - q) / (1 - l * q)) ≤ 16 / 147 ∧
      (16 / 147 : ℝ) < 7 / 64 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-III`). In the setting (1), the
joint failure (5) is impossible with `t < a`, `r < b`: it gives (13)
`s ≤ λ²q²(1 - λ)` and (14) `s ≤ q²(1 - λ)(1 - q)/(1 - λq)` with `λ = √(ab/(hc))`, `q = √(hc)`,
contradicting Lemma 3. `hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 242-306, 388.
Uses: SIX_BOUNDARY_TWO_SIDE_COMPLETION:Lemma3 -/
theorem claim_quadrant_III {a h b c d f : ℝ} {X Y Q : Point}
    (hS : LowerSetting a h b c d f X Y Q) (hbad : BadSigns a b X Y Q) (ht : Q.2 < a)
    (hr : Q.1 < b) : False := by
  sorry

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_SIDE_COMPLETION:Theorem1`). Every configuration with one
free point `X` in the cap `CD(1,0)`, one `Y` in the cap `FH(0,1)` and the third `Q` in the
virtual triangle `(0,0)HC` has least area at most `A₀`; equality forces `x = w = 1` and the
optimal (sharp eight-boundary) configuration, up to square symmetry and relabelling.
`hand/SIX_BOUNDARY_TWO_SIDE_COMPLETION.md`, lines 21-35, 390-421.
Uses: SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-obstruction,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-I,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-mixed-quadrants,
SIX_BOUNDARY_TWO_SIDE_COMPLETION:claim-quadrant-III, SIX_BOUNDARY_EXTERIOR:Theorem2,
SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1, EIGHT_BOUNDARY:Theorem13, HAND_PROOF:Theorem2 -/
-- FLAG: the proof (lines 412-414) cites Theorem 1 of SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md,
-- whose scope is only the reduced far-upper-cap case (its lines 3-22). After projecting one
-- cap point and reflecting so the singleton contact is at most 1/2, the other cap point may
-- lie in the near upper cap; the theorem that covers the projected seven-boundary
-- configuration is SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2 (the form used by
-- UNRESTRICTED.md, line 137). Citation scope only; the statement below is unaffected.
theorem theorem1 {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQT : InT0 h c Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (minTriangleArea (nConfig a h b c d f X Y Q) = A₀ →
        X.1 = 1 ∧ Y.2 = 1 ∧ IsOptimal (nConfig a h b c d f X Y Q)) := by
  sorry

end Heilbronn.SixBoundaryTwoSideCompletion
