module

public import Heilbronn.Six.Setting
public import Heilbronn.Sharp.EFMoving

/-! # Two opposite-cap vertices and one anchor-interior point in N
(`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`)

**Role.** Primary route: the convex-cap-hull branch of the six-boundary occupancy N6-06
`(n_L,n_T,n_R;n_I) = (0,2,0;1)` of `hand/UNRESTRICTED.md`, Section 4 (sharp: its only equality
branch, word 31, is the E/F chamber of `SHARP_EF_MOVING`); assembled with
`SIX_BOUNDARY_TWO_TOP_TRIANGULAR` in `SIX_BOUNDARY_TWO_TOP_COMPLETION`.

**Setting.** The N anchors (`NAnchors`, (1)); `E = (e_x,e_y)` and `G = (g_x,g_y)` in the opposite
cap `T = DF(1,1)` (`InCapT`; strictly beyond `DF` under a positive minimum), with `D, E, G, F`
strictly convex in this counterclockwise order (`IsConvexCCW ![D, E, G, F]`); `O = (x,y)`
strictly inside the anchor hexagon. Cap points on a square side are allowed. The configuration
is `nConfig a h b c d f E G O`. Competitive assumption: every actual area is at least `A₀`; the
cubic part uses only `σ = 8/73 < 2A₀` (hypothesis `4/73 ≤ minTriangleArea`). Transposition
exchanges the upper anchors and reverses the cap chain, so relabelling `E, G` permits `f ≤ d`
(2); the claims that use it carry the hypothesis `f ≤ d`. Notation `L = h-a`, `M = c-b`,
`δ = (1-d)(1-f)`, `W = 1-(h-d)(c-f)`; the full hull is the octagon
`(V₀,…,V₇) = (A,B,C,D,E,G,F,H)` (`octagon`) with `O` inside.

**Results.**
* `mainTheorem` (the note's unnumbered Theorem): minimum `≤ A₀`; at equality `e_x = g_y = 1` and
  the configuration is the sharp configuration up to symmetry and relabelling (`IsOptimal`).
* `claim_hull`, `claim_anchor` (4)–(5), `claim_delta` (6), `claim_box` (7), `claim_cap` (8)–(9),
  `claim_order` (10)–(11), `claim_O_box` (12)–(13), `claim_ears` (14), `claim_W_hc` (15).
* `claim_words`: exactly 94 octagon words with `w₃ ≥ 3`; `O` has one, upper iff `w₇ ≥ 3`.
* `claim_certificate`: with `f ≤ d`, all words other than 31 and 66 are impossible.
* `claim_branches`: word 66 is impossible (split `x ≤ 1/2`, `x ≥ 1/2`); word 31 lies in the
  neighbourhood (20).
* `claim_sharp_map` (24)–(25): on (20), word 31 is the E/F-moving sharp chamber.

Implicit in the manuscript: the claims are stated under `4/73 ≤ minTriangleArea` and, where
used, `f ≤ d`. The manuscript derives `d < 255/511` strictly (line 100) but records `≤` (line
105); the weak form is stated.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SixBoundaryTwoTopConvex

open Heilbronn.SixBoundary Heilbronn.SharpBCMoving

/-- The full hull (3): the octagon `(V₀, …, V₇) = (A, B, C, D, E, G, F, H)`. -/
def octagon (a h b c d f : ℝ) (E G : Point) : Fin 8 → Point :=
  ![ptA a, ptB b, ptC c, ptD d, E, G, ptF f, ptH h]

/-- The convex-hull branch of N6-06: N anchors, `E, G` in the opposite cap `DF(1,1)` with
`D, E, G, F` strictly convex counterclockwise, and `O` strictly inside the anchor hexagon. -/
def ConvexFamily (a h b c d f : ℝ) (E G O : Point) : Prop :=
  NAnchors a h b c d f ∧ InCapT d f E ∧ InCapT d f G ∧ IsConvexCCW ![ptD d, E, G, ptF f] ∧
    InHexagon a h b c d f O

/-- The 94 radial words (16)–(18) of `O`: octagon words with the `DF` test `w₃ ≥ 3`. -/
def convexWords : Finset (Fin 8 → Fin 8) :=
  (radialWords 8).filter fun r => 3 ≤ (r 3 : ℕ)

/-- Word 31, `w* = (3,2,3,4,5,4,4,3)` (19). -/
def word31 : Fin 8 → Fin 8 := ![3, 2, 3, 4, 5, 4, 4, 3]

/-- Word 66, `(4,4,4,4,3,3,3,3)`. -/
def word66 : Fin 8 → Fin 8 := ![4, 4, 4, 4, 3, 3, 3, 3]

/-- The closed neighbourhood (20): `11/20 ≤ h-a ≤ 2/3`, `g_x - f ≥ 11/20`, `f ≤ 1/4`,
`c ≥ 2/3`, `g_y ≥ h`. -/
def Neighbourhood20 (a h c f : ℝ) (G : Point) : Prop :=
  11 / 20 ≤ h - a ∧ h - a ≤ 2 / 3 ∧ 11 / 20 ≤ G.1 - f ∧ f ≤ 1 / 4 ∧ 2 / 3 ≤ c ∧ h ≤ G.2

/-- **Theorem** (`SIX_BOUNDARY_TWO_TOP_CONVEX:Theorem`). Every configuration of the convex-cap
branch of N6-06 has minimum ordinary triangle area at most `A₀`. Equality forces `e_x = g_y = 1`
and the sharp eight-boundary configuration of `HAND_PROOF.md`, up to square symmetry and
relabelling. `hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 22-43, 430-433.
Uses: SIX_BOUNDARY_HULL:claim-transposition, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-hull,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-words, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-branches, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-sharp-map,
SHARP_EF_MOVING:Theorem -/
theorem mainTheorem {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O) :
    minTriangleArea (nConfig a h b c d f E G O) ≤ A₀ ∧
      (A₀ ≤ minTriangleArea (nConfig a h b c d f E G O) →
        IsOptimal (nConfig a h b c d f E G O) ∧ E.1 = 1 ∧ G.2 = 1) := by
  sorry

/-! ### Section 1: bounds valid throughout the convex cap case -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-hull`). The full hull is the strictly convex
octagon `(A, B, C, D, E, G, F, H)` (3), with `O` as its sole interior point.
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 59-69. -/
theorem claim_hull {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    IsConvexCCW (octagon a h b c d f E G) ∧ InPolygon (octagon a h b c d f E G) O := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor`). Equations (4)–(5), with `σ = 8/73`,
`L = h-a`, `M = c-b`: `aM ≥ σ`, `bL ≥ σ`, `h ≥ σ/M + σ/b`, `hc ≥ 4σ`, `a, b, d, f > 1/8`,
`h, c ≥ 4σ`. `hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 73-89. -/
theorem claim_anchor {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    σ ≤ a * (c - b) ∧ σ ≤ b * (h - a) ∧ σ / (c - b) + σ / b ≤ h ∧ 4 * σ ≤ h * c ∧
      1 / 8 < a ∧ 1 / 8 < b ∧ 1 / 8 < d ∧ 1 / 8 < f ∧ 4 * σ ≤ h ∧ 4 * σ ≤ c := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta`). Equation (6): `δ = (1-d)(1-f) ≥ 4σ`
(convex four-point endpoint lemma for `D, F, E, G` in the virtual triangle `DF(1,1)`).
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 91-97.
Uses: TYPE_II:FourPointEndpointLemma -/
theorem claim_delta {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    4 * (8 / 73) ≤ (1 - d) * (1 - f) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box`). Equation (7), with `σ = 8/73` and the
normalization `f ≤ d`: `d ≤ 255/511`, `f ≤ 17/50`, `L ≥ 50σ/17`, `M ≥ 511σ/255`.
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 99-112. -/
theorem claim_box {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    d ≤ 255 / 511 ∧ f ≤ 17 / 50 ∧ 50 * σ / 17 ≤ h - a ∧ 511 * σ / 255 ≤ c - b := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap`). Equations (8)–(9): for either cap point
`Z ∈ {E, G}`, `[DZF] = (1-d)(z_x-f)-(1-f)(1-z_y) = (1-f)(z_y-d)-(1-d)(1-z_x) ≥ σ`, hence
`z_x - f ≥ 64/511` and `z_y - d ≥ 64/511`. `hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 114-128. -/
theorem claim_cap {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ∀ Z ∈ ({E, G} : Set Point),
      sarea (ptD d) Z (ptF f) = (1 - d) * (Z.1 - f) - (1 - f) * (1 - Z.2) ∧
      sarea (ptD d) Z (ptF f) = (1 - f) * (Z.2 - d) - (1 - d) * (1 - Z.1) ∧
      8 / 73 ≤ sarea (ptD d) Z (ptF f) ∧ 64 / 511 ≤ Z.1 - f ∧ 64 / 511 ≤ Z.2 - d := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order`). Equations (10)–(11): with
`u = e_x - g_x`, `v = g_y - e_y`, `[DEG] = u(e_y-d) - (1-e_x)v` and `[FEG] = v(g_x-f) - (1-g_y)u`;
their positivity and (8) force `u, v > 0`, and then `e_x - g_x ≥ σ`, `g_y - e_y ≥ σ`.
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 130-157. -/
theorem claim_order {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    sarea (ptD d) E G = (E.1 - G.1) * (E.2 - d) - (1 - E.1) * (G.2 - E.2) ∧
      sarea (ptF f) E G = (G.2 - E.2) * (G.1 - f) - (1 - G.2) * (E.1 - G.1) ∧
      0 < E.1 - G.1 ∧ 0 < G.2 - E.2 ∧ 8 / 73 ≤ E.1 - G.1 ∧ 8 / 73 ≤ G.2 - E.2 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box`). Equations (12)–(13): `σ ≤ x, y ≤ 1-σ`
for `O = (x, y)` (bases `AH`, `BC` and the identities (12), with `[CDF] ≤ 1-f`, `[DFH] ≤ 1-d`).
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 159-176. -/
theorem claim_O_box {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    8 / 73 ≤ O.1 ∧ O.1 ≤ 1 - 8 / 73 ∧ 8 / 73 ≤ O.2 ∧ O.2 ≤ 1 - 8 / 73 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears`). Equation (14): the six anchor ears
`ABH, ABC, BCD, CDF, DFH, FHA` have doubled area `< 13/16` (`SIX_BOUNDARY_HULL` Theorem 1, which
does not assume that the anchor hexagon is the full hull).
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 178-184.
Uses: SIX_BOUNDARY_HULL:Theorem1 -/
theorem claim_ears {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    sarea (ptA a) (ptB b) (ptH h) < 13 / 16 ∧ sarea (ptA a) (ptB b) (ptC c) < 13 / 16 ∧
      sarea (ptB b) (ptC c) (ptD d) < 13 / 16 ∧ sarea (ptC c) (ptD d) (ptF f) < 13 / 16 ∧
      sarea (ptD d) (ptF f) (ptH h) < 13 / 16 ∧ sarea (ptF f) (ptH h) (ptA a) < 13 / 16 := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc`). Equation (15) and the lines before it,
with `σ = 8/73`, `W = 1-(h-d)(c-f)`: if `O` is above `HC`, `W ≥ 4σ` and `hc ≥ 4σ`; if below,
`W ≥ 2σ` and `hc ≥ σ/(3-2√2) > (7/64)(3+2√2) > 7/11` (endpoint theorem for `H, C, A, B, O`).
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 186-207.
Uses: TYPE_II:EndpointTriangleTheorem -/
theorem claim_W_hc {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    let σ : ℝ := 8 / 73
    (0 < sarea (ptH h) (ptC c) O → 4 * σ ≤ 1 - (h - d) * (c - f) ∧ 4 * σ ≤ h * c) ∧
      (sarea (ptH h) (ptC c) O < 0 →
        2 * σ ≤ 1 - (h - d) * (c - f) ∧ σ / (3 - 2 * Real.sqrt 2) ≤ h * c ∧
          7 / 64 * (3 + 2 * Real.sqrt 2) < σ / (3 - 2 * Real.sqrt 2) ∧
          (7 / 11 : ℝ) < 7 / 64 * (3 + 2 * Real.sqrt 2)) := by
  sorry

/-! ### Section 2: the complete radial-word list -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-words`). There are exactly 94 octagon words
satisfying (16)–(18) (the complement relation and the `DF` test `w₃ ≥ 3`); `O` has a radial word
in this list, and `[HCO] > 0` exactly when `w₇ ≥ 3`.
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 209-247. -/
theorem claim_words :
    convexWords.card = 94 ∧ word31 ∈ convexWords ∧ word66 ∈ convexWords ∧
    ∀ {a h b c d f : ℝ} {E G O : Point}, ConvexFamily a h b c d f E G O →
      4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O) →
      ∃ w ∈ convexWords, HasRadialWord (octagon a h b c d f E G) O (fun i => (w i : ℕ)) ∧
        (0 < sarea (ptH h) (ptC c) O ↔ 3 ≤ (w 7 : ℕ)) := by
  sorry

/-! ### Section 3: the fixed cubic inequalities -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate`). The certificate package
(`hand/six_boundary_two_top_convex_certificates.json`, verified by
`hand/check_six_boundary_two_top_convex.py`): with the normalization `f ≤ d`, every word of the
list other than 31 and 66 is impossible. In the manuscript each such word has one fixed rational
cubic (21) (scale 4096) in the 31 affine factors `a₀, …, a₃₀` (table, lines 260-277) and the 93
quadratic costs `q₀, …, q₉₂` (`δ - 4σ`, `hc - 4σ | 7/11`, `W - 4σ | 2σ`, `13/16 - [ear]`, the 84
signed areas minus `σ` or `3σ`); with the branches of `claim_branches` there are 100 cubics,
17,619 positive terms, cube bound (23) at most `-11315534897214263309/11507808525803520000`.
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 249-381.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-anchor, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-delta,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-box, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-O-box,
SIX_BOUNDARY_TWO_TOP_CONVEX:claim-ears, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-W-hc -/
theorem claim_certificate {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ∀ w ∈ convexWords, w ≠ word31 → w ≠ word66 →
      ¬ HasRadialWord (octagon a h b c d f E G) O (fun i => (w i : ℕ)) := by
  sorry

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-branches`). With `f ≤ d`: word 66 is impossible
(two certificates, appending `1/2 - x` and `x - 1/2`); word 31 lies in the closed neighbourhood
(20) (six certificates `l_low, l_high, m_low, g_high, c_low, k_low` exclude its complement).
`hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 299-339.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-certificate -/
theorem claim_branches {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hfd : f ≤ d) (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O)) :
    ¬ HasRadialWord (octagon a h b c d f E G) O (fun i => (word66 i : ℕ)) ∧
      (HasRadialWord (octagon a h b c d f E G) O (fun i => (word31 i : ℕ)) →
        Neighbourhood20 a h c f G) := by
  sorry

/-! ### Section 4: the remaining word is the sharp E/F chamber -/

/-- **Claim** (`SIX_BOUNDARY_TWO_TOP_CONVEX:claim-sharp-map`). Equations (24)–(25): on the
neighbourhood (20) with word 31, the labels `(A',B',C',D',E',F',G',H',O') = (A,B,C,D,E,G,F,H,O)`
make the configuration the E/F-moving chamber of `SHARP_EF_MOVING.md` with `r = 1-e_x`,
`e' = e_y`, `f' = g_x`, `k = g_y`, `g' = f`: all its hypotheses (1)–(2) hold
(`0 < d < e_y < g_y ≤ 1`, `0 < f < g_x < e_x ≤ 1`, `b ≤ f`, `h ≤ g_y`, (20)) and its eleven
oriented doubled areas are positive (the five `O`-signs `[ADO], [DHO], [BOE], [FCO], [OCG] > 0`
follow from (19)). `hand/SIX_BOUNDARY_TWO_TOP_CONVEX.md`, lines 383-428.
Uses: SIX_BOUNDARY_TWO_TOP_CONVEX:claim-cap, SIX_BOUNDARY_TWO_TOP_CONVEX:claim-order -/
theorem claim_sharp_map {a h b c d f : ℝ} {E G O : Point} (hfam : ConvexFamily a h b c d f E G O)
    (hmin : 4 / 73 ≤ minTriangleArea (nConfig a h b c d f E G O))
    (hw : HasRadialWord (octagon a h b c d f E G) O (fun i => (word31 i : ℕ)))
    (hnb : Neighbourhood20 a h c f G) :
    SharpEFMoving.EFMovingHyp a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2 ∧
      InChamber (SharpEFMoving.efMovingConfig a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2) ∧
      SharpEFMoving.efMovingConfig a b c d E.2 G.1 f h (1 - E.1) G.2 O.1 O.2 =
        sharpConfig (ptA a) (ptB b) (ptC c) (ptD d) E G (ptF f) (ptH h) O := by
  sorry

end Heilbronn.SixBoundaryTwoTopConvex
