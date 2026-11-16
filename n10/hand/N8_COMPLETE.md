# Complete eight-boundary theorem

This assembles the full N8 hand proof. It uses only the written geometric
lemmas and the finite, fully printed polynomial inequalities cited below.
The computer-assisted global cover is not a premise.

## 1. Statement and the competitive threshold

Let ten points lie in the unit square, with exactly two points in the
relative interior of each side and two strictly interior points. Let m be
their least ordinary unsigned triangle area. Then

    m <= A*,

where the exact value A* and the attaining configuration are defined in
ATTAINMENT.md. Equality holds precisely for that configuration, up to
square symmetry and relabeling. No symmetry of the given points is assumed.

If m<93/2000, the conclusion is strict, because ATTAINMENT.md gives
93/2000<A*. It therefore suffices to assume that every doubled unsigned
triangle area is at least sigma=93/1000. All actual triples are then
noncollinear, all points are distinct, and the boundary points can be
labeled in strict cyclic order as

    A=(0,a), B=(b,0), C=(c,0), D=(1,d),
    E=(1,e), F=(f,1), G=(g,1), H=(0,h),

with 0<a<h<1, 0<b<c<1, 0<d<e<1 and 0<g<f<1.
Call the two interior points O,P. A zero determinant or a repeated point
was already disposed of by the strict threshold comparison.

## 2. Exhaustive catalogue and its closures

N8_OP_LINE_CAPS.md first puts both O and P strictly inside the convex
boundary octagon. Their line crosses exactly two octagon edges and cannot
contain a boundary vertex. The vertices on either open side form a
consecutive arc. The same note excludes every 1/7 and 2/6 split, including
both kinds of consecutive pair. Its final catalogue leaves exactly these
three classes, up to square isometry and interchanging O,P.

| Boundary arcs | Crossed edges in a representative | Complete argument |
|---|---|---|
| 3/5 | AH and EF | N8_THREE_FIVE.md excludes all ten sign rows |
| 4/4, same-side edges | AH and DE | N8_SIDE_CONTAINED.md and N8_SIDE_OUTSIDE.md exclude the whole class |
| 4/4, corner edges | AB and EF | N8_CORNER_OBLIQUE.md excludes every failure of the four required oblique signs |

For the same-side class, both interior points are either in ABEF, in
CDGH, or outside at least one edge of each of these two quadrilaterals.
N8_SIDE_CONTAINED.md covers the first two alternatives by four rows.
N8_SIDE_OUTSIDE.md reduces the last alternative to double-left and
top-adjacent placements; eight and five rows, respectively, cover all
their signs. Its reflections preserve all the prior conditions, and its
double-left exclusion is proved before it is used in the top-adjacent
reduction. Thus no placement is lost or excluded circularly.

For the corner-edge class, direct the interior-point line from AB to EF.
Its four relevant OP signs are

    AOP+, BOP-, EOP-, FOP+.

The strict contact-overlap bounds e-a>21/250 and f-b>21/250 proved from
the eight ears in N8_BOUNDARY_RANGES.md ensure that both coordinates
strictly increase from every interior point of AB to every interior
point of EF. Consequently O can be placed before P with U=x_P-x_O>0
and V=y_P-y_O>0. This deduction needs no maximizing assumption and no
averaging of coordinates.

N8_CORNER_OBLIQUE.md proves that a failure of any one of

    ADO+, BGO-, CFP+, EHP+

can be moved by its stated symmetries to ADO-. It then excludes every
remaining choice in seven exhaustive rows. Nonzero actual determinants
justify each strict sign dichotomy. Thus all four signs hold in every
competitive configuration that survives the catalogue.

## 3. The sharp conclusion and equality

Every surviving configuration satisfies exactly the eight actual-triangle
sign hypotheses and the coordinate ordering in
ASYMMETRIC_SIGN_CHAMBER.md. Its twelve-triangle argument applies to the
actual doubled minimum s=2m, rather than just to the auxiliary threshold
sigma. It proves

    s <= 2A*,

and proves that equality forces every boundary coordinate and both
interior points to be those in ATTAINMENT.md. Undoing the finitely many
square isometries and point relabelings yields the stated equality
classification. Conversely ATTAINMENT.md verifies every actual triangle
of that configuration, so equality is attained.

The excluded line classes already contradict m>=93/2000; equality at A*
therefore cannot occur on them. A line through an actual point, a boundary
coincidence, or a collinear actual triple has m=0 and cannot be an omitted
competitive face. The case catalogue and the sharp terminal theorem
together prove the complete N8 statement.

## 4. What the printed arithmetic establishes

The geometric premises of every polynomial factor are stated in the
corresponding manuscript. All integer coefficients and rational negative
bounds are printed there. Their nonnegative sums give direct algebraic
contradictions on the stated continuous domains; a search result or an
external certificate file is never used as a premise.

| Exclusion | Exhaustive rows | Printed positive integer entries |
|---|---:|---:|
| N8_THREE_FIVE.md | 10 | 1,807 |
| N8_SIDE_CONTAINED.md | 4 | 867 |
| N8_SIDE_OUTSIDE.md | 13 | 2,457 |
| N8_CORNER_OBLIQUE.md | 7 | 1,442 |
| Total | 34 | 6,573 |

The optional Fraction checkers read those manuscripts directly. Separate
SymPy implementations independently expanded every printed row and
reproduced every rational bound. These checks audit the displayed
arithmetic; the geometric lemmas and explicit case trees supply coverage.
The complete unrestricted hand proof still needs the separate II, C1,
N6 and N7 obligations listed in ROADMAP.md.
