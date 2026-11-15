module

public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Tactic

/-!
# The statement: points in the unit square, triangle areas and the optimal configuration

Everything the main theorems (`Heilbronn.lean`) state: points of the plane, the closed unit
square, the ordinary area of a triangle, the least triangle area of a configuration of `n`
points, the set of its values over configurations in the square and its supremum, the Heilbronn
number `H_n`; the eight symmetries of the square; and the optimal configuration of nine points.

`Challenge.lean` restates this file word for word, and Comparator checks that the two elaborate
identically. That needs every definition here, in this order: Lean names the auxiliary lemmas
inside a definition, such as the proof of `Nat.AtLeastTwo 2` behind the real numeral `2`, after
the first definition in the file that needs them. Edit here only:
`scripts/verify-comparator.sh --write` copies the definitions into `Challenge.lean`.
-/

@[expose] public section

noncomputable section
namespace Heilbronn

/-! ### Points, the unit square and triangle areas -/

/-- A point of the plane, by its two real coordinates. -/
abbrev Point := ℝ × ℝ

/-- The closed unit square `[0, 1] × [0, 1]`. -/
def unitSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ 1 ∧ 0 ≤ p.2 ∧ p.2 ≤ 1}

/-- The ordinary, unsigned area of the triangle with vertices `p`, `q` and `r`: half the
absolute value of the determinant of `q - p` and `r - p`. It is `0` when the three points are
collinear, in particular when two of them coincide. -/
def triangleArea (p q r : Point) : ℝ :=
  |(q.1 - p.1) * (r.2 - p.2) - (q.2 - p.2) * (r.1 - p.1)| / 2

/-- The least area of a triangle with vertices at three of the points `P 0, …, P (n - 1)`: the
minimum of `triangleArea (P i) (P j) (P k)` over the triples of indices `i < j < k`. Repeated
points count separately, so a configuration with a repeated point has least area `0`. -/
def minTriangleArea {n : ℕ} (P : Fin n → Point) : ℝ :=
  ⨅ t : {t : Fin n × Fin n × Fin n // t.1 < t.2.1 ∧ t.2.1 < t.2.2},
    triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2)

/-- The values of `minTriangleArea` over the configurations of `n` points in the unit square. -/
def minAreaValues (n : ℕ) : Set ℝ :=
  {a | ∃ P : Fin n → Point, (∀ i, P i ∈ unitSquare) ∧ minTriangleArea P = a}

/-- The Heilbronn number `H_n` of the unit square: the supremum of the least triangle area of
`n` points in the unit square. -/
def heilbronnNumber (n : ℕ) : ℝ := sSup (minAreaValues n)

/-! ### Symmetries of the square -/

/-- A symmetry of the unit square, one of eight: `(x, y)` is first sent to `(y, x)` if `swap`
is set, and then the first coordinate `u` is sent to `1 - u` if `flipX` is set, and the second
if `flipY` is set. -/
structure SquareSymmetry where
  swap : Bool
  flipX : Bool
  flipY : Bool

/-- The image of the point `p` under the symmetry `g` of the square. -/
def SquareSymmetry.apply (g : SquareSymmetry) (p : Point) : Point :=
  let q : Point := if g.swap then (p.2, p.1) else p
  (if g.flipX then 1 - q.1 else q.1, if g.flipY then 1 - q.2 else q.2)

/-! ### The optimal configuration of nine points -/

/-- `p₀ = (15 - √65) / 40 ≈ 0.17344`, the smaller root of `20 x ^ 2 - 15 x + 2`. -/
def p₀ : ℝ := (15 - Real.sqrt 65) / 40

/-- The optimal configuration of nine points, found by Comellas and Yebra (2002), in the
order `A, B, C, D, E, F, G, H, O` of the proof: two points on each of the left, bottom, right and
top sides, and one inside,

`A = (0, 4p₀ - 1/2)`, `B = (p₀, 0)`, `C = (1 - 3p₀/2, 0)`, `D = (1, 3p₀/2)`, `E = (1, 1 - p₀)`,
`F = (3/2 - 4p₀, 1)`, `G = (p₀, 1)`, `H = (0, 1 - p₀)`, `O = (1 - 2p₀, 2p₀)`. -/
def optimalConfiguration : Fin 9 → Point :=
  ![(0, 4 * p₀ - 1 / 2), (p₀, 0), (1 - 3 * p₀ / 2, 0), (1, 3 * p₀ / 2), (1, 1 - p₀),
    (3 / 2 - 4 * p₀, 1), (p₀, 1), (0, 1 - p₀), (1 - 2 * p₀, 2 * p₀)]

end Heilbronn
