module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.AdjacentCaps

/-! # Completion of all four exterior adjacent-cap words (`hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md`)

**Role.** Primary-route component: it closes the two exterior R1 words centred on the bottom and
top paired positions (blocks `(1,6)` and `(6,1)`) and assembles all four R1 words for
`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1` (lines 32–33, 302).

**Setting (Theorem 1).** The sharp octagon labels of `SEVEN_BOUNDARY_ADJACENT_CAPS.md` with a side
vertex displaced horizontally: `A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), F=(f,1), G=(g,1),
H=(0,h)` with the usual strict side orders (`EightBoundary.EightAnchors a b c d e f g h`), and
either `H = (t,h)` with `0 ≤ t ≤ b`, `a ≤ 1/2` (family 1, `displacedH`), or `D = (1-t,d)` with
`t ≥ 0`, `e ≥ 1/2` (family 2, `displacedD`); the cyclic hull order is `A, …, H`. The ninth point
`O` satisfies `AdjacentCapsHyp` (inside the convex octagon, outside its four side quadrilaterals,
inside `BDE ∩ DEG`). All doubled areas at least `s = 7/64`.

**Results.**
* `claim_R_lt_5_7` (§1, (2)): the scalar bound `R < 5/7`;
* `theorem1`: both displaced families are impossible (some area `< 7/128`);
* `claim_four_R1_words` (§4): every exterior word of class R1 gives some area `< 7/128`
  (`(3,2,5,4,5,4,3,2)` by `(x,y) ↦ (1-y,x)` with labels `V_{i+6}`, `H' = (1-k,g)`;
  `(5,4,3,2,3,2,5,4)` by `(x,y) ↦ (y,1-x)` with labels `V_{i+2}`, `D' = (k,1-g)`; the other two
  by `SEVEN_BOUNDARY_ADJACENT_CAPS:claim-two-R1-words`).

Implicit in the manuscript: as in `SEVEN_BOUNDARY_ADJACENT_CAPS.md`, the octagon is strictly
convex in the stated cyclic order and `O` is inside it ("the interior point `O`", line 11).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryAdjacentCapsCompletion

open SevenBoundary RadialCatalogue SevenBoundaryAdjacentCaps

/-- The sharp octagon with `H = (t,h)` moved horizontally (family 1):
`A, B, C, D, E, F, G, (t,h)`. -/
def displacedH (a b c d e f g h t : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, 1), (t, h)]

/-- The sharp octagon with `D = (1-t,d)` moved horizontally (family 2):
`A, B, C, (1-t,d), E, F, G, H`. -/
def displacedD (a b c d e f g h t : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1 - t, d), (1, e), (f, 1), (g, 1), (0, h)]

/-- **Claim** (`SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-R<5/7`). With `s = 7/64` and
`u = s/L`: if `0 < L < 1`, `0 < R < 1`, `B, T > 0`, `R + s/B + s/T ≤ 1` and
`B + T ≤ 2K₀` with `K₀ = 1 - u - s/R`, then `R < 5/7`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md`, lines 28–57.
Uses: standard fact (harmonic-mean inequality). -/
theorem claim_R_lt_5_7 {L R B T : ℝ} (hL : 0 < L) (hL1 : L < 1) (hR : 0 < R) (hR1 : R < 1)
    (hB : 0 < B) (hT : 0 < T) (hbud : R + 7 / 64 / B + 7 / 64 / T ≤ 1)
    (hBT : B + T ≤ 2 * (1 - 7 / 64 / L - 7 / 64 / R)) :
    R < 5 / 7 := by
  sorry

/-- **Theorem 1** (`SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:Theorem1`). With the usual strict side
orders and `O` as in `AdjacentCapsHyp`, some triangle has area less than `7/128` in each family:
(1) `H = (t,h)` with `0 ≤ t ≤ b` and `a ≤ 1/2`; (2) `D = (1-t,d)` with `t ≥ 0` and `e ≥ 1/2`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md`, lines 16–206.
Uses: SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-R<5/7. -/
theorem theorem1 {a b c d e f g h t : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    {O : Point} :
    (0 ≤ t → t ≤ b → a ≤ 1 / 2 → AdjacentCapsHyp (displacedH a b c d e f g h t) O →
        minTriangleArea (octConfig (displacedH a b c d e f g h t) O) < 7 / 128) ∧
      (0 ≤ t → 1 / 2 ≤ e → AdjacentCapsHyp (displacedD a b c d e f g h t) O →
        minTriangleArea (octConfig (displacedD a b c d e f g h t) O) < 7 / 128) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-four-R1-words`). In the
seven-boundary exterior case (octagon `A, B, C, D, E, X, F, H`), every radial word of `P` in class
R1 gives some triangle of area less than `7/128`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md`, lines 208–233.
Uses: SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:Theorem1,
SEVEN_BOUNDARY_ADJACENT_CAPS:claim-two-R1-words, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h,
SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover, RADIAL_CATALOGUE:claim-symmetry-action,
RADIAL_CATALOGUE:claim-eight-classes. -/
theorem claim_four_R1_words {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w) (hc : InClass .R1 w) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

end Heilbronn.SevenBoundaryAdjacentCapsCompletion
