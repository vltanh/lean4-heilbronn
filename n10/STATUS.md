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

The whole Type-II count (1,2,4) is now closed. The last nontriangular
support pair II+III has a forced DF straddle and just two remaining
actual EPQ signs. TYPE_II_R4_MIXED_III.md excludes both by printed
cubics with 28 and 33 terms, all weights at most 21. Their independently
expanded exact upper bounds are -2041503/10^9 and -200391/200000000.
TYPE_II_R4_COMPLETE.md assembles every triangular and nontriangular
right-hull alternative, all three support-cell pairs, and all central
placements. Only Type-II rows (1,3,3), (2,2,3), and (2,3,2) remain;
the global II parent remains unchecked. The global algebra checker
now has 32 passing groups.

The complete HGF short-arc position of the single-exterior N7 3/5
line class is now excluded by N7_THREE_FIVE_TOP.md. The transferred
triangle capacities force the point placements, and eleven exhaustive
actual-sign rows have 3,183 printed cubic terms. Every conditional
occupancy and diagonal-separation premise is listed; the AGO-positive
row has its own proved rational box. Independent geometry review,
manuscript-parsed SymPy expansion, and the Fraction checker pass.

For N6, N6_EXACT_HULL_REDUCTION.md now proves the full exact-hull
lower-pair catalogue, both rational boxes, and all lower/upper cross
signs. The nested mixed pair is uniformly excluded by a positive
cubic, removing three of the eleven initial line rows. The surviving
mixed rows have stronger area floors; one also has a strict support
ratio interval and narrower physical box. These deductions have an
independent geometry and exact-identity audit. The exact-hull parent
and the exterior placements remain open. The global algebra checker
now has 34 passing groups.

The entire C1 exact-pentagon child is now excluded. Its forced 3/2
lower/upper split, distributed lower mesh, endpoint inequalities, and
capacity-one fans are proved in C1_PENTAGON_GEOMETRY.md. The complete
C1_PENTAGON.md has nine exhaustive anchor-line roots, 33 binary splits,
34 polynomial leaves, and eight geometric leaves. All 3,317 positive
integer entries are printed, and every coefficient-box upper bound is
strictly below -1/100. A manuscript-reading Fraction checker replays
the full sign tree and all geometric witnesses; a separate SymPy
reconstruction verifies every printed sum. The C1 exterior placements
and the global C1 parent remain open. The global algebra checker now
has 35 passing groups.

Every single-exterior N7 3/5 OP-line position is now excluded when
h>=e. N7_THREE_FIVE_UPPER_HEIGHT.md proves the projected-ear and
long-triangle transfers, a uniform upper ordinate bound, and the
supporting-ray identity for any five convex actual points. Its seven
remaining arc positions have an explicit exhaustive 73-leaf ledger:
71 printed cubic contradictions, with 22,579 positive integer terms,
and two direct sign contradictions. Root review checked every printed
sign and conditional witness; separate Fraction and SymPy arithmetic
reconstructions pass for every row. The other h<e positions, the 4/4
line classes, and the all-heptagon-interior placement remain open.
The global algebra checker now has 36 passing groups.

TYPE_II_223_CORE.md now proves the full eight-point placement theorem
for the remaining Type-II count (2,2,3). Its analytic support bounds
and exact bootstraps give one rational box. Six exhaustive placement
rows, with 424 printed integer terms and seven explicit affine squares,
force the right support point into DCH, DCF, and CFP and at least 2s
above F. Root geometry review, separate manuscript-parsed SymPy sums,
and Fraction arithmetic pass. The count remains open until its two
central points are incorporated.

C1_EXTERIOR_REDUCTION.md supplies whole analytic exterior-count
exclusions and exactly 32 remaining count rows. Side triples and two
side pairs are impossible; a side pair forces at most one lower point
and at most one top point. Further top/lower triple cuts and the
completed exact-pentagon theorem finish the catalogue. Its support
intercepts, strict scalar gaps, boundary-contact cases, and complete
count table have been independently checked. The global C1 parent
remains open. The global algebra checker now has 38 passing groups.

N7_LONG_TRIANGLE_CAPS.md now gives capacity one for all eight long
actual hull triangles, at every height and without an OP-line assumption.
The analytic bound g<3/5 and eight fixed polynomial sums, containing
3,212 positive integer terms, complete the remaining height direction.
N7_CORNER_LINE.md closes the entire literal AB/EF line class: its
forced quadrilateral has two separated diagonals, eighteen printed
cubics cover all fifteen noncandidate oblique words, and the good word
uses the sharp projected theorem. All 5,641 integer terms, signs, boxes,
and occupancy witnesses have independent manuscript-based SymPy and
Fraction checks. The two geometric arguments and their exact scalar
identities have been reviewed. The other 4/4 edge pairs, remaining
lower-height 3/5 arcs, and all-interior N7 placement remain open.
The global algebra checker now has 40 passing groups.

The entire Type-II count (2,2,3) is now closed in
TYPE_II_223_COMPLETE.md. A capacity-one actual triangle selects one
of the two central points; its three possible containing regions
lead to eighteen exhaustive strict-sign rows. All conditional
containments and nine rational boxes are proved geometrically, and
all 1,462 integer terms are printed. An independent manuscript-reading
SymPy check verifies every used sign and actual occupancy, every box,
the exhaustive row coverage, and every exact negative cubic bound;
the separate Fraction checker passes as well. Only (1,3,3) and
(2,3,2) remain in the adjacent-corner family. The global algebra
checker now has 41 passing groups.

The entire N6 exact-hull 2/2 placement is now closed. N6_EXACT_HULL.md
and its CS, CO and MIXED appendices print all eight roots, 686 case
nodes, and 4,388 elementary geometric deductions. Every branch ends
in one of 290 fixed cubic contradictions or 229 actual containment
contradictions. All 44,924 positive integer terms and ten affine squares
are printed; every exact upper bound is below -1/100. A standard-library
checker reads the manuscript, verifies exhaustive branching and every
geometric premise, and reconstructs the sums. A separate SymPy reader
independently replays all deductions and expands every printed sum.
A further independent geometry audit checked all nodes and 1,239
triangle, 988 quadrilateral, 82 spread, and one distributed-mesh factor
premises. The exterior-cap N6 placements remain open. The global
algebra checker now has 42 passing groups.

The entire single-exterior N7 3/5 line class is now closed, at every
height and every short-arc position. N7_THREE_FIVE_LOWER_HEIGHT.md
supplies the final seven exhaustive binary ledgers: 93 printed cubic
contradictions with 27,884 integer terms and two direct FH-edge
contradictions. Its 58 quadratic five-chain substitutions use explicitly
proved upper bounds. Independent geometric replay regenerated all
printed signs and validated all 392 used occupancy/spread witnesses;
separate Fraction and SymPy readers reproduce every exact bound.
The remaining N7 tasks are the other 4/4 edge pairs and the all-interior
placement. The global algebra checker now has 43 passing groups.

All C1 configurations with three lower points are now excluded,
including the four exterior count rows and both side caps. The convex
two-top branch has two positive polynomial identities with 150 printed
coefficients. The remaining top-pair, side/top, central/top and
central/side children have 98 roots, 66 binary refinements, 127 cubic
leaves and 37 geometric leaves. All 7,033 positive integer terms are
printed. Independent geometric replay verifies every containment,
mesh and guarded implication; separate manuscript-reading Fraction
and SymPy implementations reproduce all exact bounds. Section 4 of
C1_THREE_LOWER_ONE_SIDE.md assembles these four exterior theorems
with the complete exact-pentagon result. The C1 parent retains its
28 zero-, one- and two-lower exterior count rows. The global algebra
checker now has 45 passing groups.

The entire literal CD/GH 4/4 line class of single-exterior N7 is now
excluded at every height. N7_CDGH_LINE.md has sixteen oblique words,
two strict-sign refinements, and eighteen fixed cubic contradictions.
All 5,926 positive integer terms and 24 rational affine-square
definitions are printed; 23 of the squares occur in row R05c. A fresh
independent geometric replay validates every actual sign, all 29
five-chain substitutions, 17 one-interior quadrilateral witnesses,
and 82 other triangle, quadrilateral and spread witnesses. Separate
Fraction and SymPy manuscript readers reproduce all exact negative
bounds and the full branching. The remaining single-exterior N7
obligations are its two side-edge 4/4 classes; the all-interior N7
placement also remains open. The global algebra checker now has 46
passing groups.

The complete adjacent-corner count (2,3,2) is now excluded by
TYPE_II_232_COMPLETE.md. The triangular-left alternative has two
proved distributed meshes, a monotone analytic envelope with exact
strict gap -4021567/3583947000, and one 16-term cubic. The
quadrilateral-left alternative has four roots, sixteen exhaustive
leaves, five direct geometric contradictions, and eleven printed
cubic sums with 410 terms. Both theorems use only the five anchors
and three central points; both right points are unrestricted.
Independent review accepts every count cut, ray order, containment,
box and analytic monotonicity premise. Separate Fraction and
manuscript-reading SymPy checks reproduce all 426 products, every
derivative, the quintic positivity estimate, and all exact negative
bounds. Only (1,3,3) remains in Type II. The global algebra checker
now has 47 passing groups.

N6_TWO_LOWER_CAPS.md now excludes the entire two-lower/two-exterior
placement, including closed outer square faces. A direct endpoint
comparison excludes two points in the same side cap. The other four
cap models use the complete eight-row lower catalogue: 32 roots,
65 nodes, 1,251 explicit geometric deductions, 54 cubic leaves and
two geometric contradictions. The appendix prints all 5,434 positive
integer terms, with maximum weight 4,896. Independent review accepts
the lower-box transfer, all cap and support bounds, the scalar top-pair
theorem, every trace step and all 376 conditional factor witnesses.
The two-exterior convex-line rule explicitly allows zero or two hull
crossings, and chord containment is applied only to a point actually
inside the hull. Separate manuscript-reading Fraction and SymPy
implementations reproduce every fixed sum and its strict bound. The
other N6 exterior placements remain open. The global algebra checker
now has 48 passing groups.

The complete C1 count (2,0,1,1,1), with two points below HC and one
point in each exterior cap, is now excluded analytically. The note
C1_TWO_LOWER_THREE_CAPS.md derives a quartic restriction from the
three occupied caps and the two-point lower-triangle cost. Exact
derivative comparisons force 807/1000<h,c<86/100 and
597/1000<d,f<77/100. The right and left points then force both top-point
coordinates below 892/1000, making its actual cap triangle too small.
The two strict rational gaps are 37/1000000 and 17639/1000000.
All square-side faces are included. Independent geometry review and
separate rational and symbolic checks accept the argument. C1 retains
27 exterior count rows with at most two lower points. The global
algebra checker now has 49 passing groups.

The entire N6 placement with two lower points, one upper-interior
point and one side-cap point is now excluded by N6_TWO_LOWER_SIDE.md
and its printed appendix. Both side-cap models remain after the one
lower normalization, and the theorem includes outer square faces.
Sixteen roots have 107 nodes, 654 explicit geometric deductions,
56 fixed cubic contradictions and 26 geometric exclusions. All 5,741
positive integer terms are printed, with maximum weight 41,353.
A fresh independent geometry replay validates every step, both
twelve-word upper splits, nine cross splits, fourteen binary splits,
all 221 triangle/quadrilateral witnesses, 151 cap witnesses and nine
spread witnesses. Separate Fraction and SymPy readers reconstruct
every sum and exact negative bound. Section 6 also excludes the
entire all-interior N7 count (k,j,q)=(2,1,0), using the seventh contact
as a boundary side-cap point. The N6 top-cap and other exterior counts
and the remaining N7 counts stay open. The global algebra checker
now has 50 passing groups.

The entire literal BC/FG side-line class of single-exterior N7 is
now excluded at every height. N7_SIDE_BC_FG.md gives a complete binary
tree with 49 cubic leaves and all 15,159 positive integer terms.
One leaf uses 26 explicitly printed rational linear squares, each
unconditionally nonnegative. An independent geometry implementation
reconstructs every common and additional sign, all 75 five-chain
bounds, 209 one-interior quadrilateral witnesses and 154 other actual
triangle, quadrilateral and spread witnesses. Separate Fraction and
SymPy manuscript readers reproduce every exact negative bound. Only
the literal AH/DE 4/4 side-line class remains in single-exterior N7;
the unfinished all-interior placements remain separate. The global
algebra checker now has 51 passing groups.

The all-interior N7 heptagon now has an exhaustive five-count catalogue
after the available reflection h>=e, using the regions HABC,HCEF,CDE.
N7_HEPTAGON_ONE_EAR.md proves their capacities and excludes both
counts with an occupied right ear and a lower point: (2,0,1) by a
strict endpoint area budget, and (1,1,1) by two fixed cubic rows.
All 52 Pluecker sign deductions and 349 positive integer terms are
printed. Independent geometric review and separate manuscript-reading
Fraction and SymPy expansions pass. The already-published N6 boundary
theorem excludes (2,1,0). Only (1,2,0) and (0,2,1) remain in this
all-interior catalogue. The global algebra checker now has 52 passing
groups.

The entire single-exterior N7 placement is now proved to satisfy
m<A*. The final literal AH/DE side-line class has 56 exhaustive cubic
leaves, 19,348 printed positive integer terms, no squares and two
explicit rational boxes. Independent geometry reconstructs every
sign and all 107 five-chain bounds, 187 one-interior quadrilateral
witnesses and 132 other conditional witnesses; separate Fraction and
SymPy readers reproduce every exact bound. N7_SINGLE_EXTERIOR.md
assembles all 1/7, 2/6 and 3/5 arc positions and all four literal 4/4
edge pairs. Its conclusion is the strict sharp bound: the AB/EF good
word uses projection to prove m<A*, while the other branches have
the stronger rational sigma gap. No uniform sigma gap is claimed
for the entire single-exterior family. Only all-interior counts
(1,2,0) and (0,2,1) remain in N7. The global algebra checker now has
53 passing groups.

The entire triangular-right hull child of Type-II (1,3,3) is now
excluded. TYPE_II_133_TRIANGULAR_RIGHT.md selects one actual right
interior point by its smaller C-barycentric coefficient and proves
its height bound. Three CE cases, four DH ray cuts and two signs of
DHR give 24 roots. Twenty-eight binary refinements yield 52 closed
leaves: eight geometric exclusions and 44 cubics with all 2,194
positive integer terms printed. Independent geometric review validates
the selected-point argument, all global and conditional boxes, both
ray orders, 877 Pluecker and 56 mesh deductions, 151 strengthened
triangle occurrences, 126 quadrilateral occurrences and 72 mesh-factor
occurrences. Separate Fraction and SymPy readers reproduce every
exact bound and the exhaustive tree. Only nontriangular right hulls
remain in Type II. The global algebra checker now has 54 passing
groups.

The entire all-interior N7 count (k,j,q)=(0,2,1) is now excluded by
N7_HEPTAGON_TWO_UPPER_EAR.md. An occupied actual ear gives stronger
contact and free-point ranges through ten explicit scalar comparisons.
The complete binary tree has 64 leaves: 58 fixed cubics with 13,979
printed integer terms and six witnessed clustered-triangle exclusions.
A fresh independent manuscript reader validates all 2,111 Pluecker
and 55 barycentric deductions, every branch, both boxes, 248 actual
triangle and 357 quadrilateral witnesses, eleven spread witnesses and
250 convex-five factor occurrences, including free-point pentagons.
Separate Fraction and SymPy expansions reproduce every exact negative
bound. Only the all-interior (1,2,0) count remains in N7. The global
algebra checker now has 55 passing groups.

The complete C1 side/top-pair count (2,0,1,2,0) and its reflection
are now excluded. C1_TWO_LOWER_SIDE_TOP_PAIR.md gives a monotone
endpoint-container bound and a five-coefficient positive Bernstein
identity, forcing a triangular top hull. Four exhaustive rows in
C1_TWO_LOWER_SIDE_TOP_COMPLETE.md have 60 explicit deductions and
764 printed terms. A fresh independent reader verifies the complete
geometry, outward coordinate boxes and every exact negative bound;
separate Fraction and SymPy expansions pass. In addition,
C1_THREE_TOP_NO_SIDE.md proves that three top points force both side
caps empty, using two analytic endpoint containers with exact gaps
26/1000000 and 137572/1000000. This closes two more count rows.
The remaining C1 exterior catalogue has 24 rows with at most two
lower points. The global algebra checker now has 57 passing groups.

The entire N6 family with two lower points is now excluded by
N6_TWO_LOWER_COMPLETE.md. Its final upper/top-cap child has eight
roots, 267 nodes, 821 explicit deductions, 113 polynomial leaves and
65 geometric exclusions. N6_TWO_LOWER_TOP.md and its appendix print
all 27,514 positive integer terms and 572 unconditional shifted
affine squares. Independent geometry checks all roots and splits,
875 triangle/quadrilateral, 274 cap and 25 spread witnesses, including
closed outer square faces. Separate Fraction and SymPy readers
reproduce every exact negative bound. The largest is
-20132663439404959/174570000000000000. Only k=0 or k=1 exterior
placements remain in N6. The global algebra checker now has 58
passing groups.

The entire nontriangular support cell I of Type-II (1,3,3) is now
excluded. TYPE_II_133_NONTRIANGULAR.md proves the exhaustive three-cell
geometry, all ten rational boxes and every shared factor;
TYPE_II_133_CELL_I.md closes all sixty ray roots with 36 geometric
exclusions and 24 cubics containing 932 printed terms. A fresh
independent geometry reader verifies 1,720 Pluecker, 171 mesh, seven
line and one chord deduction, including 178 strengthened-triangle,
67 quadrilateral and 38 mesh factor occurrences. Independent Fraction
and SymPy expansions pass; the largest upper bound is
-318882482113/15625000000000. The remaining Type-II obligations are
nontriangular support cells II and III. The global algebra checker
now has 59 passing groups.

Three additional analytic reductions are now complete. In C1,
C1_SIDE_PAIR_OPPOSITE_TOP.md excludes a side pair together with an
opposite-side point and a top point, independently of the fifth free
point. A scalar cubic forces .71<d<=h<.79 and .45<f<=c<.56;
two side-point clearances then bound the top triangle by .04709<s.
This closes (0,1,2,1,1) and (1,0,2,1,1), leaving 22 C1 exterior rows.
In N6, N6_SIDE_PAIR_REDUCTION.md proves the triangular cap hull and
Gamma2 endpoint cost for every side pair; a side pair and top pair
are impossible with budget gap 1297/20000. ONE_LOWER_POINT.md gives
four exhaustive local lower alternatives, with the double-ear cell
excluded and both central contact-order cubics derived directly.
Independent geometric and exact symbolic checks pass for all three
notes. The global algebra checker now has 62 passing groups.

TYPE_II_133_CELL_III.md now closes the entire third nontriangular
support cell. Its sixty roots and five binary refinements give 65
leaves: 27 geometric exclusions and 38 cubics with 1,117 printed
terms. Independent geometry verifies 1,827 Pluecker, 176 mesh, six
line, two chord and one barycentric deduction, and every conditional
factor. It reconstructs the same ten already-proved rational boxes.
Separate Fraction and SymPy expansions pass; the largest bound is
-693228701/25000000000. Only support cell II remains for the entire
Type-II parent. The global algebra checker now has 63 passing groups.

## Publication and verification correction

The previous local completion commit contained the independent checker,
complete run manifests and inventories, final acceptance command, and receipts,
but those additions had not reached the PR branch. They are now included here.
The stored-package acceptance command was rerun after recovering its final
source versions and passed, producing a byte-identical completion receipt.
This rechecks exact input certificates and both complete recorded inventories;
it does not rerun the full C++ enumerations.
