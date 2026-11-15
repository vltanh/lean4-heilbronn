module

public import Heilbronn.Corners.CornerFamilies.SixPoint
public import Heilbronn.Corners.FourCorners

/-! # Corner families, §9: the near-square quadrilateral and the `2+4` class
(`hand/CORNER_FAMILIES.md`, lines 727–860)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). A projective map with
controlled area factor (the "controlled projective transfer") sends a quadrilateral
`ABCR`, `A = (0,0)`, `B = (0,1)`, `C = (1,1)`, `R = (1 - ε, η)`, onto the unit square, fixing
`A, B, C` and sending `R` to `D = (1,0)`; with `FOUR_CORNERS.md` this bounds nine points with
hull `ABCR` when `r = 1 - ε - η ≥ 193/200`, and closes the Type-III class with two upper points.

Definitions (23): with `r = 1 - ε - η`, `α = (1 - η)/(1 - ε)`, `g = -η(1 - η)/(r(1 - ε))`,
`h = ε/r`, `e = (1 - η)/r = 1 + h`, the denominator `q(x, y) = 1 + gx + hy` (`nsDenom`) and
`F(x, y) = (αx/q, (gx + ey)/q)` (`projMap`); `nearSquareQuad ε η = conv{A, B, C, R}`.

**Results.** `claim_projMap_vertices`, `claim_projMap_square`, `eq24` (exact area ratio
`det M/(q₁q₂q₃)` with `det M = αe`), `claim_projective_transfer` (the general transfer bound
`4r²/(1 + r)²`), `eq25`, `nearSquareQuadrilateralLemma` (22), `typeIII_2plus4`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-! ### The projective map (23) -/

/-- `α = (1 - η)/(1 - ε)`. -/
def nsAlpha (ε η : ℝ) : ℝ := (1 - η) / (1 - ε)

/-- `g = -η(1 - η)/(r(1 - ε))`, `r = 1 - ε - η`. -/
def nsG (ε η : ℝ) : ℝ := -(η * (1 - η)) / ((1 - ε - η) * (1 - ε))

/-- `h = ε/r`. -/
def nsH (ε η : ℝ) : ℝ := ε / (1 - ε - η)

/-- `e = (1 - η)/r = 1 + h`. -/
def nsE (ε η : ℝ) : ℝ := (1 - η) / (1 - ε - η)

/-- The linear denominator `q(x, y) = 1 + gx + hy` of (23). -/
def nsDenom (ε η : ℝ) (p : Point) : ℝ := 1 + nsG ε η * p.1 + nsH ε η * p.2

/-- The projective map (23): `F(x, y) = (αx/q, (gx + ey)/q)`. -/
def projMap (ε η : ℝ) (p : Point) : Point :=
  (nsAlpha ε η * p.1 / nsDenom ε η p, (nsG ε η * p.1 + nsE ε η * p.2) / nsDenom ε η p)

/-- The quadrilateral `ABCR = conv{(0,0), (0,1), (1,1), (1 - ε, η)}`. -/
def nearSquareQuad (ε η : ℝ) : Set Point :=
  convexHull ℝ ({(0, 0), (0, 1), (1, 1), (1 - ε, η)} : Set Point)

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), lines 763–777: for `ε, η ≥ 0` and
`r = 1 - ε - η > 0`, the denominator takes the values `q(A) = 1`, `q(B) = e`, `q(C) = α`,
`q(R) = 1 - η`, all in `[1 - η, e]`, hence `q ∈ [1 - η, e]` on the quadrilateral; and `F` fixes
`A, B, C` and sends `R` to `(1, 0)`. -/
theorem claim_projMap_vertices (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) :
    nsDenom ε η (0, 0) = 1 ∧ nsDenom ε η (0, 1) = nsE ε η ∧
      nsDenom ε η (1, 1) = nsAlpha ε η ∧ nsDenom ε η (1 - ε, η) = 1 - η ∧
      (∀ p ∈ nearSquareQuad ε η, 1 - η ≤ nsDenom ε η p ∧ nsDenom ε η p ≤ nsE ε η) ∧
      projMap ε η (0, 0) = (0, 0) ∧ projMap ε η (0, 1) = (0, 1) ∧
      projMap ε η (1, 1) = (1, 1) ∧ projMap ε η (1 - ε, η) = (1, 0) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), lines 779–793: `F` maps the
quadrilateral `ABCR` bijectively onto the unit square (`det M = αe > 0`, convex combinations
with weights rescaled by the positive values of `q`). -/
theorem claim_projMap_square (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) :
    Set.BijOn (projMap ε η) (nearSquareQuad ε η) unitSquare := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), equation (24), exact form: for
three points of the quadrilateral, `area(F P₁ F P₂ F P₃) = (det M/(q(P₁)q(P₂)q(P₃))) area(P₁P₂P₃)`
with `det M = αe`, and the factor is at least `α/e² = r²/((1 - ε)(1 - η))`.
`hand/CORNER_FAMILIES.md`, lines 795–804. -/
theorem eq24 (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η) (P₁ P₂ P₃ : Point)
    (h₁ : P₁ ∈ nearSquareQuad ε η) (h₂ : P₂ ∈ nearSquareQuad ε η)
    (h₃ : P₃ ∈ nearSquareQuad ε η) :
    triangleArea (projMap ε η P₁) (projMap ε η P₂) (projMap ε η P₃) =
        nsAlpha ε η * nsE ε η / (nsDenom ε η P₁ * nsDenom ε η P₂ * nsDenom ε η P₃) *
          triangleArea P₁ P₂ P₃ ∧
      (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) ≤
        nsAlpha ε η * nsE ε η / (nsDenom ε η P₁ * nsDenom ε η P₂ * nsDenom ε η P₃) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), the controlled projective
transfer in general form: for `ε, η ≥ 0` with `r = 1 - ε - η > 0`, every triangle with vertices
in `ABCR` has its image under `F` of area at least `4r²/(1 + r)²` times its own (from (24) and
`(1 - ε)(1 - η) = r + εη ≤ (1 + r)²/4`). `hand/CORNER_FAMILIES.md`, lines 795–819.

Uses: CORNER_FAMILIES:NearSquareQuadrilateralLemma (24) -/
theorem claim_projective_transfer (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 0 < 1 - ε - η)
    (P₁ P₂ P₃ : Point) (h₁ : P₁ ∈ nearSquareQuad ε η) (h₂ : P₂ ∈ nearSquareQuad ε η)
    (h₃ : P₃ ∈ nearSquareQuad ε η) :
    4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 * triangleArea P₁ P₂ P₃ ≤
      triangleArea (projMap ε η P₁) (projMap ε η P₂) (projMap ε η P₃) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`), equation (25): for
`r = 1 - ε - η ≥ 193/200`, `r²/((1 - ε)(1 - η)) ≥ 4r²/(1 + r)² ≥ 148996/154449`.
`hand/CORNER_FAMILIES.md`, lines 806–825. -/
theorem eq25 (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η) (hr : 193 / 200 ≤ 1 - ε - η) :
    4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 ≤ (1 - ε - η) ^ 2 / ((1 - ε) * (1 - η)) ∧
      (148996 / 154449 : ℝ) ≤ 4 * (1 - ε - η) ^ 2 / (1 + (1 - ε - η)) ^ 2 := by
  sorry

/-- **Near-square quadrilateral lemma** (`CORNER_FAMILIES:NearSquareQuadrilateralLemma`),
equation (22): nine points whose convex hull is the quadrilateral `ABCR`, `A = (0,0)`,
`B = (0,1)`, `C = (1,1)`, `R = (1 - ε, η)`, with `ε, η ≥ 0` and `r = 1 - ε - η ≥ 193/200`, have
minimum triangle area `t ≤ 154449/2830924 < 7/128`. `hand/CORNER_FAMILIES.md`, lines 731–838.

Uses: CORNER_FAMILIES:NearSquareQuadrilateralLemma (23)–(25), FOUR_CORNERS:Theorem -/
theorem nearSquareQuadrilateralLemma (P : Fin 9 → Point) (ε η : ℝ) (hε : 0 ≤ ε) (hη : 0 ≤ η)
    (hr : 193 / 200 ≤ 1 - ε - η)
    (hhull : convexHull ℝ (Set.range P) =
      convexHull ℝ ({(0, 0), (0, 1), (1, 1), (1 - ε, η)} : Set Point)) :
    minTriangleArea P ≤ 154449 / 2830924 ∧ (154449 / 2830924 : ℝ) < 7 / 128 := by
  sorry

/-- **Type-III exclusion, `2+4` class** (`CORNER_FAMILIES:TypeIII-2+4`): a Type-III configuration
with exactly two free points above `y = x` has minimum area at most `7/128` (`< A₀`): otherwise
the hull is `ABCR` with `r = r_x - r_y ≥ (11 + 3√5)t > 1239/1280 > 193/200`, and (22) gives
`t < 7/128`. `hand/CORNER_FAMILIES.md`, lines 47–57, 840–860.

Uses: CORNER_FAMILIES:claim-2+4-hull, CORNER_FAMILIES:claim-fourth-vertex,
CORNER_FAMILIES:NearSquareQuadrilateralLemma -/
theorem typeIII_2plus4 (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h2 : upperCount U V W X Y Z = 2) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  sorry

end Heilbronn.CornerFamilies
