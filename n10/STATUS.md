# Status: complete unrestricted n=10 computer-assisted proof

**All five exhaustive families are closed, with zero unresolved roots.** Both
independently implemented global checkers completed, and the final acceptance
check compared every one of the 888,824 anchor patterns. The exact attainment,
unrestricted local theorem, and all 27 exceptional root certificates were
replayed in exact arithmetic.

## Theorem

For ten points in the unit square,

    H10 = A = 0.04653741958254177...,
    3456 A^3 - 1764 A^2 + 268 A - 9 = 0.

Every maximizer is the configuration in PROOF.md, up to square symmetry and
relabeling. The strict local theorem and the reverse-shear argument prove the
equality classification; it is not inferred merely from enumeration counts.

## Exhaustive family inventory

| Family | Domain | Anchor patterns | Continuous roots | Unresolved |
|---|---|---:|---:|---:|
| III | Three occupied corners | 1 | 12,172 | 0 |
| II | Adjacent occupied corners after shear | 348 | 641,738 | 0 |
| C2 | Two opposite occupied corners | 17,903 | 58,494 | 0 |
| C1 | One occupied corner | 35,545 | 9,366,572 | 0 |
| N | Corner-free normalized support contacts | 835,027 | 38,929,633 | 0 |
| **Total** | **All normalized maximizers** | **888,824** | **49,008,609** | **0** |

The four corner families are excluded at 4653/100000, strictly below A. Every
corner root closes at its first interval node. N uses the smaller-than-A
threshold 4653741958254/10^14 together with the unrestricted strict local theorem.
All 120 triangle areas are treated unsigned. The initial boxes cover real
coordinates continuously; points are not restricted to grid vertices.

Both implementations agree on every pattern's anchor IDs, initial-root count,
discrete-search count and certified-root count. Their total number of discrete
search nodes is 2,613,250,637. Their fine N interval-tree counts differ because
the endpoint scales and traversal orders differ: 39,060,816 primary versus
39,074,196 independent. Both prove every original root.

## Exact closure of the difficult roots

| Anchor pattern | Root lemmas | Certificate nodes | Exact infeasibility leaves | Local leaves |
|---|---:|---:|---:|---:|
| 57,964 | 14 | 26 | 17 | 3 |
| 269,299 | 13 | 25 | 17 | 2 |
| **Total** | **27** | **51** | **34** | **5** |

The certificates also contain 12 splits, 115 contraction rounds, and 2,500
exact integer dual bounds. Every split has both children. A standalone second
verifier regenerates every affine inequality and replays every proof-tree node
using Python's unbounded integers, with no numerical solver imported. The
root-lemma table is checked for exact equality with the verified certificate
manifest before its global-cover uses are accepted.

## Acceptance gates

| Gate | Requirement | Result |
|---|---|---|
| C0 | Exact attainment and unrestricted radius-1/2000 local theorem | PASS; two field implementations |
| C1 | Exhaustive five-family normalization of arbitrary maximizers | PASS; independent geometric audit |
| C2 | Exact continuous unsigned-area checking; unresolved work fails closed | PASS; two separately written implementations |
| C3 | Complete every global family and every exceptional root | PASS; zero unresolved |
| C4 | Independent replay, full per-pattern comparison, theorem and equality assembly | PASS |

The final acceptance command is

```sh
python n10/audit/verify_complete.py
```

Its successful record is `audit/complete_receipt.json`. The complete source
cohorts and their dependency hashes are in `runs/primary/manifest.json` and
`runs/independent/manifest.json`. Compressed per-pattern inventories and actual
run logs are included. `REPRODUCE.md` distinguishes auditing those stored
receipts from recomputing both full enumerations.

## Scope and review status

This is a completed exact computer-assisted proof draft, not a Lean-kernel
formalization or external peer review. Both implementations and their audits
were produced in this work session; independent means separately implemented,
not external authorship. No GitHub CI or Lean compilation was used. The merged
n=9 files are unchanged.

## Hand-proof conversion

The active itemized checklist is `hand/ROADMAP.md`. Exact attainment,
normalization, qualitative local optimality, the stated symmetric chamber,
and the four-corner exclusion have written hand proofs. The new global
occupancy theorem closes III-3C-U4, and the eight-point endpoint theorem
closes III-3C-U0 and III-3C-U1. Its seven-point strengthening also closes
III-3C-U2. HP10 now covers both orientations of the stated symmetric family:
the opposite ADO orientation has the elementary bound m<=1/24<A*.
The conditional shear-reversal lemma is also proved.

The universal clustered-triangle theorem now closes U3-CLUSTERED with
m<93/2000<A*. Thus U3 retains only the distributed upper-triple alternative.
The opposite-corner analysis supplies uniform contact bounds and closes the
entire C2-CENTRAL/CENTRAL subfamily. The complete same-corner mixed/mixed
subfamily is now excluded as well: the noncentral points must share a corner
triangle, and all four pair-line sign alternatives lead to contradictions.
The full mixed/central alternative is also excluded: its three central points
must lie inside a quadrilateral divided by an actual diagonal into two
triangles, each too small to contain two points. Finally, the opposite-corner
mixed/mixed alternative is excluded in both exhaustive central-pair
orientations. One violates a reciprocal-product bound; the other forces two
opposed scalar inequalities whose minimum is strictly negative. Thus the
entire C2 family is now closed, with boundary degeneracies covered explicitly.

Five global obligations remain: III-3C-U3, II, C1, N6 and N7. HP14
(assembly) and HP15 (final manuscript audit) depend on those obligations and remain unchecked. The
computer-assisted completion above is not a substitute for these hand proofs.

The balanced U3 2/2 fan split is now
excluded in full by seventeen printed cubic inequalities, and the entire
N8 3/5 line class is excluded by ten. Both complete manuscripts include
every positive integer coefficient and exact negative bound. The
manuscript-reading Fraction checkers pass, as do independent SymPy
expansions of all printed rows. U3 retains only 3/1 and its reflection;
the complete asymmetric N8 theorem is now assembled in N8_COMPLETE.md.
Its same-side 4/4 class is excluded by four contained-placement rows and
thirteen outside-placement rows. Seven further rows exclude every
oblique sign failure in the corner-edge 4/4 class. Together with the ten
3/5 rows, all 34 rows and 6,573 integer entries are printed and independently
expanded. The surviving sign chamber has the sharp bound and unique
candidate equality without a symmetry assumption.

## Publication and verification correction

The previous local completion commit contained the independent checker,
complete run manifests and inventories, final acceptance command, and receipts,
but those additions had not reached the PR branch. They are now included here.
The stored-package acceptance command was rerun after recovering its final
source versions and passed, producing a byte-identical completion receipt.
This rechecks exact input certificates and both complete recorded inventories;
it does not rerun the full C++ enumerations.
