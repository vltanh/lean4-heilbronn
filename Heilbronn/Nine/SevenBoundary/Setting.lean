module

public import Heilbronn.Nine.Setup.Families

/-! # The normalized seven-boundary form (shared setting)

The common setting of the seven-boundary case: seven anchors on the boundary of the square,

`A = (0,a)`, `H = (0,h)`, `B = (b,0)`, `C = (c,0)`, `D = (1,d)`, `E = (1,e)`, `F = (f,1)`,

with the open-side orders `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, the projection
condition `b ≤ f ≤ c` and, after the reflection `x ↦ 1 - x`, `f ≤ 1/2`. This normal form is the
hypothesis of `SevenBoundaryMixedAboveCompletion.minTriangleArea_le_A₀`. The two free points `P, Q` are
arbitrary points of the closed square. The anchors, in counterclockwise order, are
`A, B, C, D, E, F, H`; they span the *anchor heptagon*.

Definitions:

* `SevenAnchors`, `SevenNormal`: the anchor conditions;
* `sevenConfig a h b c d e f P Q`: the nine points in the order `A, H, B, C, D, E, F, P, Q`;
  `sevenConfig₁ a h b c d e f X`: the seven anchors and one free point `X` (eight points);
  `sevenAnchorConfig a h b c d e f`: the seven anchors alone;
* `InClosedTriangle X A B C`: `X` in the closed counterclockwise triangle `ABC`;
* `InHeptagon`: strictly inside the anchor heptagon;
* the four exterior caps: `InLowerLeftCap` (`conv{(0,0),A,B}`), `InLowerRightCap`
  (`conv{(1,0),C,D}`), `InNearUpperCap` (`conv{H,F,(0,1)}`) and `InFarUpperCap`
  (`conv{F,E,(1,1)}`);
* the exterior case (one free point beyond `EF`): `FarCapPoint e f X` and the exterior octagon
  `exteriorOctagon a h b c d e f X = A, B, C, D, E, X, F, H`.

The standing hypothesis "every triangle has area at least `7/128`" (every doubled area at least
`s = 7/64`) is written `7/128 ≤ minTriangleArea (sevenConfig a h b c d e f P Q)`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.SevenBoundary

/-! ### Anchor conditions -/

/-- The anchor conditions: open-side orders `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`
and the projection condition `b ≤ f ≤ c`. -/
def SevenAnchors (a h b c d e f : ℝ) : Prop :=
  0 < a ∧ a < h ∧ h < 1 ∧ 0 < b ∧ b < c ∧ c < 1 ∧ 0 < d ∧ d < e ∧ e < 1 ∧ b ≤ f ∧ f ≤ c

/-- The normalized seven-boundary form: the anchor conditions and the reflection normalization
`f ≤ 1/2`; this is the hypothesis of `SevenBoundaryMixedAboveCompletion.minTriangleArea_le_A₀`. -/
def SevenNormal (a h b c d e f : ℝ) : Prop :=
  SevenAnchors a h b c d e f ∧ f ≤ 1 / 2

/-! ### Configurations -/

/-- The nine points of the seven-boundary form, in the order `A, H, B, C, D, E, F, P, Q`
(indices `0, …, 8`). -/
def sevenConfig (a h b c d e f : ℝ) (P Q : Point) : Fin 9 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1), P, Q]

/-- The seven anchors and one free point `X`, in the order `A, H, B, C, D, E, F, X`: the
sub-configuration of `sevenConfig` used by results about a single free point. -/
def sevenConfig₁ (a h b c d e f : ℝ) (X : Point) : Fin 8 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1), X]

/-- The seven anchors alone, in the order `A, H, B, C, D, E, F`: the sub-configuration used by
bounds that involve only anchor triangles. -/
def sevenAnchorConfig (a h b c d e f : ℝ) : Fin 7 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1)]

/-! ### Regions -/

/-- `X` lies in the closed triangle `ABC`, whose vertices are counterclockwise. -/
def InClosedTriangle (X A B C : Point) : Prop :=
  0 ≤ sarea A B X ∧ 0 ≤ sarea B C X ∧ 0 ≤ sarea C A X

/-- `X` lies strictly inside the anchor heptagon `A B C D E F H` (counterclockwise): strictly to
the left of each of its seven directed edges. -/
def InHeptagon (a h b c d e f : ℝ) (X : Point) : Prop :=
  0 < sarea (0, a) (b, 0) X ∧ 0 < sarea (b, 0) (c, 0) X ∧ 0 < sarea (c, 0) (1, d) X ∧
    0 < sarea (1, d) (1, e) X ∧ 0 < sarea (1, e) (f, 1) X ∧ 0 < sarea (f, 1) (0, h) X ∧
    0 < sarea (0, h) (0, a) X

/-- The lower-left exterior cap `conv{(0,0), A, B}` (closed). -/
def InLowerLeftCap (a b : ℝ) (X : Point) : Prop :=
  InClosedTriangle X (0, 0) (b, 0) (0, a)

/-- The lower-right exterior cap `conv{(1,0), C, D}` (closed). -/
def InLowerRightCap (c d : ℝ) (X : Point) : Prop :=
  InClosedTriangle X (c, 0) (1, 0) (1, d)

/-- The nearer upper exterior cap `conv{H, F, (0,1)}` (closed). -/
def InNearUpperCap (h f : ℝ) (X : Point) : Prop :=
  InClosedTriangle X (0, h) (f, 1) (0, 1)

/-- The far upper exterior cap `conv{F, E, (1,1)}` (closed). -/
def InFarUpperCap (e f : ℝ) (X : Point) : Prop :=
  InClosedTriangle X (f, 1) (1, e) (1, 1)

/-! ### The exterior case -/

/-- `X` is a free point strictly beyond `EF` in the far upper exterior cap and off the right
side: `X = (g,k)` with `f < g < 1`, `e < k ≤ 1` and `[F E X] > 0` (the exterior case). -/
def FarCapPoint (e f : ℝ) (X : Point) : Prop :=
  f < X.1 ∧ X.1 < 1 ∧ e < X.2 ∧ X.2 ≤ 1 ∧ 0 < sarea (f, 1) (1, e) X

/-- The exterior octagon `V₀, …, V₇ = A, B, C, D, E, X, F, H` (counterclockwise), the hull of the
seven anchors and a far-cap point `X`. -/
def exteriorOctagon (a h b c d e f : ℝ) (X : Point) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), X, (f, 1), (0, h)]

end Heilbronn.Nine.SevenBoundary
