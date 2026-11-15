# Handoff: completed unrestricted nine-point proof

## Outcome

[hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md) assembles the unrestricted
sharp bound

\[
H_9=\frac{9\sqrt{65}-55}{320}
\]

and uniqueness up to square symmetry and relabeling. The exact equality
configuration has two points on each open side and one interior point.

Every stated continuous family is covered. The stable register contains
**62 closed parent rows, 221 closed leaves, and no open row**. The case
proofs include their finer sign and coordinate covers; the register
itself is only an inventory.

This is a geometric proof with explicit exact rational certificate
tables, not a Lean formalization. The new packages received separate
geometric review and independent exact algebra implementations.
No external peer review or CI run is claimed.

## Read in this order

1. [hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md): full theorem,
   construction, exhaustive assembly, equality, and dependency scope.
2. [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md): normalization
   to five families and equality transfer through determinant-one shears.
3. [hand/HAND_PROOF.md](hand/HAND_PROOF.md): attainment, original sharp
   chamber, and unrestricted strict local optimality.
4. [hand/README.md](hand/README.md): theorem index and earlier diagnostics.
5. [hand/G6_ITEMIZED_CASES.md](hand/G6_ITEMIZED_CASES.md): every stable
   parent ID, with the complete proof closing it.
6. [ROADMAP.md](ROADMAP.md): completed gates and remaining validation work.

## Complete global cover

| Family | Final result |
|---|---|
| C2: two opposite corners | Excluded by OPPOSITE_CORNERS |
| Type III: three corners | Excluded by CORNER_FAMILIES |
| Type II: adjacent-corner normal form | Complete assembly in UNBALANCED_FINAL_LOWER_WEDGE, Theorem 2 |
| C1, zero lower | Complete C1_ZERO_LOWER theorem |
| C1, one lower | Single-cap theorems, side-pair and eight-hull theorems, top multiplicity, and mixed caps |
| C1, two lower | Complete C1_TWO_LOWER_COMPLETION theorem |
| C1, at least three lower | ONE_CORNER occupancy theorem |
| N with at least eight boundary points | EIGHT_BOUNDARY, Theorem 13, including equality |
| N with seven boundary points | SEVEN_BOUNDARY_MIXED_ABOVE_COMPLETION, Theorem 2, including equality |
| N with six boundary points | All eight cap occupancies, as assembled in GLOBAL_THEOREM, Section 4 |

For one lower C1 point and no exterior point, three upper points in
\(HCDF\) require doubled area \(W\ge10s>1\), where \(s=8/73\).
This direct quadrilateral argument is the correct scope for that
alternative. The two-lower pentagon theorem is not used in its place.

## Final proof packages

| Package | Complete cover | Certificates | Positive terms |
|---|---|---:|---:|
| N6 mixed-cap lower | 18 radial words | 18 | 3,830 |
| N6 mixed-cap upper | 79 radial words, the closed split at \(y=a\), and all sharp B/D and D/F complements | 87 | 18,308 |
| N6 single top | 884 base cases, 890 signed cells, 897 final cells | 542 | 86,610 |
| N6 double top | 94 convex words; 260 triangular pairs refined to 271 final cells | 329 | 56,558 |
| C1 top multiplicity | 249 final cells across all three hull modes | 201 | 27,887 |
| C1 mixed caps | 62 word pairs and 136 terminal branches in RT, RL, and TL | 134 | 20,543 |
| **Total** | All final parent rows covered | **1,311** | **213,736** |

The production coefficient verifiers use exact fractions. Every listed
certificate is a positive combination of valid nonnegative expressions
whose exact cube upper bound is at most \(-3/4\). Sharp alternatives
apply proved chamber theorems after separate certificates exclude the
complements of their hypotheses.

For N6 double top, use [SHARP_EF_HIGH](hand/SHARP_EF_HIGH.md), which assumes
\(k\ge6/7\) and \(b\le1/4\). The separately preserved
[SHARP_EF_MOVING](hand/SHARP_EF_MOVING.md) has different hypotheses,
including \(h\le k\) and \(b\le g\); the two versions must not be interchanged.

## Independent audit receipts

The independent algebra scripts import no production checker or
polynomial kernel. Each reconstructs the relevant determinants, factors,
signed costs, finite cover, and coefficient sums.

| Scope | Receipt |
|---|---|
| N6 mixed-cap lower | [INDEPENDENT_N6_LOWER_AUDIT](research/INDEPENDENT_N6_LOWER_AUDIT.md) |
| N6 mixed-cap upper | [INDEPENDENT_N6_UPPER_AUDIT](research/INDEPENDENT_N6_UPPER_AUDIT.md) |
| N6 single top | [INDEPENDENT_N6_SINGLE_TOP_AUDIT](research/INDEPENDENT_N6_SINGLE_TOP_AUDIT.md) |
| N6 double top | [INDEPENDENT_N6_DOUBLE_TOP_AUDIT](research/INDEPENDENT_N6_DOUBLE_TOP_AUDIT.md) |
| C1 mixed caps | [INDEPENDENT_C1_MIXED_AUDIT](research/INDEPENDENT_C1_MIXED_AUDIT.md) |
| Additional preserved C1 top proofs | [INDEPENDENT_C1_AUDITS](research/INDEPENDENT_C1_AUDITS.md) |
| Global assembly and equality | [FINAL_GEOMETRY_AUDIT](research/FINAL_GEOMETRY_AUDIT.md) |

The top-multiplicity package also has its committed independent audit
under `work/c1_top_multiplicity/`.
Reproduction commands for the final packages are in [README.md](README.md)
and the individual receipts. The receipts identify the audited input
versions with exact hashes where appropriate.

## Boundary, symmetry, and dependency checks

- Actual-edge collinearities have zero minimum area. They are not omitted
  positive-threshold equality cases.
- Every artificial coordinate cut uses both closed sides. Square-side
  positions of free cap points are included by the component theorems.
- The C1 mixed-cap proof retains RT, RL, and TL after imposing \(f\le d\).
  The historical convention \(n_L\le n_R\) is only an orbit label.
- The N7 rotation puts the singleton side at the top. The subsequent
  reflection preserves the required bottom/top projection containment.
- The asymmetric N6 side and mixed-cap proofs do not assume \(f\le d\).
  Top-only and both-side occupancies are preserved by that transposition.
- Triangle-capacity and two-actual-vertex lemmas occur in their proved
  dependency order. The global capacity theorem does not depend on the
  final C1 or N closure.
- Unrestricted strict local optimality eliminates every nontrivial
  normalization shear when transferring equality back.

## Validation scope and next work

The mathematical case closure and global assembly are complete.
The remaining work is external review and, if desired, Lean formalization
of the geometric lemmas and exact certificate checker. Neither is claimed
here.

The convex-position result uses the classical affine-isoperimetric
input stated in [hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md).
Floating-point searches are not proof premises. Discovery scripts and
parallel contributions are preserved for provenance; the main assembly
names its exact dependencies.

## Earlier computational artifact

The older executable approach remains under `exact/`.
Its recorded 330,988-pattern Type-I run was not rerun in this completion,
and its archived journal is not used by the final geometric assembly.
See [exact/REPRODUCE.md](exact/REPRODUCE.md) for that separate approach.
No Lean compilation or CI was run for this continuation.
