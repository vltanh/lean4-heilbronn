module

public import Heilbronn.Common.Families

/-! # Two-vertex capacity, the interval family, opposite vertices
(`hand/TYPE_II_COMPLETION.md`, §§1–3)

`TYPE_II_COMPLETION.md` lines 37–206, in general form (no Type-II anchors are needed except for
the interval family of §2, whose two occupied corners are `(0,1)` and `(1,1)`). These results are
used by the C1 notes (Theorem 1) and are consequences of the global capacity theorem
(`THREE_INTERIOR_TRIANGLES.md` Corollary 5); they must not be used upstream of it
(`TYPE_II_COMPLETION.md` lines 204–206).

* `theorem1` (**Theorem 1**): in a nine-point configuration in the square of least area at
  least `A₀`, a closed triangle `UVW` of area at most `1/2` with two actual vertices `U, V` and an
  arbitrary third vertex `W` contains at most three further configuration points;
* `intervalI`, `eq2` ((1)–(2)): the interval `I_X` with `X ∈ conv{D, C, (z,0)} ↔ z ∈ I_X`;
* `corollary2` (**Corollary 2**) and `eq3` ((3)): the interval family has depth at most three
  (off-route);
* `corollary3` (**Corollary 3**): a competitive configuration has no two opposite square corners
  (off-route on the primary route), and `corollary3_parallelogram`, its general form: no enclosing
  parallelogram of area at most one has two opposite actual vertices.
-/

@[expose] public section

noncomputable section
namespace Heilbronn.TypeIICompletion

open Classical in
/-- **Theorem 1** (`TYPE_II_COMPLETION:Theorem1`). Let nine points of the unit square have least
triangle area at least `A₀`, let `U = P i`, `V = P j` be two distinct members and `W` any point of
the plane with `area(UVW) ≤ 1/2`. Then the closed triangle `UVW` contains at most three members
of the configuration other than `U, V` (if `W` is a configuration point it counts among them).
`hand/TYPE_II_COMPLETION.md`, lines 37–101.

Uses: THREE_INTERIOR_TRIANGLES:Corollary5, CORNER_FAMILIES:NontriangularHullLemma (the
six-point support-triangle lemma of §6, rescaled: least area at most `7S/64 ≤ 7/128 < A₀`). -/
theorem theorem1 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j : Fin 9) (hij : i ≠ j) (W : Point)
    (hW : triangleArea (P i) (P j) W ≤ 1 / 2) :
    (Finset.univ.filter fun k =>
        k ≠ i ∧ k ≠ j ∧ P k ∈ convexHull ℝ ({P i, P j, W} : Set Point)).card ≤ 3 := by
  sorry

/-- The closed interval `I_X = [(x - y)/(1 - y), x/(1 - y)]` of `TYPE_II_COMPLETION.md` (1),
for `X = (x, y)` with `y < 1`. -/
def intervalI (X : Point) : Set ℝ :=
  Set.Icc ((X.1 - X.2) / (1 - X.2)) (X.1 / (1 - X.2))

/-- **Equation (2)** (`TYPE_II_COMPLETION:eq2`). For `X = (x,y)` with `y < 1` and every real `z`,
`X` lies in the closed triangle `T_z = conv{D, C, (z,0)}` (area `1/2`) exactly when `z ∈ I_X`.
`hand/TYPE_II_COMPLETION.md`, lines 113–137. -/
theorem eq2 (X : Point) (hX : X.2 < 1) (z : ℝ) :
    X ∈ convexHull ℝ ({(0, 1), (1, 1), (z, 0)} : Set Point) ↔ z ∈ intervalI X := by
  sorry

open Classical in
/-- **Corollary 2** (`TYPE_II_COMPLETION:Corollary2`). If a nine-point configuration in the
square containing `D = (0,1)` and `C = (1,1)` has least area at least `A₀`, then every real `z`
lies in at most three of the seven intervals `I_X`, `X` the other points.
`hand/TYPE_II_COMPLETION.md`, lines 139–143.

Uses: TYPE_II_COMPLETION:Theorem1, TYPE_II_COMPLETION:eq2. -/
theorem corollary2 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i₀ i₁ : Fin 9) (h01 : i₀ ≠ i₁) (hD : P i₀ = (0, 1))
    (hC : P i₁ = (1, 1)) (z : ℝ) :
    (Finset.univ.filter fun k => k ≠ i₀ ∧ k ≠ i₁ ∧ z ∈ intervalI (P k)).card ≤ 3 := by
  sorry

/-- **Equation (3)** (`TYPE_II_COMPLETION:eq3`). In the setting of Corollary 2, among any four
distinct points `X₁, …, X₄` other than `D, C` some left endpoint exceeds some right endpoint:
`max_i (x_i - y_i)/(1 - y_i) > min_i x_i/(1 - y_i)` (equivalently (4)).
`hand/TYPE_II_COMPLETION.md`, lines 143–160.

Uses: TYPE_II_COMPLETION:Corollary2. -/
theorem eq3 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i₀ i₁ : Fin 9) (h01 : i₀ ≠ i₁) (hD : P i₀ = (0, 1))
    (hC : P i₁ = (1, 1)) (k : Fin 4 → Fin 9) (hk : Function.Injective k)
    (hk0 : ∀ m, k m ≠ i₀) (hk1 : ∀ m, k m ≠ i₁) :
    ∃ m m' : Fin 4, (P (k m')).1 / (1 - (P (k m')).2) <
      ((P (k m)).1 - (P (k m)).2) / (1 - (P (k m)).2) := by
  sorry

/-- **Corollary 3** (`TYPE_II_COMPLETION:Corollary3`). A competitive nine-point configuration
(in the square, least area at least `A₀`) cannot contain two opposite square corners.
`hand/TYPE_II_COMPLETION.md`, lines 191–193.

Uses: TYPE_II_COMPLETION:Theorem1 (through the general form below). -/
theorem corollary3 (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) :
    ¬ ((∃ i, P i = (0, 0)) ∧ ∃ j, P j = (1, 1)) ∧ ¬ ((∃ i, P i = (1, 0)) ∧ ∃ j, P j = (0, 1)) := by
  sorry

/-- **Corollary 3, general form** (`TYPE_II_COMPLETION:Corollary3`). A competitive nine-point
configuration cannot be contained in a parallelogram of area at most one with two opposite
vertices `P i, P j` actual: the parallelogram with vertices `P i, W, P j, P i + P j - W` has area
`|[P i, W, P j]|`. `hand/TYPE_II_COMPLETION.md`, lines 194–202.

Uses: TYPE_II_COMPLETION:Theorem1 (pigeonhole on the two diagonal halves). -/
theorem corollary3_parallelogram (P : Fin 9 → Point) (hP : ∀ k, P k ∈ unitSquare)
    (hmin : A₀ ≤ minTriangleArea P) (i j : Fin 9) (hij : i ≠ j) (W : Point)
    (harea : |sarea (P i) W (P j)| ≤ 1)
    (hcont : ∀ k, P k ∈ convexHull ℝ ({P i, W, P j, P i + P j - W} : Set Point)) :
    False := by
  sorry

end Heilbronn.TypeIICompletion
