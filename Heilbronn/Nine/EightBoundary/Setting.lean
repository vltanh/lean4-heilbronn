module

public import Heilbronn.Nine.Setup.Families

/-! # The eight-boundary normal form (`docs/proof/nine/EIGHT_BOUNDARY.md`, §1)

Definitions shared by `Heilbronn/Nine/EightBoundary/*.lean`, `Heilbronn/Nine/EightBoundary/RadialCatalogue.lean`
and `Heilbronn/Nine/EightBoundary/R6Bound.lean`: the coordinate form (`EIGHT_BOUNDARY.md` lines 33–50) of a
nondegenerate configuration with eight boundary points,

`A = (0,a)`, `B = (b,0)`, `C = (c,0)`, `D = (1,d)`, `E = (1,e)`, `F = (f,1)`, `G = (g,1)`,
`H = (0,h)`, with `0 < a < h < 1`, `0 < b < c < 1`, `0 < d < e < 1`, `0 < g < f < 1`
(`EightAnchors`), and the ninth point `O = (x,y)` in the open square (`InOpenSquare`). The labels
are counterclockwise starting from the lower left-side point; as octagon vertices
`V₀, …, V₇ = A, …, H` (`octagon`). The nine points are `eightConfig`, in the order
`A, B, C, D, E, F, G, H, O` of `optimalConfiguration`.

Also the boundary of the square and its four open sides, used by `EIGHT_BOUNDARY:Lemma1`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine.EightBoundary

/-- The strict side orders of the eight-boundary normal form: `0 < a < h < 1`, `0 < b < c < 1`,
`0 < d < e < 1`, `0 < g < f < 1`. -/
def EightAnchors (a b c d e f g h : ℝ) : Prop :=
  0 < a ∧ a < h ∧ h < 1 ∧ 0 < b ∧ b < c ∧ c < 1 ∧ 0 < d ∧ d < e ∧ e < 1 ∧
    0 < g ∧ g < f ∧ f < 1

/-- `p` lies in the open square `(0,1)²`. -/
def InOpenSquare (p : Point) : Prop :=
  0 < p.1 ∧ p.1 < 1 ∧ 0 < p.2 ∧ p.2 < 1

/-- The boundary octagon `V₀, …, V₇ = A, B, C, D, E, F, G, H` (counterclockwise). -/
def octagon (a b c d e f g h : ℝ) : Fin 8 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, 1), (0, h)]

/-- The nine points `A, B, C, D, E, F, G, H, O` of the eight-boundary normal form. -/
def eightConfig (a b c d e f g h : ℝ) (O : Point) : Fin 9 → Point :=
  ![(0, a), (b, 0), (c, 0), (1, d), (1, e), (f, 1), (g, 1), (0, h), O]

/-! ### The boundary of the square -/

/-- `p` lies on the boundary of the unit square. -/
def OnSquareBoundary (p : Point) : Prop :=
  p ∈ unitSquare ∧ (p.1 = 0 ∨ p.1 = 1 ∨ p.2 = 0 ∨ p.2 = 1)

/-- `p` is a corner of the unit square. -/
def IsCorner (p : Point) : Prop :=
  (p.1 = 0 ∨ p.1 = 1) ∧ (p.2 = 0 ∨ p.2 = 1)

/-- `p` lies on the open left side `{0} × (0,1)`. -/
def OnLeftSide (p : Point) : Prop := p.1 = 0 ∧ 0 < p.2 ∧ p.2 < 1

/-- `p` lies on the open bottom side `(0,1) × {0}`. -/
def OnBottomSide (p : Point) : Prop := p.2 = 0 ∧ 0 < p.1 ∧ p.1 < 1

/-- `p` lies on the open right side `{1} × (0,1)`. -/
def OnRightSide (p : Point) : Prop := p.1 = 1 ∧ 0 < p.2 ∧ p.2 < 1

/-- `p` lies on the open top side `(0,1) × {1}`. -/
def OnTopSide (p : Point) : Prop := p.2 = 1 ∧ 0 < p.1 ∧ p.1 < 1

end Heilbronn.Nine.EightBoundary
