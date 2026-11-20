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

Three global obligations remain: C1, N6 and N7. HP14
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

The entire C1 count (2,1,1,0,1) is now closed in
C1_TWO_LOWER_BOTH_SIDES.md. Its three roots and 19 refinements give
20 fixed cubics with 5,473 printed terms and two mesh contradictions.
Independent geometry checks all 379 deductions, 46 conditional box
steps and 14,605 factor occurrences; separate Fraction and SymPy
expansions pass. C1 now has 21 remaining exterior rows.

N6_SIDE_PAIR_OPPOSITE.md gives a nine-point theorem excluding a side
pair with an opposite-side point, irrespective of the tenth point.
Its one 71-term cubic has maximum weight 660. Independent geometry
checks the complete box, both actual convex pentagons and all factor
premises; separate exact readers agree on the strict negative bound.
This closes three more N6 count rows, leaving nineteen with k=0 or
k=1 up to transposition.

Two further reusable geometric reductions are proved and independently
checked. QUADRILATERAL_SUPPORT.md supplies support-ray inequalities
for one or two actual occupants, including stronger overlapping-ear
and central-pair costs, with both signs of the support denominator
handled. N7_BOTTOM_SPAN_CAP.md proves the contact-only capacity-one
bound [BCE]<(149/20)s by a positive quartic discriminant argument.
Neither local reduction is counted as closure of the remaining N7
family. The global algebra checker now has 67 passing groups.

The adjacent-corner family II is now complete in TYPE_II_COMPLETE.md.
The last support cell has 120 roots and thirteen refinements, giving
133 leaves: 44 cubics with 2,219 printed terms and 89 geometric
exclusions. Independent geometry checks all 4,185 deductions, and
separate Fraction/SymPy readers reproduce every strict negative bound.
TYPE_II_133_COMPLETE.md assembles both right-hull alternatives and all
three nontriangular cells: 310 leaves and 6,462 printed terms. The
full-family theorem also proves normalization for arbitrary adjacent-
corner configurations, accounts for the three-corner alternatives,
and applies all four complete occupancy proofs. Thus every such
configuration has m<A*. The common central-strip inequality in
ONE_LOWER_POINT.md now supplies two further cubic contact bounds.
The global algebra checker has 68 passing groups.

Both remaining C1 side-pair/opposite-cap counts are now excluded by
C1_SIDE_PAIR_OPPOSITE_CENTRAL.md. The complete three-row proof prints
454 integer terms, 58 sign deductions and 27 short monotonicity
certificates. Independent geometry checks every supporting inequality
and all 1,228 factor occurrences; independent Fraction and SymPy
readers reproduce all exact negative bounds. Together with the earlier
top-point theorem, a C1 side pair now excludes the opposite cap in
every placement. Nineteen C1 exterior count rows remain.

N7_RIGHT_SPAN_CAP.md gives the additional uniform capacity-one bound
[DEF]<(149/20)s. Its auxiliary contact scalar preserves exactly the
five inequalities required by the bottom-span theorem; it makes no
claim about preserving the other triangles. The identities and their
inequality directions have independent geometric and symbolic checks.
The global algebra checker now has 70 passing groups. C1, N6 and N7
remain the three open global families.

N6_ONE_LOWER_SIDE_PAIR_TOP.md now excludes the entire count
(1,0,2,1,0) and its transpose. A contact gap of 8299/18140000
eliminates both lower-ear placements. The remaining two weak central
contact orders have cubic contradictions with 109 and 75 printed
terms. Independent review checks the common box, all 38 Pluecker
deductions, both actual triangle occupants and the ten convexity
tests for the actual pentagon. Separate Fraction and SymPy readers
reproduce both exact negative bounds. Eighteen N6 count rows with
k=0 or k=1 remain up to transposition. The global algebra checker
now has 71 passing groups.

C1_TOP_PAIR_BOTH_SIDES.md now closes both counts (0,1,1,2,1) and
(1,0,1,2,1), irrespective of the fifth free point. The nontriangular
top hull has a scalar contradiction; the triangular hull has one
158-term cubic with exact upper bound -63250709/250000000. Independent
geometry checks both hulls, every scalar bootstrap, the complete box
and all eight used triangle signs; separate Fraction and SymPy
expansions agree. N6_TWO_TOP_BOTH_SIDES.md transfers the same proof
to the entire N6 count (0,0,1,2,1) through four explicit comparisons
with actual triangle areas. No virtual-point clearance is assumed.
There are now seventeen remaining exterior count rows in each of
C1 and N6, with their respective catalogues and normalizations.

ONE_LOWER_POINT.md also proves g+z<=1-s/(hc), its fixed-box
consequence, and explicit monotone lower bounds for both coordinates
in the central position. These inequalities have exact identity and
derivative checks. The global algebra checker has 73 passing groups.

The entire C1 count (2,0,0,3,0) is now excluded by
C1_TWO_LOWER_THREE_TOP.md. Its complete common geometry is in
C1_TWO_LOWER_TOP_GEOMETRY.md. One exhaustive root and 202 binary
refinements give 203 leaves: 183 fixed cubics with 45,644 printed
integer entries, twelve interval contradictions, seven clustered
triples and one convex five-point top hull. Independent geometry
checks all 3,644 sign deductions, 1,636 interval refinements, 183
outward boxes, six static monotonicity certificates and 115,787
factor occurrences. Separate Fraction and SymPy manuscript readers
reproduce every exact negative bound; the largest is
-6314102933/1000000000000. Sixteen C1 exterior count rows remain.
The global algebra checker now has 74 passing groups.

The entire C1 count (2,1,0,2,0) is now excluded by
C1_TWO_LOWER_CENTRAL_TWO_TOP.md. Its three angular roots and 372
binary refinements have 375 leaves: 343 fixed cubics with 88,384
printed terms and 32 geometric contradictions. Independent geometry
checks all 9,416 deductions, 2,504 interval refinements, 343 outward
boxes, nineteen monotonicity certificates and 220,099 factor
occurrences. Separate Fraction/SymPy readers reproduce every strict
bound; the largest is -3941929/500000000. Fifteen C1 exterior rows
remain. The shared common note now records both completed counts.

N6_CORNER_CONTAINERS.md proves two additional endpoint-container
capacities, with the exact six-point gap 773/1000000, and the
exhaustive top-pair 3s/4s hull dichotomy. These independently audited
local reductions do not close another N6 count. Seventeen N6
exterior count rows remain. C1, N6 and N7 are still the open global
families. The global algebra checker now has 76 passing groups.

N6_PROJECTED_COUNT_TERMINALS.md now gives explicit full-domain
relabelings from the two relevant N6 count chambers to the sharp
projection theorems. All twelve signed expressions, side orders,
coordinate conditions and strict inward depths are checked, and
the positive interior increments follow from two exact linear
combinations. The conclusion is the strict sharp bound m<A*;
no uniform sigma gap is asserted for these chambers.

MULTIAFFINE_BOX_BOUNDS.md proves the exact conditional-box rule
used in further placement proofs. A multiaffine factor is a convex
combination of its endpoint affine lines, so its nonnegativity
implies membership in a finite union of rational intervals. Their
hull, outward rounding and sequential reuse give proved bounds.
The optional replay module verifies every selected line and step.
Both notes have independent mathematical review and exact algebra
checks. C1_SIDE_PAIR_TOP_BOUNDS.md additionally gives a uniform
.897 contact ceiling, a narrow side-pair box and four affine
inequalities from inner barycentric weights above 2/9. Its explicit
actual-area transfer gives the N6 outer bounds p>.858 and q<.453,
with no hidden lower-point premise. Independent geometry and exact
rational checks pass. The global algebra checker has 79 passing groups; the
remaining global and count totals are unchanged.

The complete ABH lower-ear child of the last all-interior N7 count
is now excluded by N7_ONE_LOWER_ABH.md. Its 58 binary splits give
59 leaves: 55 cubic contradictions with 21,373 printed terms and
four actual ABEF capacity contradictions. Independent geometry
replays every split, all 1,993 deductions, 53,443 factor occurrences,
177 fixed-cap, 145 shifted-box and twenty fan-cap witnesses, and
33 capacity-ray steps. Separate Fraction/SymPy readers agree on
all sums and 41 explicit rational squares; the largest bound is
-95283035268326478889140529/57385526293000000000000000.

N7_ONE_LOWER_SETUP.md proves all four refined root boxes and the
common factor rules. Three lower cells, ABC, CA and CB, remain in
count (1,2,0); the N7 parent stays unchecked. The side-pair/top
N6 transfer now also proves U<.406316<(35/8)s, giving four stronger
affine inequalities from inner barycentric weights above 8/35.
The exact global algebra checker has 81 passing groups.

The entire C1 count (1,1,2,1,0) and its transpose are now excluded by
C1_ONE_LOWER_SIDE_PAIR_TOP.md. The sole lower point, sole central
point and the forced side-pair labeling give one root with 34 binary
splits, 31 cubics containing 7,430 printed terms, and four geometric
terminals. Independent geometry verifies all 908 deductions, 114
conditional interval updates, thirteen monotonicity certificates and
19,108 factor occurrences. Independent Fraction and SymPy readers
reproduce every negative bound; the largest is -74919879/1000000000.
Fourteen C1 exterior count rows remain. The N6 corner-container note
now also proves all six cross-cap orientations by explicit determinant
identities. The exact global algebra checker has 82 passing groups.

C1_TWO_LOWER_CENTRAL_SIDE_TOP.md now excludes the entire count
(2,1,1,1,0) and its transpose. All six angular orders after the one
lower-fan reflection are covered by 205 splits and 211 leaves:
193 cubics with 51,388 printed terms, ten clustered-triangle
contradictions, seven shared-central endpoint contradictions and one
five-point identity contradiction. The shared-central terminal uses
the exact support-area threshold (299/31)s=.897 and the strict top
contact ceiling. Independent geometry checks 5,961 deductions, 905
interval updates and 131,221 factor occurrences. Independent Fraction
and SymPy readers reproduce every bound, with largest value
-36973318349/18200000000000. Thirteen C1 exterior count rows remain.
The exact global algebra checker has 83 passing groups.
The sharp N6 count-terminal note now also gives the explicit
two-upper/both-side mapping. Its twelve required expressions and
positive increments follow by interchanging the two interior labels;
no lower-region hypothesis is needed. Independent geometry and exact
symbolic identities check this third mapping. This is a sharp sign
chamber terminal, not a closure of the entire count.

N6_BTTT_TOP_EARS.md now excludes both complete single-ear
top-quadrilateral words -++- and ++-+ for the one-lower/three-top
count. Its two roots have twenty binary splits, 22 cubic leaves,
9,860 printed positive-integer terms and 549 explicit affine squares.
Independent geometry checks the entire sixteen-word top catalogue,
all 923 deductions, both versions of the coordinate box and 25,177
factor occurrences. Independent Fraction/SymPy expansions reproduce
every negative bound. The shared setup proves every factor rule.
N6_TOP_TRIPLE_TRANSPOSE.md additionally gives six explicit label maps
preserving the residual groups, hence the normalization e<=f and the
strict .168/.264 contact ceilings. This local lemma is independently
audited. The remaining top words and the N6 parent stay unchecked;
the seventeen remaining count rows are unchanged. The exact global
algebra checker has 84 passing groups.

The actual bottom contact sharpens the N6 side-pair/top bounds:
C1_SIDE_PAIR_TOP_BOUNDS.md, Section 6 now proves outer p>.920,
bottom contact c<.609, outer ordinate q>930/5053, and all three
inner barycentric weights greater than 5/19. Two AM-GM estimates,
their stated monotonicity domains, exact rational square comparisons
and one concave quadratic supply the complete proof. The four new
affine remainder inequalities are explicit and independently audited.
The residual top-triple normalization also gives four empty actual
anchor triangles in every row and eight in each stronger row, forcing
three or six signs before any metric refinement. All six transposition
maps in both counts, the exact capacity gaps, and the normalized
trace/box guards have independent checks. These are local reductions;
the remaining count totals are unchanged. The exact global algebra
checker has 86 passing groups.

The entire C1 count (1,1,1,1,1) is now excluded by
C1_ONE_LOWER_THREE_CAPS.md: one lower point, one central point and
one point in each cap. The sole h>=c transposition and explicit
.876/.852 contact box give one root with 37 binary splits, 37
cubics containing 7,280 printed terms, and one shared-central
endpoint contradiction. Independent geometry checks all 1,053
deductions, 250 interval updates, two static monotonicity caps and
18,500 factor occurrences. Independent Fraction/SymPy readers
reproduce every bound; the largest is -385707/20000000. Twelve C1
exterior count rows remain. The N6 optional interval reader now
constructs sources in a separate initial-box context, enforces its
box-independent factor whitelist, and checks agreement with the final
physical polynomial. Both saved interval probes and the published
22-leaf manuscript replay pass. The exact global algebra checker
has 87 passing groups.


The entire N7 lower-ear ABC child of (1,2,0) is now excluded by
N7_ONE_LOWER_ABC.md. Its 93 binary splits yield 84 cubic proofs with
37,612 printed terms and ten geometric contradictions. Independent
geometry checks 3,411 deductions, 91,832 factor occurrences, all
338 fixed caps, 103 shifted-box caps, 214 endpoint-value lists,
78 fan caps, six chord deductions and ten six-label mesh deductions.
Separate Fraction/SymPy readers reproduce every exact negative bound
and all 41 rational squares. The largest bound is
-994624990470585513980867681904031135317/9791312602874290448399495750000000000000.
The shared-reader regression reproduces the earlier ABH proof unchanged.
Only the two central N7 lower cells CA and CB remain.

Three independently audited local lemmas are also recorded. Actual
N6 top-cap triangles have explicit contact/apex affine caps; triangular
top pairs have inner barycentric weights above 1/9, or 3/17 when a side
cap is occupied. A stronger nontriangular six-point endpoint theorem
gives m<(125/1142)S by the complete support-cell catalogue and exact
quadratic comparisons. Their algebra checks pass. Together with the
new ABC inventory group, the exact global checker has 91 passing groups;
the earlier 87 groups and their completed children retain their scope.
The remaining whole-count inventories are twelve for C1 and seventeen
for N6. No new parent closure is inferred from these local bounds.


The complete C1 count (0,2,2,1,0), with two central points, a right
pair and a top point, and its transpose are excluded by
C1_TWO_CENTRAL_SIDE_PAIR_TOP.md. One independent central-pair labeling
and 76 binary splits give 61 cubic contradictions with 9,344 printed
terms and sixteen geometric terminals. Independent geometry checks
2,528 deductions, 274 interval updates, fourteen static monotonicity
caps and 23,597 factor occurrences, including every nontriangular
endpoint-six use. Separate Fraction/SymPy readers reproduce every
negative bound; the largest is -11636437/1000000000. Eleven C1
exterior count rows remain.

SIDE_CAP_BASE_TRIANGLES.md proves the reusable uniform side-base
bound 21/50, without an occupied top cap or a lower-point assumption.
An actual anchor triangle, the side-cap clearance and AM-GM give
an exact gap 251/250000. The corresponding actual C1 and N6 base
triangles have capacity at most one. Its independent identity and
arithmetic audit and the new C1 inventory group pass, bringing the
exact global checker to 93 passing groups.


The entire N6 count (1,0,1,1,1), one lower point and one point in
every exterior cap, is now excluded by N6_ONE_LOWER_THREE_CAPS.md.
A fully explicit reflection reduces all lower locations to two rows.
Their fixed sums have 324 and 418 positive terms. Independent geometry
checks all 89 determinant deductions, both source boxes, 158 interval
steps with 860 endpoint lines, forty scalar caps and 1,869 factor
occurrences. Separate Fraction/SymPy expansions reproduce both strict
negative bounds. Sixteen N6 count rows remain; ROADMAP.md now lists
each one as a separate unchecked obligation.

QUADRILATERAL_AREA_SUPPORT.md also records an independently audited
support inequality that retains the actual quadrilateral area floor
and the smaller of its two actual triangle-floor products. Its exact
diagonal identity handles both denominator signs and either affine
upper cap. The new inventory and identity checks pass, bringing the
exact global checker to 95 passing groups. Eleven C1 count rows and
the two central N7 lower cells CA/CB remain alongside those sixteen
N6 rows; no global parent is marked complete prematurely.

## Hand checkpoint 82: normalized BTTT ---+

The complete normalized BTTT `---+` word is excluded in
[N6_BTTT_REMAINING_TRIANGULAR.md](hand/N6_BTTT_REMAINING_TRIANGULAR.md).
Thirteen actual-sign splits cover fourteen explicit contradictions, without
coordinate cuts. The linked Markdown tables print all 1,356 geometric
deductions, 1,493 coordinate updates, 525 physical factors, 664 scalar
updates, 277 scalar relations and six capacity-forced signs. One leaf proves
that the known zero determinant BPP has a strictly positive barycentric lower
bound, with exact gap 4272887/40244750000.

The standalone JavaScript reader and a separate Python/Fraction implementation
both reconstruct the proof directly from those tables, including every source
scope and both children of every split. Seven deliberately corrupted records
are rejected. The separate
[central-top lower-ear theorem](hand/N6_BTTT_REMAINING_CENTRAL_EAR.md)
also excludes the entire `HBP<0` alternative in normalized `+--+`: no
further cuts, 39 deductions, 28 factors and 152 coordinate updates yield
the exact negative upper bound -18462201153/10^12. Both independent readers
pass this table too. The `HBP>0` alternative in `+--+` remains open, so no
whole N6 count or global parent is marked complete. The global hand
obligations are still C1, N6 and N7; the computer-assisted proof above is unchanged.

## Hand checkpoint 83: complete C1 two-central / three-cap count

[C1_TWO_CENTRAL_THREE_CAPS.md](hand/C1_TWO_CENTRAL_THREE_CAPS.md)
excludes the entire count `(0,2,1,1,1)`. Fifty-seven actual-sign splits
cover 58 printed contradictions: eight scalar, 24 positive area-linear,
nineteen positive physical-polynomial and seven empty endpoint unions.
This completes the count previously represented by the seven queued branches
in the preserved C1 discovery continuation.

The independent manuscript reader uses only the 60 literal Markdown tables,
fixed actual-point geometry and exact arithmetic. It verifies 965 physical
sources, 789 coordinate updates, all 23 universal coordinate bounds,
8,483 positive products, 5,680 final scalar endpoints against their immutable
proofs, and complete binary coverage. Eight corrupted arguments are rejected,
including an omitted leaf whose reported totals were also changed. There are
no unresolved branches in this count. Ten other C1 count rows, the remaining
N6 rows and the two central N7 roots still require hand proofs; the unrestricted
hand theorem is not complete.

## Hand checkpoint 84: N6 positive-AFP half and N7 contact lemmas

The normalized N6 BTTT central top word `+--+`, with `HBP>0`,
cannot have `AFP>0`. The
[positive-AFP theorem](hand/N6_BTTT_REMAINING_CENTRAL_POSITIVE.md)
prints five exhaustive actual-sign splits and six contradictory leaves.
Independent JavaScript and Python/Fraction readers reconstruct all 1,178
geometric deductions, 275 physical factors, 1,262 coordinate updates,
3,154 scalar updates, 480 relations and inherited immutable sources.
Twelve argument mutations and eight Markdown corruptions are rejected.
Combined with the lower-ear theorem, the remaining BTTT frontier is
exactly `+--+`, `ACP>0`, `HBP>0`, `AFP<0`. The count remains open.

The [central N7 contact note](hand/N7_CENTRAL_COMPLETION.md) proves
`e>57/100`, capacity two for actual `AEF`, three empty triangles, and
two new E-only sign implications in both CA and CB. Its explicit geometric
and rational arguments pass independent review and a fresh 33-check
SymPy/Fraction expansion; the separate author reader passes 39 checks.
These are local consequences. The E-only word and both central N7 roots,
ten C1 rows and the remaining N6 rows still require hand proofs.

## Hand checkpoint 85: uniform central N7 EFG capacity one

In both central lower roots, two upper points in CEF imply
`EFG<(149/20)s`, independent of the upper-pair line. The
[uniform actual-triangle theorem](hand/N7_CENTRAL_COMPLETION_EFG_CAP.md)
uses only the eight actual points A,B,C,D,E,F,G,H, previously proved
contact bounds and the occupied upper-ear costs. Six exhaustive G-sign
words in each root close by six scalar and six physical-polynomial
contradictions, with all literal rational tables printed.

The fresh independent Fraction reader reconstructs every actual sign,
250 relations, 701 scalar updates, 229 physical factors, 615 positive
products, 910 endpoint values and 1,022 immutable bounds. It reproduces
every negative bound, and rejects twelve deliberate corruptions. Actual
geometry, all initial boxes and cap sources, normalized barycentric weights
and every nonnegative factor have independent mathematical acceptance.
This closes the stated capacity theorem. The E-only word and both central
N7 roots still require contradictions; the global hand proof stays open.

## Hand checkpoint 86: complete N6 BTTT count

The [whole BTTT count](hand/N6_BTTT_REMAINING_COUNT.md), one lower
point and three top-cap points, now has a complete hand exclusion.
Its final negative-AFP child has 65 exhaustive sign splits and 66 explicit
contradictions. Separate JavaScript and Fraction readers reconstruct all
137 contexts, 6,833 geometric deductions, 560 stages, 33,808 coordinate
updates, 7,610 physical factors, 137,031 ordinary scalar updates, 25,725
relations, 1,596 affine bounds and 157,995 positive affine terms.
Every source scope, inherited box and terminal has independent geometric
and exact arithmetic acceptance. Twelve independent corruptions are rejected.
The exact top-word catalogue, actual transposition and nonzero-determinant
alternatives assemble the entire count without a remaining branch.

The [central N7 E-only reduction](hand/N7_CENTRAL_COMPLETION_E_ONLY.md)
also has independent acceptance. Uniform capacity and sign arguments put P
inside actual BCE and leave three G-sign words and five ordered central
words. These are structural consequences; the five words remain open.

The remaining global hand-proof ledger has ten C1 count rows, thirteen N6
count rows and the two central N7 roots. The unrestricted hand theorem is
still incomplete. The computer-assisted theorem remains complete.

## Hand checkpoint 87: four remaining ITTT top words

The [single-ear pair](hand/N6_BTTT_REMAINING_ITTT_EARS.md) and
[remaining triangular pair](hand/N6_BTTT_REMAINING_ITTT_TRIANGULAR.md)
now have complete independently accepted literal arguments. Together their
31 actual-sign splits cover 35 impossible leaves: 27 interval contradictions,
seven incompatible area-bound pairs and one actual distributed-mesh exclusion.
Separate readers reconstruct 275 contexts, 11,892 geometric deductions,
20,783 coordinate updates, 16,176 scalar updates, 3,142 relations and 53
capacity signs. New upper-point factors use fixed initial-box contact-area
ceilings and actual HCEF inward tests. Every inherited box and scalar source
has independent ancestry checks. All 36 independent corruptions are rejected.

Together with the earlier `--+-` result, these exclude all three normalized
triangular and both single-ear ITTT words. The central `+--+` word remains
open, so the whole ITTT count remains unchecked. The global frontier is still
ten C1 count rows, thirteen N6 count rows and two central N7 roots; the
unrestricted hand theorem is incomplete.

## Hand checkpoint 88: complete central N7 E-only word

The [whole E-only word](hand/N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md)
is excluded in both central roots CA and CB. Its complete five-word cover,
with one further actual AEG split, has twelve impossible leaves. Two
separate source-complete readers reconstruct 72 stages, 3,040 geometric
deductions, 3,080 initial scalar versions, 12,598 scalar updates, 2,373
relations, 1,429 physical factors, 2,394 coordinate updates and 23,233
complete endpoint lines. Every positive terminal combination is exact:
six cubics have 1,344 products and two scalar-area sums have 35 terms.
The other four leaves have scalar or coordinate contradictions. Independent
mathematical review accepts every actual source, normalized barycentric
argument, nested-fan identity and branch; 22 corruptions are rejected.

The [occupied-HCF lemma](hand/N7_CENTRAL_COMPLETION_UPPER_FAN_CAP.md)
also has independent acceptance. If HCF contains both upper points, then
f>617/1000 and both AEF and BEF have capacity one. Separate exact readers
check all contact/difference identities and positive rational gaps.

The central N7 C, CE, EF and CEF upper-pair words still require proofs.
Both central parent roots remain open, as do ten C1 and thirteen N6 count
rows. The unrestricted hand theorem is incomplete.

## Hand checkpoint 89: complete ITTT count

The [central ITTT word](hand/N6_BTTT_REMAINING_ITTT_CENTRAL.md)
has a complete independently accepted literal argument: 145 actual-sign
splits cover 146 contradictory leaves, with no coordinate cuts. The two
exact readers reconstruct 329 contexts, 17,516 geometric deductions,
1,243 stages, 71,636 coordinate updates, 16,942 physical factors,
242,434 scalar updates, 42,487 relations, 174 affine bounds and 53
capacity signs. Every immutable source and inherited box has independent
review. Twenty deliberate source, arithmetic and coverage corruptions
are rejected, including omission of a binary leaf and the conflicting-sign
terminal's required capacity premise.

Thirteen terminal sums use the independently proved
[coordinate-product rule](hand/N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md):
2,372 nonnegative sources, 5,643 positive products, 7,277 expanded and
8,290 translated coefficients give exact negative ceilings. The other
leaves have 72 interval, 47 area, twelve affine, one zero-barycentric and
one conflicting-sign contradiction.

Together with the three accepted triangular words and two single-ear
words, this [closes the whole ITTT count](hand/N6_BTTT_REMAINING_ITTT_COUNT.md)
(0,1,0,3,0). The exact sixteen-word
catalogue and transposition supply exhaustive coverage of that count.
The remaining global hand-proof ledger is ten C1 count rows, twelve N6
count rows and two central N7 roots. The unrestricted hand theorem is
incomplete; the computer-assisted theorem remains complete.

## Hand checkpoint 90: complete central N7 CEF word

The [whole CEF word](hand/N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md)
is excluded in both central roots CA and CB. Six coarse ordered words
in each root and all further binary sign cuts give 31 exhaustive leaves:
twelve polynomial, ten geometric, six scalar and three coordinate
contradictions. Occupied HCF supplies independently proved f>.617 and
AEF/BEF capacity-one sources; natural contact caps and immutable QAREA
floors give the additional physical inequalities.

Separate source-complete readers reconstruct all 234 stages, 7,968
sign deductions, 5,287 initial bounds, 14,366 endpoint values, 2,986
relations, 14,313 scalar updates, 2,808 physical factors, and 5,142
coordinate updates with 52,331 complete endpoint lines. The exact
terminal sums contain 2,302 positive polynomial products; all sixty
mesh-order obstructions are explicit. Independent mathematical review
accepts every source, inherited box, sign scope and coverage argument;
26 deliberate corruptions are rejected.

The [broader AE-transfer lemma](hand/N7_CENTRAL_COMPLETION_CEF2_TRANSFER.md)
also has independent acceptance: CEF containing O,P together with
AEG<0,COP<0,EOP>0 forces AEO>0, without a premise on FOP.

C, CE and EF remain open in the two central N7 roots. The global
frontier remains ten C1 count rows, twelve N6 count rows and those two
central N7 roots. The unrestricted hand theorem is incomplete; the
computer-assisted theorem remains complete.

## Hand checkpoint 91: occupied-HCE capacity theorem

The [occupied-HCE theorem](hand/N7_CENTRAL_COMPLETION_HCE_CAP.md)
proves actual AEF capacity two in both central N7 roots. Fourteen
closed rectangles cover the complete c,h domain. The ordered endpoint
ratio, CDE clearance and e(1-b)>=4s give AEF<=.814603 in CA and
AEF<=.823185 in CB, with exact positive gaps .008819 and .000237
below the three-occupant threshold .823422. Independent mathematical
review and separate exact readers check all seven identities, every
row and full continuous coverage; four corruptions are rejected.

The CEF introduction now states the correct common HEF capacity-one
premise and its explicit ray derivation of EHP>0. The earlier prose
had invoked the stronger empty-HEF conclusion outside its stated
two-CEF-occupant hypothesis. The literal CEF tables already used the
valid common setup and are unchanged; the independent reader also
expands the introductory ray identity.

The remaining frontier is unchanged: ten C1 counts, twelve N6 counts,
and two central N7 roots, with C, CE and EF still open. The unrestricted
hand theorem is incomplete.

## Hand checkpoint 92: complete BRTT count and uniform AEF capacity

The [BRTT count](hand/N6_BTTT_REMAINING_BRTT.md), (1,0,1,2,0),
and its left-cap transpose are excluded. Both top-hull alternatives
are covered by 45 binary actual-sign splits and 46 contradictory
leaves: thirty interval, three scalar and thirteen coordinate-product
terminals. There is no e<=f assumption and no coordinate cut.

Separate semantic readers and independent mathematical review check
all 99 contexts, 4,731 actual-sign deductions, 293 stages, 2,473
physical factors, 8,792 coordinate updates, 37,694 scalar updates,
4,535 relations, 49,074 immutable bounds and thirteen capacity
sources. Every fixed initial-box support maximum and both coarse-box
versions have explicit proofs. The terminal sums have 2,829 source
occurrences, 6,095 positive products, 6,586 expanded and 7,306 shifted
coefficients. Thirty independent corruptions are rejected in each
top-hull alternative. The accepted full ITTT regression still passes.

The [uniform AEF theorem](hand/N7_CENTRAL_COMPLETION_GLOBAL_AEF_CAP.md)
also proves capacity two throughout both central N7 roots, with no
pair-word premise. Sixteen rational rectangles handle a single HEF
occupant; the accepted HCE theorem handles the complementary placement.
Fresh independent geometry, Fraction arithmetic, complete interval-union
coverage and nine coordinate identities verify the stated uniform
ceilings .814603 in CA and .823185 in CB, both below .823422.
Four corruptions are rejected.

The global hand-proof frontier is ten C1 count rows, eleven N6 count
rows and the two central N7 roots. C, CE and EF remain open in N7.
The unrestricted hand theorem is incomplete.

## Hand checkpoint 93: central anchor and quadrilateral capacities

The [common-box anchor lemma](hand/N7_CENTRAL_COMPLETION_BOX_CAPS.md)
proves capacity two for actual ABF and AFH throughout both central
N7 roots. Exact nonnegative remainders give
ABF<=143425697/181400000, AFH<=.760263 in CA and <=.775274 in CB.
All ceilings are strictly below the three-occupant cost .823422.
Independent mathematical review and two exact readers verify the
four actual-coordinate identities and every printed cap and gap.

The [actual ABEF quadrilateral](hand/N7_CENTRAL_COMPLETION_QUAD_CAP.md)
also has capacity two, since its exact area is 1-(e-a)(f-b)<=1
and three interior points would cost 93/91>1. With two actual
occupants, three inward edge tests at a third point force the
fourth test negative. Independent actual geometry and separate
identity/gap readers pass.

These are local capacities. The global frontier remains ten C1
counts, eleven N6 counts and the two central N7 roots. C, CE and EF
remain open, and the unrestricted hand theorem is incomplete.

## Hand checkpoint 94: two complete C1 count exclusions

The whole [BIIRL count](hand/C1_ONE_LOWER_TWO_CENTRAL_SIDES.md),
`(1,2,1,0,1)`, and its transpose are excluded by 152 actual-sign splits
and 153 contradictory leaves. Independent geometry, scalar/source,
coordinate ancestry, exact polynomial and complete-cover review passes
all 315 literal contexts. This includes 218 derived affine area bounds,
37 global coordinate certificates, 13,645 coordinate updates and 21,354
positive products. A separate manuscript and dependency review passes.

The whole [BBIIR count](hand/C1_TWO_LOWER_TWO_CENTRAL_RIGHT.md),
`(2,2,1,0,0)`, and its transpose are excluded by 24 exhaustive angular
roots, 185 actual-sign splits and 209 contradictory leaves. Independent
review passes all 331 literal contexts, including 39,382 actual relations,
89,563 scalar updates, 7,684 physical sources, 12,494 coordinate updates,
51 global coordinate certificates and 24,557 positive products. The
terminals include 45 affine-area contradictions and one unsigned-clearance
quartic leaf. Its separate literal arithmetic reader also passes.

For each count, 29 deliberate source, scope, immutable-version, endpoint,
arithmetic and coverage corruptions are rejected. Every proof premise is
an actual geometric inequality or printed exact finite derivation.

The accepted global hand frontier is eight C1 counts, eleven N6 counts
and the two central N7 roots. The N7 literal extraction/review continues;
its discovery results do not change this ledger. The unrestricted hand
theorem is incomplete. No Lean compilation or CI was run.

## Hand checkpoint 95: complete N7 hand proof

The [complete seven-boundary assembly](hand/N7_CENTRAL_COMPLETION_PARENT.md)
proves the sharp strict bound `m<A*` for every normalized N7 configuration.
Independent mathematical review checks all five exterior count classes,
all octagon arc and opposite-edge classes, the five interior counts,
the boundary-valid N6 side-point transfer, every lower cell and all eight
central pair-line words. Weak contact equalities remain covered. The
single-exterior projection retains the sharp hypothesis; the assembly
does not claim a uniform gap below A*.

The remaining central words now have complete literal proofs:
[C in both cells](hand/N7_CENTRAL_COMPLETION_C_EXCLUSION.md),
[CE/EF in CA](hand/N7_CENTRAL_COMPLETION_CA_UPPER_EXCLUSION.md) and
[CE/EF in CB](hand/N7_CENTRAL_COMPLETION_CB_UPPER_EXCLUSION.md).
Together they have 230 contradictory leaves, 214 binary sign splits
and 1,334 shared source stages across sixteen roots. Independent
actual-point and Fraction readers reconstruct every full ancestor chain,
physical inequality, immutable endpoint and terminal contradiction.
All 74 deliberate source, scope, arithmetic and coverage corruptions
are rejected. The separate assembly reader checks the exact threshold
gaps, complete catalogues and manuscript links.

HP12-N7 is complete. The accepted global frontier is eight C1 count
rows and eleven N6 count rows. The unrestricted hand theorem remains
incomplete. No Lean compilation or CI was run.

## Hand checkpoint 96: a convex nonagon bound and two N6 exclusions

A strictly convex polygon in a rectangle of width W and height H has
sum of cube roots of its consecutive doubled areas at most
`4(WH)^(1/3)`. For nine vertices in the unit square this bounds
the smallest doubled area by 64/729, below 93/1000. The six boundary
contacts and three exterior cap points of IRTL form such a nonagon.
The proof also limits an octagon to one occupied ear and one occupant
in that ear. [Convex polygon inequality and IRTL proof](hand/NINE_CONVEX_POINTS.md)

The N6 count BIRR and its reflection are excluded. The side pair forces
the lower point into its central cell and the upper point into HCE.
Independent review checks the 14 coordinate intervals and all 61 leaves,
including 7,948 exact scalar updates and 38 strict terminal gaps.
[Complete BIRR proof](hand/N6_BIRR.md)

Eight C1 counts and nine N6 counts remain open. The unrestricted
pen-and-paper upper bound is incomplete.

## Hand checkpoint 97 — one corner with a right-side pair

The C1 count `(1,2,2,0,0)` and its transpose are excluded at doubled
area `93/1000`. The two points in the side cap determine the outer
vertex. The position of the inner point bounds the three areas in
its subdivision of the outer triangle. The 107 sign splits then give
41 geometric and 67 arithmetic contradictions. Independent review
checks the geometric hypotheses and the full tree, including all
14,125 arithmetic updates. [Proof and tables](hand/C1_BIIRR.md)

Seven C1 counts and nine N6 counts remain open. The unrestricted
ten-point pen-and-paper upper bound is incomplete.

## Hand checkpoint 98 — monotone chains in the square

Seven points ordered by height with five positive consecutive turns
have a consecutive doubled area at most `(5√5−11)/2 < 1/11`. A
seven-point construction attains the first constant. This excludes
the convex top-pair alternative in the one-corner counts
`(0,2,1,2,0)` and `(1,1,1,2,0)` and their transposes. The inner
top point must lie strictly inside the triangle cut off by the
outer one. [Sharp chain bound and application](hand/SEVEN_POINT_MONOTONE_CHAIN.md)

The remaining six-point chain bounds that outer triangle by .462,
puts each of the inner point's three barycentric weights above
31/154 and excludes occupants from the other three consecutive
triangles. Independent review checked the boundary cases and all
32 coefficients in the four cubic comparisons.
[Six-point inequality](hand/SIX_POINT_MONOTONE_CHAIN.md)

Both counts still require the triangular alternative. Seven C1 and
nine N6 counts remain open.

## Publication and verification correction

The previous local completion commit contained the independent checker,
complete run manifests and inventories, final acceptance command, and receipts,
but those additions had not reached the PR branch. They are now included here.
The stored-package acceptance command was rerun after recovering its final
source versions and passed, producing a byte-identical completion receipt.
This rechecks exact input certificates and both complete recorded inventories;
it does not rerun the full C++ enumerations.
