# Completion record and validation roadmap

The unrestricted theorem and equality classification are complete in
[hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md):

\[
H_9=\frac{9\sqrt{65}-55}{320},
\]

with equality only at the stated nine-point construction, up to square
symmetry and relabeling. The proof includes fixed exact rational
certificate tables.

## Mathematical completion gates

| Gate | Obligation | Status and proof |
|---|---|---|
| G0 | Exact construction and all 84 triangle areas | **Complete** — HAND_PROOF appendix |
| G1 | Sharp asymmetric chamber and unrestricted strict local maximum | **Complete** — HAND_PROOF, Theorems 1–2 |
| G2 | Every eight-boundary incidence and orientation class | **Complete** — EIGHT_BOUNDARY, Theorem 13 |
| G3 | Exhaustive global normalization and equality transfer | **Complete** — GLOBAL_STRUCTURE, Theorem 3 and Lemma 4 |
| G4a | C2, two opposite corners | **Complete** — OPPOSITE_CORNERS |
| G4b | Type III, three corners | **Complete** — CORNER_FAMILIES |
| G5 | Type II, every count, hull, cell, and cut | **Complete** — UNBALANCED_FINAL_LOWER_WEDGE, Theorem 2 |
| G6 | All N and C1 placements with fewer boundary contacts | **Complete** — all 62 parent rows and all 221 retained leaves |
| G7 | Unrestricted sharp bound, uniqueness, and boundary transitions | **Complete** — GLOBAL_THEOREM |

All named manuscripts in the table are under `hand/`.
The [theorem index](hand/README.md) links each component.

## Closed G6 register

The original IDs and the original number of rows are retained.
No case was removed from the denominator to obtain completion.

| Branch | Parent rows | Leaf rows | Open |
|---|---:|---:|---:|
| N6 | 13 | 38 | 0 |
| N7 mixed sign register | 16 | 16 | 0 |
| C1, zero lower | 21 | 65 | 0 |
| C1, one lower | 12 | 102 | 0 |
| **Total** | **62** | **221** | **0** |

[hand/G6_ITEMIZED_CASES.md](hand/G6_ITEMIZED_CASES.md) gives every parent
separately. [hand/G6_ITEMIZED_LEAVES.tsv](hand/G6_ITEMIZED_LEAVES.tsv)
retains the lower-point, sector, wedge, and sign subdivisions.
[hand/check_g6_itemized_cases.py](hand/check_g6_itemized_cases.py) checks
the exact inventory and proof-file references. The individual proof
packages check their finer algebraic covers.

The final closures are:

- N6-03-L0/L1: [single-top completion](hand/SIX_BOUNDARY_SINGLE_TOP_COMPLETION.md).
- N6-04-L0/L1: [mixed-cap completion](hand/SIX_BOUNDARY_SIDE_TOP_COMPLETION.md).
- N6-06-L0/L1: [double-top completion](hand/SIX_BOUNDARY_DOUBLE_TOP_COMPLETION.md).
- C1-1-04/07: [mixed-cap completion](hand/C1_ONE_LOWER_MIXED_CAPS.md).
- C1-1-10/11/12: [top multiplicity](hand/C1_ONE_LOWER_TOP_MULTIPLICITY.md).

The other C1 lower counts, all eight N6 coarse occupancy orbits, the
seven-boundary theorem, and all corner families are included in the
global assembly.

## Completed verification

The new finite packages have passed their exact fraction verifiers and
separate SymPy reconstructions. Together the final closures contain
1,311 certificates and 213,736 positive rational terms.
The checks reconstruct signs, containment thresholds, complete finite
covers, closed coordinate subdivisions, coefficient sums, and valid
certificate reuse. The sharp chamber maps and moving-vertex identities
were checked separately.

The global geometric review checked normalization, the nine one-lower
C1 rows, the eight N6 occupancy orbits, reflection conventions, the
seven-boundary normalization, and equality transfer. It also checked that
the triangle-capacity dependency chain does not assume the final theorem.
The one-lower C1 no-exterior case uses its direct seven-point
quadrilateral contradiction.

See [HANDOFF.md](HANDOFF.md) for the package counts, audit receipts,
and reproduction entry points.

## Remaining validation work

These are review and formalization tasks, not open mathematical cases
in the stated proof.

1. Obtain external review of the geometric reductions, the cited
   affine-isoperimetric input, and the complete equality argument.
2. Formalize the geometric dependency chain in Lean if that is the next
   project goal.
3. Formalize or otherwise verify the small exact polynomial checker and
   its finite-cover semantics, then import the fixed rational data.

No external peer review, Lean verification, or CI run is claimed.
The older executable proof draft under `exact/` is preserved, but
its 330,988-pattern Type-I run is not a premise of this completed assembly.
