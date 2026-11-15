module

public import Heilbronn.TypeII.TypeIICompletion.Balanced

/-! # Excluding the right mixed cell in balanced Type II (`hand/BALANCED_RIGHT_MIXED.md`)

Closes the "below `ES`, on the `C` side of `LR`" cell of the final balanced placement of
`TYPE_II_COMPLETION.md` §§5–8 (`FinalPlacement l b L P Q R S`: `L` at `DE`, `P` at `CD`, `Q` at
`ER`, `S` at `RC` in the quadrilateral `D, E, R, C`), cited by `TYPE_II_COMPLETION.md` §9.3 and
Theorem 11. Doubled threshold `s = 7/64`, `K = 4 + 2√3`, `Ks > 13/16`.

Notation of the note: `R = (r,u)`, `q = 1 - λ`, `v = 1 - u`, `L = (l,h)`, `S = (x,z)`,
`Q = (a,y)` (here `L.1, L.2`, `S.1, S.2`, `Q.1, Q.2`). The cell is
`sarea (ptE l) S Q < 0` (`Q` below `ES`) and `0 < sarea L R Q` (`Q` on the `C` side of `LR`).

Results:

* `claim_containments` ((1)): `Q ∈ int(EBS)` with `A = [EBS] ≥ 3s`; `S, Q ∈ int(CLR)`;
  `L, Q ∈ int(DER)`; hence `qr ≥ Ks` and `v(1-l) - (1-r)(1-h) ≥ Ks`;
* `claim_anchor_bounds` ((2)): `s < λ < 3/16`, `v > 1 - s`, `q < 57/64`, `r > 52/57`,
  `l > 7/57`, `h > 3s`;
* `claim_height_bound` ((3), (7)): `x ≤ 1 - s`, `z ≤ 1 - 2s/(1-b)`, `z - u ≥ 2s`, `y < 47/160`;
* `mainTheorem` (**Theorem**): the right mixed cell is impossible (`ΔLRQ < 10597/97280 < s`).

The point `P` enters only through the placement hypotheses.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.BalancedRightMixed

open Heilbronn.TypeII Heilbronn.TypeIICompletion

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-containments`). In the right mixed cell, at doubled
threshold `s = 7/64`: `Q` is strictly inside `EBS`, so `A = [EBS] = bz + λ(x - b) ≥ 3s`; `S` and
`Q` are strictly inside `CLR` (counterclockwise `C, L, R`); `L` and `Q` are strictly inside `DER`;
and the two-interior bounds give `qr ≥ Ks` and `v(1-l) - (1-r)(1-h) ≥ Ks` (1).
`hand/BALANCED_RIGHT_MIXED.md`, lines 46–95.

Uses: CORNER_FAMILIES:TwoInteriorPointLemma. -/
theorem claim_containments {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    InTriangle Q (ptE l) (ptB b) S ∧ 3 * (7 / 64) ≤ sarea (ptE l) (ptB b) S ∧
      InTriangle S ptC L R ∧ InTriangle Q ptC L R ∧
      InTriangle L ptD (ptE l) R ∧ InTriangle Q ptD (ptE l) R ∧
      Ktwo * (7 / 64) ≤ (1 - l) * R.1 ∧
      Ktwo * (7 / 64) ≤ (1 - R.2) * (1 - L.1) - (1 - R.1) * (1 - L.2) := by
  sorry

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-anchor-bounds`). In the right mixed cell, at doubled
threshold `s = 7/64`: `0 < λ < 3/16`, `v > 1 - s` (`u < s`), `λ > s`, `q < 57/64`, and (2)
`r > 52/57`, `l > 7/57`, `h > 3s`. `hand/BALANCED_RIGHT_MIXED.md`, lines 97–135.

Uses: BALANCED_RIGHT_MIXED:claim-containments. -/
theorem claim_anchor_bounds {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    0 < l ∧ l < 3 / 16 ∧ 1 - 7 / 64 < 1 - R.2 ∧ 7 / 64 < l ∧ 1 - l < 57 / 64 ∧
      52 / 57 < R.1 ∧ 7 / 57 < L.1 ∧ 3 * (7 / 64) < L.2 := by
  sorry

/-- **Claim** (`BALANCED_RIGHT_MIXED:claim-height-bound`). In the right mixed cell, at doubled
threshold `s = 7/64`, with `S = (x,z)`, `Q = (a,y)`: `x ≤ 1 - s`, `z ≤ 1 - 2s/(1-b)` (3),
`z - u ≥ 2s` (so `z > λ`), and the uniform height bound `y < 47/160` (7) (from the barycentric
bound (4) and the cubic (6)). `hand/BALANCED_RIGHT_MIXED.md`, lines 137–239.

Uses: BALANCED_RIGHT_MIXED:claim-containments, BALANCED_RIGHT_MIXED:claim-anchor-bounds. -/
theorem claim_height_bound {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q)
    (hmin : 7 / 128 ≤ minTriangleArea (typeIIConfig l b L P Q R S)) :
    S.1 ≤ 1 - 7 / 64 ∧ S.2 ≤ 1 - 2 * (7 / 64) / (1 - b) ∧ 2 * (7 / 64) ≤ S.2 - R.2 ∧
      l < S.2 ∧ Q.2 < 47 / 160 := by
  sorry

/-- **Theorem** (`BALANCED_RIGHT_MIXED:Theorem`). The right mixed cell — `Q` below `ES` and on the
`C` side of `LR` in the final balanced placement — is impossible at doubled threshold `7/64`:
some triangle has area less than `7/128` (`ΔLRQ < 10597/97280 = s - 43/97280`).
`hand/BALANCED_RIGHT_MIXED.md`, lines 241–289.

Uses: BALANCED_RIGHT_MIXED:claim-anchor-bounds, BALANCED_RIGHT_MIXED:claim-height-bound,
BALANCED_RIGHT_MIXED:claim-containments. -/
theorem mainTheorem {l b : ℝ} {L P Q R S : Point} (hfp : FinalPlacement l b L P Q R S)
    (hcell : sarea (ptE l) S Q < 0 ∧ 0 < sarea L R Q) :
    minTriangleArea (typeIIConfig l b L P Q R S) < 7 / 128 := by
  sorry

end Heilbronn.BalancedRightMixed
