module

public import Heilbronn.Common.Families

/-! # Five points in a triangle with two prescribed vertices (`hand/TYPE_II.md`, Section 1)

The general-form endpoint-triangle results of `TYPE_II.md` §1 (lines 32–185). They involve no
Type-II anchor: a triangle `UVW` (of area `S`) contains the points, and `U, V` are two of them.
Many other notes use them in this general form (the N, C1, six- and seven-boundary notes, the
unbalanced Type-II notes), including the intermediate per-cell bounds and containments of the
support normalization; these are therefore stated separately.

Definitions:

* the constants `kEnd = 3 - 2√2` (`k` of (1)), `Ktwo = 4 + 2√3` (the two-interior-point
  constant `K` of `CORNER_FAMILIES.md` §7), `Γsix = (11 + 3√5)/2` (`Γ` of `CORNER_FAMILIES.md`
  §8);
* `TriangularHull P`: the convex hull of the points `P` is the closed triangle of three of them;
* `IsSupportTriangle U V W H F X`: `UVW` is a counterclockwise support triangle over the base
  `UV` of the five points `U, V, H, F, X`, with the contact `H` in the open leg `UW`, the contact
  `F` in the open leg `VW`, and `X` in the closed triangle (`TYPE_II.md` lines 58–66, from
  `CORNER_FAMILIES.md` §6);
* the half-square normal form `A = (0,0)`, `E = (1,1)`, `H = (0,h)`, `F = (f,1)`, `X`
  (`hsA`, `hsE`, `hsH`, `hsF`, `hsConfig`, `halfSquare`, `HSNormal`; lines 68–78);
* the five support cells `InCellI`, …, `InCellV` of the fifth point, by the signs of
  `L = [UFX]`, `K = [VHX]`, `N = [HFX]` (lines 80–113). In the normal form `U = A`, `V = E` these
  are the `L = fw - βx`, `K = h(1-x) - w`, `N = fw + (h-β)x - fh` of the manuscript, with
  `X = (x, x+w)` and `β = 1 - f`; since the normalization has positive determinant, the same
  signs can be read in the original coordinates.

Results:

* `endpointTriangleTheorem` (**Endpoint-triangle theorem**, (1)): five points in a triangle of
  area `S` with two of its vertices among them have a triangle of area at most `(3 - 2√2) S`;
* `fourPointEndpointLemma` (**Four-point endpoint lemma**): four such points have a triangle of
  area at most `S/3`, and at most `S/4` when their hull is not a triangle;
* `claim_support_normalization`, `claim_support_affine`: the support triangle and the affine map
  to the half-square normal form;
* `eq2`: the area inequalities and identities (2) of the normal form;
* `claim_five_cells`, `claim_five_cells_reflection`: exactly five sign cells, their strict
  containments, and the reflection `(x,y) ↦ (1-y, 1-x)` exchanging cells I and III;
* the per-cell bounds on the normalized doubled minimum `s`: `claim_cell_I_bound`,
  `claim_cell_III_bound` (`s ≤ 1/(4+2√3)`), `claim_cell_IV_bound` (`s ≤ 1/12`), `eq3` (cell V,
  `s ≤ (5√5-11)/2 < 1/10`), `eq4` (cell II, `s ≤ β(1-β)/(2-β) ≤ k` when `h ≥ β`).

Throughout, "doubled area at least `s`" is `s / 2 ≤ minTriangleArea` of the points concerned.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-! ### Constants -/

/-- `k = 3 - 2√2`, the five-point endpoint constant of `TYPE_II.md` (1). -/
def kEnd : ℝ := 3 - 2 * Real.sqrt 2

/-- `K = 4 + 2√3`: an actual triangle containing two further configuration points has doubled
area at least `K s` (`CORNER_FAMILIES.md` §7, the two-interior-point lemma). -/
def Ktwo : ℝ := 4 + 2 * Real.sqrt 3

/-- `Γ = (11 + 3√5)/2`, the six-point triangular-hull constant of `CORNER_FAMILIES.md` §8. -/
def Γsix : ℝ := (11 + 3 * Real.sqrt 5) / 2

/-! ### Hulls and support triangles -/

/-- The convex hull of the points `P 0, …, P (n-1)` is the closed triangle spanned by three of
them. For four or five points containing two prescribed extreme vertices this is the
"triangular hull" alternative of the manuscripts; its negation is "nontriangular hull". -/
def TriangularHull {n : ℕ} (P : Fin n → Point) : Prop :=
  ∃ i j k : Fin n, ∀ m, P m ∈ convexHull ℝ ({P i, P j, P k} : Set Point)

/-- `UVW` is a support triangle over the base `UV` for the five points `U, V, H, F, X`
(`TYPE_II.md` lines 58–66): it is counterclockwise, the contact `H` lies in the relative
interior of the leg `UW`, the contact `F` in the relative interior of the leg `VW`, and the
fifth point `X` lies in the closed triangle. -/
def IsSupportTriangle (U V W H F X : Point) : Prop :=
  0 < sarea U V W ∧ H ∈ openSegment ℝ U W ∧ F ∈ openSegment ℝ V W ∧
    X ∈ convexHull ℝ ({U, V, W} : Set Point)

/-! ### The half-square normal form -/

/-- The anchor `A = (0,0)` of the half-square normal form. -/
def hsA : Point := (0, 0)

/-- The anchor `E = (1,1)` of the half-square normal form. -/
def hsE : Point := (1, 1)

/-- The contact `H = (0,h)` on the left leg of the half-square. -/
def hsH (h : ℝ) : Point := (0, h)

/-- The contact `F = (f,1)` on the top leg of the half-square. -/
def hsF (f : ℝ) : Point := (f, 1)

/-- The closed half-square `0 ≤ x ≤ y ≤ 1`, the triangle `(0,0), (1,1), (0,1)` of area `1/2`. -/
def halfSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ p.2 ∧ p.2 ≤ 1}

/-- The five points `A, E, H, F, X` of the half-square normal form (`TYPE_II.md` (lines 71–74)). -/
def hsConfig (h f : ℝ) (X : Point) : Fin 5 → Point := ![hsA, hsE, hsH h, hsF f, X]

/-- The parameter conditions of the normal form: `0 < h, f < 1` and `X` in the half-square. -/
def HSNormal (h f : ℝ) (X : Point) : Prop :=
  0 < h ∧ h < 1 ∧ 0 < f ∧ f < 1 ∧ X ∈ halfSquare

/-! ### The five support cells -/

/-- Cell I, signs `(L, K, N) = (+, +, -)` with `L = [UFX]`, `K = [VHX]`, `N = [HFX]`
(`TYPE_II.md` line 105): `X ∈ AHF ∩ AEH`. -/
def InCellI (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ 0 < sarea V H X ∧ sarea H F X < 0

/-- Cell II, signs `(-, +, -)` (line 106): `X ∈ AEF ∩ AEH`. -/
def InCellII (U V H F X : Point) : Prop :=
  sarea U F X < 0 ∧ 0 < sarea V H X ∧ sarea H F X < 0

/-- Cell III, signs `(-, -, -)` (line 107): `X ∈ EHF ∩ AEF`. -/
def InCellIII (U V H F X : Point) : Prop :=
  sarea U F X < 0 ∧ sarea V H X < 0 ∧ sarea H F X < 0

/-- Cell IV, signs `(+, -, -)` (line 108): `X ∈ AHF ∩ EHF`. -/
def InCellIV (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ sarea V H X < 0 ∧ sarea H F X < 0

/-- Cell V, signs `(+, -, +)` (line 109): `X` lies above `HF`. -/
def InCellV (U V H F X : Point) : Prop :=
  0 < sarea U F X ∧ sarea V H X < 0 ∧ 0 < sarea H F X

/-! ### The endpoint theorems -/

/-- **Endpoint-triangle theorem** (`TYPE_II:EndpointTriangleTheorem`). If five points lie in a
closed triangle `UVW` and two vertices `U, V` of the triangle are among them, some triangle
spanned by the five points has area at most `k S = (3 - 2√2) · area(UVW)`, equation (1).
`hand/TYPE_II.md`, lines 34–173.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma, TYPE_II:claim-support-normalization,
TYPE_II:claim-support-affine, TYPE_II:eq2, TYPE_II:claim-five-cells, TYPE_II:claim-cell-I-bound,
TYPE_II:claim-cell-III-bound, TYPE_II:claim-cell-IV-bound, TYPE_II:eq3, TYPE_II:eq4. -/
theorem endpointTriangleTheorem (U V W X Y Z : Point)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point)) (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hZ : Z ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y, Z] ≤ kEnd * triangleArea U V W := by
  sorry

/-- **Four-point endpoint lemma** (`TYPE_II:FourPointEndpointLemma`). Four points in a closed
triangle `UVW` of area `S`, including the two vertices `U, V`, have minimum triangle area at most
`S/3`; if their hull is not a triangle, at most `S/4`. `hand/TYPE_II.md`, lines 175–185.

Uses: TYPE_II:claim-support-affine, TYPE_II:eq2. -/
theorem fourPointEndpointLemma (U V W X Y : Point)
    (hX : X ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hY : Y ∈ convexHull ℝ ({U, V, W} : Set Point)) :
    minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 3 ∧
      (¬ TriangularHull ![U, V, X, Y] →
        minTriangleArea ![U, V, X, Y] ≤ triangleArea U V W / 4) := by
  sorry

/-! ### The support normalization -/

/-- **Claim** (`TYPE_II:claim-support-normalization`). Five points `U, V, X₁, X₂, X₃` in a
counterclockwise triangle `UVW`, with positive minimum area and nontriangular hull, have a support
triangle `UVW'` over the base `UV` of doubled area at most that of `UVW`, whose two leg contacts
are two of the `Xᵢ` and whose remaining point is the third (`TYPE_II.md` lines 58–66: the
construction of `CORNER_FAMILIES.md` §6 with the two prescribed vertices as base endpoints; it
needs no sixth point). `hand/TYPE_II.md`, lines 58–66.

Implicit in the manuscript: the container is oriented counterclockwise (swap `U, V` otherwise);
the support triangle lies inside the container, so its area is at most `S`.

Uses: CORNER_FAMILIES:NontriangularHullLemma (its §6 support-triangle construction). -/
theorem claim_support_normalization {U V W X₁ X₂ X₃ : Point} (hUVW : 0 < sarea U V W)
    (h₁ : X₁ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h₂ : X₂ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (h₃ : X₃ ∈ convexHull ℝ ({U, V, W} : Set Point))
    (hpos : 0 < minTriangleArea ![U, V, X₁, X₂, X₃])
    (hnt : ¬ TriangularHull ![U, V, X₁, X₂, X₃]) :
    ∃ (W' : Point) (σ : Equiv.Perm (Fin 3)),
      IsSupportTriangle U V W' (![X₁, X₂, X₃] (σ 0)) (![X₁, X₂, X₃] (σ 1)) (![X₁, X₂, X₃] (σ 2)) ∧
        sarea U V W' ≤ sarea U V W := by
  sorry

/-- **Claim** (`TYPE_II:claim-support-affine`). For a support triangle `UVW'` with contacts
`H, F` and fifth point `X`, the affine map sending `U, V, W'` to `(0,0), (1,1), (0,1)` has
determinant `1 / [UVW']` (so it divides every doubled area by `[UVW']`), and sends the five points
to the half-square normal form `A, E, (0,h), (f,1), X'` with `0 < h, f < 1` and `X'` in the
half-square. Hence the original minimum area is `s S'`, `s` the normalized doubled minimum and
`S'` the area of `UVW'`. `hand/TYPE_II.md`, lines 68–78. -/
theorem claim_support_affine {U V W H F X : Point} (hS : IsSupportTriangle U V W H F X) :
    ∃ (a b c d e g h₀ f₀ : ℝ), a * d - b * c = 1 / sarea U V W ∧
      affineMap a b c d e g U = hsA ∧ affineMap a b c d e g V = hsE ∧
      affineMap a b c d e g W = (0, 1) ∧ affineMap a b c d e g H = hsH h₀ ∧
      affineMap a b c d e g F = hsF f₀ ∧ HSNormal h₀ f₀ (affineMap a b c d e g X) := by
  sorry

/-! ### The normal form: inequalities (2) and the five cells -/

/-- **Equation (2)** (`TYPE_II:eq2`). In the half-square normal form with every doubled area at
least `s > 0`, writing `X = (x, x + w)`, `α = 1 - h`, `β = 1 - f`,
`L = fw - βx`, `K = h(1-x) - w`, `N = fw + (h-β)x - fh`:
`w, hx, β(1-x-w) ≥ s`, `|L|, |K|, |N| ≥ s`, `hf, αβ ≥ s`, `√(hf) + √(αβ) ≤ 1`, and
`N = -fK - αβx = αL - hf(1-x-w)`. `hand/TYPE_II.md`, lines 80–99.

Uses: OPPOSITE_CORNERS:eq2, OPPOSITE_CORNERS:eq5, OPPOSITE_CORNERS:eq6, OPPOSITE_CORNERS:eq7. -/
theorem eq2 {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X)) :
    s ≤ X.2 - X.1 ∧ s ≤ h * X.1 ∧ s ≤ (1 - f) * (1 - X.2) ∧
      s ≤ |f * (X.2 - X.1) - (1 - f) * X.1| ∧ s ≤ |h * (1 - X.1) - (X.2 - X.1)| ∧
      s ≤ |f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h| ∧
      s ≤ h * f ∧ s ≤ (1 - h) * (1 - f) ∧
      Real.sqrt (h * f) + Real.sqrt ((1 - h) * (1 - f)) ≤ 1 ∧
      f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h =
        -f * (h * (1 - X.1) - (X.2 - X.1)) - (1 - h) * (1 - f) * X.1 ∧
      f * (X.2 - X.1) + (h - (1 - f)) * X.1 - f * h =
        (1 - h) * (f * (X.2 - X.1) - (1 - f) * X.1) - h * f * (1 - X.2) := by
  sorry

/-- **Claim** (`TYPE_II:claim-five-cells`). In the half-square normal form with positive
doubled areas, the fifth point lies in exactly one of the five sign cells I–V (the identities (2)
exclude the other three sign patterns), with the strict containments of the table: I in
`AHF ∩ AEH`, II in `AEF ∩ AEH`, III in `EHF ∩ AEF`, IV in `AHF ∩ EHF`, V above `HF`.
(The counterclockwise orders are `A F H`, `A E H`, `A E F`, `E F H`.) `hand/TYPE_II.md`,
lines 101–113.

Uses: TYPE_II:eq2. -/
theorem claim_five_cells {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X)) :
    (InCellI hsA hsE (hsH h) (hsF f) X ∨ InCellII hsA hsE (hsH h) (hsF f) X ∨
      InCellIII hsA hsE (hsH h) (hsF f) X ∨ InCellIV hsA hsE (hsH h) (hsF f) X ∨
      InCellV hsA hsE (hsH h) (hsF f) X) ∧
    (InCellI hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA (hsF f) (hsH h) ∧ InTriangle X hsA hsE (hsH h)) ∧
    (InCellII hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA hsE (hsF f) ∧ InTriangle X hsA hsE (hsH h)) ∧
    (InCellIII hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsE (hsF f) (hsH h) ∧ InTriangle X hsA hsE (hsF f)) ∧
    (InCellIV hsA hsE (hsH h) (hsF f) X →
      InTriangle X hsA (hsF f) (hsH h) ∧ InTriangle X hsE (hsF f) (hsH h)) ∧
    (InCellV hsA hsE (hsH h) (hsF f) X → 0 < sarea (hsH h) (hsF f) X) := by
  sorry

/-- **Claim** (`TYPE_II:claim-five-cells`, reflection). The reflection `(x,y) ↦ (1-y, 1-x)`
fixes the half-square, exchanges `A` and `E`, sends `F = (f,1)` to `(0, 1-f)` and `H = (0,h)` to
`(1-h, 1)` (so it exchanges `h` with `β = 1 - f`), keeps every unsigned area, exchanges cells I
and III and preserves cell II. `hand/TYPE_II.md`, lines 111–113. -/
theorem claim_five_cells_reflection (h f : ℝ) (X : Point) :
    let ρ : Point → Point := affineMap 0 (-1) (-1) 0 1 1
    ρ hsA = hsE ∧ ρ hsE = hsA ∧ ρ (hsF f) = hsH (1 - f) ∧ ρ (hsH h) = hsF (1 - h) ∧
      (X ∈ halfSquare → ρ X ∈ halfSquare) ∧
      (InCellI hsA hsE (hsH h) (hsF f) X ↔ InCellIII hsA hsE (hsH (1 - f)) (hsF (1 - h)) (ρ X)) ∧
      (InCellII hsA hsE (hsH h) (hsF f) X ↔
        InCellII hsA hsE (hsH (1 - f)) (hsF (1 - h)) (ρ X)) := by
  sorry

/-! ### Per-cell bounds on the normalized doubled minimum -/

/-- **Claim** (`TYPE_II:claim-cell-I-bound`, made up). In cell I, subdivision of `AHF` gives
`hf ≥ 3s`, and with `αβ ≥ s`, (2) gives `s ≤ 1/(√3+1)² = 1/(4+2√3) < k`.
`hand/TYPE_II.md`, lines 115–120.

Uses: TYPE_II:claim-five-cells, TYPE_II:eq2. -/
theorem claim_cell_I_bound {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellI hsA hsE (hsH h) (hsF f) X) :
    3 * s ≤ h * f ∧ s ≤ 1 / Ktwo := by
  sorry

/-- **Claim** (`TYPE_II:claim-cell-III-bound`, made up). Cell III is the reflected case of cell
I: `αβ ≥ 3s` and `s ≤ 1/(4+2√3)`. `hand/TYPE_II.md`, line 122.

Uses: TYPE_II:claim-five-cells (reflection), TYPE_II:claim-cell-I-bound. -/
theorem claim_cell_III_bound {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellIII hsA hsE (hsH h) (hsF f) X) :
    3 * s ≤ (1 - h) * (1 - f) ∧ s ≤ 1 / Ktwo := by
  sorry

/-- **Claim** (`TYPE_II:claim-cell-IV-bound`, made up). In cell IV both products `hf, αβ` are at
least `3s`, giving `s ≤ 1/12`. `hand/TYPE_II.md`, lines 122–123.

Uses: TYPE_II:claim-five-cells, TYPE_II:eq2. -/
theorem claim_cell_IV_bound {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellIV hsA hsE (hsH h) (hsF f) X) :
    s ≤ 1 / 12 := by
  sorry

/-- **Equation (3)** (`TYPE_II:eq3`). In cell V, with `β = 1 - f`,
`s ≤ hβ(1-h)(1-β)/(h+β-hβ) ≤ (5√5 - 11)/2 < 1/10`. `hand/TYPE_II.md`, lines 125–139.

Uses: OPPOSITE_CORNERS:eq8, TYPE_II:eq2. -/
theorem eq3 {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellV hsA hsE (hsH h) (hsF f) X) :
    s ≤ h * (1 - f) * (1 - h) * f / (h + (1 - f) - h * (1 - f)) ∧
      s ≤ (5 * Real.sqrt 5 - 11) / 2 ∧ (5 * Real.sqrt 5 - 11) / 2 < 1 / 10 := by
  sorry

/-- **Equation (4)** (`TYPE_II:eq4`). In cell II, if `h ≥ β = 1 - f` then
`s ≤ β(1-β)/(2-β)`; in every case (reflecting if necessary) `s ≤ k = 3 - 2√2`.
`hand/TYPE_II.md`, lines 141–171.

Uses: TYPE_II:eq2, TYPE_II:claim-five-cells (reflection). -/
theorem eq4 {h f s : ℝ} {X : Point} (hN : HSNormal h f X) (hs : 0 < s)
    (hmin : s / 2 ≤ minTriangleArea (hsConfig h f X))
    (hX : InCellII hsA hsE (hsH h) (hsF f) X) :
    (1 - f ≤ h → s ≤ (1 - f) * f / (1 + f)) ∧ s ≤ kEnd := by
  sorry

end Heilbronn.TypeII
