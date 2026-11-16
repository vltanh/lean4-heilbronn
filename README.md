# Heilbronn's triangle problem in the unit square, in Lean 4

[![Lean build](https://github.com/vltanh/lean4-heilbronn/actions/workflows/lean.yml/badge.svg)](https://github.com/vltanh/lean4-heilbronn/actions/workflows/lean.yml)

How large can the smallest triangle be? Place `n` points in the closed unit
square; among the triangles with vertices at three of them, take the one of
least area. The Heilbronn number `H_n` is the largest this least area can be.
This repository proves values of `H_n` in Lean 4 with mathlib, together with
every configuration that attains them, up to the symmetries of the square and
relabelling.

| `n` | `H_n` | the optimal configurations | proof |
| :-: | --- | --- | --- |
| 9 | `(9√65 − 55)/320 ≈ 0.0548760` | one point set up to the symmetries of the square: two points on each side and one inside (Comellas and Yebra, 2002), symmetric in the anti-diagonal, so four point sets in all | [`Heilbronn/Nine/`](Heilbronn/Nine) |

Nine points is the first case formalized. Every proof is complete and rests on
the three standard axioms alone.

![The nine points of the optimal configuration in the unit square: A and H on the left side, B and C at the bottom, D and E on the right, F and G at the top, and O inside. The eleven triangles of least area, (9√65 − 55)/320 ≈ 0.0548760, are shaded in pairs of mirror images in the dashed anti-diagonal: ABC and DEF, ABH and EFG, AGH and FGH, ADO and CFO, CGO and DHO; BEO is its own mirror image.](docs/figures/nine.svg)

Move the points, try to beat the optimum and watch the smallest triangle in the
[playground](https://vltanh.me/heilbronn/).

## Definitions

More on each definition: [docs/definitions.md](docs/definitions.md).

Read these before trusting the results: the kernel checks the proofs, not that
the statements mean what you intend. All of them are in
`Heilbronn/Geometry.lean`, which the Challenge of each case restates with its
theorems ([Palomar registry](#palomar-registry)).

A point is a pair of reals, the square is closed, and the area of a triangle is
half the absolute value of a determinant, so it is `0` exactly for collinear
points:

```lean
abbrev Point := ℝ × ℝ

def unitSquare : Set Point := {p | 0 ≤ p.1 ∧ p.1 ≤ 1 ∧ 0 ≤ p.2 ∧ p.2 ≤ 1}

def triangleArea (p q r : Point) : ℝ :=
  |(q.1 - p.1) * (r.2 - p.2) - (q.2 - p.2) * (r.1 - p.1)| / 2
```

A configuration of `n` points is `P : Fin n → Point`; its least triangle area
is the minimum over the triples `i < j < k`, and `H_n` is the supremum of the
least area over the configurations in the square:

```lean
def minTriangleArea {n : ℕ} (P : Fin n → Point) : ℝ :=
  ⨅ t : {t : Fin n × Fin n × Fin n // t.1 < t.2.1 ∧ t.2.1 < t.2.2},
    triangleArea (P t.1.1) (P t.1.2.1) (P t.1.2.2)

def minAreaValues (n : ℕ) : Set ℝ :=
  {a | ∃ P : Fin n → Point, (∀ i, P i ∈ unitSquare) ∧ minTriangleArea P = a}

def heilbronnNumber (n : ℕ) : ℝ := sSup (minAreaValues n)
```

Two configurations are congruent when, after a relabelling, one is the image of
the other under one of the eight symmetries of the square, each given by three
flags:

```lean
structure SquareSymmetry where
  swap : Bool
  flipX : Bool
  flipY : Bool

def SquareSymmetry.apply (g : SquareSymmetry) (p : Point) : Point :=
  let q : Point := if g.swap then (p.2, p.1) else p
  (if g.flipX then 1 - q.1 else q.1, if g.flipY then 1 - q.2 else q.2)

def Congruent {n : ℕ} (P M : Fin n → Point) : Prop :=
  ∃ (g : SquareSymmetry) (σ : Equiv.Perm (Fin n)), ∀ i, P (σ i) = g.apply (M i)
```

Each case defines its optimal configurations; for nine points, one up to
congruence:

```lean
def Nine.p₀ : ℝ := (15 - Real.sqrt 65) / 40   -- ≈ 0.17344, the smaller root of 20x² − 15x + 2

def Nine.optimalConfiguration : Fin 9 → Point :=
  ![(0, 4 * Nine.p₀ - 1 / 2), (Nine.p₀, 0), (1 - 3 * Nine.p₀ / 2, 0), (1, 3 * Nine.p₀ / 2),
    (1, 1 - Nine.p₀), (3 / 2 - 4 * Nine.p₀, 1), (Nine.p₀, 1), (0, 1 - Nine.p₀),
    (1 - 2 * Nine.p₀, 2 * Nine.p₀)]
```

## Results

More on each theorem: [docs/results.md](docs/results.md).

Every case proves three theorems, which its Palomar entry states. For nine
points, `Heilbronn/Nine/Uniqueness.lean` proves, in namespace `Heilbronn.Nine`:

```lean
theorem optimal_value : IsGreatest (minAreaValues 9) ((9 * Real.sqrt 65 - 55) / 320)

theorem heilbronn_number : heilbronnNumber 9 = (9 * Real.sqrt 65 - 55) / 320

theorem optimal_configurations (P : Fin 9 → Point) (hP : ∀ i, P i ∈ unitSquare) :
    minTriangleArea P = (9 * Real.sqrt 65 - 55) / 320 ↔ Congruent P optimalConfiguration
```

`optimal_value`: the largest least triangle area of nine points in the square
is attained and equals `(9√65 − 55)/320`; `heilbronn_number` restates it as
`H₉ = (9√65 − 55)/320`. `optimal_configurations`: the configurations that
attain it are exactly those congruent to the configuration of Comellas and
Yebra.

Every case proves one `Optimum n` (`Heilbronn/Common/Optimum.lean`): its value,
its models, that they lie in the square and attain the value, and uniqueness,
that every maximizing configuration is congruent to a model. The three theorems
follow from it, by arguments shared by all cases. The root module
`Heilbronn.lean` imports every case.

## Proof outline: nine points

The hand proof is in [docs/proof/nine/](docs/proof/nine/README.md), assembled
in [`UNRESTRICTED.md`](docs/proof/nine/UNRESTRICTED.md). Each of the 84
manuscripts on the route of the assembly is formalized in the module of the
same name under `Heilbronn/Nine/`.

- **Construction.** The 84 triangle areas of the configuration, with the eleven
  of least area `(9√65 − 55)/320`, exactly in `ℚ(√65)`.
- **Normalization.** A maximizer exists by compactness. No affine map of
  determinant above one keeps it in the square, so every side is touched and
  the contacts of opposite sides overlap in projection; shears of determinant
  one then bring it into one of five families: no occupied corner (N), one (C1),
  two opposite (C2), two adjacent (Type II) or three (Type III).
- **Corner families.** C2, Type III and Type II have least area below `A₀`, by
  hull bounds (two points inside a triangle force area `(4+2√3)t`, six points
  with a triangular hull `(11+3√5)t/2`, seven `(7+2√2)t`) and long case analyses.
  C1 is split by the number of points inside its lower corner triangle.
- **Family N.** With eight boundary points the sharp eleven-triangle chamber
  gives `A₀` and the construction; with seven, a chain of cap exclusions and one
  certificate cover; with six, the anchor hexagon and the eight occupancies of
  its corner caps.
- **Certificates.** Many exclusions end with a polynomial certificate: positive
  weights on products of nonnegative affine factors and area costs whose sum is
  negative on the unit cube. Lean's kernel expands and checks each one: about
  434,000 terms in all.
- **Equality.** The chamber forces the construction; the shears of the
  normalization fix it, by strict local optimality.

The formalization follows the hand proof and simplifies it where that is
easier. Several long hand arguments are replaced by certificates found by
linear programming. The case of three occupied caps, where the hand proof used
the affine isoperimetric inequality for a convex nonagon, is closed by nine
triangles and one certificate, so the proof uses no external theorem.

## Prior work

More on each earlier result: [docs/prior-work.md](docs/prior-work.md).

Comellas and Yebra (2002) found the configuration. Chen, Xu and Zeng (2017)
bounded `H₉` in an interval by a branch and bound on GPUs, and Monji, Modir and
Kocuk (2025) and Sudermann-Merx (2026) found the value by mixed-integer
optimization, within solver tolerances; the first version of Sudermann-Merx's
preprint claimed a proof, which later versions withdrew. We found no exact
proof of `H₉`, and no proof that its optimal configuration is unique, before
the hand proof here. The Heilbronn numbers of a different problem, points
normalized by the area of their convex hull, are formalized in Lean for
`n ≤ 8` (Tej Stead, 2026); we found no formalization of a Heilbronn number of
the unit square, nor of any nine-point Heilbronn number.

## Layout

More on each file: [docs/layout.md](docs/layout.md).

```text
Heilbronn.lean             the root module: every case
Palomar/Nine/              the Palomar entry of nine points: Challenge.lean, comparator.json,
                           formalization.yaml
Heilbronn/
├── Geometry.lean          the statement: points, the square, triangle areas, H_n,
│                          congruence, the optimal configurations of each case
├── Common/                tools shared by every case: areas, the optimum, the
│                          polynomial and Bernstein certificate checkers, covers
└── Nine/                  Construction, Uniqueness; Setup/, Normalization/, Local/, Global/,
                           Hulls/, Corners/, TypeII/, EightBoundary/, SevenBoundary/,
                           SixBoundary/, Sharp/, C1/, Assembly/
data/nine/                 certificate weights
scripts/nine/              the exporters and searches that produced them
docs/proof/nine/           the hand proof of nine points
docs/research/nine/        its research notes, archived
```

Every case has just `Construction.lean` and `Uniqueness.lean` at its root;
supporting proofs live in subdirectories. Each case imports only `Common/` and
its own folder.

## Verification

More on each check: [docs/verification.md](docs/verification.md).

```sh
lake exe cache get
lake build
lake env lean AxiomAudit.lean
lake env lean SanityChecks.lean
scripts/verify-comparator.sh
```

The build uses Lean and mathlib `v4.36.0-rc2`, pinned by `lean-toolchain` and
`lake-manifest.json`. `lake build` must succeed without warnings, and every
`#print axioms` line must read `[propext, Classical.choice, Quot.sound]`. The
certificates are checked by the kernel, never by `native_decide`: by
`decide +kernel`, or for a certificate tree by `tree_decide`, which gives each
subtree a kernel check of its own so that no module needs much memory. The last
command (Linux, `bwrap`) runs the check of the
[Palomar registry](#palomar-registry). The trusted base is Lean, Lake and
mathlib.

## Palomar registry

The library is packaged for the [Palomar](https://palomar-registry.org/)
registry, one entry per case, not yet submitted. The entry of nine points is
the directory [`Palomar/Nine/`](Palomar/Nine): its `Challenge.lean` imports
only mathlib, restates `Heilbronn/Geometry.lean` word for word and states
`Nine.optimal_value`, `Nine.heilbronn_number` and `Nine.optimal_configurations`
with `sorry`; its `comparator.json` pairs it with the library; its
`formalization.yaml` records provenance, authorship and AI use. Edit the
definitions in `Geometry.lean` only: `scripts/verify-comparator.sh --write`
copies them into the Challenge of every case. A new case gets a directory of its
own, and is submitted as a separate entry.

## License

Apache-2.0, matching mathlib and the Lean ecosystem.

## Contributors

AI models wrote the mathematics and the Lean code, and the repository owner
directed the work. ChatGPT 6 Pro, in the ChatGPT chat, wrote the hand proof of
nine points; Claude Opus 5.5, in Claude Code, wrote the Lean code. Who did
what, and when: [docs/contributors.md](docs/contributors.md).
