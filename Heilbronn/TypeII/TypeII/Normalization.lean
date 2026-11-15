module

public import Heilbronn.TypeII.TypeII.Basic

/-! # Type II: the shear normalization and the count reduction (`hand/TYPE_II.md`, §§2–5)

`TYPE_II.md` lines 187–403. Every positive Type-II configuration is area-equivalent to a
Type-III configuration or to a Type-II configuration with `b ≤ 1/2` (§2). For a configuration of
least area `t ≥ A₀` with `b ≤ 1/2`, the counts `(ℓ, c, r)` of the six points other than `D, C, B`
in the three containers are one of five triples (§3), the triple `(2,1,3)` is impossible (§4),
and the four remaining rows carry the parameter ranges of §5.

Results:

* `shearNormalization` (**Shear normalization**, (6));
* `eq7`: `2A₀ > 7/64 > 1/10`;
* `claim_container_assignment` and `eq8`: each free point is in exactly one container, and
  `ℓ + c + r = 6`;
* `claim_count_bounds`: `c ≤ 3`, `ℓ ≤ 2`, `r ≤ 3`, hence five triples;
* `claim_exclude_213`: the class `(2,1,3)` does not occur;
* `claim_scope_four_rows`: the parameter ranges of the four remaining rows (§5).

The standing hypothesis of §§3–5 is "the minimum area `t` is at least `A₀`" (line 241), written
`A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)`, with `s = 2t`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeII

/-- **Shear normalization** (`TYPE_II:ShearNormalization`). Every Type-II configuration of
positive least area is area-equivalent (a shear `(x,y) ↦ (x + τ(1-y), y)` of determinant one
followed by the reflection `x ↦ 1 - x`, and a relabelling) to a Type-III configuration or to a
Type-II configuration with `b ≤ 1/2`, (6). `hand/TYPE_II.md`, lines 187–237.

Implicit in the manuscript: the Type-III alternative is reached after a symmetry of the square
(three occupied corners), which is again an affine map of determinant `±1`. -/
theorem shearNormalization (P : Fin 9 → Point) (hP : IsTypeII P)
    (hpos : 0 < minTriangleArea P) :
    ∃ Q, AreaEquiv P Q ∧ (IsTypeIII Q ∨ IsTypeIIHalf Q) := by
  sorry

/-- **Equation (7)** (`TYPE_II:eq7`). `2A₀ > 7/64 > 1/10` (by `18²·65 - 145² = 35 > 0`).
`hand/TYPE_II.md`, lines 241–249. -/
theorem eq7 : (7 / 64 : ℝ) < 2 * A₀ ∧ (1 / 10 : ℝ) < 7 / 64 := by
  sorry

/-- **Claim** (`TYPE_II:claim-container-assignment`, made up). In a Type-II configuration of
positive least area, every free point is a left, a central or a right point (a point on `DB`,
`BC` or `DC` would make a zero-area triangle with its endpoints; points on the outer square
edges belong to their side container). `hand/TYPE_II.md`, lines 251–268.

Implicit in the manuscript: "no point on `DC`" (it would be collinear with `D, C`). -/
theorem claim_container_assignment {l b : ℝ} {V W X Y Z : Point}
    (hd : TypeIIData l b V W X Y Z)
    (hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z)) (i : Fin 5) :
    IsLeft b (freePts V W X Y Z i) ∨ IsCentral b (freePts V W X Y Z i) ∨
      IsRight b (freePts V W X Y Z i) := by
  sorry

/-- **Equation (8)** (`TYPE_II:eq8`). `E` is a left point, and `ℓ + c + r = 6`.
`hand/TYPE_II.md`, lines 264–272.

Uses: TYPE_II:claim-container-assignment. -/
theorem eq8 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hpos : 0 < minTriangleArea (typeIIConfig l b V W X Y Z)) :
    IsLeft b (ptE l) ∧
      (typeIICounts b V W X Y Z).1 + (typeIICounts b V W X Y Z).2.1 +
        (typeIICounts b V W X Y Z).2.2 = 6 := by
  sorry

/-- **Claim** (`TYPE_II:claim-count-bounds`). With least area at least `A₀` and `b ≤ 1/2`:
`c ≤ 3` (four central points contradict the seven-point triangular-hull bound), `ℓ ≤ 2` (three
free points in `T_L` give `s ≤ kb < 1/10` by (1)), `r ≤ 3` (the six-point bounds of
`CORNER_FAMILIES.md` §§6, 8 in `T_R`, with `b ≥ s` from `DBE`). Together with (8) exactly five
triples remain. `hand/TYPE_II.md`, lines 274–298.

Uses: CORNER_FAMILIES:TriangularHullLemma, TYPE_II:EndpointTriangleTheorem,
CORNER_FAMILIES:NontriangularHullLemma, CORNER_FAMILIES:SixPointTriangularHullTheorem,
TYPE_II:eq7, TYPE_II:eq8. -/
theorem claim_count_bounds {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    (typeIICounts b V W X Y Z).2.1 ≤ 3 ∧ (typeIICounts b V W X Y Z).1 ≤ 2 ∧
      (typeIICounts b V W X Y Z).2.2 ≤ 3 ∧
      typeIICounts b V W X Y Z ∈
        ({(1, 2, 3), (1, 3, 2), (2, 1, 3), (2, 2, 2), (2, 3, 1)} : Finset (ℕ × ℕ × ℕ)) := by
  sorry

/-- **Claim** (`TYPE_II:claim-exclude-213`). The count class `(2,1,3)` is impossible at least
area `A₀` (with `b ≤ 1/2`): the left hull is the triangle `DBE`, the right five-point hull is not
triangular, and the actual triangle `BEQ` with the contact `Q` of the right support triangle
`BCR'` gives `s ≤ 1/(1 + 2√(3/k)) < 7/64`, (9)–(12). `hand/TYPE_II.md`, lines 302–383.

Uses: TYPE_II:FourPointEndpointLemma, CORNER_FAMILIES:TwoInteriorPointLemma,
TYPE_II:claim-support-normalization, TYPE_II:EndpointTriangleTheorem, TYPE_II:eq7. -/
theorem claim_exclude_213 {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    typeIICounts b V W X Y Z ≠ (2, 1, 3) := by
  sorry

/-- **Claim** (`TYPE_II:claim-scope-four-rows`). After §4, with `s = 2t` the doubled least area
and `0 < b ≤ 1/2`, the counts are one of four rows, with the necessary ranges
`(1,2,3)`: `s ≤ b ≤ 1 - s/k`; `(1,3,2)`: `s ≤ b ≤ 1/2`; `(2,2,2)` and `(2,3,1)`:
`3s ≤ b ≤ 1/2`. `hand/TYPE_II.md`, lines 385–403.

Uses: TYPE_II:claim-count-bounds, TYPE_II:claim-exclude-213, TYPE_II:EndpointTriangleTheorem,
TYPE_II:FourPointEndpointLemma. -/
theorem claim_scope_four_rows {l b : ℝ} {V W X Y Z : Point} (hd : TypeIIData l b V W X Y Z)
    (hb2 : b ≤ 1 / 2) (hmin : A₀ ≤ minTriangleArea (typeIIConfig l b V W X Y Z)) :
    let s := 2 * minTriangleArea (typeIIConfig l b V W X Y Z)
    (typeIICounts b V W X Y Z = (1, 2, 3) ∧ s ≤ b ∧ b ≤ 1 - s / kEnd) ∨
      (typeIICounts b V W X Y Z = (1, 3, 2) ∧ s ≤ b ∧ b ≤ 1 / 2) ∨
      (typeIICounts b V W X Y Z = (2, 2, 2) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2) ∨
      (typeIICounts b V W X Y Z = (2, 3, 1) ∧ 3 * s ≤ b ∧ b ≤ 1 / 2) := by
  sorry

end Heilbronn.TypeII
