module

public import Heilbronn.Six.TwoSideProjection

/-! # N with one exterior side-cap point and two anchor-interior points
(`hand/SIX_BOUNDARY_SINGLE_SIDE.md`)

Role: primary route. Theorem 1 closes the occupancy N6-01 `(0,0,1;2)` of
`hand/UNRESTRICTED.md`, Section 4, and by transposition `(1,0,0;2)` (`n6_01`).

Setting: `nConfig a h b c d f X P Q` with `NAnchors a h b c d f` (no order between `f` and `d`),
`X = (x, y)` in the closed cap `CD(1,0)` (`x = 1` allowed), `P = (p_x, p_y)` and
`Q = (q_x, q_y)` strictly inside the anchor hexagon. Contradiction hypothesis: every doubled area
is at least `s = 7/64` (`7/128 ≤ minTriangleArea`); `ρ = 13/16 < (4 + 2√3)s`. The hull is the
strictly convex heptagon (2) `(V₀, …, V₆) = (A, B, C, X, D, F, H)` with `P, Q` interior.

Certificate package (`hand/six_boundary_single_side_certificates.json`, checker
`hand/check_six_boundary_single_side.py`): the radial words (14) of `P, Q` on the heptagon lie
among 43 words (12 below `HC`, 31 above); the mixed and upper pair classes, the ear, sector and
sign exclusions and five sign splits give 543 cells, covered by 300 cubic certificates (40,480
terms) in the 27 factors of `claim_factors_costs` and the area costs of Section 4. Its geometric
conclusion is `claim_certificates`: no pair of radial words is realizable in the competitive
setting.

Results:
* `claim_heptagon`: the hull is the heptagon (2), `P, Q` interior;
* `claim_common_bounds`: the affine bounds (3)-(10);
* `claim_empties_and_classes`: the empty triangles (11), the ear capacities (12), the two pair
  classes (mixed, upper) with `W ≥ 4s` resp. `W ≥ 8s`, and `hc > 7/11` (13) in the mixed class;
* `claim_543_cell_cover`: the 57 / 43 / 12 / 31 word counts, and the words of `P, Q` lie among
  the 43 words, with the class given by `r₆ < 3` (below `HC`);
* `claim_factors_costs`: the 27 affine factors are nonnegative;
* `claim_certificates`: the package excludes every pair of radial words;
* `theorem1`: least area `< 7/128` (and transposed for a point in `FH(0,1)`);
* `n6_01`: the assembly form for N6-01 with exactly six contacts.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySingleSide

open SixBoundary

/-- The hull heptagon (2) `(A, B, C, X, D, F, H)`. -/
def heptagonX (a h b c d f : ℝ) (X : Point) : Fin 7 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, ptF f, ptH h]

/-- The 43 words of Section 3: radial words on the heptagon (complement relation (15)) with the
inside-`CD` test `r₂ ≥ 2` and (16) `2 ≤ r₁ ≤ 4` (not in `ABH`, not in `BCX`). Among them,
`r₆ < 3` means below `HC` and `r₆ ≥ 3` above `HC`. -/
def singleSideWords : Finset (Fin 7 → Fin 7) :=
  (radialWords 7).filter fun r => 2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 4

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon`). With every doubled area at least
`7/64`, `X` in the cap `CD(1,0)` and `P, Q` strictly inside the anchor hexagon, the full hull is
the strictly convex heptagon (2) `A, B, C, X, D, F, H` (counterclockwise) with `P, Q` interior.
`hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 44-51. -/
theorem claim_heptagon {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (heptagonX a h b c d f X) ∧ InPolygon (heptagonX a h b c d f X) P ∧
      InPolygon (heptagonX a h b c d f X) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-common-bounds`). In the setting with every doubled
area at least `s = 7/64` (`L = h - a`, `M = c - b`, `X = (x, y)`): (3) `aM, bL, My ≥ s`,
`[CXD] = d(x - c) - (1 - c)y ≥ s`; (4) `x - c ≥ s`, `(1 - c)(d - y) ≥ s + d(1 - x)`,
`c ≤ 1 - s`; (5) `a ≥ 7/50`, `b ≥ 175/1376`, `a, y ≥ 1/7`, `b ≥ 1/8`; (6) `h ≥ s/M + s/b`,
`hc ≥ 4s`, `c ≥ 4s`; (7) `d > 1/2`, `h > 1/2`, `d, f ≤ 1 - s`; (8) `d - y ≥ 7/36`;
(10) `s ≤ p_x, p_y, q_x, q_y ≤ 1 - s`. `hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 54-135. -/
theorem claim_common_bounds {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2) ∧
    (7 / 64 ≤ X.1 - c ∧ 7 / 64 + d * (1 - X.1) ≤ (1 - c) * (d - X.2) ∧ c ≤ 1 - 7 / 64) ∧
    (7 / 50 ≤ a ∧ 175 / 1376 ≤ b ∧ 1 / 7 ≤ a ∧ 1 / 7 ≤ X.2 ∧ 1 / 8 ≤ b) ∧
    (7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧ 4 * (7 / 64) ≤ h * c ∧ 4 * (7 / 64) ≤ c) ∧
    (1 / 2 < d ∧ 1 / 2 < h ∧ d ≤ 1 - 7 / 64 ∧ f ≤ 1 - 7 / 64) ∧
    7 / 36 ≤ d - X.2 ∧
    (7 / 64 ≤ P.1 ∧ P.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ P.2 ∧ P.2 ≤ 1 - 7 / 64 ∧
      7 / 64 ≤ Q.1 ∧ Q.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ Q.2 ∧ Q.2 ≤ 1 - 7 / 64) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes`). In the setting with every
doubled area at least `s = 7/64` (`ρ = 13/16`, `W = 1 - (h - d)(c - f)`):
(11) `[ABH] < 3s` and `[BCX] < 3s`, and neither triangle contains `P` or `Q`;
(12) the six ears have doubled area `< ρ` and none contains both `P` and `Q`;
at most one of `P, Q` is below `HC` (else least area `≤ 7hc/128 < 7/128`), so the pair is
*mixed* (one in `HABC`, one in `HCDF`) or *upper* (both in `HCDF`); the mixed class has
`W ≥ 4s` and `hc > 7/11` (13), the upper class `W ≥ 8s` and `hc ≥ 4s`.
`hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 137-203.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem5, SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2,
SIX_BOUNDARY_HULL:Theorem1, QUADRILATERAL_HULL:Theorem4, QUADRILATERAL_HULL:Theorem1,
TYPE_II:EndpointTriangleTheorem, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_empties_and_classes {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧ sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
      ¬ InTriangle P (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Q (ptA a) (ptB b) (ptH h) ∧
      ¬ InTriangle P (ptB b) (ptC c) X ∧ ¬ InTriangle Q (ptB b) (ptC c) X) ∧
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    (¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
      ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
      ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
      ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
      ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
      ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a))) ∧
    ((InLowerQuad a h b c P ∧ InUpperQuad h c d f Q) ∨
      (InUpperQuad h c d f P ∧ InLowerQuad a h b c Q) ∨
      (InUpperQuad h c d f P ∧ InUpperQuad h c d f Q)) ∧
    ((InLowerQuad a h b c P ∨ InLowerQuad a h b c Q) →
      4 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 7 / 11 < h * c) ∧
    ((InUpperQuad h c d f P ∧ InUpperQuad h c d f Q) →
      8 * (7 / 64) ≤ 1 - (h - d) * (c - f) ∧ 4 * (7 / 64) ≤ h * c) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-543-cell-cover`). The finite word cover of
Section 3: exactly 57 words satisfy (15) on the heptagon, 43 of them satisfy `r₂ ≥ 2` and (16),
12 of these are below `HC` (`r₆ < 3`) and 31 above. In the setting with every doubled area at
least `7/64`, the radial words (14) of `P` and `Q` on the heptagon are among the 43 words, and a
word has `r₆ < 3` exactly when its point is below `HC`. (The ear, common-sector and sign-conflict
exclusions and the five sign splits refine the `12·31 + 31·32/2` word pairs into the 543 cells
of the certificate checker.) `hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 205-318.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon,
SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes, ONE_CORNER_COMPLETION:Theorem2,
ONE_CORNER_COMPLETION:Theorem3, SIX_BOUNDARY_SINGLE_SIDE:claim-pair-line-sign -/
theorem claim_543_cell_cover :
    (radialWords 7).card = 57 ∧ singleSideWords.card = 43 ∧
    (singleSideWords.filter fun r => (r 6 : ℕ) < 3).card = 12 ∧
    (singleSideWords.filter fun r => 3 ≤ (r 6 : ℕ)).card = 31 ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, NAnchors a h b c d f → InCapR c d X →
      P ∈ unitSquare → Q ∈ unitSquare → InHexagon a h b c d f P → InHexagon a h b c d f Q →
      7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      ∀ R ∈ ({P, Q} : Set Point), ∃ r ∈ singleSideWords,
        HasRadialWord (heptagonX a h b c d f X) R (fun i => (r i : ℕ)) ∧
          ((r 6 : ℕ) < 3 ↔ InLowerQuad a h b c R) := by
  sorry

/-- The 27 affine factors `l₀, …, l₂₆` of Section 4, in coefficient-file order, at the
coordinates `(a, h, b, c, d, f, x, y, p_x, p_y, q_x, q_y)` (`s = 7/64`). -/
def singleSideFactors (a h b c d f : ℝ) (X P Q : Point) : Fin 27 → ℝ :=
  ![a - 1 / 7, b - 1 / 8, h - 1 / 2, c - 4 * (7 / 64), d - 1 / 2, 1 - h, 1 - 7 / 64 - c,
    1 - 7 / 64 - d, 1 - 7 / 64 - f, d - a, h - d, f - b, c - f, h - a - 7 / 64,
    c - b - 7 / 64, 1 - X.1, X.1 - c - 7 / 64, X.2 - 1 / 7, d - X.2 - 7 / 36,
    P.1 - 7 / 64, 1 - 7 / 64 - P.1, P.2 - 7 / 64, 1 - 7 / 64 - P.2,
    Q.1 - 7 / 64, 1 - 7 / 64 - Q.1, Q.2 - 7 / 64, 1 - 7 / 64 - Q.2]

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-factors-costs`). In the setting with every doubled
area at least `7/64`, the 27 affine factors of Section 4 are nonnegative (by (3)-(10), the N
normalization and the square). (The quadratic costs `ε[V_iV_jV_k] - T`, `T = s, 3s, ρ` for zero,
one or two certified interior points, and the appended costs `W - 4s` or `W - 8s`,
`hc - 7/11` or `hc - 4s`, `3s - [ABH]`, `3s - [BCX]`, `ρ - [T]` are nonnegative by the threshold,
subdivision, the two-interior-point theorem and `claim_empties_and_classes`.)
`hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 320-396.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-common-bounds -/
theorem claim_factors_costs {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i : Fin 27, 0 ≤ singleSideFactors a h b c d f X P Q i := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_SIDE:claim-certificates`). Geometric conclusion of the
certificate package: in the setting with every doubled area at least `7/64`, no pair of radial
words of `P, Q` on the heptagon is realizable. (Each of the 543 cells is covered by one of the 300
fixed cubic certificates, 40,480 positive terms, whose cube bounds are at most
`-81664995001/82678120448 < -3/4`.) `hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 398-452.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-543-cell-cover, SIX_BOUNDARY_SINGLE_SIDE:claim-factors-costs,
SIX_BOUNDARY_SINGLE_SIDE:claim-empties-and-classes, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificates {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X P Q)) (p q : Fin 7 → ℕ)
    (hp : HasRadialWord (heptagonX a h b c d f X) P p)
    (hq : HasRadialWord (heptagonX a h b c d f X) Q q) :
    False := by
  sorry

/-- **Theorem 1** (`SIX_BOUNDARY_SINGLE_SIDE:Theorem1`). Every N configuration with one free point
`X` in the side cap `CD(1,0)` and two free points `P, Q` strictly inside the anchor hexagon has
least area strictly below `7/128 < A₀` (both the mixed and the upper placement; no order between
`f` and `d`). Transposition gives the same for `X` in the side cap `FH(0,1)`.
`hand/SIX_BOUNDARY_SINGLE_SIDE.md`, lines 20-37, 398-452.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-heptagon, SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word,
SIX_BOUNDARY_SINGLE_SIDE:claim-certificates, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1 {a h b c d f : ℝ} {X P Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X ∨ InCapL f h X) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare)
    (hPI : InHexagon a h b c d f P) (hQI : InHexagon a h b c d f Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 7 / 128 := by
  sorry

/-- **Case N6-01** (`(n_L, n_T, n_R; n_I) = (0,0,1;2)`, and its transpose `(1,0,0;2)`,
`hand/UNRESTRICTED.md`, Section 4), assembly form: an N configuration with exactly six contacts,
one free point in a side cap and two strictly inside the anchor hexagon, cannot have least area
at least `A₀`.
Uses: SIX_BOUNDARY_SINGLE_SIDE:Theorem1 -/
theorem n6_01 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X ∨ InCapL f h X) (hYsq : Y ∈ unitSquare) (hZsq : Z ∈ unitSquare)
    (hY : InHexagon a h b c d f Y) (hZ : InHexagon a h b c d f Z)
    (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    False := by
  sorry

end Heilbronn.SixBoundarySingleSide
