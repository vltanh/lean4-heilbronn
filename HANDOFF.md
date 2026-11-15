# Completed research handoff

## Outcome

The unrestricted nine-point Heilbronn theorem and its equality classification
are assembled in [hand/UNRESTRICTED.md](hand/UNRESTRICTED.md):

\[
H_9=\frac{9\sqrt{65}-55}{320}.
\]

Every normalized family N, C1, C2, Type II and Type III is covered.
All **62 parent cases and 221 indexed leaves are closed**. No mathematical
case remains open in the stated proof. Equality holds only at the explicit
construction, up to square symmetry and relabeling.

## Read in this order

1. [hand/UNRESTRICTED.md](hand/UNRESTRICTED.md): theorem, exhaustive assembly,
   boundary audit and transfer of equality back to the original points.
2. [hand/GLOBAL_STRUCTURE.md](hand/GLOBAL_STRUCTURE.md): the two contact
   shears, five normal forms and inverse-shear rigidity.
3. [hand/HAND_PROOF.md](hand/HAND_PROOF.md): exact construction, sharp
   chamber, all 84 attaining areas and unrestricted strict local optimality.
4. [hand/README.md](hand/README.md): complete component-theorem index.
5. [ROADMAP.md](ROADMAP.md): closed proof gates and dependency order.

## Final completion packages

| Package | Cover | Fixed expressions | Positive terms |
|---|---:|---:|---:|
| C1 final mixed caps | 62 words / 136 terminal branches | 134 cubics | 20,543 |
| N6 one opposite cap | 884 pairs / 893 cells | 616 cubics | 89,897 |
| N6 side and opposite caps | 97 words with complete branch cover | 107 cubics + 1 quartic | 22,019 |
| N6 two-top triangular hull | 260 pairs / 262 cells | 220 cubics | 29,641 |
| N6 two-top convex hull | 94 words with complete branch cover | 100 cubics | 17,619 |

All these coefficient packages passed their exact verifiers and independent
symbolic reconstruction. The geometric assumptions, area thresholds,
conditional factors, complete covers and sharp equality maps were reviewed
separately. Both two-top hulls are assembled in
[hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md](hand/SIX_BOUNDARY_TWO_TOP_COMPLETION.md).
The full one-lower C1 assembly is Theorem 2 of
[hand/C1_ONE_LOWER_MIXED_CAPS.md](hand/C1_ONE_LOWER_MIXED_CAPS.md).

The concurrent contributions for C1 top multiplicity and the cubic-only
N6 side/top completion are also preserved, verified and indexed. The
latter's lower 18-certificate data were reformatted but remain semantically
identical to the independently audited original table.

The later concurrent completion adds an alternate global assembly in
[hand/GLOBAL_THEOREM.md](hand/GLOBAL_THEOREM.md), a 542-cubic single-top
cover, and a 329-cubic double-top cover with its high E/F chamber. On import, all
20 added source, coefficient and audit files were checked byte-for-byte
against their published Git blob hashes. Separate exact, symbolic and
geometric checks passed for both covers and the sharp chamber. The primary
assembly retains its own complete covers; their different cell and term
counts are intentional and refer to their respective data files.
The final geometric review also clarified that the two cap edges support
the anchor hexagon; they need not support the whole square.

## Verification and trust boundary

The final combined gate passed all **89 hand-proof diagnostics** with
zero failures. It preserves the original 86-check receipt and extends it
with the three concurrent diagnostics after confirming all original proof
inputs unchanged. A targeted census follow-up confirmed all 62 parents
and 221 leaves. The input fingerprints, complete outputs and reproduction
command are recorded in [research/HAND_CHECKS.md](research/HAND_CHECKS.md).

The files under `hand/` contain the mathematical arguments and fixed exact
proof objects. The scripts in `research/audit_*.py` preserve separate
symbolic reconstructions. Optional discovery programs and raw caches
under `research/` and `work/` document how expressions were found; numerical
solver output is not a proof premise.

The global nonagon exclusion uses the classical affine isoperimetric
inequality, with its precise normalization and a primary proof reference
in [hand/GLOBAL_COMPLETION.md](hand/GLOBAL_COMPLETION.md). The stronger
two-vertex container theorem is downstream of the unrestricted actual-
triangle capacity theorem; the final dependency order does not use it
to replace an upstream corner ingredient.

This is a completed mathematical proof with exact certificates. It has
not been formalized in Lean, and no external peer review is claimed.
The original exact local checker passed; its explicit radius \(1/200\)
belongs to that older certificate. The strict local result used for the
new equality transfer is proved qualitatively in HAND_PROOF.md.

## Recovery and reproducibility

A workspace outage returned an older checkout during development. Every
published file was restored and checked against its exact Git blob hash.
Unpublished coefficient packages were regenerated from the preserved
models and then independently audited. Frequent commits preserve the
models, exact tables and audit scripts.

The original compressed secondary per-pattern journal of the separate
computational route is not in this source tree. The checker and compact
receipts remain in `exact/`; the journal can be regenerated using
[exact/REPRODUCE.md](exact/REPRODUCE.md). Historical SHA256SUMS refers to
the original archive. Its full 330,988-pattern Type-I computation was not
rerun for this proof, and the completed hand/certificate argument does not
depend on that run.
