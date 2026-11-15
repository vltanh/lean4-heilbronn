module

public import Heilbronn.TypeII.TypeIICompletion.Balanced
public import Heilbronn.TypeII.TypeIICompletion.ParameterBound

/-! # The alternating balanced placement (`hand/TYPE_II_COMPLETION.md`, §§8–10)

`TYPE_II_COMPLETION.md` lines 792–1298. After Corollary 5 the balanced row is the quadrilateral
`D, E, R, C` (`R = (r,u)`, `v = 1 - u`) with one interior point in each diagonal sector, `L` at
`DE` and `P` at `CD`.

* `secondShear`, `claim_second_shear` (§8.1, (26)): the determinant-one shear followed by a
  reflection, `(x,y) ↦ (1 - x - τ(1-y), y)`, `τ = (1-r)/v`, sending `C, D, R, B` to new Type-II
  anchors `(0,1), (1,1), (0,u), (b',0)`, `b' = g/v ∈ (0,1)`, and keeping the configuration in the
  square;
* `theorem8` (**Theorem 8**): the assignment `S` at `ER`, `Q` at `RC` is impossible;
* `claim_containing_triangles` ((30)–(31)), `theorem9` (**Theorem 9**): in the remaining
  `FinalPlacement`, `Q` is not above both `ES` (the `D` side) and `LR` (the `C` side);
  `claim_one_sided` (§9.3): the one-sided consequences;
* `theorem10` (**Theorem 10**): `Q` is not above `ES` and below `LR`.

Sides: "`Q` above `ES`" is `0 < sarea (ptE l) S Q`, "`Q` above `LR`" is `0 < sarea L R Q`.
Thresholds: Theorems 9 and 10 work at doubled threshold `7/64` given the `FinalPlacement`;
Theorem 8 needs least area `A₀` (see its FLAG).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Heilbronn.TypeII Heilbronn.TypeIIBalanced

/-- The second supporting shear and reflection (26), `(x,y) ↦ (1 - x - τ(1-y), y)` with
`τ = (1-r)/(1-u)`, an affine map of determinant `-1`. -/
def secondShear (r u : ℝ) : Point → Point :=
  affineMap (-1) ((1 - r) / (1 - u)) 0 1 (1 - (1 - r) / (1 - u)) 0

/-- **Claim** (`TYPE_II_COMPLETION:claim-second-shear`, made up). In the balanced placement with
triangular right hull (`S` inside `BCR`, `R = (r,u)`) and `u > 0`: the map (26) negates every
signed area (so it keeps unsigned areas and exchanges the left and right containers), sends
`C, D, R, B` to `(0,1), (1,1), (0,u), (b',0)` with `b' = 1 - b - τ = g/v ∈ (0,1)`,
`g = r - b - (1-b)u`, and keeps all nine points in the square (the full hull is `D, C, R, B, E`).
`hand/TYPE_II_COMPLETION.md`, lines 805–848.

Implicit in the manuscript: the square membership of the sheared configuration (asserted from the
hull `D, C, R, B, E`, lines 837–842); for `u = 0` the image is a Type-III configuration (line
815), not covered here. -/
theorem claim_second_shear {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC) (hu : 0 < R.2) :
    let ψ := secondShear R.1 R.2
    let b' := 1 - b - (1 - R.1) / (1 - R.2)
    (∀ X Y Z : Point, sarea (ψ X) (ψ Y) (ψ Z) = -sarea X Y Z) ∧
      ψ ptC = ptD ∧ ψ ptD = ptC ∧ ψ R = ptE R.2 ∧ ψ (ptB b) = ptB b' ∧
      b' = (R.1 - b - (1 - b) * R.2) / (1 - R.2) ∧ 0 < b' ∧ b' < 1 ∧
      ψ (ptE l) ∈ unitSquare ∧ ψ L ∈ unitSquare ∧ ψ P ∈ unitSquare ∧ ψ Q ∈ unitSquare ∧
      ψ S ∈ unitSquare := by
  sorry

-- FLAG: Theorem 8 is written in the setting "s = 7/64" of §§5–8, but its proof uses
-- `TYPE_II_BALANCED.md` §6 (proved at doubled threshold 79/720, with `ONE_CORNER.md`, which
-- needs least area > 7/128) on the sheared configuration, and the Type-III exclusion of
-- `CORNER_FAMILIES.md` for `u = 0`; it is stated at least area `A₀`, as in Theorem 11.
/-- **Theorem 8** (`TYPE_II_COMPLETION:Theorem8`). In the alternating balanced placement of
Corollary 5, the assignment with `S` in the sector at `ER` and `Q` in the sector at `RC` is
impossible: some triangle has area less than `A₀`. After the second shear (26), (27) gives
`1/2 < b' ≤ 1 - b`; if the new line `PQ` keeps `B', E'` together, `b' ≤ B(1) = 177/448` (§8.2);
otherwise the chamber polynomial `G(b', v)` is positive on four parameter rectangles (§§8.3–8.4).
`hand/TYPE_II_COMPLETION.md`, lines 792–1005.

FLAG (threshold): stated at least area `A₀`, see the comment above.

Uses: TYPE_II_COMPLETION:Corollary5, TYPE_II_COMPLETION:claim-second-shear,
CORNER_FAMILIES:TypeIII-complete, TYPE_II_BALANCED:claim-not-both-above-CE,
TYPE_II:claim-PQ-line-table, TYPE_II:claim-chamber-general, TYPE_II_COMPLETION:eq25. -/
theorem theorem8 {l b : ℝ} {L P Q R S : Point} (hpl : BalancedPlacement l b L P Q R S)
    (hS : InTriangle S (ptB b) R ptC)
    (hLs : DiagSector ptD (ptE l) R ptC L) (hPs : DiagSector ptC ptD (ptE l) R P)
    (hSs : DiagSector (ptE l) R ptC ptD S) (hQs : DiagSector R ptC ptD (ptE l) Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < A₀ := by
  sorry

/-- **Claim** (`TYPE_II_COMPLETION:claim-containing-triangles`, made up; (30)–(31)). In the final
placement, `L` lies strictly inside `DES`, and `S` strictly inside `CLR` (counterclockwise
`C, L, R`); if `Q` is above `ES` then also `Q ∈ int(DES)` (30); if `Q` is above `LR` then also
`Q ∈ int(CLR)` (31). `hand/TYPE_II_COMPLETION.md`, lines 1025–1063.

Implicit in the manuscript: (31) is proved through the shear (26), which needs only
`0 < b' < 1`; equivalently by reading the diagonal sectors directly (line 1063). -/
theorem claim_containing_triangles {l b : ℝ} {L P Q R S : Point}
    (hfp : FinalPlacement l b L P Q R S) :
    InTriangle L ptD (ptE l) S ∧ InTriangle S ptC L R ∧
      (0 < sarea (ptE l) S Q → InTriangle Q ptD (ptE l) S) ∧
      (0 < sarea L R Q → InTriangle Q ptC L R) := by
  sorry

/-- **Theorem 9** (`TYPE_II_COMPLETION:Theorem9`). In the final placement, at doubled threshold
`s = 7/64`, `Q` cannot be above both `ES` and `LR`: the two-interior bounds on `DES` and `CLR`
(32) give `q, v > 1 - s`, contradicting `[EBR] ≥ s`. `hand/TYPE_II_COMPLETION.md`,
lines 1007–1116.

Uses: TYPE_II_COMPLETION:claim-containing-triangles, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem theorem9 {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : 0 < sarea (ptE l) S Q ∧ 0 < sarea L R Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  sorry

/-- **Claim** (`TYPE_II_COMPLETION:claim-one-sided`, made up; §9.3). In the final placement at
doubled threshold `s = 7/64`, with `q = 1 - λ`, `R = (r,u)`, `v = 1 - u`: if `Q` is above `ES`
then `q > 1 - s`, `λ < s`, `u > s`, `v < 1 - s`; if `Q` is above `LR` then `v > 1 - s`, `u < s`,
`λ > s`, `q < 1 - s`. `hand/TYPE_II_COMPLETION.md`, lines 1118–1137.

Uses: TYPE_II_COMPLETION:claim-containing-triangles, CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_one_sided {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    (0 < sarea (ptE l) S Q →
        1 - 7 / 64 < 1 - l ∧ l < 7 / 64 ∧ 7 / 64 < R.2 ∧ 1 - R.2 < 1 - 7 / 64) ∧
      (0 < sarea L R Q →
        1 - 7 / 64 < 1 - R.2 ∧ R.2 < 7 / 64 ∧ 7 / 64 < l ∧ 1 - l < 1 - 7 / 64) := by
  sorry

/-- **Theorem 10** (`TYPE_II_COMPLETION:Theorem10`). In the final placement, at doubled threshold
`s = 7/64`, `Q` cannot be above `ES` and below `LR`: `Q` is inside `BRL`, the barycentric weights
give (33), and the rational bounds `h ≤ 35607/77824` (37), `H ≤ 363/1024` (38) make
`Φ(H₀, h₀) = -47171/79691776 < 0`. `hand/TYPE_II_COMPLETION.md`, lines 1140–1298.

Uses: TYPE_II_COMPLETION:claim-one-sided, TYPE_II_COMPLETION:claim-containing-triangles,
TYPE_II_COMPLETION:Corollary5 (`v ≥ Ks`; here from `P, S ∈ DCR`). -/
theorem theorem10 {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : 0 < sarea (ptE l) S Q ∧ sarea L R Q < 0) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  sorry

end Heilbronn.TypeIICompletion
