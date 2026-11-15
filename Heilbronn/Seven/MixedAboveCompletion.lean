module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.Setting
public import Heilbronn.Seven.MixedPair
public import Heilbronn.Seven.MixedLower

/-! # Completion of the upper mixed branch and of the seven-boundary form (`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`)

Primary route. Theorem 1 closes the mixed branch in which the left point `P` is above `HC`.
Theorem 2 is the complete normalized seven-boundary theorem, applied by `hand/UNRESTRICTED.md` §4
("Eight or seven boundary points", lines 128-140); `theorem2_nConfig` is that application, stated
for the family `N` (`nConfig`) with exactly seven boundary contacts.

**Setting** (lines 3-18). The seven anchors `A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`,
`D = (1,d)`, `E = (1,e)`, `F = (f,1)` with `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e ≤ 1`,
`b ≤ f ≤ c`, `f ≤ 1/2` (written `SevenAnchorsClosed a h b c d e f ∧ h < 1 ∧ f ≤ 1/2`; Theorem 1
allows `e = 1`); Theorem 2 assumes the open-side form `SevenNormal a h b c d e f` (`e < 1`,
line 363). Free points `P = (p_x, p_y)`, `Q = (q_x, q_y)`; `s = 7/64`, `ρ = 13/16`,
`K = 4 + 2√3`; the standing hypothesis is `7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`.

The reduced region (1) (lines 25-34, `UpperRegion`): `P ∈ HCF ∩ ACF`, `Q ∈ CEF`, both below `HE`;
in particular both lie inside `HCE`.

**Ray words and certificates.** The heptagon labelling `(V₀, …, V₆) = (A, B, C, D, E, F, H)`,
`HasRayWord`, the relations (11) (= (10) of `SEVEN_BOUNDARY_MIXED_LOWER.md`,
`SevenBoundaryMixedLower.eq10`), the `Q` words (the same twelve words as the lower branch,
`mlQWords`) and the entry type `Cover` come from `SevenBoundaryMixedLower`. The fourteen `P` words
are `macPWords`, the coverage table of §4 is `macCoverage` (both indexed from zero). The
certificate package is `hand/seven_boundary_mixed_above_certificates.json` (55 records, 6,125
positive terms), checked by `hand/check_seven_boundary_mixed_above_certificates.py`; as for the
lower branch only its geometric conclusion is stated (`claim_certificates`).

Triangles are written with vertices in the counterclockwise heptagon order (`HCF` is
`𝐂 𝐅 𝐇`, `AHE` is `𝐀 𝐄 𝐇`, `HDF` is `𝐃 𝐅 𝐇`). Local notation: `𝐀 = (0,a)`, `𝐇 = (0,h)`,
`𝐁 = (b,0)`, `𝐂 = (c,0)`, `𝐃 = (1,d)`, `𝐄 = (1,e)`, `𝐅 = (f,1)`, `𝐕 = heptagon a h b c d e f`.
"Above `HC`" is `0 < sarea 𝐇 𝐂 X`, "below `HE`" is `0 < sarea 𝐄 𝐇 X`.

**Definitions.** `UpperRegion`, `macPWords`, `macCoverage`, `InOpenSquare`, `OnSideNotCorner`,
`ExactlySevenContacts`.

**Results.**
* `claim_reduction`: the mixed placement with `P` above `HC` reduces to (1).
* `claim_bounds` (§1, (2)-(8)): the bounds valid on the region (1) (also at `e = 1`).
* `claim_ACD` (9): `[ACD] ≤ 1 - s(w/b + c/w) < 1 - 2s < ρ`.
* `claim_inherited_e1` (§1, lines 127-161): the inherited exclusions at the endpoint `e = 1`.
* `claim_words` (§2): `P` has one of 14 words, `Q` one of 12.
* `claim_tests` (§2): the `V`, `A`, `M`, `C` entries of the table (100 of the 168 pairs).
* `claim_costs` (§3, (12)-(13)): the nonnegative costs.
* `claim_certificates` (§4): each certificate entry is impossible.
* `theorem1`: the mixed placement with `P` above `HC` is impossible, including `e = 1`.
* `claim_interior` (§5): two free points inside the heptagon give an area `< 7/128`.
* `theorem2`: in the open-side normal form the least area is at most `A₀`; equality only for the
  known optimal configuration; strict inequality when both free points are interior to the square.
* `theorem2_nConfig`: a configuration of family `N` with exactly seven boundary contacts and no
  corner has least area `< A₀`.

Notes. The exterior branch of Theorem 2 (lines 404-413) cites "the lower exterior-cap exclusions"
without a link; they are `GLOBAL_COMPLETION.md` Theorem 2 (inventory gap G3). The preconditions
of `SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` Theorem 1 come from `SEVEN_BOUNDARY_TOP_CAP*.md`, which
Theorem 2 does not cite directly. The "Endpoint scope" paragraph (lines 416-423) has no consumer on
the primary route and is not stated separately.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryMixedAboveCompletion

open SevenBoundary SevenBoundaryLeftPair SevenBoundaryRightPair SevenBoundaryMixedPair
  SevenBoundaryMixedLower

/-! ### Definitions -/

/-- The reduced upper region (1) (`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 30-33):
`P ∈ HCF ∩ ACF`, `Q ∈ CEF`, and both points below `HE`. -/
def UpperRegion (a h c e f : ℝ) (P Q : Point) : Prop :=
  InTriangle P (c, 0) (f, 1) (0, h) ∧ InTriangle P (0, a) (c, 0) (f, 1) ∧
    InTriangle Q (c, 0) (1, e) (f, 1) ∧ 0 < sarea (1, e) (0, h) P ∧ 0 < sarea (1, e) (0, h) Q

/-- The fourteen ray words of the left point `P` in (1)
(`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, table at lines 201-216; entry `i` is the
manuscript's index `i + 1`). -/
def macPWords : Fin 14 → Fin 7 → ℕ :=
  ![![2, 1, 3, 5, 4, 3, 3], ![2, 2, 3, 4, 4, 3, 3], ![2, 3, 3, 4, 3, 3, 3],
    ![2, 4, 3, 4, 3, 2, 3], ![3, 2, 3, 2, 4, 3, 4], ![3, 2, 3, 3, 4, 3, 3],
    ![3, 3, 3, 2, 3, 3, 4], ![3, 3, 3, 3, 3, 3, 3], ![3, 4, 3, 2, 3, 2, 4],
    ![3, 4, 3, 3, 3, 2, 3], ![4, 3, 3, 2, 2, 3, 4], ![4, 3, 3, 3, 2, 3, 3],
    ![4, 4, 3, 2, 2, 2, 4], ![4, 4, 3, 3, 2, 2, 3]]

/-- The coverage table of `hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md` (lines 336-351): row `i`
is the `P` word `macPWords i`, column `j` the `Q` word `mlQWords j`. -/
def macCoverage : Fin 14 → Fin 12 → Cover :=
  ![![.A, .A, .A, .cert 1, .cert 1, .cert 1, .cert 3, .cert 4, .cert 5, .C, .cert 6, .cert 7],
    ![.A, .A, .A, .cert 8, .cert 8, .cert 2, .cert 9, .cert 10, .cert 11, .C, .cert 12, .cert 13],
    ![.A, .A, .A, .cert 14, .cert 15, .cert 16, .M, .M, .M, .M, .M, .M],
    ![.A, .A, .A, .cert 14, .cert 17, .cert 18, .cert 19, .cert 20, .cert 21, .cert 22, .cert 23,
      .cert 24],
    ![.cert 28, .cert 8, .cert 25, .V, .V, .V, .V, .V, .V, .V, .V, .cert 26],
    ![.cert 2, .cert 2, .cert 11, .V, .V, .V, .V, .V, .V, .C, .cert 27, .V],
    ![.cert 28, .cert 29, .M, .V, .V, .V, .V, .V, .V, .V, .V, .M],
    ![.cert 30, .cert 30, .M, .V, .V, .V, .V, .V, .V, .M, .M, .V],
    ![.cert 31, .cert 31, .cert 32, .V, .V, .V, .V, .V, .V, .V, .V, .cert 33],
    ![.cert 34, .cert 34, .cert 34, .V, .V, .V, .V, .V, .V, .cert 35, .cert 36, .V],
    ![.cert 37, .cert 38, .M, .V, .V, .cert 39, .V, .V, .M, .V, .V, .V],
    ![.cert 40, .cert 41, .M, .cert 42, .cert 43, .V, .M, .M, .V, .V, .V, .V],
    ![.cert 44, .cert 45, .cert 46, .V, .V, .cert 47, .V, .V, .cert 48, .V, .V, .V],
    ![.cert 49, .cert 50, .cert 51, .cert 52, .cert 53, .V, .cert 54, .cert 55, .V, .V, .V, .V]]

/-- `X` lies in the open unit square (it is not a boundary contact). -/
def InOpenSquare (X : Point) : Prop :=
  0 < X.1 ∧ X.1 < 1 ∧ 0 < X.2 ∧ X.2 < 1

/-- `X` lies on a side of the unit square but is not one of its corners. -/
def OnSideNotCorner (X : Point) : Prop :=
  X ∈ unitSquare ∧ (X.1 = 0 ∨ X.1 = 1 ∨ X.2 = 0 ∨ X.2 = 1) ∧
    ¬ ((X.1 = 0 ∨ X.1 = 1) ∧ (X.2 = 0 ∨ X.2 = 1))

/-- The configuration `nConfig a h b c d f X Y Z` of family `N` has exactly seven boundary
contacts and none at a corner (`hand/UNRESTRICTED.md`, lines 132-133): its six anchors and exactly
one of the free points lie on the boundary of the square, that free point not at a corner, and
the other two free points lie in the open square. -/
def ExactlySevenContacts (X Y Z : Point) : Prop :=
  (OnSideNotCorner X ∧ InOpenSquare Y ∧ InOpenSquare Z) ∨
    (InOpenSquare X ∧ OnSideNotCorner Y ∧ InOpenSquare Z) ∨
    (InOpenSquare X ∧ InOpenSquare Y ∧ OnSideNotCorner Z)

variable {a h b c d e f : ℝ} {P Q : Point}

-- The seven anchors as points, and the heptagon.
local notation "𝐀" => ((0 : ℝ), a)
local notation "𝐇" => ((0 : ℝ), h)
local notation "𝐁" => (b, (0 : ℝ))
local notation "𝐂" => (c, (0 : ℝ))
local notation "𝐃" => ((1 : ℝ), d)
local notation "𝐄" => ((1 : ℝ), e)
local notation "𝐅" => (f, (1 : ℝ))
local notation "𝐕" => heptagon a h b c d e f

/-! ### Section 1: the reduction and the common bounds -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-reduction`). The mixed placement with
`P` above `HC` reduces to (1): `P ∈ HCF ∩ ACF`, `Q ∈ CEF`, both below `HE` (the reductions of the
mixed-pair note and the upper-triangle theorem), including the endpoint `e = 1`.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 25-34, 127-135.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:Theorem3, SEVEN_BOUNDARY_CAPS:Theorem6,
SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_UPPER_TRIANGLE:Theorem1,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-inherited-e1. -/
theorem claim_reduction (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hPQ : MixedPlacement a h b c d e f P Q) (hPHC : 0 < sarea 𝐇 𝐂 P) :
    UpperRegion a h c e f P Q := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-bounds`). On the region (1), with
`L = h - a`, `M = c - b`, `R = e - d`, `w = 1 - c`: (2) `a, d ≥ s/M`, `bL ≥ s`, `wR ≥ s`,
`h ≥ s/M + s/b`, `e ≥ s/M + s/w`; (3) `b > 1/8`, `c < 57/64`, `M < 49/64`, `a, d > 1/7`;
(4) `hc ≥ 4s`, `c ≥ 7/16`, `h > 28/57`, `R ≥ 7/36`; (5) `L ≥ 2s`, `a ≤ 25/32`, `M ≥ 7/50`;
(6) `e ≥ 4s/(1 - b) > 1/2`; the point bounds `p_y, q_y ≥ s/M`, `p_y, q_y ≤ 1 - s`,
`p_x, q_x ≤ 1 - s`; (7) `p_x > 1/8`; (8) `q_x ≥ f + s` and `(6c + f)/7 - p_x - s ≥ 0`. All hold at
`e = 1`. These justify the 24 affine factors of §3.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 41-98.
Uses: SEVEN_BOUNDARY_MIXED_PAIR:claim-budget, standard fact: Cauchy-Schwarz (Engel form),
standard fact: arithmetic-geometric mean inequality. -/
theorem claim_bounds (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : UpperRegion a h c e f P Q) :
    (7 / 64 / (c - b) ≤ a ∧ 7 / 64 / (c - b) ≤ d ∧ 7 / 64 ≤ b * (h - a) ∧
        7 / 64 ≤ (1 - c) * (e - d) ∧ 7 / 64 / (c - b) + 7 / 64 / b ≤ h ∧
        7 / 64 / (c - b) + 7 / 64 / (1 - c) ≤ e) ∧
      (1 / 8 < b ∧ c < 57 / 64 ∧ c - b < 49 / 64 ∧ 1 / 7 < a ∧ 1 / 7 < d) ∧
      (4 * (7 / 64) ≤ h * c ∧ 7 / 16 ≤ c ∧ 28 / 57 < h ∧ 7 / 36 ≤ e - d) ∧
      (2 * (7 / 64) ≤ h - a ∧ a ≤ 25 / 32 ∧ 7 / 50 ≤ c - b) ∧
      (4 * (7 / 64) / (1 - b) ≤ e ∧ 1 / 2 < e) ∧
      (7 / 64 / (c - b) ≤ P.2 ∧ 7 / 64 / (c - b) ≤ Q.2 ∧ P.2 ≤ 57 / 64 ∧ Q.2 ≤ 57 / 64 ∧
        P.1 ≤ 57 / 64 ∧ Q.1 ≤ 57 / 64) ∧
      1 / 8 < P.1 ∧ f + 7 / 64 ≤ Q.1 ∧ 0 ≤ (6 * c + f) / 7 - P.1 - 7 / 64 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-ACD`). Equation (9), anchor-only:
`[ACD] = wa + cd ≤ 1 - s(w/b + c/w) < 1 - 2s = 25/32 < ρ` (with `w = 1 - c`), so `ACD` cannot
contain both free points. Valid at `e = 1`.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 100-116.
Uses: standard fact: arithmetic-geometric mean inequality. -/
theorem claim_ACD (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenAnchorConfig a h b c d e f)) :
    sarea 𝐀 𝐂 𝐃 ≤ 1 - 7 / 64 * ((1 - c) / b + c / (1 - c)) ∧
      sarea 𝐀 𝐂 𝐃 < 1 - 2 * (7 / 64) ∧ 1 - 2 * (7 / 64) < 13 / 16 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-inherited-e1`). The inherited
exclusions also hold at the endpoint `e = 1`: `L = h - a < 335/448 < ρ` (so `AHD`, `AHE`, of
doubled area `L`, have capacity one); the reduction of the mixed placement with `P` above `HC`
to `P ∈ ACF`, `Q ∈ CEF` (only the empty overlap `AHF ∩ HCF` and the empty `CDE`); capacity one of
`ADE`, `AHD`, `AHE`, and of `HDE` once `P ∈ ACF`, `Q ∈ CEF`; the anchor bounds
`[AEF], [HDF] < 1 - 2s`; and the common-cell exclusion `HBE ∩ BEF`.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 127-161.
Uses: SEVEN_BOUNDARY_CAPS:Theorem6, SEVEN_BOUNDARY_CAPS:Theorem8,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem2, SEVEN_BOUNDARY_MIXED_PAIR:Theorem4,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem5, SEVEN_BOUNDARY_MIXED_PAIR:claim-AEF,
SEVEN_BOUNDARY_MIXED_PAIR:claim-HDF, SEVEN_BOUNDARY_MIXED_PAIR:Theorem1,
CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_inherited_e1 (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1)
    (hf : f ≤ 1 / 2) (he : e = 1)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    h - a < 335 / 448 ∧
      (MixedPlacement a h b c d e f P Q → 0 < sarea 𝐇 𝐂 P →
        InTriangle P 𝐀 𝐂 𝐅 ∧ InTriangle Q 𝐂 𝐄 𝐅) ∧
      ¬ BothInTriangle P Q 𝐀 𝐃 𝐄 ∧ ¬ BothInTriangle P Q 𝐀 𝐃 𝐇 ∧ ¬ BothInTriangle P Q 𝐀 𝐄 𝐇 ∧
      (InTriangle P 𝐀 𝐂 𝐅 → InTriangle Q 𝐂 𝐄 𝐅 → ¬ BothInTriangle P Q 𝐃 𝐄 𝐇) ∧
      sarea 𝐀 𝐄 𝐅 < 1 - 2 * (7 / 64) ∧ sarea 𝐃 𝐅 𝐇 < 1 - 2 * (7 / 64) ∧
      ¬ (BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) := by
  sorry

/-! ### Section 2: the finite cover -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-words`). On the region (1), `P` has
one of the fourteen ray words `macPWords` (`r₂ = 3`, `2 ≤ r₀ ≤ 4`, positive sign at `(4,6)`) and
`Q` one of the twelve words `mlQWords` (the same as in the lower branch).
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 163-216.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:eq10. -/
theorem claim_words (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : UpperRegion a h c e f P Q) :
    (∃ i, HasRayWord 𝐕 P (macPWords i)) ∧ ∃ j, HasRayWord 𝐕 Q (mlQWords j) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-tests`). The ray words determine the
signs used by the four ordered tests; for the `V` entries of the coverage table both points lie in
one of `ADE, AHD, AHE, HDE` (69 pairs), for the `A` entries in one of `AEF, HDF, ACD` (12 pairs),
for the `M` entries in `HBE ∩ BEF` (16 pairs), and for the `C` entries `[BEP] < 0` and
`Q ∈ AHE ∩ DEF` (3 pairs).
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 218-235.
Uses: SEVEN_BOUNDARY_MIXED_LOWER:eq10. -/
theorem claim_tests (i : Fin 14) (j : Fin 12) (hP : HasRayWord 𝐕 P (macPWords i))
    (hQ : HasRayWord 𝐕 Q (mlQWords j)) :
    (macCoverage i j = .V → VerticalPair a h d e P Q) ∧
      (macCoverage i j = .A →
        BothInTriangle P Q 𝐀 𝐄 𝐅 ∨ BothInTriangle P Q 𝐃 𝐅 𝐇 ∨ BothInTriangle P Q 𝐀 𝐂 𝐃) ∧
      (macCoverage i j = .M → BothInTriangle P Q 𝐁 𝐄 𝐇 ∧ BothInTriangle P Q 𝐁 𝐄 𝐅) ∧
      (macCoverage i j = .C → sarea 𝐁 𝐄 P < 0 ∧ InTriangle Q 𝐀 𝐄 𝐇 ∧ InTriangle Q 𝐃 𝐄 𝐅) := by
  sorry

/-! ### Sections 3-4: costs and certificates -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-costs`). The costs (12)-(13) are
nonnegative on the region (1): every anchor triangle `V_iV_jV_k` (`i < j < k`) has doubled area at
least `s`, at least `3s` if it contains one of `P, Q`, and at least `ρ = 13/16` if it contains both
(`Ks > ρ`); every triangle with two anchors and one free point has unsigned doubled area at least
`s`; and both points lie inside `HCE`, so its threshold is always `ρ`.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 237-283.
Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_costs (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : UpperRegion a h c e f P Q) :
    (∀ i j k : Fin 7, i < j → j < k →
      7 / 64 ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k) ∧
      (InTriangle P (𝐕 i) (𝐕 j) (𝐕 k) ∨ InTriangle Q (𝐕 i) (𝐕 j) (𝐕 k) →
        3 * (7 / 64) ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k)) ∧
      (BothInTriangle P Q (𝐕 i) (𝐕 j) (𝐕 k) → 13 / 16 ≤ sarea (𝐕 i) (𝐕 j) (𝐕 k))) ∧
    (∀ i j : Fin 7, i ≠ j → 7 / 64 ≤ |sarea (𝐕 i) (𝐕 j) P| ∧ 7 / 64 ≤ |sarea (𝐕 i) (𝐕 j) Q|) ∧
    BothInTriangle P Q 𝐂 𝐄 𝐇 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-certificates`). Each certificate entry
of the coverage table is impossible: on the region (1), no configuration has `P` with word
`macPWords i` and `Q` with word `mlQWords j` when `macCoverage i j` is a certificate (55 fixed
positive cubic combinations of the factors and costs, each with unit-cube bound at most `-3/4`).
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 285-356;
`hand/seven_boundary_mixed_above_certificates.json`.
Uses: SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-bounds,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-costs, standard fact: the unit-cube monomial bound. -/
theorem claim_certificates (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q))
    (hR : UpperRegion a h c e f P Q) (i : Fin 14) (j : Fin 12) (k : ℕ)
    (hij : macCoverage i j = .cert k) (hP : HasRayWord 𝐕 P (macPWords i))
    (hQ : HasRayWord 𝐕 Q (mlQWords j)) :
    False := by
  sorry

/-! ### Theorem 1 -/

/-- **Theorem 1** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem1`). The mixed placement in which
the left point `P` is above `HC` is impossible, for every orientation of the joining line `PQ`.
The endpoint `e = 1` is allowed.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 20-39, 353-356.
Uses: SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-reduction,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-words,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-tests,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem4, SEVEN_BOUNDARY_MIXED_PAIR:Theorem5,
SEVEN_BOUNDARY_MIXED_PAIR:claim-AEF, SEVEN_BOUNDARY_MIXED_PAIR:claim-HDF,
SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-ACD, SEVEN_BOUNDARY_MIXED_PAIR:Theorem1,
SEVEN_BOUNDARY_MIXED_ABOVE:Theorem1, SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-inherited-e1,
CORNER_FAMILIES:TwoInteriorPointLemma, SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-certificates. -/
theorem theorem1 (hN : SevenAnchorsClosed a h b c d e f) (hh : h < 1) (hf : f ≤ 1 / 2)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)) :
    ¬ (MixedPlacement a h b c d e f P Q ∧ 0 < sarea 𝐇 𝐂 P) := by
  sorry

/-! ### Section 5: the seven-boundary theorem -/

/-- **Claim** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-interior`). In the open-side normal
form, if both free points are strictly inside the anchor heptagon, some triangle has area strictly
below `7/128` (both in the left pentagon, both in `CDEF`, or mixed, with `P` below or above `HC`;
a point on `CF` or `HC` gives a zero triangle).
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 376-397.
Uses: SEVEN_BOUNDARY_LEFT_PAIR:Theorem2, SEVEN_BOUNDARY_RIGHT_PAIR:Theorem,
SEVEN_BOUNDARY_CAPS:Theorem8, SEVEN_BOUNDARY_CAPS:claim-right-pair-DF,
SEVEN_BOUNDARY_MIXED_PAIR:Theorem3, SEVEN_BOUNDARY_UPPER_TRIANGLE:Theorem1,
SEVEN_BOUNDARY_MIXED_LOWER:Theorem, SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem1. -/
theorem claim_interior (hN : SevenNormal a h b c d e f) (hP : InHeptagon a h b c d e f P)
    (hQ : InHeptagon a h b c d e f Q) :
    minTriangleArea (sevenConfig a h b c d e f P Q) < 7 / 128 := by
  sorry

-- FLAG: the exterior branch (lines 404-413) cites "the lower exterior-cap exclusions" without a
-- link (they are `GLOBAL_COMPLETION.md` Theorem 2), and the hypotheses of
-- `SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` Theorem 1 (`b > 3/20`, `k > e, h`, convex octagon,
-- `P ∈ ADEH ∩ BCXF`) come from `SEVEN_BOUNDARY_TOP_CAP*.md`, which are not cited here.
/-- **Theorem 2** (`SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2`). In the open-side
seven-boundary form (`0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, `b ≤ f ≤ c`, `f ≤ 1/2`),
with the other two points anywhere in the unit square, the nine-point minimum triangle area is at
most `A₀ = (9√65 - 55)/320`. If equality holds, the configuration is the known optimal
(eight-boundary) configuration, up to square symmetry and relabeling. In particular a
configuration with exactly seven square-boundary points (both free points in the open square)
cannot attain equality.
`hand/SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION.md`, lines 358-414.
Uses: SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:claim-interior, GLOBAL_COMPLETION:Theorem2,
SEVEN_BOUNDARY_CAPS:Theorem10, SEVEN_BOUNDARY_CAPS:Theorem11,
SEVEN_BOUNDARY_CAPS:claim-exterior-reduction, SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1. -/
theorem theorem2 (hN : SevenNormal a h b c d e f) (hP : P ∈ unitSquare) (hQ : Q ∈ unitSquare) :
    minTriangleArea (sevenConfig a h b c d e f P Q) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f P Q) = A₀ →
        IsOptimal (sevenConfig a h b c d e f P Q)) ∧
      (InOpenSquare P → InOpenSquare Q → minTriangleArea (sevenConfig a h b c d e f P Q) < A₀) := by
  sorry

/-- **Corollary** (application of `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2` in
`hand/UNRESTRICTED.md` §4, "Eight or seven boundary points", lines 128-140). A configuration of
family `N` with exactly seven boundary contacts and no corner has least area strictly below `A₀`:
the seventh contact lies on the right or top side (a third contact on a side gives a zero
triangle); after rotating the singleton side to the top, the projection condition puts its
contact between the two bottom contacts, a horizontal reflection gives `f ≤ 1/2`, and Theorem 2
applies with both remaining free points interior.
Uses: SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2. -/
theorem theorem2_nConfig {a h b c d f : ℝ} {X Y Z : Point} (hN : NAnchors a h b c d f)
    (h7 : ExactlySevenContacts X Y Z) :
    minTriangleArea (nConfig a h b c d f X Y Z) < A₀ := by
  sorry

end Heilbronn.SevenBoundaryMixedAboveCompletion
