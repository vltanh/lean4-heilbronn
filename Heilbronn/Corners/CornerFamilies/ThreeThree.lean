module

public import Heilbronn.Corners.CornerFamilies.Mesh

/-! # Corner families, §12: the three-upper-point class (`hand/CORNER_FAMILIES.md`,
lines 1169–1459)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). In the physical frame
of §11 (`A = (0,0)`, `B = (0,1)`, `C = (1,1)`, labelled distributed upper triple `X, Y, Z`), the
line `BY` splits the lower points into the A-side (`D(B,Y,R) ≤ -s`) and the C-side
(`D(B,Y,R) ≥ s`); each side holds at most one lower point, which excludes the `3+3` class.

The A-side argument (feasible triangle (37)–(39), bounds (40)–(45)) is stated with the rectangle
parameters `s, L, M` of §11 (see `Mesh.lean`), since `ONE_CORNER.md` §4 reuses it with a displaced
base and, by the reflection across `x + y = 1`, for the other side of `BY`. The C-side argument
is the manuscript's own (after the reflection making `u ≥ h`, i.e. `u + v ≥ 1`), at `s = 7/64`.

**Results.** `claim_C_side_capacity_one`, `claim_A_side_capacity_one`, the polynomial facts
`eq41` and `eq45` (reused verbatim by `ONE_CORNER.md` (9)–(10)), `typeIII_3plus3`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- The polynomial `N(γ, ρ)` of (45). -/
def polyN (γ ρ : ℝ) : ℝ :=
  49 * γ ^ 3 + 448 * γ ^ 2 * ρ + 749 * γ ^ 2 + 350 * γ * ρ ^ 2 - 2248 * γ * ρ + 252 * γ -
    49 * ρ ^ 3 + 252 * ρ ^ 2 + 252 * ρ - 49

/-- **Claim** (`CORNER_FAMILIES:claim-C-side-capacity-one`): with every area greater than `7/128`
(doubled threshold `s = 7/64`), after the reflection making `u ≥ h` (`u + v ≥ 1`), two lower
points of the square cannot both be C-side points (`D(B,Y,R) ≥ s`): the six points
`B, C, Y, X, R, S` lie in the container `BCD`; a nontriangular hull contradicts the
nontriangular-hull lemma, a triangular hull `BCT` gives `(Γ + 1)s ≤ 1`, false.
`hand/CORNER_FAMILIES.md`, lines 1178–1232.

Uses: CORNER_FAMILIES:NontriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem -/
theorem claim_C_side_capacity_one (X Y Z R₁ R₂ : Point)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (huh : 1 ≤ Y.1 + Y.2)
    (hR₁ : R₁ ∈ unitSquare) (hR₂ : R₂ ∈ unitSquare) (hl₁ : R₁.2 < R₁.1) (hl₂ : R₂.2 < R₂.1)
    (hmin : 7 / 128 < minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R₁, R₂]) :
    ¬ (7 / 64 ≤ sarea (0, 1) Y R₁ ∧ 7 / 64 ≤ sarea (0, 1) Y R₂) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-A-side-capacity-one`), with the rectangle parameters of
`ONE_CORNER.md` §4 (CORNER_FAMILIES: `L = M = 1`, `s = 7/64`): two lower points `R₁, R₂` of the
rectangle `[0, L] × [1 - M, 1]` (`L, M ≥ 1`, `7/64 · L ≤ s`, `7/64 · M ≤ s`), with all doubled
areas of the eight points at least `s`, cannot both be A-side points (`D(B,Y,R) ≤ -s`): the
A-side points lie in the feasible triangle (37), and every triangle formed by `Z` and two of its
points has doubled area `< s` by (39)–(45). `hand/CORNER_FAMILIES.md`, lines 1234–1447.

Uses: CORNER_FAMILIES:UniformSigns, CORNER_FAMILIES:QuantitativeMeshLemma,
CORNER_FAMILIES:SixPointTriangularHullTheorem (19) -/
theorem claim_A_side_capacity_one (X Y Z R₁ R₂ : Point) (s L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hsL : 7 / 64 * L ≤ s) (hsM : 7 / 64 * M ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR₁ : R₁ ∈ rectangle L M)
    (hR₂ : R₂ ∈ rectangle L M) (hl₁ : R₁.2 < R₁.1) (hl₂ : R₂.2 < R₂.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R₁, R₂]) :
    ¬ (sarea (0, 1) Y R₁ ≤ -s ∧ sarea (0, 1) Y R₂ ≤ -s) := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-A-side-capacity-one`), equation (41): for `ρ = Q/s > 0`,
`(17/8)(64/7 - 21/5 - ρ - 17/(5ρ))/(ρ + 6/5) < 1`, equivalently
`875ρ² - 2605ρ + 2023 > 0` (discriminant `-294475`). `hand/CORNER_FAMILIES.md`,
lines 1306–1323. -/
theorem eq41 (ρ : ℝ) (hρ : 0 < ρ) :
    17 / 8 * (64 / 7 - 21 / 5 - ρ - 17 / (5 * ρ)) / (ρ + 6 / 5) < 1 ∧
      0 < 875 * ρ ^ 2 - 2605 * ρ + 2023 := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:claim-A-side-capacity-one`), equation (45): the polynomial
`N(γ, ρ)` is positive for `γ ≥ 6/5` and `1 ≤ ρ ≤ 96/35`. `hand/CORNER_FAMILIES.md`,
lines 1369–1426. -/
theorem eq45 (γ ρ : ℝ) (hγ : 6 / 5 ≤ γ) (hρ : 1 ≤ ρ) (hρ' : ρ ≤ 96 / 35) : 0 < polyN γ ρ := by
  sorry

/-- **Type-III exclusion, `3+3` class** (`CORNER_FAMILIES:TypeIII-3+3`): a Type-III configuration
with exactly three free points above `y = x` has minimum area at most `7/128` (`< A₀`).
`hand/CORNER_FAMILIES.md`, lines 59–68, 1169–1459.

Uses: CORNER_FAMILIES:UpperTripleRestriction, CORNER_FAMILIES:QuantitativeMeshLemma,
CORNER_FAMILIES:UniformSigns, CORNER_FAMILIES:claim-C-side-capacity-one,
CORNER_FAMILIES:claim-A-side-capacity-one -/
theorem typeIII_3plus3 (U V W X Y Z : Point) (hU : U ∈ unitSquare) (hV : V ∈ unitSquare)
    (hW : W ∈ unitSquare) (hX : X ∈ unitSquare) (hY : Y ∈ unitSquare) (hZ : Z ∈ unitSquare)
    (h3 : upperCount U V W X Y Z = 3) :
    minTriangleArea (typeIIIConfig U V W X Y Z) ≤ 7 / 128 := by
  sorry

end Heilbronn.CornerFamilies
