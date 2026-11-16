module

public import Heilbronn.Nine.Setup.Value

/-!
# The five normalized families and the contact properties of a maximizer

`docs/proof/nine/GLOBAL_STRUCTURE.md`, Section 2 and Theorem 3, and `docs/proof/nine/BOUNDARY_REDUCTION.md`: after
area-preserving normalizations, a maximizing configuration lies in one of five families. Each is
given here by its configuration of named points, in a fixed order, with the free points last:

| family | configuration | conditions |
|---|---|---|
| N | `A=(0,a), H=(0,h), B=(b,0), C=(c,0), D=(1,d), F=(f,1)`, then 3 free points | `0<a<h<1`, `0<b<c<1`, `a≤d≤h`, `b≤f≤c` |
| C1 | `O=(0,0), C=(c,0), D=(1,d), F=(f,1), H=(0,h)`, then 4 free points | `0<d≤h<1`, `0<f≤c<1` |
| C2 | `A=(0,0), E=(1,1), H=(0,h), C=(c,0), D=(1,d), F=(f,1)`, then 3 free points | `0<d≤h<1`, `0<f≤c<1` |
| Type II | `D=(0,1), C=(1,1), E=(0,λ), B=(b,0)`, then 5 free points | `0<b<1`, `0<λ<1` |
| Type III | `A=(0,0), B=(0,1), C=(1,1)`, then 6 free points | — |

The labels and orders follow the manuscripts: N and C2 are `GLOBAL_STRUCTURE.md` (2)–(6), C1 is
`UNRESTRICTED.md` §3 (with corner `O`, as in its certificate checkers), Type II is `TYPE_II.md`
(5), Type III is `CORNER_FAMILIES.md` (the three corners `A, B, C`). The free points range over the
whole closed square.

`ContactOverlap P` is the projection-overlap property of `BOUNDARY_REDUCTION.md`: the points on
the bottom side and on the top side have overlapping ranges of `x`-coordinates, and the points on
the left and right sides overlapping ranges of `y`-coordinates (in particular every side is
contacted).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.Nine

/-! ### Family N -/

/-- The conditions on the anchors of family N, `GLOBAL_STRUCTURE.md` (3). -/
def NAnchors (a h b c d f : ℝ) : Prop :=
  0 < a ∧ a < h ∧ h < 1 ∧ 0 < b ∧ b < c ∧ c < 1 ∧ a ≤ d ∧ d ≤ h ∧ b ≤ f ∧ f ≤ c

/-- The configuration of family N: `A, H, B, C, D, F` and the free points `X, Y, Z`. -/
def nConfig (a h b c d f : ℝ) (X Y Z : Point) : Fin 9 → Point :=
  ![(0, a), (0, h), (b, 0), (c, 0), (1, d), (f, 1), X, Y, Z]

/-- `P` is a configuration of family N. -/
def IsN (P : Fin 9 → Point) : Prop :=
  ∃ (a h b c d f : ℝ) (X Y Z : Point), NAnchors a h b c d f ∧
    X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧ P = nConfig a h b c d f X Y Z

/-! ### Family C1: one occupied corner -/

/-- The conditions on the anchors of family C1, `GLOBAL_STRUCTURE.md` (5). -/
def C1Anchors (h c d f : ℝ) : Prop :=
  0 < d ∧ d ≤ h ∧ h < 1 ∧ 0 < f ∧ f ≤ c ∧ c < 1

/-- The configuration of family C1: `O, C, D, F, H` and the free points `W, X, Y, Z`. -/
def c1Config (h c d f : ℝ) (W X Y Z : Point) : Fin 9 → Point :=
  ![(0, 0), (c, 0), (1, d), (f, 1), (0, h), W, X, Y, Z]

/-- `P` is a configuration of family C1. -/
def IsC1 (P : Fin 9 → Point) : Prop :=
  ∃ (h c d f : ℝ) (W X Y Z : Point), C1Anchors h c d f ∧
    W ∈ unitSquare ∧ X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧
    P = c1Config h c d f W X Y Z

/-! ### Family C2: two opposite occupied corners -/

/-- The configuration of family C2: `A, E, H, C, D, F` and the free points `X, Y, Z`. Its anchors
satisfy `C1Anchors`. -/
def c2Config (h c d f : ℝ) (X Y Z : Point) : Fin 9 → Point :=
  ![(0, 0), (1, 1), (0, h), (c, 0), (1, d), (f, 1), X, Y, Z]

/-- `P` is a configuration of family C2. -/
def IsC2 (P : Fin 9 → Point) : Prop :=
  ∃ (h c d f : ℝ) (X Y Z : Point), C1Anchors h c d f ∧
    X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧ P = c2Config h c d f X Y Z

/-! ### Type II: two adjacent occupied corners -/

/-- The configuration of Type II: `D, C, E, B` and the free points `V, W, X, Y, Z`. -/
def typeIIConfig (l b : ℝ) (V W X Y Z : Point) : Fin 9 → Point :=
  ![(0, 1), (1, 1), (0, l), (b, 0), V, W, X, Y, Z]

/-- `P` is a configuration of Type II, `TYPE_II.md` (5). -/
def IsTypeII (P : Fin 9 → Point) : Prop :=
  ∃ (l b : ℝ) (V W X Y Z : Point), 0 < b ∧ b < 1 ∧ 0 < l ∧ l < 1 ∧
    V ∈ unitSquare ∧ W ∈ unitSquare ∧ X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧
    P = typeIIConfig l b V W X Y Z

/-! ### Type III: three occupied corners -/

/-- The configuration of Type III: `A, B, C` and the free points `U, V, W, X, Y, Z`. -/
def typeIIIConfig (U V W X Y Z : Point) : Fin 9 → Point :=
  ![(0, 0), (0, 1), (1, 1), U, V, W, X, Y, Z]

/-- `P` is a configuration of Type III. -/
def IsTypeIII (P : Fin 9 → Point) : Prop :=
  ∃ U V W X Y Z : Point, U ∈ unitSquare ∧ V ∈ unitSquare ∧ W ∈ unitSquare ∧
    X ∈ unitSquare ∧ Y ∈ unitSquare ∧ Z ∈ unitSquare ∧ P = typeIIIConfig U V W X Y Z

/-! ### Contacts of a maximizer -/

/-- The projection-overlap property (`BOUNDARY_REDUCTION.md`): the bottom and top contact
intervals of `x`-coordinates meet, and so do the left and right contact intervals of
`y`-coordinates. Each condition says that some bottom point is weakly left of some top point and
some top point weakly left of some bottom point (and likewise for left and right). -/
def ContactOverlap {n : ℕ} (P : Fin n → Point) : Prop :=
  (∃ i j, (P i).2 = 0 ∧ (P j).2 = 1 ∧ (P i).1 ≤ (P j).1) ∧
  (∃ i j, (P i).2 = 0 ∧ (P j).2 = 1 ∧ (P j).1 ≤ (P i).1) ∧
  (∃ i j, (P i).1 = 0 ∧ (P j).1 = 1 ∧ (P i).2 ≤ (P j).2) ∧
  (∃ i j, (P i).1 = 0 ∧ (P j).1 = 1 ∧ (P j).2 ≤ (P i).2)

/-! ### Optimal configurations and maximizers -/

/-- `P` is a relabelling of the image of the construction under a symmetry of the square. -/
def IsOptimal (P : Fin 9 → Point) : Prop :=
  ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin 9)), ∀ i, P (σ i) = g.apply (optimalConfiguration i)

/-- `P` lies in the square and no configuration in the square has a larger least area. -/
def IsMaximizer (P : Fin 9 → Point) : Prop :=
  (∀ i, P i ∈ unitSquare) ∧
    ∀ Q : Fin 9 → Point, (∀ i, Q i ∈ unitSquare) → minTriangleArea Q ≤ minTriangleArea P

end Heilbronn.Nine
