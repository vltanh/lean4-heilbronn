module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Seven.MixedPair

/-! # Completion of the mixed seven-boundary placement below HC (`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`)

Primary route: the Theorem closes the mixed sub-branch in which the left point `P` is below `HC`
(`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 389-392).

**Setting** (lines 3-14). The seven anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`,
`D = (1,d)`, `E = (1,e)`, `F = (f,1)` with `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e ≤ 1`,
`b ≤ f ≤ c`, `f ≤ 1/2` (written `SevenAnchorsClosed a h b c d e f ∧ h < 1 ∧ f ≤ 1/2`); free points
`P = (p_x, p_y)`, `Q = (q_x, q_y)`; `s = 7/64`, `ρ = 13/16`; the standing hypothesis is
`7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`.

The reduced region (1) (lines 23-26, `LowerRegion`): `P ∈ AHC ∩ HBC ∩ ACF`, `Q ∈ CEF`, both below
`HE`.

**Ray words** (§2, lines 127-147). Label the heptagon `(V₀, …, V₆) = (A, B, C, D, E, F, H)`
(`heptagon`). For an interior point `X`, `r_i` counts the `j ∈ {1, …, 6}` with
`[V_i V_{i+j} X] > 0` (indices mod 7); these form the initial segment `j ≤ r_i`
(`HasRayWord V X r`). The word lists of §2 are `mlPWords` (9 words) and `mlQWords` (12 words),
indexed from zero (manuscript index minus one); the coverage table of §4 is `mlCoverage`.

**Certificate package.** `hand/seven_boundary_mixed_lower_certificates.json` (40 records, 4,981
positive terms), checked by `hand/check_seven_boundary_mixed_lower.py`. Following the brief, only
the geometric conclusion of each certificate is stated (`claim_certificates`); its factors are the
bounds of `claim_bounds` and its costs the area bounds of `claim_costs`.

Triangles are written with vertices in the counterclockwise heptagon order. Local notation:
`𝐀 = (0,a)`, `𝐇 = (0,h)`, `𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`,
`𝐕 = heptagon a h b c d e f`.

**Definitions.** `heptagon`, `HasRayWord`, `mlPWords`, `mlQWords`, `Cover`, `mlCoverage`,
`LowerRegion`, `VerticalPair` (both free points in one of `ADE, AHD, AHE, HDE`).

**Results.**
* `eq10`: the ray-word relations (10) for an interior point (also (11) of
  `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`).
* `claim_reduction`: the mixed placement with `P` below `HC` reduces to (1).
* `claim_bounds` (§1, (2)-(9)): the bounds valid on the whole region (1).
* `claim_words`: `P` has one of the 9 words and `Q` one of the 12 words.
* `claim_prior`: the `V` and `M` entries of the coverage table (44 of the 108 pairs) are excluded
  by the capacity theorems and the common-cell theorem of `SEVEN_BOUNDARY_MIXED_PAIR.md`.
* `claim_costs` (§3, (11)-(13)): the nonnegative costs.
* `claim_certificates` (§4): each certificate entry of the table is impossible.
* `mainTheorem`: the mixed placement with `P` below `HC` is impossible.

Note. The setting allows `e = 1` (line 10) without an endpoint discussion in this file; the
inherited `V`/`M` exclusions and the reduction (1) are stated for `e < 1` in their notes, and
their `e = 1` versions are argued in `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` §1 (lines
127-161). The primary route uses only `e < 1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedLower

open SevenBoundary SevenBoundaryLeftPair SevenBoundaryRightPair SevenBoundaryMixedPair

/-! ### Ray words on the anchor heptagon -/

/-- The anchor heptagon in counterclockwise order `(V₀, …, V₆) = (A, B, C, D, E, F, H)`. -/
def heptagon (a h b c d e f : ℝ) : Fin 7 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (0, h)]

/-- The point `X` has ray word `r` with respect to the heptagon `V`
(`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 133-147): for every `i` and every `j ≠ 0` (indices
modulo seven), `[V_i V_{i+j} X] > 0` exactly when `j ≤ r_i`. -/
def HasRayWord (V : Fin 7 → Point) (X : Point) (r : Fin 7 → ℕ) : Prop :=
  ∀ i j : Fin 7, j ≠ 0 → (0 < sarea (V i) (V (i + j)) X ↔ (j : ℕ) ≤ r i)

/-- The nine ray words of the left point `P` in (1) (`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, table
at lines 165-178; entry `i` is the manuscript's index `i + 1`). -/
def mlPWords : Fin 9 → Fin 7 → ℕ :=
  ![![2, 1, 4, 5, 4, 3, 2], ![2, 2, 4, 4, 4, 3, 2], ![2, 3, 4, 4, 3, 3, 2],
    ![2, 4, 4, 4, 3, 2, 2], ![3, 2, 4, 3, 4, 3, 2], ![3, 3, 4, 3, 3, 3, 2],
    ![3, 4, 4, 3, 3, 2, 2], ![4, 3, 4, 3, 2, 3, 2], ![4, 4, 4, 3, 2, 2, 2]]

/-- The twelve ray words of the right point `Q` in (1) (`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`,
table at lines 165-178; entry `j` is the manuscript's index `j + 1`). The same twelve words, in
the same order, are the `Q` words of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (lines 198-216). -/
def mlQWords : Fin 12 → Fin 7 → ℕ :=
  ![![2, 1, 2, 5, 4, 4, 3], ![2, 2, 2, 4, 4, 4, 3], ![2, 3, 2, 4, 3, 4, 3],
    ![3, 2, 2, 1, 4, 5, 4], ![3, 2, 2, 2, 4, 4, 4], ![3, 2, 2, 3, 4, 4, 3],
    ![3, 3, 2, 1, 3, 5, 4], ![3, 3, 2, 2, 3, 4, 4], ![3, 3, 2, 3, 3, 4, 3],
    ![4, 3, 2, 1, 2, 5, 4], ![4, 3, 2, 2, 2, 4, 4], ![4, 3, 2, 3, 2, 4, 3]]

/-- An entry of the coverage tables of `SEVEN_BOUNDARY_MIXED_LOWER.md` (lines 291-306) and
`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (lines 328-351): the reason a pair of ray words is
excluded. -/
inductive Cover where
  /-- `V`: both points in one of the vertical triangles `ADE, AHD, AHE, HDE` (capacity one,
  `SEVEN_BOUNDARY_MIXED_PAIR.md` Theorems 4-5). -/
  | V
  /-- `A`: both points in one of `AEF, HDF, ACD` (anchor-area bounds
  `SEVEN_BOUNDARY_MIXED_PAIR.md` (25), (26) and `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (9)). -/
  | A
  /-- `M`: both points in the common cell `HBE ∩ BEF` (`SEVEN_BOUNDARY_MIXED_PAIR.md` Theorem 1). -/
  | M
  /-- `C`: `[BEP] < 0` and `Q ∈ AHE ∩ DEF` (crossed-cell theorem,
  `SEVEN_BOUNDARY_MIXED_ABOVE.md` Theorem 1). -/
  | C
  /-- Closed by the certificate record number `k` (one-based) of the coefficient file. -/
  | cert (k : ℕ)
  deriving DecidableEq

/-- The coverage table of `hand/SEVEN_BOUNDARY_MIXED_LOWER.md` (lines 296-306): row `i` is the
`P` word `mlPWords i`, column `j` the `Q` word `mlQWords j`. -/
def mlCoverage : Fin 9 → Fin 12 → Cover :=
  ![![.cert 1, .cert 1, .cert 13, .cert 1, .cert 1, .cert 1, .cert 2, .cert 3, .cert 3, .cert 4,
      .cert 5, .cert 6],
    ![.cert 1, .cert 7, .cert 13, .cert 7, .cert 7, .cert 7, .cert 8, .cert 9, .cert 10, .cert 11,
      .cert 11, .cert 12],
    ![.cert 13, .cert 13, .M, .cert 14, .cert 15, .cert 16, .M, .M, .M, .M, .M, .M],
    ![.cert 13, .cert 13, .cert 13, .cert 17, .cert 18, .cert 19, .cert 20, .cert 20, .cert 20,
      .cert 21, .cert 22, .cert 23],
    ![.cert 1, .cert 7, .cert 24, .V, .V, .V, .V, .V, .V, .cert 24, .cert 24, .V],
    ![.cert 25, .cert 26, .M, .V, .V, .V, .V, .V, .V, .M, .M, .V],
    ![.cert 25, .cert 27, .cert 20, .V, .V, .V, .V, .V, .V, .cert 28, .cert 29, .V],
    ![.cert 30, .cert 31, .M, .cert 32, .cert 33, .V, .M, .M, .V, .V, .V, .V],
    ![.cert 34, .cert 35, .cert 36, .cert 37, .cert 38, .V, .cert 39, .cert 40, .V, .V, .V, .V]]

/-! ### Regions -/

/-- The reduced lower region (1) (`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 23-26):
`P ∈ AHC ∩ HBC ∩ ACF`, `Q ∈ CEF`, and both points below `HE`. -/
def LowerRegion (a h b c e f : ℝ) (P Q : Point) : Prop :=
  InTriangle P (0, a) (c, 0) (0, h) ∧ InTriangle P (b, 0) (c, 0) (0, h) ∧
    InTriangle P (0, a) (c, 0) (f, 1) ∧ InTriangle Q (c, 0) (1, e) (f, 1) ∧
    0 < sarea (1, e) (0, h) P ∧ 0 < sarea (1, e) (0, h) Q

/-- Both free points lie in one of the four vertical triangles `ADE, AHD, AHE, HDE` cut out by the
diagonals of `ADEH` (the `V` test). -/
def VerticalPair (a h d e : ℝ) (P Q : Point) : Prop :=
  BothInTriangle P Q (0, a) (1, d) (1, e) ∨ BothInTriangle P Q (0, a) (1, d) (0, h) ∨
    BothInTriangle P Q (0, a) (1, e) (0, h) ∨ BothInTriangle P Q (1, d) (1, e) (0, h)

variable {a h b c d e f : ℝ} {P Q X : Point}

-- The seven anchors as points, and the heptagon.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))
local notation "𝐕" => heptagon a h b c d e f

/-! ### Ray-word relations -/

/-- **Equation (10)** (`SEVEN_BOUNDARY_MIXED_LOWER:eq10`). A point strictly inside the anchor
heptagon and collinear with no two anchors has a ray word `r` (the positive signs
`[V_i V_{i+j} X] > 0` form the initial segment `j ≤ r_i`), with `1 ≤ r_i ≤ 5`, the complement
relation `j ≤ r_i ⇔ 7 - j > r_{i+j}` (`1 ≤ j ≤ 6`, indices mod 7), and `∑ r_i = 21`.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 127-147.
Uses: standard fact: the rays from an interior point of a convex polygon to its vertices are
angularly ordered. -/
theorem eq10 (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1)
    (hX : InHeptagon a h b c d e f X) (hgen : ∀ i j : Fin 7, i ≠ j → sarea (𝐕 i) (𝐕 j) X ≠ 0) :
    ∃ r : Fin 7 → ℕ, HasRayWord 𝐕 X r ∧ (∀ i, 1 ≤ r i ∧ r i ≤ 5) ∧
      (∀ i j : Fin 7, j ≠ 0 → ((j : ℕ) ≤ r i ↔ r (i + j) < 7 - (j : ℕ))) ∧ ∑ i, r i = 21 := by
  sorry

/-! ### The reduction and the common bounds -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-reduction`). The mixed placement with `P` below
`HC` reduces to (1): `P ∈ AHC ∩ HBC ∩ ACF`, `Q ∈ CEF`, both below `HE` (the empty ears `ABC, ABH`,
Theorem 3 of the mixed-pair note, the empty `CDE`, and its Section 2 or the upper-triangle
theorem). `hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 19-32.
Uses: SEVEN_BOUNDARY_CAPS:Theorem1, SEVEN_BOUNDARY_CAPS:Theorem4, SEVEN_BOUNDARY_CAPS:Theorem8,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem3, SEVEN_BOUNDARY_MIXED_PAIR:claim-lowerHE,
SEVEN_BOUNDARY_UPPER_TRIANGLE:Theorem1. -/
theorem claim_reduction (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hPQ : MixedPlacement a h b c d e f P Q) (hPHC : 0 < sarea 𝐂 𝐇 P) :
    LowerRegion a h b c e f P Q := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-bounds`). On the region (1), with `M = c - b`,
`L = h - a`, `R = e - d`: (2) `a, d > 1/7`, together with `b > 1/8`, `c < 57/64` and
`M < 49/64`; (3) `hc ≥ s/(3 - 2√2) > 7/11`, `c > 7/11`, `h > 448/627`; (4) `cL ≥ 3s`,
`hM ≥ 3s`, `L > 7/19`, `M > 21/64`; (5) `e ≥ 4s/(1 - b) > 1/2`; the point bounds
`p_y, q_y > 1/7`, `p_y, q_y ≤ 1 - s`, `p_x, q_x ≤ 1 - s`; (6) `p_x > 1/8`; (7) `q_x ≥ f + s`;
(8) `c - p_x > 1/5`; (9) `p_y < 4/5`. These justify the 24 affine factors of §3.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 38-123.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, TYPE_II:EndpointTriangleTheorem,
standard fact: Cauchy-Schwarz (Engel form). -/
theorem claim_bounds (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : LowerRegion a h b c e f P Q) :
    (1 / 7 < a ∧ 1 / 7 < d ∧ 1 / 8 < b ∧ c < 57 / 64 ∧ c - b < 49 / 64) ∧
      (7 / 64 / (3 - 2 * Real.sqrt 2) ≤ h * c ∧ 7 / 11 < h * c ∧ 7 / 11 < c ∧ 448 / 627 < h) ∧
      (3 * (7 / 64) ≤ c * (h - a) ∧ 3 * (7 / 64) ≤ h * (c - b) ∧ 7 / 19 < h - a ∧
        21 / 64 < c - b) ∧
      (4 * (7 / 64) / (1 - b) ≤ e ∧ 1 / 2 < e) ∧
      (1 / 7 < P.2 ∧ 1 / 7 < Q.2 ∧ P.2 ≤ 57 / 64 ∧ Q.2 ≤ 57 / 64 ∧ P.1 ≤ 57 / 64 ∧
        Q.1 ≤ 57 / 64) ∧
      1 / 8 < P.1 ∧ f + 7 / 64 ≤ Q.1 ∧ 1 / 5 < c - P.1 ∧ P.2 < 4 / 5 := by
  sorry

/-! ### The finite cover -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-words`). On the region (1), `P` has one of the
nine ray words `mlPWords` (forced `r₂ = 4`, `r₆ = 2`) and `Q` one of the twelve words `mlQWords`.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 149-178.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:eq10. -/
theorem claim_words (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : LowerRegion a h b c e f P Q) :
    (∃ i, HasRayWord 𝐕 P (mlPWords i)) ∧ ∃ j, HasRayWord 𝐕 Q (mlQWords j) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-prior`). The ray words determine the
containments by the three-sign test; for the `V` entries of the coverage table both points lie in
one of `ADE, AHD, AHE, HDE`, and for the `M` entries both lie in `HBE ∩ BEF`. These are the 44
pairs excluded by Theorems 4, 5 and 1 of the mixed-pair note.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 180-185.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:eq10. -/
theorem claim_prior (i : Fin 9) (j : Fin 12) (hP : HasRayWord 𝐕 P (mlPWords i))
    (hQ : HasRayWord 𝐕 Q (mlQWords j)) :
    (mlCoverage i j = .V → VerticalPair a h d e P Q) ∧
      (mlCoverage i j = .M → BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) := by
  sorry

/-! ### Costs and certificates -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-costs`). The costs (11)-(13) are nonnegative on
the region (1): every anchor triangle `V_iV_jV_k` (`i < j < k`) has doubled area at least `s`, at
least `3s` if it contains one of `P, Q` (area addition), and at least `ρ = 13/16` if it contains
both (two-interior-point triangle bound `(4 + 2√3)s > 13/16`); every triangle with two anchors and
one free point has unsigned doubled area at least `s`; and `q₇₇ = hc - 7/11 ≥ 0`.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 187-242.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma, SEVEN_BOUNDARY_MIXED_LOWER:claim-bounds. -/
theorem claim_costs (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : LowerRegion a h b c e f P Q) :
    (∀ i j k : Fin 7, i < j → j < k →
      7 / 64 ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k) ∧
      (InTriangle P (𝐕 i) (𝐕 j) (𝐕 k) ∨ InTriangle Q (𝐕 i) (𝐕 j) (𝐕 k) →
        3 * (7 / 64) ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k)) ∧
      (BothInTriangle P Q (𝐕 i) (𝐕 j) (𝐕 k) → 13 / 16 ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k))) ∧
    (∀ i j : Fin 7, i ≠ j → 7 / 64 ≤ |sarea (𝐕 i) (𝐕 j) P| ∧ 7 / 64 ≤ |sarea (𝐕 i) (𝐕 j) Q|) ∧
    7 / 11 ≤ h * c := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_LOWER:claim-certificates`). Each certificate entry of the
coverage table is impossible: on the region (1), no configuration has `P` with word
`mlPWords i` and `Q` with word `mlQWords j` when `mlCoverage i j` is a certificate (40 fixed
positive cubic combinations of the factors and costs, each with unit-cube bound at most `-3/4`).
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 244-311;
`hand/seven_boundary_mixed_lower_certificates.json`.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:claim-bounds, SEVEN_BOUNDARY_MIXED_LOWER:claim-costs,
standard fact: the unit-cube monomial bound. -/
theorem claim_certificates (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : LowerRegion a h b c e f P Q) (i : Fin 9) (j : Fin 12) (k : ℕ)
    (hij : mlCoverage i j = .cert k) (hP : HasRayWord 𝐕 P (mlPWords i))
    (hQ : HasRayWord 𝐕 Q (mlQWords j)) :
    False := by
  sorry

/-! ### The theorem -/

-- FLAG: the setting allows `e = 1` (line 10), but the reduction (lines 19-32) and the `V`, `M`
-- exclusions (lines 180-185) are cited from notes stated for `e < 1`; their `e = 1` versions are
-- argued only in `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` lines 127-161. The primary route
-- (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2`) uses only `e < 1`.
/-- **Theorem** (`SEVEN_BOUNDARY_MIXED_LOWER:Theorem`). The complete mixed placement in which `P`
is below `HC` is impossible, for every orientation of the joining line `PQ`.
`hand/SEVEN_BOUNDARY_MIXED_LOWER.md`, lines 16-17, 308-311.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:claim-reduction, SEVEN_BOUNDARY_MIXED_LOWER:claim-words,
SEVEN_BOUNDARY_MIXED_LOWER:claim-prior, SEVEN_BOUNDARY_MIXED_PAIR:Theorem4,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem5, SEVEN_BOUNDARY_MIXED_PAIR:Theorem1,
SEVEN_BOUNDARY_MIXED_LOWER:claim-certificates. -/
theorem mainTheorem (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (MixedPlacement a h b c d e f P Q ∧ 0 < sarea 𝐂 𝐇 P) := by
  sorry

end Heilbronn.SevenBoundaryMixedLower
