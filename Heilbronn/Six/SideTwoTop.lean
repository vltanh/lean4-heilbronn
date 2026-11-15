module

public import Heilbronn.Six.Setting

/-! # One side-cap point and two opposite-cap points in N (`hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`)

**Role.** Primary route: closes the six-boundary occupancy N6-07 `(n_L,n_T,n_R;n_I) = (0,2,1;0)`
of `hand/UNRESTRICTED.md`, Section 4 (strict bound; its transpose `(1,2,0;0)` by
`theorem1_transposed`).

**Setting.** The N anchors (`NAnchors`, (1)); one free point `X = (x,y)` in the side cap
`R = CD(1,0)` (`InCapR`) and the two others in the opposite cap `T = DF(1,1)` (`InCapT`); the
cap corners are virtual, square-side contacts allowed. Contradiction hypothesis: every actual
doubled area is at least `s = 8/73` (`4/73 ≤ minTriangleArea`). Notation `L = h-a`, `M = c-b`,
`δ = (1-d)(1-f)`. Section 1 shows that the hull of `D, F` and the two cap points is a triangle
`DEF` with outer vertex `E = (e_x,e_y)` and inner point `O = (o_x,o_y) ∈ int(DEF)`; the later
claims are stated for the configuration `nConfig a h b c d f X E O` with this naming. The full
hull is then the octagon `(V₀,…,V₇) = (A,B,C,X,D,E,F,H)` (`octagon`) with `O` inside.

**Results.**
* `theorem1`: `minTriangleArea < 4/73 < A₀` throughout the occupancy (both cap hulls, square-side
  contacts included); `theorem1_transposed`: the left-cap placement.
* `claim_anchor` (2), `claim_side` (3)–(4), `claim_delta` (5).
* `claim_triangular_cap` (6): the cap hull is a triangle `DEF` with `O` inside, `[DEF] ≥ 3s`,
  `δ ≥ 3s`.
* `claim_hull` (7): the octagon is strictly convex with `O` inside.
* `claim_bounds` (8)–(12): the bounds behind the 27 affine factors (13).
* `claim_words` (16): exactly six words with `r₄ = 1`.
* `claim_certificate`: each of the six words is impossible (six fixed cubics, 515 terms).

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea`. Naming the
triangular cap hull `DEF` presumes that `D` and `F` are vertices of the four-point cap hull
(lines 89-99); this is argued in `SIX_BOUNDARY_TWO_TOP_COMPLETION.md` (lines 26-30) and is part of
`claim_triangular_cap` here.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundarySideTwoTop

open Heilbronn.SixBoundary

/-- The full hull (7): the octagon `(V₀, …, V₇) = (A, B, C, X, D, E, F, H)`. -/
def octagon (a h b c d f : ℝ) (X E : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, X, ptD d, E, ptF f, ptH h]

/-- The occupancy N6-07 after Section 1: N anchors, `X` in the side cap `CD(1,0)`, `E, O` in the
opposite cap `DF(1,1)` with `O` strictly inside the triangle `DEF`. -/
def SideTwoTopFamily (a h b c d f : ℝ) (X E O : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapR c d X ∧ InCapT d f E ∧ InCapT d f O ∧
    InTriangle O (ptD d) E (ptF f)

/-- The six words (16) of `O`. -/
def capWords : Finset (Fin 8 → Fin 8) :=
  {![4, 3, 2, 1, 1, 6, 6, 5], ![4, 3, 2, 2, 1, 5, 6, 5], ![4, 3, 3, 2, 1, 4, 6, 5],
    ![4, 4, 3, 2, 1, 3, 6, 5], ![5, 4, 3, 2, 1, 1, 6, 6], ![5, 4, 3, 2, 1, 2, 6, 5]}

/-- **Theorem 1** (`SIX_BOUNDARY_SIDE_TWO_TOP:Theorem1`). Every configuration of N6-07 (N
anchors, one free point in the side cap `CD(1,0)`, two free points in the opposite cap
`DF(1,1)`; square-side contacts and both possible hulls of the four opposite-cap points included)
has minimum ordinary triangle area strictly below `4/73 < A₀`.
`hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 21-31, 252-254.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor, SIX_BOUNDARY_SIDE_TWO_TOP:claim-side,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta, SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-hull, SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-words, SIX_BOUNDARY_SIDE_TWO_TOP:claim-certificate -/
theorem theorem1 {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < 4 / 73 ∧ (4 / 73 : ℝ) < A₀ := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-transposed`). Theorem 1 for the transposed
placement (lines 14-17, "transposing the square if necessary"): the side point in the left cap
`FH(0,1)`. `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 14-17.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:Theorem1, SIX_BOUNDARY_HULL:claim-transposition -/
theorem theorem1_transposed {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapL f h X) (hY : InCapT d f Y) (hZ : InCapT d f Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < 4 / 73 := by
  sorry

/-! ### Section 1: the side point forces a triangular opposite-cap hull -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor`). Equation (2) and the lines after it:
with `s = 8/73`, `L = h-a`, `M = c-b`: `aM ≥ s`, `bL ≥ s`, `h ≥ s/M + s/b`, `hc ≥ 4s`,
`a, b > 1/8`. `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 42-52. -/
theorem claim_anchor {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    let s : ℝ := 8 / 73
    s ≤ a * (c - b) ∧ s ≤ b * (h - a) ∧ s / (c - b) + s / b ≤ h ∧ 4 * s ≤ h * c ∧
      1 / 8 < b ∧ 1 / 8 < a := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-side`). Equations (3)–(4), for the side point
`X = (x, y)`, with `s = 8/73`, `M = c-b`: `[BCX] = My ≥ s`, `[CXD] = d(x-c)-(1-c)y ≥ s`;
`x - c ≥ s`, `c ≤ 1-s`, `d - y ≥ s/(1-c)`, `M < 447/584`, `a, y > 64/447 > 1/7`,
`d ≥ s/M + s/(1-c) ≥ 4s/(1-b) > 256/511 > 1/2`, `h ≥ d`.
`hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 54-80. -/
theorem claim_side {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    let s : ℝ := 8 / 73
    s ≤ (c - b) * X.2 ∧ s ≤ d * (X.1 - c) - (1 - c) * X.2 ∧
      s ≤ X.1 - c ∧ c ≤ 1 - s ∧ s / (1 - c) ≤ d - X.2 ∧ c - b < 447 / 584 ∧
      64 / 447 < a ∧ 64 / 447 < X.2 ∧ (1 / 7 : ℝ) < 64 / 447 ∧
      s / (c - b) + s / (1 - c) ≤ d ∧ 4 * s / (1 - b) ≤ s / (c - b) + s / (1 - c) ∧
      256 / 511 < 4 * s / (1 - b) ∧ (1 / 2 : ℝ) < 256 / 511 ∧ d ≤ h := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta`). Equation (5): `δ = (1-d)(1-f) < 7/16 < 4s`
(`f ≥ b > 1/8`, `d > 1/2`). `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 83-87. -/
theorem claim_delta {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    (1 - d) * (1 - f) < 7 / 16 ∧ (7 / 16 : ℝ) < 4 * (8 / 73) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap`). Equation (6): the hull of `D, F`
and the two cap points is a triangle (a quadrilateral hull would force `δ ≥ 4s` by the four-point
endpoint lemma, contrary to (5)): naming its outer vertex `E` and inner point `O`,
`O ∈ int(DEF)`, `[DEF] ≥ 3s` and `δ ≥ 3s`. `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 89-99.
Uses: TYPE_II:FourPointEndpointLemma, SIX_BOUNDARY_SIDE_TWO_TOP:claim-delta -/
theorem claim_triangular_cap {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (hX : InCapR c d X) (hY : InCapT d f Y) (hZ : InCapT d f Z)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X Y Z)) :
    ∃ E O : Point, ((E = Y ∧ O = Z) ∨ (E = Z ∧ O = Y)) ∧ InTriangle O (ptD d) E (ptF f) ∧
      3 * (8 / 73) ≤ sarea (ptD d) E (ptF f) ∧ 3 * (8 / 73) ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-hull`). The full hull is the strictly convex
octagon `(A, B, C, X, D, E, F, H)` (7), and `O` is its sole interior point.
`hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 101-112. -/
theorem claim_hull {a h b c d f : ℝ} {X E O : Point} (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    IsConvexCCW (octagon a h b c d f X E) ∧ InPolygon (octagon a h b c d f X E) O := by
  sorry

/-! ### Section 2: all coordinate bounds -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds`). Equations (8)–(12), with `s = 8/73`,
`X = (x, y)`, `E = (e_x, e_y)`, `O = (o_x, o_y)`: `d < 1 - 24s/7 = 319/511 < 5/8`, `f < 1-6s`,
`c ≥ 4s`, `d - y ≥ s/(1-c) ≥ 8/41 > 7/36`, `e_x - f > 6s`, `e_y - d ≥ 3s`, `o_x - f > 2s`,
`o_y - d > 8s/7 > 1/8`, `o_x, o_y ≤ 1-s` (the latter from `[DEO], [EFO] ≥ s`).
`hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 114-162. -/
theorem claim_bounds {a h b c d f : ℝ} {X E O : Point} (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    let s : ℝ := 8 / 73
    d < 1 - 24 * s / 7 ∧ 1 - 24 * s / 7 = 319 / 511 ∧ (319 / 511 : ℝ) < 5 / 8 ∧ f < 1 - 6 * s ∧
      4 * s ≤ c ∧ s / (1 - c) ≤ d - X.2 ∧ 8 / 41 ≤ s / (1 - c) ∧ (7 / 36 : ℝ) < 8 / 41 ∧
      6 * s < E.1 - f ∧ 3 * s ≤ E.2 - d ∧ 2 * s < O.1 - f ∧ 8 * s / 7 < O.2 - d ∧
      (1 / 8 : ℝ) < 8 * s / 7 ∧ O.1 ≤ 1 - s ∧ O.2 ≤ 1 - s := by
  sorry

/-! ### Sections 3–4: six exhaustive radial words and the certificates -/

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-words`). The octagon words (14)–(15) with `r₄ = 1`
(`O` inside `DEF`, i.e. `[DFO] < 0`) are exactly the six words (16); `O` has a radial word in
this list. `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 181-213. -/
theorem claim_words :
    (radialWords 8).filter (fun r => (r 4 : ℕ) = 1) = capWords ∧
    ∀ {a h b c d f : ℝ} {X E O : Point}, SideTwoTopFamily a h b c d f X E O →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O) →
      ∃ r ∈ capWords, HasRadialWord (octagon a h b c d f X E) O (fun i => (r i : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_SIDE_TWO_TOP:claim-certificate`). The certificate package
(`hand/six_boundary_side_two_top_certificates.json`, verified by
`hand/check_six_boundary_side_two_top.py`): each of the six words (16) is impossible. In the
manuscript each word has one fixed rational cubic (scale 4096; 515 positive terms in total) in
the 27 affine factors (13) and the 85 quadratic costs (the 84 signed areas minus `s` or `3s`, and
`δ - 3s`), nonnegative on its word, with cube bound below `-3/4` (greatest
`-11150846883847/11243126587392`). `hand/SIX_BOUNDARY_SIDE_TWO_TOP.md`, lines 210-254.
Uses: SIX_BOUNDARY_SIDE_TWO_TOP:claim-anchor, SIX_BOUNDARY_SIDE_TWO_TOP:claim-side,
SIX_BOUNDARY_SIDE_TWO_TOP:claim-triangular-cap, SIX_BOUNDARY_SIDE_TWO_TOP:claim-bounds -/
theorem claim_certificate {a h b c d f : ℝ} {X E O : Point}
    (hfam : SideTwoTopFamily a h b c d f X E O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f X E O)) :
    ∀ r ∈ capWords, ¬ HasRadialWord (octagon a h b c d f X E) O (fun i => (r i : ℕ)) := by
  sorry

end Heilbronn.SixBoundarySideTwoTop
