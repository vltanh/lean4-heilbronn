# Definitions

[Back to the README](../README.md)

These definitions carry the entire meaning of the results. All of them are in
`Heilbronn/Geometry.lean`, and the Challenge of every case
(`Palomar/<Case>/Challenge.lean`) restates them word for word.

## Points and the square

```lean
abbrev Point := ℝ × ℝ

def unitSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ 1 ∧ 0 ≤ p.2 ∧ p.2 ≤ 1}
```

A point is a pair of reals, and the square is the **closed** unit square
`[0, 1] × [0, 1]`, so points may lie on its sides and at its corners. No
metric on `ℝ × ℝ` is used anywhere in the statement. (Mathlib's `dist` on
`ℝ × ℝ` is the maximum metric, which is irrelevant here.)

## Triangle areas

```lean
def triangleArea (p q r : Point) : ℝ :=
  |(q.1 - p.1) * (r.2 - p.2) - (q.2 - p.2) * (r.1 - p.1)| / 2
```

The ordinary, **unsigned** area of the triangle `pqr`: half the absolute value
of the determinant of the edge vectors `q - p` and `r - p`. It is `0` exactly
when the three points are collinear, and in particular when two of them
coincide. It does not depend on the order of the vertices
(`triangleArea_cycle`, `triangleArea_swap₁₂`, … in `Heilbronn/Common/Basic.lean`).
The proofs work with the doubled signed area `sarea p q r`, so that
`triangleArea p q r = |sarea p q r| / 2`.

## The least triangle area of a configuration

```lean
def minTriangleArea {n : ℕ} (P : Fin n → Point) : ℝ :=
  ⨅ t : {t : Fin n × Fin n × Fin n // t.1 < t.2.1 ∧ t.2.1 < t.2.2},
    triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2)
```

A configuration of `n` points is a function `P : Fin n → Point`; the points are
labelled, and two labels may name the same point. `minTriangleArea P` is the
least area of the `C(n, 3)` triangles `P i P j P k` with `i < j < k`, an
infimum over a finite nonempty index set when `n ≥ 3`, hence a minimum
(`exists_minTriangleArea_eq`). A repeated point or three collinear points give
least area `0`. Relabelling the points does not change it
(`minTriangleArea_comp_perm`).

## The Heilbronn number

```lean
def minAreaValues (n : ℕ) : Set ℝ :=
  {a | ∃ P : Fin n → Point, (∀ i, P i ∈ unitSquare) ∧ minTriangleArea P = a}

def heilbronnNumber (n : ℕ) : ℝ := sSup (minAreaValues n)
```

`minAreaValues n` is the set of values of the least triangle area over all
configurations of `n` points in the closed square, and `heilbronnNumber n` its
supremum, the Heilbronn number `H_n` of the unit square. For each case treated,
its theorems say the supremum is a maximum, and give its value.

## The symmetries of the square

```lean
structure SquareSymmetry where
  swap : Bool
  flipX : Bool
  flipY : Bool

def SquareSymmetry.apply (g : SquareSymmetry) (p : Point) : Point :=
  let q : Point := if g.swap then (p.2, p.1) else p
  (if g.flipX then 1 - q.1 else q.1, if g.flipY then 1 - q.2 else q.2)
```

The eight symmetries of the square, the dihedral group of order 8, written
out: optionally exchange the coordinates, then optionally reflect in the line
`x = 1/2` and in the line `y = 1/2`. The eight choices of the three flags give
the eight symmetries: the identity, the three rotations and the four
reflections. Each maps the square onto itself and keeps every triangle area
(`SquareSymmetry.apply_mem`, `SquareSymmetry.triangleArea_apply`).

## Congruence

```lean
def Congruent {n : ℕ} (P M : Fin n → Point) : Prop :=
  ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin n)), ∀ i, P (σ i) = g.apply (M i)
```

`Congruent P M` says that, after a relabelling `σ`, the points of `P` are the images
of the points of `M` under one symmetry `g` of the square. Congruent configurations
have the same least triangle area (`Congruent.minTriangleArea_eq`). The optimal
configurations of each case are given up to congruence.

## Nine points

```lean
def Nine.p₀ : ℝ := (15 - Real.sqrt 65) / 40   -- ≈ 0.17344, the smaller root of 20x² − 15x + 2

def Nine.optimalConfiguration : Fin 9 → Point :=
  ![(0, 4 * Nine.p₀ - 1 / 2), (Nine.p₀, 0), (1 - 3 * Nine.p₀ / 2, 0), (1, 3 * Nine.p₀ / 2),
    (1, 1 - Nine.p₀), (3 / 2 - 4 * Nine.p₀, 1), (Nine.p₀, 1), (0, 1 - Nine.p₀),
    (1 - 2 * Nine.p₀, 2 * Nine.p₀)]
```

The configuration found by Comellas and Yebra (2002), in the order
`A, B, C, D, E, F, G, H, O` of the proof: two points on each side of the
square, `A, H` on the left, `B, C` at the bottom, `D, E` on the right and `F, G`
at the top, and one point `O` inside. Its least triangle area is exactly
`A₀ = (9√65 − 55)/320 ≈ 0.054876`, attained by eleven triangles
(`ABC, ABH, ADO, AGH, BEO, CFO, CGO, DEF, DHO, EFG, FGH`); every other triangle is
larger (`Heilbronn/Nine/Construction/Areas.lean`).

The optimal configuration is symmetric under the reflection
`(x, y) ↦ (1 − y, 1 − x)` in the anti-diagonal (`SanityChecks.lean`), and under no
other non-identity symmetry of the square, so exactly four point sets attain `H₉`.
