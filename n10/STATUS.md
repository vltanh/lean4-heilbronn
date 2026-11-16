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

Four global obligations remain: II, C1, N6 and N7. HP14
(assembly) and HP15 (final manuscript audit) depend on those obligations and remain unchecked. The
computer-assisted completion above is not a substitute for these hand proofs.

The balanced U3 2/2 fan split is now
excluded in full by seventeen printed cubic inequalities, and the entire
N8 3/5 line class is excluded by ten. Both complete manuscripts include
every positive integer coefficient and exact negative bound. The
manuscript-reading Fraction checkers pass, as do independent SymPy
expansions of all printed rows. The final U3 3/1 split and its reflection
are now excluded by twenty further printed cubic rows, with 1,392 integer
entries. THREE_CORNERS_COMPLETE.md assembles the full III exclusion.
The complete asymmetric N8 theorem is assembled in N8_COMPLETE.md.
Its same-side 4/4 class is excluded by four contained-placement rows and
thirteen outside-placement rows. Seven further rows exclude every
oblique sign failure in the corner-edge 4/4 class. Together with the ten
3/5 rows, all 34 rows and 6,573 integer entries are printed and independently
expanded. The surviving sign chamber has the sharp bound and unique
candidate equality without a symmetry assumption.

The new universal quadrilateral theorem proves capacity two whenever the
actual quadrilateral has doubled area at most one. Its four sector-count
patterns reduce to nine printed cubic rows with 139 integer entries;
independent geometry and Fraction/SymPy arithmetic audits pass. This gives
new exhaustive N6/N7 placement reductions. The single- and double-contact
projection theorems also exclude attainment in every stated secondary
chamber, including all normalized candidate neighborhoods. Their global
placement parents remain open.

The entire triangular-right child of Type-II (1,2,4) is now excluded.
The unique middle fan placement has three exhaustive CE cuts. When its
lower-fan point is below CE, a forced two-point quadrilateral has doubled
area below 721/1000<8sigma. The mixed cut has opposing monotone scalar
bounds, and the both-upper cut has one fully printed cubic with 76
positive integer entries, maximum 46. Independent geometry and exact
Fraction/SymPy audits pass. TYPE_II_R4_TRIANGLE_COMPLETE.md assembles
the child; its nontriangular sibling and the other three Type-II count
rows remain open. The exact global algebra checker now has 25 passing
groups.

For N7, N7_PROJECTED_SIGNS.md now removes the extra coordinate
condition from the entire normalized inward-secondary good-sign
chamber, at every inward depth. The complementary coordinate branch
splits only by the order of the two upper side contacts. Both cases
have printed cubic contradictions, with 642 positive integer entries
in total. The transferred six-ear triangle bounds and the actual
quadrilateral spread bounds have been independently checked; separate
Fraction and SymPy expansions reproduce both exact negative bounds.
Global coverage outside those sign chambers remains open.

Further short endpoint arguments now close entire exterior counts.
N7_UPPER_OCCUPANCY.md excludes (2,1,0), so every competitive N7
configuration has a free point inside the boundary heptagon. Its four
remaining counts have explicit additional chord placements.
N6_EXTERIOR_CUTS.md excludes three points in either side cap, two in
each side cap, and three in the top cap together with a side-cap point.
Both notes have independently audited geometry and exact rational gaps;
their surviving global parents remain unchecked.

N7_OPPOSITE_UPPER_CAPS.md further excludes simultaneous occupancy of
the two upper exterior caps, using just seven actual points. The
resulting scalar bound (5sqrt(5)-11)/2<1/11 closes the entire (1,1,1)
row and leaves only (0,0,3), (1,0,2), and (2,0,1). The nontriangular
Type-II (1,2,4) branch also has an exact quadrilateral-hull catalogue;
in its central support-cell pair, both middle fans DHF and EHF are
empty. Those remaining Type-II fan counts are still open. The exact
global algebra checker now has 27 passing groups.

N7_SAME_UPPER_CAP.md now excludes two free points in the same upper
cap as well. Both cap-hull types and both upper-contact height orders
are covered; the remaining five ray exits have 523 printed integer
entries, independently expanded by Fraction and SymPy. Only N7
counts (0,0,3) and (1,0,2) remain. In Type-II (1,2,4), the entire
nontriangular central support-cell pair II+II is excluded by the
positive-quartic argument in TYPE_II_R4_CENTRAL.md. Its stronger
six-point threshold is reusable elsewhere. Only the two mixed support
pairs remain in that nontriangular child. The global algebra checker
has 29 passing groups.

The quadrilateral capacity now has a stronger form for actual points
in the original square: at doubled minimum sigma=93/1000, every
quadrilateral containing three further points has doubled area greater
than 93/91. SQUARE_QUADRILATERAL_THREE.md supplies all ten geometric
rows and 153 integer entries. Its clustered-triple premise is applied
before affine rescaling; the smaller normalized threshold 91/1000 is
then justified. The stronger mesh ear bounds and the subquadrilateral
spread use have independent geometry audits, and separate Fraction and
SymPy expansions reproduce all ten negative rational bounds.

The entire I+II mixed support-cell branch of the nontriangular
Type-II (1,2,4) hull is now excluded. TYPE_II_R4_MIXED_I.md covers
all three pair-line orientations. In the last orientation, actual
D/E clearances force the noncentral point inside DEH; two monotone
contact eliminations leave six variables in a proved rational box.
The final quartic has 86 printed positive integer entries, maximum
6437, and exact upper bound -1330931547/10^13. Independent geometry
review and separate Fraction/SymPy expansions pass. Only II+III
remains in this nontriangular child. The other three Type-II counts
and the global II parent remain unchecked. The global algebra
checker now has 30 passing groups.

N7_OP_LINE_CAPS.md now excludes every 1/7 and 2/6 hull-vertex split
by the line through the two interior points in the single-exterior
N7 placement (1,0,2). Its exhaustive eight-cap catalogue combines
endpoint triangle bounds, a monotone top-vertex argument, and five
printed polynomial sums with 2,254 positive integer terms. All
supporting triangle endpoints are actual points; the convex-five
endpoint factors are proved without restricting the virtual apex to
the square. Independent geometry review and separate Fraction/SymPy
expansions pass. The 3/5 and 4/4 line classes and the all-interior
placement (0,0,3) remain open. The global algebra checker now has
31 passing groups.

## Publication and verification correction

The previous local completion commit contained the independent checker,
complete run manifests and inventories, final acceptance command, and receipts,
but those additions had not reached the PR branch. They are now included here.
The stored-package acceptance command was rerun after recovering its final
source versions and passed, producing a byte-identical completion receipt.
This rechecks exact input certificates and both complete recorded inventories;
it does not rerun the full C++ enumerations.
