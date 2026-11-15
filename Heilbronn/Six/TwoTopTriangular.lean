module

public import Heilbronn.Six.SingleTop

/-! # Two opposite-cap points with triangular hull in N
(`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`)

**Role.** Primary route: the triangular-cap-hull branch of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `hand/UNRESTRICTED.md`, Section 4 (strict bound); assembled
with `SIX_BOUNDARY_TWO_TOP_CONVEX` in `SIX_BOUNDARY_TWO_TOP_COMPLETION`.

**Setting.** The N anchors (`NAnchors`, (1)); two free points in the opposite cap `T = DF(1,1)`
(`InCapT`) whose hull with `D, F` is a triangle: the outer point `X = (x_x,x_y)` and the inner
point `P = (p_x,p_y) ∈ int(DXF)`; the ninth point `Q = (q_x,q_y)` strictly inside the anchor
hexagon. The configuration is `nConfig a h b c d f X P Q`. Contradiction hypothesis: every actual
doubled area is at least `σ = 8/73` (`4/73 ≤ minTriangleArea`); `ρ = 49/60 < (4+2√3)σ`.
Transposition preserves the occupancy and the triangular top hull, so the proof imposes `f ≤ d`;
the claims that use it carry the hypothesis `f ≤ d`. The full hull is the heptagon
`(V₀,…,V₆) = (A,B,C,D,X,F,H)` (`SixBoundarySingleTop.heptagon`), with interior points
`V₇ = P`, `V₈ = Q`. Notation `L = h-a`, `M = c-b`, `δ = (1-d)(1-f)`, `W = 1-(h-d)(c-f)`.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the triangular-hull branch.
* `claim_hull`: the heptagon is strictly convex with `P, Q` inside.
* `claim_anchor` (4)–(5), `eq6`, `claim_cap` (6)–(8), `claim_Q_box` (9): the affine bounds behind
  the 27 factors (10).
* `claim_words`: 57 words; `P ∈ DXF` iff `r₃(P) = 1` (five words (13)); `Q` has one of the 52
  hexagon words (19 lower, 33 upper).
* `claim_splits`: every actual sign is nonzero (cases 230 and 238 split on `[CPQ]`, `[BPQ]`;
  262 terminal cells).
* `claim_lower_Q` (15)–(16): bounds when `Q` is below `HC`.
* `claim_case230` (17)–(18): in case 230 both `P, Q` lie in `CXF`, giving four extra factors.
* `claim_W_hc` (19), `claim_ears` (20): the extra costs.
* `claim_certificate`: with `f ≤ d` no pair of words is possible (220 cubics, 29,641 terms).

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` and, where
used, `f ≤ d`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoTopTriangular

open Heilbronn.SixBoundary Heilbronn.SixBoundarySingleTop

/-- The triangular-hull branch of N6-06: N anchors, `X, P` in the opposite cap `DF(1,1)` with
`P` strictly inside the triangle `DXF`, and `Q` strictly inside the anchor hexagon. -/
def TriangularFamily (a h b c d f : ℝ) (X P Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f X ∧ InCapT d f P ∧ InTriangle P (ptD d) X (ptF f) ∧
    InHexagon a h b c d f Q

/-- The five heptagon words (13) of the inner cap point `P` (`r₃ = 1`), at full-list indices
19, 22, 28, 38, 39. -/
def capWords : Finset (Fin 7 → Fin 7) :=
  {![3, 2, 1, 1, 5, 5, 4], ![3, 2, 2, 1, 4, 5, 4], ![3, 3, 2, 1, 3, 5, 4],
    ![4, 3, 2, 1, 1, 5, 5], ![4, 3, 2, 1, 2, 5, 4]}

/-- The words of case 230: `r(P) = (4,3,2,1,2,5,4)` (index 39). -/
def case230P : Fin 7 → Fin 7 := ![4, 3, 2, 1, 2, 5, 4]

/-- The words of case 230: `r(Q) = (3,2,2,3,4,4,3)` (index 24). -/
def case230Q : Fin 7 → Fin 7 := ![3, 2, 2, 3, 4, 4, 3]

/-- **Theorem 1** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:Theorem1`). Every configuration of the
triangular-hull branch of N6-06 (two free points in the opposite cap `DF(1,1)` whose hull with
`D, F` is a triangle `DXF` containing the inner one, the third free point strictly inside the
anchor hexagon; no line-sign assumptions, square-side positions of `X` allowed) has minimum
ordinary triangle area strictly below `4/73 < A₀`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 20-32, 330-332.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-hull,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-words,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-certificate -/
theorem theorem1 {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q) :
    minTriangleArea (nConfig a h b c d f X P Q) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  sorry

/-! ### Section 1: the hull and common coordinate bounds -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-hull`). The full cyclic hull is the strictly
convex heptagon `(A, B, C, D, X, F, H)` (3), with `P` and `Q` strictly inside.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 45-55. -/
theorem claim_hull {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    IsConvexCCW (heptagon a h b c d f X) ∧ InPolygon (heptagon a h b c d f X) P ∧
      InPolygon (heptagon a h b c d f X) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor`). Equations (4)–(5), with
`σ = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `c ≥ σ/L + σ/a`;
`a, b, d, f > 1/8`; `hc ≥ σc²/(bM) ≥ 4σ`; `h, c ≥ 4σ`; `L, M ≥ σ`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 57-72. -/
theorem claim_anchor {a h b c d f : ℝ} {X P Q : Point}
    (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ σ / (h - a) + σ / a ≤ c ∧
      1 / 8 < a ∧ 1 / 8 < b ∧ 1 / 8 < d ∧ 1 / 8 < f ∧
      σ * c ^ 2 / (b * (c - b)) ≤ h * c ∧ 4 * σ ≤ σ * c ^ 2 / (b * (c - b)) ∧
      4 * σ ≤ h ∧ 4 * σ ≤ c ∧ σ ≤ h - a ∧ σ ≤ c - b := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:eq6`). The cap identities (6), for every point
`X`: `[DXF] = (1-d)(x_x-f) - (1-f)(1-x_y) = (1-f)(x_y-d) - (1-d)(1-x_x)` and
`δ - [DXF] = (1-d)(1-x_x) + (1-f)(1-x_y)`. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 74-81.
-/
theorem eq6 (d f : ℝ) (X : Point) :
    sarea (ptD d) X (ptF f) = (1 - d) * (X.1 - f) - (1 - f) * (1 - X.2) ∧
      sarea (ptD d) X (ptF f) = (1 - f) * (X.2 - d) - (1 - d) * (1 - X.1) ∧
      (1 - d) * (1 - f) - sarea (ptD d) X (ptF f) = (1 - d) * (1 - X.1) + (1 - f) * (1 - X.2) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap`). Equations (6)–(8) and the lines
after them, with `σ = 8/73` and the normalization `f ≤ d`: `[DXF] ≥ 3σ`, `δ ≥ 3σ`,
`d < 1 - 24σ/7 = 319/511`, `f < 3/7` (`3σ > 16/49`), `x_x - f > 192/511`, `x_y - d > 192/511`,
`p_x - f > 64/511`, `p_y - d > 64/511`, `p_x, p_y ≤ 1-σ`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 74-109. -/
theorem claim_cap {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    3 * σ ≤ sarea (ptD d) X (ptF f) ∧ 3 * σ ≤ (1 - d) * (1 - f) ∧ d < 319 / 511 ∧
      (16 / 49 : ℝ) < 3 * σ ∧ f < 3 / 7 ∧ 192 / 511 < X.1 - f ∧ 192 / 511 < X.2 - d ∧
      64 / 511 < P.1 - f ∧ 64 / 511 < P.2 - d ∧ P.1 ≤ 1 - σ ∧ P.2 ≤ 1 - σ := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box`). With `σ = 8/73`:
`σ ≤ q_x, q_y ≤ 1-σ` (bases `AH`, `BC` and the identities (9)).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 111-123. -/
theorem claim_Q_box {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    8 / 73 ≤ Q.1 ∧ Q.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ Q.2 ∧ Q.2 ≤ 1 - 8 / 73 := by
  sorry

/-! ### Section 2: the radial cover and its two sign splits -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-words`). There are 57 heptagon words (12);
those with `r₃ = 1` (`P ∈ DXF`) are exactly the five words (13), those with `r₃ ≥ 2` (`Q` inside
the anchor hexagon) are the 52 hexagon words, 19 with `r₆ < 3` (below `HC`) and 33 with
`r₆ ≥ 3`. `P` has a word in (13), `Q` one of the 52, and `[HCQ] > 0` exactly when `r₆(Q) ≥ 3`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 137-169. -/
theorem claim_words :
    (radialWords 7).card = 57 ∧ (radialWords 7).filter (fun r => (r 3 : ℕ) = 1) = capWords ∧
      hexagonWords.card = 52 ∧ (hexagonWords.filter fun r => (r 6 : ℕ) < 3).card = 19 ∧
      case230P ∈ capWords ∧ case230Q ∈ hexagonWords ∧
    ∀ {a h b c d f : ℝ} {X P Q : Point}, TriangularFamily a h b c d f X P Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q) →
      (∃ p ∈ capWords, HasRadialWord (heptagon a h b c d f X) P (fun i => (p i : ℕ))) ∧
      ∃ q ∈ hexagonWords, HasRadialWord (heptagon a h b c d f X) Q (fun i => (q i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) Q ↔ 3 ≤ (q 6 : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits`). No actual triangle is degenerate:
every triangle of three distinct points of the configuration has nonzero signed area. Hence the
260 word pairs together with the two additional sign splits (case 230, `(P,Q)` words (39,24), on
`[CPQ]`; case 238, words (39,33), on `[BPQ]`) give 262 terminal cells covering every
configuration. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 167-190. -/
theorem claim_splits {a h b c d f : ℝ} {X P Q : Point}
    (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ i j k : Fin 9, i ≠ j → j ≠ k → i ≠ k →
      sarea (nConfig a h b c d f X P Q i) (nConfig a h b c d f X P Q j)
        (nConfig a h b c d f X P Q k) ≠ 0 := by
  sorry

/-! ### Section 3: the additional bounds for lower Q and for case 230 -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q`). Equations (15)–(16): if `Q` is
below `HC`, then with `σ = 8/73`: `hc ≥ σ/(3-2√2) > 7/11`, `h, c ≥ 7/11`, `c - q_x ≥ 2σ`,
`h - q_y ≥ 2σ`, `q_x + q_y ≤ 1-σ` (endpoint theorem for `H, C, A, B, Q` in `(0,0)HC`).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 194-214.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_lower_Q {a h b c d f : ℝ} {X P Q : Point}
    (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hlow : sarea (ptH h) (ptC c) Q < 0) :
    let σ : ℝ := 8 / 73
    σ / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < σ / (3 - 2 * Real.sqrt 2) ∧
      7 / 11 ≤ h ∧ 7 / 11 ≤ c ∧ 2 * σ ≤ c - Q.1 ∧ 2 * σ ≤ h - Q.2 ∧ Q.1 + Q.2 ≤ 1 - σ := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230`). Equations (17)–(18): in case 230
(`r(P) = (4,3,2,1,2,5,4)`, `r(Q) = (3,2,2,3,4,4,3)`) both `P` and `Q` lie strictly inside the
actual triangle `CXF`, so with `σ = 8/73`, `ρ = 49/60`: `T = [CXF] ≥ (4+2√3)σ > ρ`,
`x_x - f ≥ ρ`, `f ≤ 1-ρ = 11/60`, `x_y ≥ 2234/2745` and `h - a ≥ 480/803`.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 216-253.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_case230 {a h b c d f : ℝ} {X P Q : Point}
    (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q))
    (hP : HasRadialWord (heptagon a h b c d f X) P (fun i => (case230P i : ℕ)))
    (hQ : HasRadialWord (heptagon a h b c d f X) Q (fun i => (case230Q i : ℕ))) :
    let σ : ℝ := 8 / 73
    let ρ : ℝ := 49 / 60
    InTriangle P (ptC c) X (ptF f) ∧ InTriangle Q (ptC c) X (ptF f) ∧
      (4 + 2 * Real.sqrt 3) * σ ≤ sarea (ptC c) X (ptF f) ∧ ρ < (4 + 2 * Real.sqrt 3) * σ ∧
      ρ ≤ X.1 - f ∧ f ≤ 11 / 60 ∧ 2234 / 2745 ≤ X.2 ∧ 480 / 803 ≤ h - a := by
  sorry

/-! ### Section 4: the other quadratic premises -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc`). The costs (19), with `σ = 8/73` and
`W = 1-(h-d)(c-f)`: if `Q` is above `HC`, `hc ≥ 4σ` and `W ≥ 4σ`; if below, `hc ≥ 7/11` and
`W ≥ 2σ`; always `δ ≥ 3σ`. `hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 268-280. -/
theorem claim_W_hc {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    let σ : ℝ := 8 / 73
    (0 < sarea (ptH h) (ptC c) Q → 4 * σ ≤ h * c ∧ 4 * σ ≤ 1 - (h - d) * (c - f)) ∧
      (sarea (ptH h) (ptC c) Q < 0 → 7 / 11 ≤ h * c ∧ 2 * σ ≤ 1 - (h - d) * (c - f)) ∧
      3 * σ ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears`). The costs (20): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1).
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 282-291.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears {a h b c d f : ℝ} {X P Q : Point} (hfam : TriangularFamily a h b c d f X P Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  sorry

/-! ### Section 5: the certificate package -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-certificate`). The certificate package
(`hand/six_boundary_two_top_triangular_certificates.json`, verified by
`hand/check_six_boundary_two_top_triangular.py`): with the normalization `f ≤ d`, no pair of
radial words (`P` from (13), `Q` from the 52 hexagon words) is possible. In the manuscript the
262 terminal cells are covered by 220 fixed rational cubics (29,641 positive terms) in the affine
factors (10), (16), (18) and the costs: known-sign signed areas minus `σ, 3σ, ρ` (containment
count), (19) and (20); each is nonnegative on its cell with cube bound (21) below `-3/4`
(greatest `-4128115667948309/4197433925959680`), with reuse across cells checked.
`hand/SIX_BOUNDARY_TWO_TOP_TRIANGULAR.md`, lines 255-332.
Uses: SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-anchor, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-cap,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-Q-box, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-splits,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-lower-Q, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-case230,
SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-W-hc, SIX_BOUNDARY_TWO_TOP_TRIANGULAR:claim-ears,
CORNER_FAMILIES:TwoInteriorPointLemma -/
theorem claim_certificate {a h b c d f : ℝ} {X P Q : Point}
    (hfam : TriangularFamily a h b c d f X P Q) (hfd : f ≤ d)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X P Q)) :
    ∀ p ∈ capWords, ∀ q ∈ hexagonWords,
      HasRadialWord (heptagon a h b c d f X) P (fun i => (p i : ℕ)) →
      HasRadialWord (heptagon a h b c d f X) Q (fun i => (q i : ℕ)) → False := by
  sorry

end Heilbronn.SixBoundaryTwoTopTriangular
