module

public import Heilbronn.Corners.CornerFamilies.SixPoint

/-! # Corner families, §§10–11: quantitative mesh lemma and uniform signs
(`hand/CORNER_FAMILIES.md`, lines 862–1167)

Part of `CORNER_FAMILIES.md` (module `Heilbronn.Corners.CornerFamilies`). The quantitative
rigidity of a distributed six-point triangle of doubled area one (§10) and the forced signs of a
lower point with respect to the upper triple (§11).

**Parameters.** The manuscript proves §§10–12 at the doubled threshold `s = 7/64` with the lower
points in the unit square. `ONE_CORNER.md` §§2–4 reuses them for every `s ≥ 7/64` and for lower
points in a rectangle `[0, L] × [1 - M, 1]` with `L, M ≥ 1` and `L, M ≤ s/σ`, `σ = 7/64`
(its displaced base `y ≥ -δ`, `δ = M - 1`, and by reflection `x ≤ L`). These statements carry
`s`, `L`, `M` as parameters with exactly those hypotheses (`7/64 · L ≤ s`, `7/64 · M ≤ s`); the
Type-III case is `L = M = 1`, `s = 7/64`. (Inventory 02, `ONE_CORNER` gap 2: each use of the
fixed threshold in §10 was checked to remain valid for `s ≥ 7/64`.)

**Physical frame** (§11). `A = (0,0)`, `B = (0,1)`, `C = (1,1)` (clockwise), the distributed upper
triple labelled `Y = (u, v)`, `Z = (p, q)`, `X = (c, 1 - a)` with `Z ∈ ABY`, `X ∈ BCY`
(`MeshLabelled (0,0) (0,1) (1,1) X Y Z`), and `h = 1 - v`, `z = 1 - q`, `f = v - u`,
`k = h - a`, `Q = hc - au` (doubled `[BXY]`), `K` the doubled central area.
`D(P, Q, R) = det(Q - P, R - P) = sarea P Q R`.

Definitions: `rectangle L M`.

**Results.** `quantitativeMeshLemma` (26)–(27) (general triangle, `s ≥ 7/64`); `eq33`; `eq36`;
`uniformSigns` (34).
-/

@[expose] public section

noncomputable section
namespace Heilbronn.CornerFamilies

/-- The rectangle `[0, L] × [1 - M, 1]`, the image of the unit square under the normalization of
`ONE_CORNER.md` (2); `rectangle 1 1` is the unit square. -/
def rectangle (L M : ℝ) : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ L ∧ 1 - M ≤ p.2 ∧ p.2 ≤ 1}

/-! ### §10. Quantitative rigidity of a distributed six-point triangle -/

/-- **Quantitative mesh lemma** (`CORNER_FAMILIES:QuantitativeMeshLemma`), (26)–(27): for a
triangle `ABC` of doubled area one with a labelled distributed triple `X, Y, Z` and all doubled
areas of the six points at least `s`, `s ≥ 7/64`: the doubled central area is `K ≤ (109/98)s`,
each connector exceeds `(6/5)s`, and each ear is at most `1 - (3φ + 3)s < 55/384`.
The manuscript states it at `s = 7/64`; `ONE_CORNER:claim-mesh-all-s` observes that it holds for
all `s ≥ 7/64`, the generality stated here. `hand/CORNER_FAMILIES.md`, lines 862–1035.

Uses: CORNER_FAMILIES:SixPointTriangularHullTheorem (16)–(20) -/
theorem quantitativeMeshLemma (A B C X Y Z : Point) (s : ℝ) (hs : 7 / 64 ≤ s)
    (hABC : |sarea A B C| = 1) (hm : MeshLabelled A B C X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![A, B, C, X, Y, Z]) :
    |sarea Z X Y| ≤ 109 / 98 * s ∧
      6 / 5 * s < |sarea A Z Y| ∧ 6 / 5 * s < |sarea B X Z| ∧ 6 / 5 * s < |sarea C Y X| ∧
      |sarea A B Z| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      |sarea B C X| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      |sarea C A Y| ≤ 1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s ∧
      1 - (3 * ((1 + Real.sqrt 5) / 2) + 3) * s < 55 / 384 := by
  sorry

/-! ### §11. Uniform signs for an additional lower point -/

/-- **Claim** (`CORNER_FAMILIES:UniformSigns`), the bounds (33) in the physical frame, for every
`s ≥ 7/64` (also `ONE_CORNER.md` (4)): with `E = 55/384`,
`s ≤ p, a, f ≤ E`, `u, h, c, z, 1 - c - a, 1 - p - z ≥ 3s`, `k ≥ 3s - E`, and `Q ≥ s`.
`hand/CORNER_FAMILIES.md`, lines 1041–1071.

Uses: CORNER_FAMILIES:QuantitativeMeshLemma -/
theorem eq33 (X Y Z : Point) (s : ℝ) (hs : 7 / 64 ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z]) :
    let u := Y.1
    let v := Y.2
    let p := Z.1
    let q := Z.2
    let c := X.1
    let a := 1 - X.2
    let h := 1 - v
    let z := 1 - q
    let f := v - u
    let k := h - a
    let Q := h * c - a * u
    s ≤ p ∧ p ≤ 55 / 384 ∧ s ≤ a ∧ a ≤ 55 / 384 ∧ s ≤ f ∧ f ≤ 55 / 384 ∧
      3 * s ≤ u ∧ 3 * s ≤ h ∧ 3 * s ≤ c ∧ 3 * s ≤ z ∧ 3 * s ≤ 1 - c - a ∧
      3 * s ≤ 1 - p - z ∧ 3 * s - 55 / 384 ≤ k ∧ s ≤ Q := by
  sorry

/-- **Claim** (`CORNER_FAMILIES:UniformSigns`), identities (36) in the physical frame: for
`R = (x, 1 - b)`, `D(X, Y, R) = (c - u)b + kx - Q`, and the doubled central area
`K = -D(X, Y, Z)` equals `Q + z(u - c) - pk` (all points). `hand/CORNER_FAMILIES.md`,
lines 1112–1116. -/
theorem eq36 (X Y Z R : Point) :
    let u := Y.1
    let c := X.1
    let a := 1 - X.2
    let h := 1 - Y.2
    let k := h - a
    let Q := h * c - a * u
    sarea X Y R = (c - u) * (1 - R.2) + k * R.1 - Q ∧
      -sarea X Y Z = Q + (1 - Z.2) * (u - c) - Z.1 * k := by
  sorry

/-- **Uniform signs** (`CORNER_FAMILIES:UniformSigns`), equation (34), with the rectangle
parameters of `ONE_CORNER.md` §3: a lower point `R` (`y < x`) of the rectangle
`[0, L] × [1 - M, 1]`, `L, M ≥ 1`, `7/64 · L ≤ s`, `7/64 · M ≤ s`, such that all doubled areas
of `A, B, C, X, Y, Z, R` are at least `s`, satisfies `D(B,Z,R) ≥ s`, `D(B,X,R) ≤ -s` and
`D(X,Y,R) ≥ s`. (CORNER_FAMILIES: `L = M = 1`, `s = 7/64`; ONE_CORNER (6): `s = 7LM/64`.)
`hand/CORNER_FAMILIES.md`, lines 1073–1167.

Uses: CORNER_FAMILIES:UniformSigns (33), (35)–(36), CORNER_FAMILIES:QuantitativeMeshLemma -/
theorem uniformSigns (X Y Z R : Point) (s L M : ℝ) (hL : 1 ≤ L) (hM : 1 ≤ M)
    (hsL : 7 / 64 * L ≤ s) (hsM : 7 / 64 * M ≤ s)
    (hm : MeshLabelled (0, 0) (0, 1) (1, 1) X Y Z) (hR : R ∈ rectangle L M)
    (hRl : R.2 < R.1)
    (hmin : s / 2 ≤ minTriangleArea ![(0, 0), (0, 1), (1, 1), X, Y, Z, R]) :
    s ≤ sarea (0, 1) Z R ∧ sarea (0, 1) X R ≤ -s ∧ s ≤ sarea X Y R := by
  sorry

end Heilbronn.CornerFamilies
