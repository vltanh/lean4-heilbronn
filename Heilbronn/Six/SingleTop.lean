module

public import Heilbronn.Six.Setting

/-! # One opposite-cap point and two anchor-interior points in N (`hand/SIX_BOUNDARY_SINGLE_TOP.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-03 `(n_L,n_T,n_R;n_I) = (0,1,0;2)`
of `hand/UNRESTRICTED.md`, Section 4 (strict bound, no equality case).

**Setting.** The N anchors `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), F=(f,1)`
(`NAnchors`, (1)); one free point `X` in the opposite cap `T = DF(1,1)` (`InCapT`, square-side
positions allowed; the corner is virtual) and two free points `P, Q` strictly inside the anchor
hexagon `ABCDFH` (`InHexagon`). The configuration is `nConfig a h b c d f X P Q`. Transposition
preserves the occupancy, so the proof imposes `f ≤ d`; the claims that use it carry the
hypothesis `f ≤ d`. Contradiction hypothesis: every actual doubled area is at least `s = 8/73`,
written `4/73 ≤ minTriangleArea (nConfig a h b c d f X P Q)`; `ρ = 49/60 < (4+2√3)s`.
Notation: `L = h-a`, `M = c-b`, `W = [HCDF] = 1-(h-d)(c-f)`, `δ = (1-d)(1-f)`; the full hull is
the heptagon `(V₀,…,V₆) = (A,B,C,D,X,F,H)` (`heptagon`); "below HC" is `[HCR] < 0`.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the family.
* `claim_anchor_bounds` (4): `aM, bL ≥ s`, `h ≥ s/M + s/b`, `hc ≥ sc²/(bM) ≥ 4s`, `a, b > 1/8`,
  `h, c ≥ 4s`, `L, M ≥ s`.
* `eq5`, `claim_cap_bounds`: the two forms of `[DXF]`; `x_X-f, y_X-d ≥ s`, `δ ≥ s`, `d < 7/8`,
  `f < 67/100`.
* `eq6`, `claim_interior_box`: the projection identities; `s ≤ r_x, r_y ≤ 1-s` for `R ∈ {P,Q}`.
* `claim_ears` (7): the six ears have doubled area `< 13/16`, none contains both `P, Q`.
* `claim_one_below_HC`: at most one of `P, Q` is below `HC`.
* `claim_W` (8): `W ≥ 4s` (mixed class), `W ≥ 8s` (upper class).
* `claim_mixed` (9)–(10): bounds for the lower point of the mixed class.
* `claim_hull`: the heptagon is strictly convex with `P, Q` inside.
* `claim_words`: 57 heptagon words, 52 with `r₃ ≥ 2` (19 lower, 33 upper); `P, Q` have words in
  this list.
* `eq14`: the diagonal separation rule in `HCDF`.
* `claim_pair_cover`: the two upper-pair exclusions behind the 884 base pairs (no common
  diagonal sector; the isolated vertex of a one-diagonal separation).
* `claim_refinement`: every actual sign is nonzero (the basis of the 893 terminal cells).
* `claim_certificate`: the 616 fixed cubic certificates: with `f ≤ d` no pair of words is
  possible.

Implicit in the manuscript: the claims are stated under the contradiction hypothesis
`4/73 ≤ minTriangleArea` and, where used, the normalization `f ≤ d`; the hypothesis of
`ONE_CORNER_COMPLETION` Theorems 2–3 (minimum at least `(7/64)·area(HCDF)`) is not checked in the
text (lines 147-166) but follows from `4/73 > 7/128 ≥ 7W/128`. The base-pair count
"615 mixed + 269 upper" (lines 170-171) is not asserted by the checker; only the total 884 is.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySingleTop

open Heilbronn.SixBoundary

/-- The full hull (3): the heptagon `(V₀, …, V₆) = (A, B, C, D, X, F, H)`. -/
def heptagon (a h b c d f : ℝ) (X : Point) : Fin 7 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, X, ptF f, ptH h]

/-- The occupancy N6-03: N anchors, `X` in the opposite cap `DF(1,1)`, `P, Q` strictly inside the
anchor hexagon. -/
def SingleTopFamily (a h b c d f : ℝ) (X P Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f X ∧ InHexagon a h b c d f P ∧ InHexagon a h b c d f Q

/-- The 52 radial words of an interior point of the heptagon that lies inside the anchor
hexagon: the heptagon words (`radialWords 7`, 57 of them) with the extra edge test `DF`,
`r₃ ≥ 2`. -/
def hexagonWords : Finset (Fin 7 → Fin 7) :=
  (radialWords 7).filter fun r => 2 ≤ (r 3 : ℕ)

/-- **Theorem 1** (`SIX_BOUNDARY_SINGLE_TOP:Theorem1`). Every configuration of N6-03 (N anchors,
one free point in the opposite cap `DF(1,1)`, two free points strictly inside the anchor
hexagon; both lower/upper placements, all pair-line signs, square-side contacts of `X` allowed)
has minimum ordinary triangle area strictly below `4/73 < A₀`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 22-25, 298-301.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds,
SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds, SIX_BOUNDARY_SINGLE_TOP:claim-interior-box,
SIX_BOUNDARY_SINGLE_TOP:claim-ears, SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC,
SIX_BOUNDARY_SINGLE_TOP:claim-W, SIX_BOUNDARY_SINGLE_TOP:claim-mixed,
SIX_BOUNDARY_SINGLE_TOP:claim-hull, SIX_BOUNDARY_SINGLE_TOP:claim-words,
SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover, SIX_BOUNDARY_SINGLE_TOP:claim-refinement,
SIX_BOUNDARY_SINGLE_TOP:claim-certificate -/
theorem theorem1 {a h b c d f : ℝ} {X P Q : Point} (hfam : SingleTopFamily a h b c d f X P Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  sorry

/-! ### Section 1: affine bounds and area costs -/

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds`). Equation (4) and the lines after
it: with `s = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ s`, `bL ≥ s`, `h ≥ s/M + s/b`,
`hc ≥ sc²/(bM) ≥ 4s`; `b, a > 1/8`; `h, c ≥ 4s`; `L, M ≥ s`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 48-61. -/
theorem claim_anchor_bounds {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let s : ℝ := 8 / 73
    s ≤ a * (c - b) ∧ s ≤ b * (h - a) ∧ s / (c - b) + s / b ≤ h ∧
      s * c ^ 2 / (b * (c - b)) ≤ h * c ∧ 4 * s ≤ s * c ^ 2 / (b * (c - b)) ∧
      1 / 8 < b ∧ 1 / 8 < a ∧ 4 * s ≤ h ∧ 4 * s ≤ c ∧ s ≤ h - a ∧ s ≤ c - b := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq5`). The two forms of the cap determinant:
`[DXF] = (1-d)(x_X-f) - (1-f)(1-y_X) = (1-f)(y_X-d) - (1-d)(1-x_X)`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 63-66. -/
theorem eq5 (d f : ℝ) (X : Point) :
    sarea (ptD d) X (ptF f) = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      sarea (ptD d) X (ptF f) = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds`). With `s = 8/73` and the normalization
`f ≤ d`: `x_X - f ≥ s`, `y_X - d ≥ s`, `δ = (1-d)(1-f) ≥ s`, `d < 7/8` and `f < 67/100`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 63-73. -/
theorem claim_cap_bounds {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let s : ℝ := 8 / 73
    s ≤ X.1 - f ∧ s ≤ X.2 - d ∧ s ≤ (1 - d) * (1 - f) ∧ d < 7 / 8 ∧ f < 67 / 100 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq6`). The exact projection identities, for every point
`R`: `(1-f)[CDR] + (1-c)[DFR] = [CDF](1-r_x)` and `(1-h)[DFR] + (1-d)[FHR] = [DFH](1-r_y)`.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 76-81. -/
theorem eq6 (h c d f : ℝ) (R : Point) :
    (1 - f) * sarea (ptC c) (ptD d) R + (1 - c) * sarea (ptD d) (ptF f) R =
        sarea (ptC c) (ptD d) (ptF f) * (1 - R.1) ∧
      (1 - h) * sarea (ptD d) (ptF f) R + (1 - d) * sarea (ptF f) (ptH h) R =
        sarea (ptD d) (ptF f) (ptH h) * (1 - R.2) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-interior-box`). With `s = 8/73`, both interior points
`R ∈ {P, Q}` satisfy `s ≤ r_x ≤ 1-s` and `s ≤ r_y ≤ 1-s` (bases `AH`, `BC` and (6)).
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 75-86. -/
theorem claim_interior_box {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ R ∈ ({P, Q} : Set Point),
      8 / 73 ≤ R.1 ∧ R.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ R.2 ∧ R.2 ≤ 1 - 8 / 73 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-ears`). Equation (7): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1 at the
weaker threshold `7/64`), and none of them contains both `P` and `Q` (the two-interior-point
triangle theorem). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 88-95.
Uses: SIX_BOUNDARY_HULL:Theorem1, CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_ears {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptH h) ∧ InTriangle Q (ptA a) (ptB b) (ptH h)) ∧
    ¬ (InTriangle P (ptA a) (ptB b) (ptC c) ∧ InTriangle Q (ptA a) (ptB b) (ptC c)) ∧
    ¬ (InTriangle P (ptB b) (ptC c) (ptD d) ∧ InTriangle Q (ptB b) (ptC c) (ptD d)) ∧
    ¬ (InTriangle P (ptC c) (ptD d) (ptF f) ∧ InTriangle Q (ptC c) (ptD d) (ptF f)) ∧
    ¬ (InTriangle P (ptD d) (ptF f) (ptH h) ∧ InTriangle Q (ptD d) (ptF f) (ptH h)) ∧
    ¬ (InTriangle P (ptF f) (ptH h) (ptA a) ∧ InTriangle Q (ptF f) (ptH h) (ptA a)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC`). At most one of `P, Q` lies below
`HC` (otherwise the six actual points `H, C, A, B, P, Q` of the virtual triangle `(0,0)HC` give
minimum area at most `7hc/128 < 7/128 < 4/73`). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 97-101.
Uses: QUADRILATERAL_HULL:Theorem4 -/
theorem claim_one_below_HC {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ¬ (sarea (ptH h) (ptC c) P < 0 ∧ sarea (ptH h) (ptC c) Q < 0) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-W`). Equation (8), with `s = 8/73` and
`W = 1-(h-d)(c-f)`: in the mixed class (one of `P, Q` below `HC`, the other above) `W ≥ 4s`
(fan subdivision); in the upper class (both above `HC`) `W ≥ 8s` (by the six-point
quadrilateral theorem). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 101-107.
Uses: QUADRILATERAL_HULL:Theorem1 -/
theorem claim_W {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    (((sarea (ptH h) (ptC c) P < 0 ∧ 0 < sarea (ptH h) (ptC c) Q) ∨
        (0 < sarea (ptH h) (ptC c) P ∧ sarea (ptH h) (ptC c) Q < 0)) →
        4 * (8 / 73) ≤ 1 - (h - d) * (c - f)) ∧
      ((0 < sarea (ptH h) (ptC c) P ∧ 0 < sarea (ptH h) (ptC c) Q) →
        8 * (8 / 73) ≤ 1 - (h - d) * (c - f)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-mixed`). Equations (9)–(10): in the mixed class,
the lower point `Z = (ℓ_x, ℓ_y) ∈ {P, Q}` (below `HC`) satisfies, with `s = 8/73`,
`hc ≥ s/(3-2√2) > 7/11`, `h, c ≥ 7/11`, `c - ℓ_x ≥ 2s`, `h - ℓ_y ≥ 2s`, `ℓ_x + ℓ_y ≤ 1-s`
(endpoint theorem of `TYPE_II.md` §1 for `H, C, A, B, Z` in `(0,0)HC`).
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 109-125.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_mixed {a h b c d f : ℝ} {X P Q Z : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hZ : Z = P ∨ Z = Q) (hlow : sarea (ptH h) (ptC c) Z < 0) :
    let s : ℝ := 8 / 73
    s / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < s / (3 - 2 * Real.sqrt 2) ∧
      7 / 11 ≤ h ∧ 7 / 11 ≤ c ∧ 2 * s ≤ c - Z.1 ∧ 2 * s ≤ h - Z.2 ∧ Z.1 + Z.2 ≤ 1 - s := by
  sorry

/-! ### Section 2: the complete radial-word and pair cover -/

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-hull`). The full hull is the strictly convex
heptagon `(A, B, C, D, X, F, H)` (3), with `P` and `Q` strictly inside.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 36-44. -/
theorem claim_hull {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (heptagon a h b c d f X) ∧ InPolygon (heptagon a h b c d f X) P ∧
      InPolygon (heptagon a h b c d f X) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-words`). There are 57 heptagon words satisfying the
complement relation (12); the hexagon test `r₃ ≥ 2` leaves 52, of which 19 have `r₆ < 3` (below
`HC`) and 33 have `r₆ ≥ 3` (above `HC`). Each of `P, Q` has a radial word (11) in this list, and
`[HCR] > 0` exactly when `r₆ ≥ 3`. `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 127-144. -/
theorem claim_words :
    (radialWords 7).card = 57 ∧ hexagonWords.card = 52 ∧
      (hexagonWords.filter fun r => (r 6 : ℕ) < 3).card = 19 ∧
      (hexagonWords.filter fun r => 3 ≤ (r 6 : ℕ)).card = 33 ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, SingleTopFamily a h b c d f X P Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      ∀ R ∈ ({P, Q} : Set Point), ∃ r ∈ hexagonWords,
        HasRadialWord (heptagon a h b c d f X) R (fun i => (r i : ℕ)) ∧
          (0 < sarea (ptH h) (ptC c) R ↔ 3 ≤ (r 6 : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:eq14`). The diagonal separation rule in the anchor
quadrilateral `HCDF`: for `P, Q` strictly inside `HCDF` on opposite sides of an oriented diagonal
`U → V` (`H → D` or `C → F`), `sgn[UPQ] = -sgn[UVP]` and `sgn[VPQ] = sgn[UVP]` (the segment `PQ`
meets the diagonal inside the quadrilateral). `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 157-163.
-/
theorem eq14 {h c d f : ℝ} {P Q : Point} (hP : InUpperQuad h c d f P)
    (hQ : InUpperQuad h c d f Q) :
    (sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      (0 < sarea (ptH h) (ptD d) P →
          sarea (ptH h) P Q < 0 ∧ 0 < sarea (ptD d) P Q) ∧
        (sarea (ptH h) (ptD d) P < 0 →
          0 < sarea (ptH h) P Q ∧ sarea (ptD d) P Q < 0)) ∧
    (sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      (0 < sarea (ptC c) (ptF f) P →
          sarea (ptC c) P Q < 0 ∧ 0 < sarea (ptF f) P Q) ∧
        (sarea (ptC c) (ptF f) P < 0 →
          0 < sarea (ptC c) P Q ∧ sarea (ptF f) P Q < 0)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover`). The two configuration-specific
exclusions of the upper class behind the 884 base pairs (lines 146-173): if both `P, Q` are above
`HC`, (i) they do not lie in a common diagonal sector of `HCDF` (`ONE_CORNER_COMPLETION`
Theorem 2), and (ii) if only one diagonal separates them, the line `PQ` isolates the vertex of
their common containing triangle — `C` for `HCD`, `F` for `HDF`, `H` for `HCF`, `D` for `CDF` —
from the other three vertices of `HCDF` (`ONE_CORNER_COMPLETION` Theorem 3). (The other
filters of the cover are `claim_one_below_HC`, `claim_ears` and the sign rules
`SixBoundary.claim_pair_line_sign`, `eq14`; the resulting list has 884 base pairs.)
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 146-173.
Uses: ONE_CORNER_COMPLETION:Theorem2, ONE_CORNER_COMPLETION:Theorem3 -/
theorem claim_pair_cover {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hPup : 0 < sarea (ptH h) (ptC c) P) (hQup : 0 < sarea (ptH h) (ptC c) Q) :
    (¬ (InSectorHCJ h c d f P ∧ InSectorHCJ h c d f Q) ∧
      ¬ (InSectorCDJ h c d f P ∧ InSectorCDJ h c d f Q) ∧
      ¬ (InSectorDFJ h c d f P ∧ InSectorDFJ h c d f Q) ∧
      ¬ (InSectorFHJ h c d f P ∧ InSectorFHJ h c d f Q)) ∧
    (InTriangle P (ptH h) (ptC c) (ptD d) → InTriangle Q (ptH h) (ptC c) (ptD d) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptC c) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptC c) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptC c) P Q * sarea (ptF f) P Q < 0) ∧
    (InTriangle P (ptH h) (ptD d) (ptF f) → InTriangle Q (ptH h) (ptD d) (ptF f) →
      sarea (ptC c) (ptF f) P * sarea (ptC c) (ptF f) Q < 0 →
      sarea (ptF f) P Q * sarea (ptH h) P Q < 0 ∧ sarea (ptF f) P Q * sarea (ptD d) P Q < 0 ∧
        sarea (ptF f) P Q * sarea (ptC c) P Q < 0) ∧
    (InTriangle P (ptH h) (ptC c) (ptF f) → InTriangle Q (ptH h) (ptC c) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptH h) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptH h) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptH h) P Q * sarea (ptD d) P Q < 0) ∧
    (InTriangle P (ptC c) (ptD d) (ptF f) → InTriangle Q (ptC c) (ptD d) (ptF f) →
      sarea (ptH h) (ptD d) P * sarea (ptH h) (ptD d) Q < 0 →
      sarea (ptD d) P Q * sarea (ptC c) P Q < 0 ∧ sarea (ptD d) P Q * sarea (ptF f) P Q < 0 ∧
        sarea (ptD d) P Q * sarea (ptH h) P Q < 0) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-refinement`). No actual sign is zero: every triangle
of three distinct points of the configuration has nonzero signed area (by (2)); hence the four
actual-area splits (base pairs 196, 260, 262, 274) and the three closed scalar cuts
(`d ≤ 1/2 ∨ d ≥ 1/2`, `c ≤ 7/8 ∨ c ≥ 7/8`, `q_x ≤ 1/2 ∨ q_x ≥ 1/2`) cover every configuration,
giving the `884 + 6 + 3 = 893` terminal cells. `hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 175-200.
-/
theorem claim_refinement {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
      sarea (nConfig a h b c d f X P Q i) (nConfig a h b c d f X P Q j)
        (nConfig a h b c d f X P Q k) ≠ 0 := by
  sorry

/-! ### Sections 3–4: the certificate package -/

/-- **Claim** (`SIX_BOUNDARY_SINGLE_TOP:claim-certificate`). The certificate package
(`hand/six_boundary_single_top_certificates.json`, verified by
`hand/check_six_boundary_single_top.py`): with the normalization `f ≤ d` and every actual doubled
area at least `s = 8/73`, no pair of radial words of `P, Q` from the 52-word list is possible.
In the manuscript: the 893 terminal cells (884 base pairs, refined by `claim_refinement`) are
each covered by one of 616 fixed rational cubics (89,897 positive terms, scale 4096) in the
affine factors (16)–(17), the signed-area costs `ε[V_iV_jV_k] - T` (`T = s, 3s, ρ` by
containment count) and the costs (18) `hc - 7/11 | 4s`, `W - 4s | 8s`, `δ - s`, `13/16 - [ear]`;
each is nonnegative on its cell and has cube bound (20) below `-3/4` (greatest
`-5526045633638821/5608815984640000`), with reuse across cells checked.
`hand/SIX_BOUNDARY_SINGLE_TOP.md`, lines 202-301.
Uses: SIX_BOUNDARY_SINGLE_TOP:claim-anchor-bounds, SIX_BOUNDARY_SINGLE_TOP:claim-cap-bounds,
SIX_BOUNDARY_SINGLE_TOP:claim-interior-box, SIX_BOUNDARY_SINGLE_TOP:claim-ears,
SIX_BOUNDARY_SINGLE_TOP:claim-one-below-HC, SIX_BOUNDARY_SINGLE_TOP:claim-W,
SIX_BOUNDARY_SINGLE_TOP:claim-mixed, SIX_BOUNDARY_SINGLE_TOP:claim-pair-cover,
SIX_BOUNDARY_SINGLE_TOP:claim-refinement, SIX_BOUNDARY_SINGLE_TOP:eq14,
CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificate {a h b c d f : ℝ} {X P Q : Point}
    (hfam : SingleTopFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ p ∈ hexagonWords, ∀ q ∈ hexagonWords,
      HasRadialWord (heptagon a h b c d f X) P (fun i => (p i : ℕ)) →
      HasRadialWord (heptagon a h b c d f X) Q (fun i => (q i : ℕ)) → False := by
  sorry

end Heilbronn.SixBoundarySingleTop
