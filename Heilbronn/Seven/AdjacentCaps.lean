module

public import Heilbronn.Common.Families
public import Heilbronn.Seven.TopCapRadial

/-! # Two complete adjacent-cap orientations with seven boundary contacts (`hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md`)

**Role.** Primary-route component: it closes the two exterior R1 words centred on the right and
left paired contacts (blocks `(1,1)` and `(6,6)`), via
`SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION:claim-four-R1-words` and
`SEVEN_BOUNDARY_EXTERIOR_COMPLETION:Theorem1` (lines 32–33).

**Setting (Theorem 1).** Sharp octagon labels `A, …, H` with one top vertex displaced inward:
`A=(0,a), B=(b,0), C=(c,0), D=(1,d), E=(1,e), H=(0,h)` with the usual strict side orders
(`EightBoundary.EightAnchors a b c d e f g h`, which also gives `0 < g < f < 1`), and either
`F = (f,k)`, `G = (g,1)` with `0 < k ≤ 1` (family 1, `displacedF`), or `F = (f,1)`, `G = (g,k)`
with `e ≤ k ≤ 1` (family 2, `displacedG`). The ninth point `O` is inside the octagon, outside its
four closed side quadrilaterals, and inside both triangles `BDE` and `DEG` (`AdjacentCapsHyp`).
All doubled areas at least `s = 7/64`.

**Results.**
* `claim_Z_lt_5_7` (§1, (2)): the scalar bound `Z < 5/7`;
* `theorem1`: both displaced families are impossible (some area `< 7/128`);
* `claim_two_R1_words` (§4): the exterior R1 words `(3,2,3,2,5,4,5,4)` (X plays the sharp `F`,
  family 1) and `(5,4,5,4,3,2,3,2)` (after `(x,y) ↦ (1-x,y)` with labels `V_{3-i}`, X plays `G`
  with `k > h = e'`, family 2) give some area `< 7/128`.

Implicit in the manuscript: "the cyclic hull and stated containments fix all area signs" (line
16): the octagon `A, B, C, D, E, F, G, H` is strictly convex in this order (`IsConvexPolygon`),
stated as a hypothesis.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.SevenBoundaryAdjacentCaps

open SevenBoundary RadialCatalogue

/-- The sharp octagon with `F = (f,k)` displaced inward (family 1):
`A, B, C, D, E, (f,k), (g,1), H`. -/
def displacedF (a b c d e f g h k : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, k), (g, 1), (0, h)]

/-- The sharp octagon with `G = (g,k)` displaced inward (family 2):
`A, B, C, D, E, (f,1), (g,k), H`. -/
def displacedG (a b c d e f g h k : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, k), (0, h)]

/-- The common hypotheses on a displaced sharp octagon `V = A, …, H` and the ninth point `O`
(`SEVEN_BOUNDARY_ADJACENT_CAPS.md` lines 3–8, `SEVEN_BOUNDARY_ADJACENT_CAPS_COMPLETION.md` lines
11–14): the octagon is strictly convex in this cyclic order, `O` is strictly inside it, outside
its four closed side quadrilaterals, and strictly inside the triangles `BDE` and `DEG`. -/
def AdjacentCapsHyp (V : Fin 8 → Point) (O : Point) : Prop :=
  IsConvexPolygon V ∧ InPolygon V O ∧ OutsideSideQuads V O ∧
    InTriangle O (V 1) (V 3) (V 4) ∧ InTriangle O (V 3) (V 4) (V 6)

/-- **Claim** (`SEVEN_BOUNDARY_ADJACENT_CAPS:claim-Z<5/7`). With `s = 7/64`: if `0 < Z < 1`,
`B₀, T > 0`, `Z + s/B₀ + s/T ≤ 1` and `B₀, T ≤ 1 - s/Z - s`, then `Z < 5/7`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md`, lines 34–53.
Uses: none. -/
theorem claim_Z_lt_5_7 {Z B₀ T : ℝ} (hZ : 0 < Z) (hZ1 : Z < 1) (hB : 0 < B₀) (hT : 0 < T)
    (hbud : Z + 7 / 64 / B₀ + 7 / 64 / T ≤ 1) (hB₀ : B₀ ≤ 1 - 7 / 64 / Z - 7 / 64)
    (hT₀ : T ≤ 1 - 7 / 64 / Z - 7 / 64) :
    Z < 5 / 7 := by
  set K := 1 - 7 / 64 / Z - 7 / 64 with hK
  have hK0 : 0 < K := by linarith
  have h1 : 7 / 64 / K ≤ 7 / 64 / B₀ := div_le_div_of_nonneg_left (by norm_num) hB hB₀
  have h2 : 7 / 64 / K ≤ 7 / 64 / T := div_le_div_of_nonneg_left (by norm_num) hT hT₀
  have h3 : 2 * (7 / 64) ≤ (1 - Z) * K := by
    have : 2 * (7 / 64) / K ≤ 1 - Z := by
      rw [show 2 * (7 / 64) / K = 7 / 64 / K + 7 / 64 / K by ring]; linarith
    rw [div_le_iff₀ hK0] at this; linarith
  have hKZ : K * Z = Z - 7 / 64 - 7 / 64 * Z := by rw [hK]; field_simp
  have h4 : 2 * (7 / 64) * Z ≤ (1 - Z) * (Z - 7 / 64 - 7 / 64 * Z) := by
    rw [← hKZ]; nlinarith
  by_contra hc; push Not at hc
  nlinarith

/-- **Theorem 1** (`SEVEN_BOUNDARY_ADJACENT_CAPS:Theorem1`). With the usual strict side orders,
`O` inside the (convex) octagon, outside its four side quadrilaterals and inside `BDE ∩ DEG`, some
triangle has area less than `7/128` in each family: (1) `F = (f,k)`, `G = (g,1)`, `0 < k ≤ 1`;
(2) `F = (f,1)`, `G = (g,k)`, `e ≤ k ≤ 1`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md`, lines 10–187.
Uses: SEVEN_BOUNDARY_ADJACENT_CAPS:claim-Z<5/7. -/
theorem theorem1 {a b c d e f g h k : ℝ} (hA : EightBoundary.EightAnchors a b c d e f g h)
    {O : Point} :
    (0 < k → k ≤ 1 → AdjacentCapsHyp (displacedF a b c d e f g h k) O →
        minTriangleArea (octConfig (displacedF a b c d e f g h k) O) < 7 / 128) ∧
      (e ≤ k → k ≤ 1 → AdjacentCapsHyp (displacedG a b c d e f g h k) O →
        minTriangleArea (octConfig (displacedG a b c d e f g h k) O) < 7 / 128) := by
  sorry

/-- **Claim** (`SEVEN_BOUNDARY_ADJACENT_CAPS:claim-two-R1-words`). In the seven-boundary exterior
case (octagon `A, B, C, D, E, X, F, H`), the radial words `(3,2,3,2,5,4,5,4)` and
`(5,4,5,4,3,2,3,2)` of `P` give some triangle of area less than `7/128`.
`hand/SEVEN_BOUNDARY_ADJACENT_CAPS.md`, lines 189–220.
Uses: SEVEN_BOUNDARY_ADJACENT_CAPS:Theorem1, SEVEN_BOUNDARY_TOP_CAP_RIGHT:claim-k-gt-h,
SEVEN_BOUNDARY_TOP_CAP_RADIAL:claim-octagon-cover, RADIAL_CATALOGUE:claim-symmetry-action. -/
theorem claim_two_R1_words {a h b c d e f g k : ℝ} (hN : SevenNormal a h b c d e f)
    (hX : FarCapPoint e f (g, k)) {P : Point} (hP : InHeptagon a h b c d e f P) {w : Word}
    (hw : IsRadialWord (exteriorOctagon a h b c d e f (g, k)) P w)
    (hw' : w = ![3, 2, 3, 2, 5, 4, 5, 4] ∨ w = ![5, 4, 5, 4, 3, 2, 3, 2]) :
    minTriangleArea (sevenConfig a h b c d e f (g, k) P) < 7 / 128 := by
  sorry

end Heilbronn.SevenBoundaryAdjacentCaps
