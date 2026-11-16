# Layout

[Back to the README](../README.md)

```text
Heilbronn.lean            the root module: every case
Palomar/Nine/             the Palomar entry of nine points: the statement alone (Challenge.lean),
                          its Comparator configuration and its metadata
AxiomAudit.lean           #print axioms of the main theorems, the tools and the family theorems
SanityChecks.lean         regression checks on the statement
Heilbronn/
├── Geometry.lean         the statement: points, the square, triangle areas, the least area,
│                         H_n, the symmetries of the square, congruence, the optimal
│                         configurations of each case
├── Common/               tools shared by every case
└── Nine/                 nine points; Nine/Data/ holds its certificate weights
scripts/                  the Comparator check and the build tools
archive/nine/             the first draft of the proof, by ChatGPT 6 Pro, archived
```

Every case has just `Construction.lean` and `Uniqueness.lean` at its root:
`Construction.lean` proves that the models lie in the square and attain the value,
and `Uniqueness.lean` that every maximizer is congruent to a model, assembles
the case's `Optimum` and proves the three theorems of its Palomar entry. Supporting proofs live in subdirectories. Each case imports
only `Common/` and its own folder.

## `Common/`

| file | content |
| --- | --- |
| `Basic.lean` | the doubled signed area `sarea`; the least area under relabelling, affine maps and the symmetries of the square; its continuity; existence of a maximizer |
| `Config.lean` | triangle areas of a named configuration; sub-configurations; affine images |
| `Optimum.lean` | the optimum of a case, and the value, the Heilbronn number and the optimal configurations that follow from it |
| `Certificate.lean` | polynomial certificates on the unit cube, checked by the kernel, with `check_sound` |
| `Bernstein.lean` | positivity on boxes by Bernstein coefficients, with `bernsteinBoxCheck_sound` |
| `Cover.lean` | case splits with certificate leaves (sign splits, scalar cuts, strengthened area costs), with `checkTree_sound` |
| `CertNotation.lean` | arithmetic notation for certificate expressions |
| `DataReader.lean` | `term_rows%` and its relatives: certificate data read from text files as raw literals |

## `Nine/`

The folders follow the structure of the proof: normalize a maximizer into one
of five families, exclude the families that cannot reach `A₀`, and show that
the remaining ones force the construction.

| folder or file | content |
| --- | --- |
| `Setup/` | `A₀` and its brackets (`Value.lean`); the five normalized families N, C1, C2, Type II, Type III (`Families.lean`) |
| `Construction.lean`, `Construction/` | the 84 triangle areas of the optimal configuration |
| `Uniqueness.lean`, `Assembly/` | every maximizer is the construction, from the family theorems; `Nine.optimum` and the three theorems |
| `Normalization/` | side contacts, projection overlap and the shears, from the absence of an expanding affine map; the normalization into the five families and the transfer of equality |
| `Local/` | the eleven-triangle chamber and strict local optimality |
| `Global/` | the lower caps with seven boundary points; the chamber in which F moves inward |
| `Hulls/` | triangles with three interior points, quadrilaterals with four, capacity two for every configuration of least area at least `A₀` |
| `Corners/` | C2, Type III, C1 with three or more lower points, the hull bounds and the quadrilateral identities used throughout |
| `TypeII/` | two adjacent occupied corners, ending in `typeII_exclusion` |
| `EightBoundary/` | the radial catalogue of words and family N with eight or more boundary points, ending in Theorem 13 (`Theorem13.lean`) |
| `SevenBoundary/` | family N with exactly seven boundary points, with the interior cover of 403 certificates |
| `SixBoundary/` | family N with exactly six boundary points: the anchor hexagon and the eight occupancies of its caps |
| `Sharp/` | the seven sharp chambers in which one or two points move |
| `C1/` | one occupied corner, by the number of lower points |

## Certificates

A certificate package has a model (its atoms, affine factors and oriented area
costs, and its case cover) in a `*Model.lean` file, its weights in
`Nine/Data/<package>/`, and kernel checks in `*Trees*` modules, a few thousand
terms per module so that the build checks them in parallel, each tree by
`tree_decide`. The weights were computed outside Lean; Lean trusts none of them:
the kernel rechecks every certificate.
