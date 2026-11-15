module

public import Heilbronn.Six.Setting
public import Heilbronn.Sharp.BDMoving
public import Heilbronn.Sharp.DFMoving

/-! # A side-cap point, an opposite-cap point, and one interior point in N
(`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-04 `(n_L,n_T,n_R;n_I) = (0,1,1;1)`
of `hand/UNRESTRICTED.md`, Section 4, both for `Q` below and above `HC` (its transpose
`(1,1,0;1)` by `theorem1_transposed`). Sharp: the two residual branches are the moving sharp
chambers `SHARP_DF_MOVING` (word 23) and `SHARP_BD_MOVING` (word 54).

**Setting.** The N anchors (`NAnchors`, (1)); `X = (x,y)` in the side cap `R = CD(1,0)`
(`InCapR`), `Y = (z,w)` in the opposite cap `T = DF(1,1)` (`InCapT`), `Q = (r,t)` strictly inside
the anchor hexagon (`InHexagon`); square-side contacts allowed, the cap corners are virtual. The
configuration is `nConfig a h b c d f X Y Q`. Competitive assumption: every actual area is at least
`A₀`; the cubic part uses only the weaker doubled threshold `σ = 8/73 < 2A₀` (hypothesis
`4/73 ≤ minTriangleArea`), `ρ = 13/16`. Notation: `L = h-a`, `M = c-b`, `W = 1-(h-d)(c-f)`; the
full hull is the octagon `(V₀,…,V₇) = (A,B,C,X,D,Y,F,H)` (`octagon`).

**Results.**
* `theorem1`: minimum `≤ A₀`; if all actual areas are `≥ A₀`, the configuration is a symmetric
  relabelled copy of the sharp configuration (`IsOptimal`) and both cap points are on the square
  boundary (`x = 1`, `w = 1`). `theorem1_transposed`: the left-cap placement.
* `claim_hull`: the octagon is strictly convex with `Q` inside.
* `claim_empty_ABH_BCX`: `[ABH], [BCX] < 3·7/64`, `Q` in neither.
* `claim_ears` (4): the six ears have doubled area `< 13/16`.
* `claim_anchor` (5), `claim_side_point` (6)–(7), `claim_cap` (8)–(9), `eq11`, `claim_Q_box`
  (10)–(11): the affine bounds behind the 32 factors (12).
* `claim_words`: 97 octagon words (18 with `Q` below `HC`); `Q` has a word in the list.
* `claim_hc_lower` (15): `hc ≥ σ/(3-2√2) > 7/11` when `Q` is below `HC`.
* `claim_certificate`: the 93 words other than 23, 54, 69, 84 are impossible (one cubic each).
* `claim_branch_cover`: words 69, 84 are impossible; word 23 and word 54 are confined to their
  residual regions.
* `claim_word23_DF`, `claim_word54_BD`: the residual regions are instances of the moving sharp
  chambers.

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` (the cubic part
uses only `σ`). `FLAG`-type remark (justification misattributed, statement true): the strict
orders `f' = z < 1` (word 23) and `d' = 1-z > 0` (word 54) follow from the residual condition
`x > z` and `x ≤ 1`, not from "(1), (6), (8)" as stated (lines 293-295, 317-318).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySideOpposite

open Heilbronn.SixBoundary Heilbronn.SharpBCMoving

/-- The full hull (3): the octagon `(V₀, …, V₇) = (A, B, C, X, D, Y, F, H)`. -/
def octagon (a h b c d f : ℝ) (X Y : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, Y, ptF f, ptH h]

/-- The occupancy N6-04: N anchors, `X` in the side cap `CD(1,0)`, `Y` in the opposite cap
`DF(1,1)`, `Q` strictly inside the anchor hexagon. -/
def SideOppositeFamily (a h b c d f : ℝ) (X Y Q : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapT d f Y ∧ InHexagon a h b c d f Q

/-- The 97 radial words of `Q` (13): octagon words (`radialWords 8`) with the hexagon edge tests
`CDQ`, `DFQ` (`r₂ ≥ 2`, `r₄ ≥ 2`) and the empty triangles `ABH`, `BCX` (`2 ≤ r₁ ≤ 5`). -/
def octagonWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => 2 ≤ (r 2 : ℕ) ∧ 2 ≤ (r 4 : ℕ) ∧ 2 ≤ (r 1 : ℕ) ∧ (r 1 : ℕ) ≤ 5

/-- Word 23, `(3,2,3,4,5,4,4,3)`. -/
def word23 : Fin 8 → Fin 8 := ![3, 2, 3, 4, 5, 4, 4, 3]

/-- Word 54, `(4,3,3,2,3,4,5,4)`. -/
def word54 : Fin 8 → Fin 8 := ![4, 3, 3, 2, 3, 4, 5, 4]

/-- Word 69, `(4,4,4,4,3,3,3,3)`. -/
def word69 : Fin 8 → Fin 8 := ![4, 4, 4, 4, 3, 3, 3, 3]

/-- Word 84, `(5,4,4,3,3,2,3,4)`. -/
def word84 : Fin 8 → Fin 8 := ![5, 4, 4, 3, 3, 2, 3, 4]

/-- The rotation `R(u,v) = (v, 1-u)` of the square (swap, then flip the second coordinate). -/
def rotation : SquareSymmetry := ⟨true, false, true⟩

/-- **Theorem 1** (`SIX_BOUNDARY_SIDE_OPPOSITE:Theorem1`). Throughout N6-04 (N anchors, `X` in
the side cap `CD(1,0)`, `Y` in the opposite cap `DF(1,1)`, `Q` strictly inside the anchor
hexagon), the minimum ordinary triangle area is at most `A₀`. If all actual triangle areas are at
least `A₀`, the configuration is an isometric copy of the equality configuration of
`HAND_PROOF.md`, and both cap points lie on the square boundary (`x = 1`, `w = 1`).
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 20-36, 321-323.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull, SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears, SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box, SIX_BOUNDARY_SIDE_OPPOSITE:claim-words,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower, SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-branch-cover, SIX_BOUNDARY_SIDE_OPPOSITE:claim-word23-DF,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-word54-BD, SHARP_DF_MOVING:Theorem1, SHARP_BD_MOVING:Theorem1 -/
theorem theorem1 {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.1 = 1 ∧ Y.2 = 1) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-transposed`). Theorem 1 for the transposed
placement (lines 15-16): `X` in the left side cap `FH(0,1)`, `Y` in `DF(1,1)`, `Q` inside the
hexagon; at equality `X` is on the top side and `Y` on the right side.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 15-16.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:Theorem1, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1_transposed {a h b c d f : ℝ} {X Y Q : Point} (hN : NAnchors a h b c d f)
    (hX : InCapL f h X) (hY : InCapT d f Y) (hQ : InHexagon a h b c d f Q) :
    minTriangleArea (nConfig a h b c d f X Y Q) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
        IsOptimal (nConfig a h b c d f X Y Q) ∧ X.2 = 1 ∧ Y.1 = 1) := by
  sorry

/-! ### Section 1: the complete hull and two empty ears -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull`). The full convex hull is the strictly
convex octagon `(A, B, C, X, D, Y, F, H)` (3), and `Q` is its sole interior point.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 48-58. -/
theorem claim_hull {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    IsConvexCCW (octagon a h b c d f X Y) ∧ InPolygon (octagon a h b c d f X Y) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX`). `[ABH] < 3(7/64) < 3σ`
(`SIX_BOUNDARY_EXTERIOR` Theorem 5, the right cap being occupied) and `[BCX] < 3(7/64) < 3σ`
(`SIX_BOUNDARY_TWO_SIDE_PROJECTION` Lemma 2); hence `Q` is inside neither actual triangle.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 60-64.
Uses: SIX_BOUNDARY_EXTERIOR:Theorem5, SIX_BOUNDARY_TWO_SIDE_PROJECTION:Lemma2 -/
theorem claim_empty_ABH_BCX {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 3 * (7 / 64) ∧ sarea (ptB b) (ptC c) X < 3 * (7 / 64) ∧
      ¬ InTriangle Q (ptA a) (ptB b) (ptH h) ∧ ¬ InTriangle Q (ptB b) (ptC c) X := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears`). Equation (4): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< ρ = 13/16` (`SIX_BOUNDARY_HULL` Theorem 1).
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 66-72.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  sorry

/-! ### Section 2: all affine bounds -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor`). Equation (5) and the line after it:
with `σ = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `hc ≥ 4σ`, `b > 1/8`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 76-83. -/
theorem claim_anchor {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ 4 * σ ≤ h * c ∧ 1 / 8 < b := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point`). Equations (6)–(7), for the side
point `X = (x, y)`, with `σ = 8/73`, `M = c-b`: `[BCX] = My ≥ σ`, `[CXD] = d(x-c)-(1-c)y ≥ σ`;
`x - c ≥ σ`, `c ≤ 1-σ`, `d - y ≥ σ/(1-c)`, `d ≥ σ/M + σ/(1-c) ≥ 4σ/(1-b) > 1/2`; `h ≥ d`,
`c ≥ 4σ`, `M < 49/64`, `a, y > 1/7`, `d - y > 7/36`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 85-102. -/
theorem claim_side_point {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    sarea (ptB b) (ptC c) X = (c - b) * X.2 ∧ σ ≤ (c - b) * X.2 ∧
      sarea (ptC c) X (ptD d) = d * (X.1 - c) - (1 - c) * X.2 ∧
      σ ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
      σ ≤ X.1 - c ∧ c ≤ 1 - σ ∧ σ / (1 - c) ≤ d - X.2 ∧
      σ / (c - b) + σ / (1 - c) ≤ d ∧ 4 * σ / (1 - b) ≤ σ / (c - b) + σ / (1 - c) ∧
      1 / 2 < 4 * σ / (1 - b) ∧
      d ≤ h ∧ 4 * σ ≤ c ∧ c - b < 49 / 64 ∧ 1 / 7 < a ∧ 1 / 7 < X.2 ∧ 7 / 36 < d - X.2 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap`). Equations (8)–(9), for the opposite-cap
point `Y = (z, w)`, with `σ = 8/73`: `[DYF] = (1-d)(z-f)-(1-f)(1-w) = (1-f)(w-d)-(1-d)(1-z) ≥ σ`;
`d, f ≤ 1-σ`, `z - f ≥ σ`, `w - d ≥ σ`, `z - f > 2σ`, `w - d > 1/8`; `b ≤ 1-5σ < 29/64`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 104-120. -/
theorem claim_cap {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ sarea (ptD d) Y (ptF f) ∧ d ≤ 1 - σ ∧ f ≤ 1 - σ ∧ σ ≤ Y.1 - f ∧ σ ≤ Y.2 - d ∧
      2 * σ < Y.1 - f ∧ 1 / 8 < Y.2 - d ∧ b ≤ 1 - 5 * σ ∧ 1 - 5 * σ < 29 / 64 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:eq11`). The projection identities (11), for every
point `Q = (r, t)`: `(1-f)[CDQ] + (1-c)[DFQ] = {d(1-f)+(1-d)(1-c)}(1-r)` and
`(1-h)[DFQ] + (1-d)[FHQ] = {(1-h)(1-f)+(1-d)f}(1-t)`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 130-138. -/
theorem eq11 (h c d f : ℝ) (Q : Point) :
    (1 - f) * sarea (ptC c) (ptD d) Q + (1 - c) * sarea (ptD d) (ptF f) Q =
        (d * (1 - f) + (1 - d) * (1 - c)) * (1 - Q.1) ∧
      (1 - h) * sarea (ptD d) (ptF f) Q + (1 - d) * sarea (ptF f) (ptH h) Q =
        ((1 - h) * (1 - f) + (1 - d) * f) * (1 - Q.2) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box`). Equations (10)–(11), for `Q = (r, t)`,
with `σ = 8/73`: `σ ≤ r, t ≤ 1-σ`, `r > 1/8`, `t > 1/7`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 122-142. -/
theorem claim_Q_box {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    let σ : ℝ := 8 / 73
    σ ≤ Q.1 ∧ Q.1 ≤ 1 - σ ∧ σ ≤ Q.2 ∧ Q.2 ≤ 1 - σ ∧ 1 / 8 < Q.1 ∧ 1 / 7 < Q.2 := by
  sorry

/-! ### Section 3: the radial words -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-words`). There are 97 words satisfying the
complement relation (14), `r₂, r₄ ≥ 2` and `2 ≤ r₁ ≤ 5`; 18 of them have `r₇ < 3` (`Q` below
`HC`). The point `Q` has a radial word (13) in this list, and `[HCQ] > 0` exactly when `r₇ ≥ 3`.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 157-176.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-hull, SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX -/
theorem claim_words :
    octagonWords.card = 97 ∧ (octagonWords.filter fun r => (r 7 : ℕ) < 3).card = 18 ∧
      word23 ∈ octagonWords ∧ word54 ∈ octagonWords ∧ word69 ∈ octagonWords ∧
      word84 ∈ octagonWords ∧
    ∀ {a h b c d f : ℝ} {X Y Q : Point}, SideOppositeFamily a h b c d f X Y Q →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q) →
      ∃ r ∈ octagonWords, HasRadialWord (octagon a h b c d f X Y) Q (fun i => (r i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) Q ↔ 3 ≤ (r 7 : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower`). Equation (15): if `Q` is below `HC`,
then `hc ≥ σ/(3-2√2) > 7/11` (five-point endpoint theorem for `H, C, A, B, Q` in `(0,0)HC`).
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 190-196.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_hc_lower {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hlow : sarea (ptH h) (ptC c) Q < 0) :
    (8 / 73) / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < (8 / 73) / (3 - 2 * Real.sqrt 2) := by
  sorry

/-! ### Sections 4–5: fixed exclusions and the branch cover -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate`). The certificate package
(`hand/six_boundary_side_opposite_certificates.json`, verified by
`hand/check_six_boundary_side_opposite.py`): every word of the list other than 23, 54, 69, 84 is
impossible. In the manuscript each of these 93 words has one fixed rational cubic (scale 4096) in
the 32 affine factors (12) and the 94 quadratic costs (16) (signed areas minus `σ` or `3σ`,
`W - 4σ | 2σ`, `hc - 4σ | 7/11`, `3σ - [ABH]`, `3σ - [BCX]`, `13/16 - [ear]`), nonnegative on its
word and with cube bound (18) below `-3/4`. `hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 198-276.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-anchor, SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap, SIX_BOUNDARY_SIDE_OPPOSITE:claim-Q-box,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-empty-ABH-BCX, SIX_BOUNDARY_SIDE_OPPOSITE:claim-ears,
SIX_BOUNDARY_SIDE_OPPOSITE:claim-hc-lower -/
theorem claim_certificate {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ∀ r ∈ octagonWords, r ≠ word23 → r ≠ word54 → r ≠ word69 → r ≠ word84 →
      ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (r i : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-branch-cover`). The branch table of Section 4:
words 69 and 84 are impossible (branches `x_low`, `y_low` and the joint `x_high, y_high`; the
joint branch of word 84 is the single quartic); word 23 is confined to
`x > z, w > h, 11/20 < h-a < 2/3, z-f > 11/20, f < 1/4, c > 2/3`; word 54 to `x > z, w > h`
(writing `X = (x,y)`, `Y = (z,w)`). `hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 212-276.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-certificate -/
theorem claim_branch_cover {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q)) :
    ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word69 i : ℕ)) ∧
      ¬ HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word84 i : ℕ)) ∧
      (HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word23 i : ℕ)) →
        Y.1 < X.1 ∧ h < Y.2 ∧ 11 / 20 < h - a ∧ h - a < 2 / 3 ∧ 11 / 20 < Y.1 - f ∧
          f < 1 / 4 ∧ 2 / 3 < c) ∧
      (HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word54 i : ℕ)) →
        Y.1 < X.1 ∧ h < Y.2) := by
  sorry

/-! ### Section 6: the two sharp residual chambers -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-word23-DF`). In the residual region of word 23,
with the sharp labels `(A',B',C',D',E',F',G',H',O') = (A,B,C,X,D,Y,F,H,Q)`, the configuration is
the D/F-moving chamber of `SHARP_DF_MOVING.md` with `r' = 1-x`, `d' = y`, `e' = d`, `f' = z`,
`k' = w`, `g' = f`, `O' = Q`: all hypotheses (1)–(2) of that theorem hold and its eleven oriented
doubled areas are positive. `hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 280-297.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap -/
theorem claim_word23_DF {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word23 i : ℕ)))
    (hres : Y.1 < X.1 ∧ h < Y.2 ∧ 11 / 20 < h - a ∧ h - a < 2 / 3 ∧ 11 / 20 < Y.1 - f ∧
      f < 1 / 4 ∧ 2 / 3 < c) :
    SharpDFMoving.DFMovingHyp a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2 ∧
      InChamber (SharpDFMoving.dfMovingConfig a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2) ∧
      SharpDFMoving.dfMovingConfig a b c X.2 d Y.1 f h (1 - X.1) Y.2 Q.1 Q.2 =
        sharpConfig (ptA a) (ptB b) (ptC c) X (ptD d) Y (ptF f) (ptH h) Q := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_OPPOSITE:claim-word54-BD`). In the residual region of word 54,
after the rotation `R(u,v) = (v,1-u)` and the labels
`(A',…,O') = (R(C),R(X),R(D),R(Y),R(F),R(H),R(A),R(B),R(Q))`, i.e. (19)
`A' = (0,1-c)`, `B' = (y,1-x)`, `C' = (d,0)`, `D' = (w,1-z)`, `E' = (1,1-f)`, `F' = (h,1)`,
`G' = (a,1)`, `H' = (0,1-b)`, `O' = (t,1-r)`, the configuration is the B/D-moving chamber of
`SHARP_BD_MOVING.md` with `t' = 1-x ≤ d' = 1-z` and `r' = 1-w ≤ 1-f' = 1-h`: all its hypotheses
(1) hold and its eleven oriented doubled areas are positive.
`hand/SIX_BOUNDARY_SIDE_OPPOSITE.md`, lines 299-319.
Uses: SIX_BOUNDARY_SIDE_OPPOSITE:claim-side-point, SIX_BOUNDARY_SIDE_OPPOSITE:claim-cap -/
theorem claim_word54_BD {a h b c d f : ℝ} {X Y Q : Point}
    (hfam : SideOppositeFamily a h b c d f X Y Q)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Q))
    (hw : HasRadialWord (octagon a h b c d f X Y) Q (fun i => (word54 i : ℕ)))
    (hres : Y.1 < X.1 ∧ h < Y.2) :
    SharpBDMoving.BDMovingHyp (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b) (1 - X.1) (1 - Y.2)
        Q.2 (1 - Q.1) ∧
      InChamber (SharpBDMoving.bdMovingConfig (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b)
        (1 - X.1) (1 - Y.2) Q.2 (1 - Q.1)) ∧
      SharpBDMoving.bdMovingConfig (1 - c) X.2 d (1 - Y.1) (1 - f) h a (1 - b) (1 - X.1)
          (1 - Y.2) Q.2 (1 - Q.1) =
        rotation.apply ∘
          sharpConfig (ptC c) X (ptD d) Y (ptF f) (ptH h) (ptA a) (ptB b) Q := by
  sorry

end Heilbronn.SixBoundarySideOpposite
