module

public import Heilbronn.Six.TwoSideCompletion

/-! # Completion of the two-side-cap N family with an upper point
(`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`)

Role: primary route. Theorem 1 closes the occupancy N6-02 `(1,0,1;1)` of
`hand/UNRESTRICTED.md`, Section 4, when the anchor-interior point is in the upper quadrilateral
`HCDF`; with `SIX_BOUNDARY_TWO_SIDE_COMPLETION.md` (point below `HC`) it closes N6-02
(`n6_02`). Corollary 2 (both side caps occupied, third point anywhere) closes N6-05
`(1,1,1;0)` through the convex-nonagon exclusion of `GLOBAL_COMPLETION.md` (`n6_05`).

Setting (1): `nConfig a h b c d f X Y Q` with `NAnchors a h b c d f`, `X = (x, y)` in the closed
cap `CD(1,0)`, `Y = (z, w)` in the closed cap `FH(0,1)` (square-side positions allowed),
`Q = (r, t)` strictly inside `HCDF`. Competitive: every doubled area at least `s = 7/64`.
Normalization (2) `f ≤ d` by transposition (Sections 1-5). The hull is the strictly convex
octagon (3) `(V₀, …, V₇) = (A, B, C, X, D, F, Y, H)` with `Q` its sole interior point.

Certificate package (`hand/six_boundary_two_side_upper_certificates.json`, checker
`hand/check_six_boundary_two_side_upper.py`): the radial word of `Q` (11) lies among 82 words;
80 cubic certificates (14,253 terms) exclude all of them except `q* = (4,3,3,2,3,4,5,4)`. Its
geometric conclusion is `claim_80_certificates`: in the competitive normalized setting, the word
of `Q` is `q*`. The word `q*` is the simultaneous B/E sharp chamber (`claim_sharp_word`).

Results:
* `claim_octagon`: the hull is the octagon (3), `Q` interior;
* `claim_common_bounds`: the bounds (4)-(10);
* `claim_82_words`: the 82 words, and the word of `Q` is one of them;
* `claim_80_certificates`: the word of `Q` is `q*`;
* `claim_sharp_word`: in the word `q*`, `SHARP_B_E_MOVING.md` Theorem 1 (after the rotation
  `R(u, v) = (v, 1 - u)`) gives the sharp bound and equality;
* `theorem1`: occupancy (1) has least area at most `A₀`, equality only for `x = w = 1` and the
  optimal configuration;
* `claim_convex_nonagon`: with a third point in the opposite cap, all nine points are hull
  vertices;
* `corollary2`: both side caps occupied, third point anywhere: the same bound and equality;
* `n6_02`, `n6_05`: the assembly forms for N6-02 and N6-05 with exactly six contacts.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoSideUpper

open SixBoundary

/-- The hull octagon (3) `(A, B, C, X, D, F, Y, H)`. -/
def octagonXY (a h b c d f : ℝ) (X Y : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, ptF f, Y, ptH h]

/-- The sharp word (14) `q* = (4, 3, 3, 2, 3, 4, 5, 4)`. -/
def qStar : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-- The 82 words of Section 2: radial words on the octagon (complement relation (12)) with the
three `HCDF` tests (13) `q₇ ≥ 3` (`[HCQ] > 0`), `q₂ ≥ 2` (`[CDQ] > 0`), `q₅ ≥ 2`
(`[FHQ] > 0`). -/
def upperWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun q => 3 ≤ (q 7 : ℕ) ∧ 2 ≤ (q 2 : ℕ) ∧ 2 ≤ (q 5 : ℕ)

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon`). In the occupancy (1) with every
doubled area at least `7/64`, the full hull is the strictly convex octagon (3)
`A, B, C, X, D, F, Y, H` (counterclockwise) and `Q` is strictly inside it.
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 71-81. -/
theorem claim_octagon {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    IsConvexCCW (octagonXY a h b c d f X Y) ∧ InPolygon (octagonXY a h b c d f X Y) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-common-bounds`). In the occupancy (1) with every
doubled area at least `s = 7/64` (`L = h - a`, `M = c - b`, `X = (x, y)`, `Y = (z, w)`,
`Q = (r, t)`): (4) `aM, bL, My, Lz ≥ s`; (5) `[CXD] = d(x-c) - (1-c)y ≥ s`,
`[FYH] = (1-h)(f-z) - f(1-w) ≥ s`; (6) `x - c, w - h, d - y, f - z, y, z ≥ s`, `h, c ≤ 1 - s`,
`a, b ≥ s`; (7) `a, b ≥ 7/50`; (8) `d, f > 1/2`, `h, c > 1/2`, `L, M ≥ s`;
(10) `s ≤ r, t ≤ 1 - s`. `hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 83-159. -/
theorem claim_common_bounds {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare) (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    (7 / 64 ≤ a * (c - b) ∧ 7 / 64 ≤ b * (h - a) ∧ 7 / 64 ≤ (c - b) * X.2 ∧
      7 / 64 ≤ (h - a) * Y.1) ∧
    (7 / 64 ≤ d * (X.1 - c) - (1 - c) * X.2 ∧ 7 / 64 ≤ (1 - h) * (f - Y.1) - f * (1 - Y.2)) ∧
    (7 / 64 ≤ X.1 - c ∧ 7 / 64 ≤ Y.2 - h ∧ 7 / 64 ≤ d - X.2 ∧ 7 / 64 ≤ f - Y.1 ∧
      7 / 64 ≤ X.2 ∧ 7 / 64 ≤ Y.1 ∧ h ≤ 1 - 7 / 64 ∧ c ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ a ∧
      7 / 64 ≤ b) ∧
    (7 / 50 ≤ a ∧ 7 / 50 ≤ b) ∧
    (1 / 2 < d ∧ 1 / 2 < f ∧ 1 / 2 < h ∧ 1 / 2 < c ∧ 7 / 64 ≤ h - a ∧ 7 / 64 ≤ c - b) ∧
    (7 / 64 ≤ Q.1 ∧ Q.1 ≤ 1 - 7 / 64 ∧ 7 / 64 ≤ Q.2 ∧ Q.2 ≤ 1 - 7 / 64) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words`). Exactly 82 words satisfy the
complement relation (12) and the `HCDF` tests (13), and `q*` is one of them (member 48 in
lexicographic order from zero). In the occupancy (1) with every doubled area at least `7/64`,
the radial word (11) of `Q` on the octagon (3) is one of these 82 words.
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 161-208.
Uses: SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon -/
theorem claim_82_words :
    upperWords.card = 82 ∧ qStar ∈ upperWords ∧
    ∀ {a h b c d f : ℝ} {X Y Q : Point}, NAnchors a h b c d f → InCapR c d X → InCapL f h Y →
      Q ∈ unitSquare → InUpperQuad h c d f Q →
      7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
      ∃ q ∈ upperWords, HasRadialWord (octagonXY a h b c d f X Y) Q fun i => (q i : ℕ) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-80-certificates`). Geometric conclusion of the
certificate package: in the occupancy (1) with every doubled area at least `7/64` and the
normalization `f ≤ d`, the radial word of `Q` on the octagon (3) is `q*`. (Eighty fixed cubic
certificates, 14,253 positive terms, with cube bounds at most `-661437830559/671088640000`,
exclude the other 81 words; none applies to `q*`.)
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 210-307.
Uses: SIX_BOUNDARY_TWO_SIDE_UPPER:claim-common-bounds, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words,
SIX_BOUNDARY_SINGLE_SIDE:claim-pair-line-sign -/
theorem claim_80_certificates {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hfd : f ≤ d) (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) (q : Fin 8 → ℕ)
    (hq : HasRadialWord (octagonXY a h b c d f X Y) Q q) :
    q = fun i => (qStar i : ℕ) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-sharp-word`). In the occupancy (1) with
`f ≤ d`, if `Q` has the word `q*`, then the eleven oriented areas of the simultaneous B/E
chamber are positive — `[CXB], [CXD], [CAB], [FYH], [ABH], [AYH]` (hull order) and
`[CFQ], [FBQ], [XQY], [ADQ], [DHQ]` (20) (word `q*`) — and, after the rotation
`R(u, v) = (v, 1 - u)` with the relabelling (18)-(19), Theorem 1 of `SHARP_B_E_MOVING.md` gives
least area at most `A₀`, with equality only for `x = w = 1` and the optimal configuration.
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 309-382.
Uses: SHARP_B_E_MOVING:Theorem1 -/
theorem claim_sharp_word {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hfd : f ≤ d) (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q)
    (hmin : 7 / 128 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hq : HasRadialWord (octagonXY a h b c d f X Y) Q fun i => (qStar i : ℕ)) :
    (0 < sarea (ptC c) X (ptB b) ∧ 0 < sarea (ptC c) X (ptD d) ∧
      0 < sarea (ptC c) (ptA a) (ptB b) ∧ 0 < sarea (ptF f) Y (ptH h) ∧
      0 < sarea (ptA a) (ptB b) (ptH h) ∧ 0 < sarea (ptA a) Y (ptH h) ∧
      0 < sarea (ptC c) (ptF f) Q ∧ 0 < sarea (ptF f) (ptB b) Q ∧ 0 < sarea X Q Y ∧
      0 < sarea (ptA a) (ptD d) Q ∧ 0 < sarea (ptD d) (ptH h) Q) ∧
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
    (minTriangleArea (nConfig a h b c d f X Y Q) = A₀ →
      X.1 = 1 ∧ Y.2 = 1 ∧ IsOptimal (nConfig a h b c d f X Y Q)) := by
  sorry

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_SIDE_UPPER:Theorem1`). In the occupancy (1) — one free point
`X` in the cap `CD(1,0)`, one `Y` in the cap `FH(0,1)`, the third `Q` inside `HCDF` — the least
area is at most `A₀`; equality forces `x = w = 1` and the optimal (sharp eight-boundary)
configuration, up to square symmetry and relabelling.
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 23-37.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-octagon,
SIX_BOUNDARY_SINGLE_SIDE:claim-radial-word, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-82-words,
SIX_BOUNDARY_TWO_SIDE_UPPER:claim-80-certificates, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-sharp-word -/
theorem theorem1 {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hQ : Q ∈ unitSquare)
    (hQu : InUpperQuad h c d f Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (minTriangleArea (nConfig a h b c d f X Y Q) = A₀ →
        X.1 = 1 ∧ Y.2 = 1 ∧ IsOptimal (nConfig a h b c d f X Y Q)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_SIDE_UPPER:claim-convex-nonagon`). In a competitive configuration
with `X` in the cap `CD(1,0)`, `Z` in the opposite cap `DF(1,1)` and `Y` in the cap `FH(0,1)`,
each cap point is separated from all other points by its anchor edge, so all nine points are
hull vertices: `A, B, C, X, D, Z, F, Y, H` is a strictly convex nonagon (counterclockwise).
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 47-53. -/
theorem claim_convex_nonagon {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZ : InCapT d f Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsConvexCCW ![ptA a, ptB b, ptC c, X, ptD d, Z, ptF f, Y, ptH h] := by
  sorry

/-- **Corollary 2** (`SIX_BOUNDARY_TWO_SIDE_UPPER:Corollary2`). In family N, if both side caps are
occupied (`X ∈ CD(1,0)`, `Y ∈ FH(0,1)`), with no hypothesis on the third free point `Z`, the
least area is at most `A₀`, and equality forces `x = w = 1` and the optimal configuration.
(The third point is in the anchor hexagon, by the convex-nonagon exclusion `m < 1/19 < A₀`.)
`hand/SIX_BOUNDARY_TWO_SIDE_UPPER.md`, lines 39-54.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem3, SIX_BOUNDARY_EXTERIOR:Theorem2,
SIX_BOUNDARY_TWO_SIDE_UPPER:Theorem1, SIX_BOUNDARY_TWO_SIDE_COMPLETION:Theorem1,
SIX_BOUNDARY_TWO_SIDE_UPPER:claim-convex-nonagon, GLOBAL_COMPLETION:Theorem1 -/
theorem corollary2 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZ : Z ∈ unitSquare) :
    minTriangleArea (nConfig a h b c d f X Y Z) ≤ A₀ ∧
      (minTriangleArea (nConfig a h b c d f X Y Z) = A₀ →
        X.1 = 1 ∧ Y.2 = 1 ∧ IsOptimal (nConfig a h b c d f X Y Z)) := by
  sorry

/-- **Case N6-02** (`(n_L, n_T, n_R; n_I) = (1,0,1;1)`, `hand/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with exactly six contacts, one free point in each side cap and
the third strictly inside the anchor hexagon, with least area at least `A₀`, is optimal.
Uses: SIX_BOUNDARY_TWO_SIDE_UPPER:Theorem1, SIX_BOUNDARY_TWO_SIDE_COMPLETION:Theorem1,
SIX_BOUNDARY_TWO_SIDE_UPPER:Corollary2 -/
theorem n6_02 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZsq : Z ∈ unitSquare)
    (hZ : InHexagon a h b c d f Z) (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    IsOptimal (nConfig a h b c d f X Y Z) := by
  sorry

/-- **Case N6-05** (`(n_L, n_T, n_R; n_I) = (1,1,1;0)`, `hand/UNRESTRICTED.md`, Section 4),
assembly form: an N configuration with exactly six contacts and one free point in each of the
caps `R`, `T`, `L` has least area below `A₀` (convex nonagon, `m < 1/19`).
Uses: SIX_BOUNDARY_TWO_SIDE_UPPER:Corollary2, SIX_BOUNDARY_TWO_SIDE_UPPER:claim-convex-nonagon,
GLOBAL_COMPLETION:Theorem1 -/
theorem n6_05 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapL f h Y) (hZ : InCapT d f Z)
    (hsix : ExactlySixContacts X Y Z)
    (hmin : A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    False := by
  sorry

end Heilbronn.SixBoundaryTwoSideUpper
