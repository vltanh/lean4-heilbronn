module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.AdjacentCapsCompletion

/-! # Completion of the seven-boundary exterior case (`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`)

**Role.** Primary route: `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2` (lines 404–412) uses
Theorem 1 for the exterior part of the seven-boundary theorem (`UNRESTRICTED.md` lines 132–140);
`SIX_BOUNDARY_TWO_SIDE_COMPLETION` (line 413) applies it after a projection; its certificate format
is reused by `SEVEN_BOUNDARY_MIXED_LOWER` (line 255).

**Setting.** The exterior case: `SevenNormal a h b c d e f`, one free point `X = (g,k)` strictly
beyond `EF` (`FarCapPoint e f (g, k)`), the companion point `P = (x,y)` strictly inside the anchor
heptagon; the nine points `sevenConfig a h b c d e f (g, k) P`. At minimum area at least `7/128`
the preceding notes give `b > 3/20`, `k > e, h`, the convex hull octagon `A, B, C, D, E, X, F, H`
and `P` outside its four side quadrilaterals. Doubled threshold `s = 7/64` for the 28
certificates, `A₀` for R3.

**Certificate package.** `hand/seven_boundary_exterior_certificates.json` (checker
`hand/check_seven_boundary_exterior_certificates.py`): 28 records, one per radial word outside
`R1 ∪ R3`, indexed by its block pair (`certificateBlocks`, `certificateWords`); variables
`(a,h,b,c,d,e,f,g,k,x,y)`; terms are positive multiples (`w/4096`) of products of at most three
of the 23 affine factors `l₀, …, l₂₂` of §2 (nonnegative by `claim_common_bounds`) and of the
area costs `q_t = ε_t [V_iV_jV_k] - s` (nonnegative by convexity of the octagon and the radial
word, (11)); each expansion has monomial bound `≤ -3/4` on `[0,1]^11` (4,113 terms in all). Here
only the geometric conclusion is stated (`claim_certificates`).

**Results.**
* `claim_common_bounds` (§1, (2)–(10)): the rational bounds on the anchors, `X` and `P` shared by
  every remaining word;
* `claim_certificate_cover` (§4): the 36 catalogue words are the R1 words, the R3 words and the 28
  certificate words;
* `claim_certificates` (§3): each of the 28 certificate words gives some area `< 7/128`;
* `theorem1`: every exterior configuration has minimum area at most `A₀`; equality forces `k = 1`
  and the construction; every non-R3 radial word gives `< 7/128`.

FLAG (overstatement, line 298): "one of exactly 36 radial words" — the cover gives at most 36
(realizability is not claimed); the statements here use only the cover.
Implicit in the manuscript: Theorem 1's hypotheses are spread over five notes (lines 12–22); here
Theorem 1 assumes only the exterior case (`SevenNormal`, `FarCapPoint`, `P` in the heptagon), the
form in which `SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION:Theorem2` applies it after
`SEVEN_BOUNDARY_CAPS:claim-exterior-reduction`; the derived conditions are proved in
`SEVEN_BOUNDARY_TOP_CAP` and `SEVEN_BOUNDARY_TOP_CAP_RIGHT`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryExteriorCompletion

open SevenBoundary RadialCatalogue

/-- The block pairs (1-based, first block `(k₀,k₁,k₄,k₅)`, second `(k₂,k₃,k₆,k₇)`) of the 28
certificate records (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md` lines 263–278, the `blocks` fields of
`hand/seven_boundary_exterior_certificates.json`). -/
def certificateBlocks : List (ℕ × ℕ) :=
  [(1, 2), (1, 4), (1, 5), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (3, 1), (3, 2), (3, 3),
    (3, 4), (3, 5), (4, 2), (4, 3), (4, 4), (4, 5), (4, 6), (5, 1), (5, 2), (5, 3), (5, 4),
    (5, 5), (5, 6), (6, 2), (6, 3), (6, 5)]

/-- The 28 radial words closed by certificates. -/
def certificateWords : List Word :=
  certificateBlocks.map fun p => ofBlocks p.1 p.2

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-common-bounds`). In the exterior case at
minimum area at least `7/128`, with `P = (x,y)` and `s = 7/64`:
(2) `e - d < 5/7`, `c, g < 271/320`; (3) `a, d > 5/32`, `e < 27/32`; (4) `h < 237/272`;
(5) `e - d < 11/16`, `c, g < 37/44`, `h - a < 23/32`, `b > 7/46`; (6) `h, e > 33/64`;
(7) `g - f > 9/40`, `k - e > 1/8`; (8) the `AD`, `HE`, `BF`, `CX` side tests
`y - a - (d-a)x ≥ s`, `h + (e-h)x - y ≥ s`, `x - b - (f-b)y ≥ s`, `k(c-x) + (g-c)y ≥ s`;
(9) `17/64 < y < 49/64`, `k - y > s`; (10) `x - b ≥ s`, `x < 3/4`.
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 41–162.
Uses: SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:Theorem, SEVEN_BOUNDARY_TOP_CAP:Theorem1,
SEVEN_BOUNDARY_TOP_CAP:Theorem2, SEVEN_BOUNDARY_TOP_CAP:Theorem3. -/
theorem claim_common_bounds {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P)
    (hmin : 7 / 128 ≤ minTriangleArea (sevenConfig a h b c d e f (g, k) P)) :
    (e - d < 5 / 7 ∧ c < 271 / 320 ∧ g < 271 / 320) ∧
      (5 / 32 < a ∧ 5 / 32 < d ∧ e < 27 / 32) ∧
      h < 237 / 272 ∧
      (e - d < 11 / 16 ∧ c < 37 / 44 ∧ g < 37 / 44 ∧ h - a < 23 / 32 ∧ 7 / 46 < b) ∧
      (33 / 64 < h ∧ 33 / 64 < e) ∧
      (9 / 40 < g - f ∧ 1 / 8 < k - e) ∧
      (7 / 64 ≤ P.2 - a - (d - a) * P.1 ∧ 7 / 64 ≤ h + (e - h) * P.1 - P.2 ∧
        7 / 64 ≤ P.1 - b - (f - b) * P.2 ∧ 7 / 64 ≤ k * (c - P.1) + (g - c) * P.2) ∧
      (17 / 64 < P.2 ∧ P.2 < 49 / 64 ∧ 7 / 64 < k - P.2) ∧
      (7 / 64 ≤ P.1 - b ∧ P.1 < 3 / 4) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificate-cover`). The 28 certificate
words are exactly the catalogue words outside the orbits R1 and R3: every catalogue word is in R1,
in R3, or a certificate word, and no certificate word is in R1 or R3 (`4 + 28 + 4 = 36`).
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 260–278, 302–307.
Uses: RADIAL_CATALOGUE:claim-eight-classes. -/
theorem claim_certificate_cover :
    (∀ w ∈ catalogue, InClass .R1 w ∨ InClass .R3 w ∨ w ∈ certificateWords) ∧
      (∀ w ∈ certificateWords, w ∈ catalogue ∧ ¬ InClass .R1 w ∧ ¬ InClass .R3 w) ∧
      certificateWords.length = 28 := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificates`). In the exterior case, if
the radial word of `P` with respect to the octagon `A, B, C, D, E, X, F, H` is one of the 28
certificate words, some triangle has area less than `7/128` (certificate package
`hand/seven_boundary_exterior_certificates.json`).
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 164–292.
Uses: SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-common-bounds,
SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-b-gt-3/20,
SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h, RADIAL_CATALOGUE:claim-encoding. -/
theorem claim_certificates {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : w ∈ certificateWords) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

/-- **Theorem 1** (`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1`). Every configuration of the
seven-boundary exterior case has minimum triangle area at most `A₀ = (9√65 - 55)/320`; equality
forces `k = 1` and the known eight-boundary configuration up to square symmetry and relabelling;
and every radial word of `P` outside class R3 gives minimum area strictly below `7/128`.
`hand/SEVEN_BOUNDARY_EXTERIOR_COMPLETION.md`, lines 24–39, 294–312.
Uses: SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover,
SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-four-R1-words,
SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificate-cover,
SEVEN_BOUNDARY_EXTERIOR_COMPLETION:claim-certificates, SEVEN_BOUNDARY_TOP_CAP_RADIAL:Theorem1,
RADIAL_CATALOGUE:claim-eight-classes. -/
theorem theorem1 {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) ≤ A₀ ∧
      (minTriangleArea (sevenConfig a h b c d e f (g, k) P) = A₀ →
        k = 1 ∧ IsOptimal (sevenConfig a h b c d e f (g, k) P)) ∧
      (∀ w : Word, IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w → ¬ InClass .R3 w →
        minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128) := by
  sorry

end Heilbronn.SevenBoundaryExteriorCompletion
