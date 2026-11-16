module

public import Mathlib.Analysis.Real.Sqrt
public import Mathlib.Tactic

/-!
# The Heilbronn triangle problem in the unit square: nine points

The statement a reader audits, for the Palomar entry of nine points. It imports only Mathlib,
restates the definitions of `Heilbronn/Geometry.lean` word for word, and states the three theorems
of nine points, which the library `Heilbronn` proves (`Heilbronn/Nine/Uniqueness.lean`);
Comparator checks that statements and definitions are identical. The other numbers of points of
the repository are separate entries, each in its own directory of `Palomar/`; `Geometry.lean`
holds the definitions of all of them, so this file restates them all.

A configuration of `n` points is `P : Fin n → Point`, placed in the closed unit square
`[0, 1] × [0, 1]`, repetitions allowed. Its least triangle area is the least of the ordinary
(unsigned) areas of the triangles with vertices at three of the points (`minTriangleArea`); three
collinear points, or a repeated point, give area `0`. The Heilbronn number `H_n` is the supremum of
the least triangle area over the configurations of `n` points in the square (`heilbronnNumber`).
Two configurations are congruent when, after a relabelling, one is the image of the other under
one of the eight symmetries of the square (`Congruent`, `SquareSymmetry`).

* `Nine.optimal_value`: the largest least triangle area of nine points in the square exists and
  is `(9√65 - 55)/320 ≈ 0.0548760`;
* `Nine.heilbronn_number`: equivalently `H₉ = (9√65 - 55)/320`;
* `Nine.optimal_configurations`: nine points in the square attain it exactly when they are
  congruent to the configuration of Comellas and Yebra (2002), `Nine.optimalConfiguration`.

Coordinates are pairs of reals; the area is half the absolute value of a determinant, so no metric
on `ℝ × ℝ` is involved (Mathlib's norm on `ℝ × ℝ` is the maximum norm).
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

/-! ### Symmetries of the square and congruence -/

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

/-- `P` is congruent to `M`: after a relabelling, the points of `P` are the images of the points
of `M` under one symmetry of the square. -/
def Congruent {n : ℕ} (P M : Fin n → Point) : Prop :=
  ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin n)), ∀ i, P (σ i) = g.apply (M i)

/-! ### Nine points -/

/-- `p₀ = (15 - √65) / 40 ≈ 0.17344`, the smaller root of `20 x ^ 2 - 15 x + 2`. -/
def Nine.p₀ : ℝ := (15 - Real.sqrt 65) / 40

/-- The optimal configuration of nine points, found by Comellas and Yebra (2002), in the
order `A, B, C, D, E, F, G, H, O` of the proof: two points on each of the left, bottom, right and
top sides, and one inside,

`A = (0, 4p₀ - 1/2)`, `B = (p₀, 0)`, `C = (1 - 3p₀/2, 0)`, `D = (1, 3p₀/2)`, `E = (1, 1 - p₀)`,
`F = (3/2 - 4p₀, 1)`, `G = (p₀, 1)`, `H = (0, 1 - p₀)`, `O = (1 - 2p₀, 2p₀)`. -/
def Nine.optimalConfiguration : Fin 9 → Point :=
  ![(0, 4 * Nine.p₀ - 1 / 2), (Nine.p₀, 0), (1 - 3 * Nine.p₀ / 2, 0), (1, 3 * Nine.p₀ / 2),
    (1, 1 - Nine.p₀), (3 / 2 - 4 * Nine.p₀, 1), (Nine.p₀, 1), (0, 1 - Nine.p₀),
    (1 - 2 * Nine.p₀, 2 * Nine.p₀)]

/-! ### The theorems -/

/-- **The optimal value of nine points.** The largest least triangle area of nine points in the
unit square exists and is `(9√65 - 55)/320`. -/
theorem Nine.optimal_value : IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320) := by
  sorry

/-- **The Heilbronn number of nine points**: `H₉ = (9√65 - 55)/320`. -/
theorem Nine.heilbronn_number : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320 := by
  sorry

/-- **The optimal configurations of nine points.** Nine points in the unit square attain
`(9√65 - 55)/320` exactly when they are congruent to the configuration of Comellas and Yebra. -/
theorem Nine.optimal_configurations (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔
      Congruent P Nine.optimalConfiguration := by
  sorry

end Heilbronn
