# Seven boundary points: complete N7 assembly

Every case cited below has a complete written argument. Independent
mathematical, source, ancestry and finite-coverage reviews accept the
new C and CA/CB CE/EF proofs and this complete assembly.

Write m for the least ordinary unsigned area of the 120 actual
triangles. Let g be the unique real zero of

    12g^3-27g^2+20g-4=0,
    A*=5g^2/8-g^3/2.

**Theorem.** Every corner-free normalized N7 configuration has
m<A*. Consequently a normalized maximizer cannot have exactly
seven points on the square boundary and three strictly inside it.

Here normalized means the support-overlap domain proved in
[NORMALIZATION.md](NORMALIZATION.md), Sections 2, 3 and 6. This
theorem excludes attainment in the complete N7 family. It does not
assert a uniform positive gap below A* on this nonclosed family.

## 1. Actual contacts and the contradictory hypothesis

Suppose m>=A*. The exact attainment note
[ATTAINMENT.md](ATTAINMENT.md), Section 1, gives 0<g<1/3 and the
unique root characterization above. Put r=631/2000. Then

    12r^3-27r^2+20r-4=-1454727/2000000000<0,
    r^2(5/4-r)-93/1000=162909/8000000000>0.

The cubic is increasing on the relevant root interval, so g>r.
The function x^2(5/4-x) is increasing on (0,1/3), since its
derivative is x(5/2-3x)>0. Therefore

    2A*=g^2(5/4-g)>93/1000=:s.

Every distinct actual triangle consequently has unsigned doubled
area at least s. In particular there are no repeated points or
collinear actual triples. We retain m>=A* whenever a sharp projected
chamber, rather than a rational s contradiction, is used below.

In N7 exactly three square sides are double and one is single.
Rotate the square to put its unique single side at the top. The
seven actual contacts are

    A=(0,a), H=(0,h), B=(b,0), C=(c,0),
    D=(1,d), E=(1,e), F=(f,1),
    0<a<h<1, 0<b<c<1, 0<d<e<1,
    a<=e, d<=h, b<=f<=c.                         (1)

The two vertical inequalities and the bottom/top overlap follow
from the opposite-support projection overlap of NORMALIZATION.md.
There are exactly three other actual points, all strictly inside
the square. Let K=conv(A,B,C,D,E,F,H), the strictly convex actual
contact heptagon. The words boundary and interior below always
specify whether they refer to the square or to this actual K.

## 2. Every exterior placement and actual hull type

[N7_PLACEMENTS.md](N7_PLACEMENTS.md) excludes both lower exterior
corner caps and three points in either upper exterior cap. Every
free point lies strictly in K or in one of

    T_L=int conv{H,(0,1),F},
    T_R=int conv{F,(1,1),E}.

Their non-square boundaries are actual heptagon edges; a free point
on such an edge would give a zero actual triangle. The square-edge
boundaries contain no free point because this is exact N7.

Let (l,r,i) count points in T_L,T_R,K. Reflection across the vertical
midline exchanges l,r and preserves (1). The complete placement
catalogue and its full exclusions are:

| Counts, up to l/r exchange | Complete argument |
| --- | --- |
| (2,1,0) | [N7_UPPER_OCCUPANCY.md](N7_UPPER_OCCUPANCY.md), Section 3, excludes all three-exterior arrangements by the endpoint-area budget. |
| (1,1,1) | [N7_OPPOSITE_UPPER_CAPS.md](N7_OPPOSITE_UPPER_CAPS.md) excludes occupancy of both upper caps, with the third point unrestricted. |
| (2,0,1) | [N7_SAME_UPPER_CAP.md](N7_SAME_UPPER_CAP.md) excludes two points in one upper cap, with the third point unrestricted. |
| (1,0,2) | The complete single-exterior argument in Section 3 below. |
| (0,0,3) | The complete actual-heptagon argument in Sections 4–5 below. |

Indeed l,r<=2 and l+r+i=3 give precisely these five unordered
counts. No assumption about the exact convex hull of the three
free points is imposed by this enumeration.

The same-cap theorem explicitly treats both hull types of the four
actual points H,F and the two cap points. The quadrilateral hull
has a convex-five endpoint exclusion. The triangular hull has its
complete height and five-ray proof. The opposite-cap and
three-exterior theorems do not impose a hull-type restriction.
Thus an exterior point hidden inside the hull after another point
is inserted does not create an unassigned case. In the remaining
single-exterior row the hull is the actual octagon; in the
all-interior row it is exactly K.

## 3. The complete single-exterior octagon

Reflect left/right, if needed, so the unique exterior point is
G in T_L. Both remaining points O,P are strictly inside K. The
insertion lemma of [N7_OP_LINE_CAPS.md](N7_OP_LINE_CAPS.md),
Section 1, proves that the actual hull is the strictly convex
octagon A,B,C,D,E,F,G,H in that cyclic order.

The line OP avoids every actual vertex and cuts exactly two open
octagon edges. Its two vertex-side arcs are nonempty and
consecutive. Permute O,P to make a shorter arc positive. Its
length is one, two, three or four. The complete literal catalogue
is assembled by [N7_SINGLE_EXTERIOR.md](N7_SINGLE_EXTERIOR.md):

| Shorter positive arc or unordered crossed edge pair | Complete source |
| --- | --- |
| Every one-vertex arc; every two-vertex arc | [N7_OP_LINE_CAPS.md](N7_OP_LINE_CAPS.md). |
| F,G,H | [N7_THREE_FIVE_TOP.md](N7_THREE_FIVE_TOP.md), every height. |
| A,B,C; B,C,D; C,D,E; D,E,F; E,F,G; G,H,A; H,A,B | [N7_THREE_FIVE_UPPER_HEIGHT.md](N7_THREE_FIVE_UPPER_HEIGHT.md) for h>=e and [N7_THREE_FIVE_LOWER_HEIGHT.md](N7_THREE_FIVE_LOWER_HEIGHT.md) for h<=e. |
| AB / EF | [N7_CORNER_LINE.md](N7_CORNER_LINE.md). |
| BC / FG | [N7_SIDE_BC_FG.md](N7_SIDE_BC_FG.md). |
| CD / GH | [N7_CDGH_LINE.md](N7_CDGH_LINE.md). |
| AH / DE | [N7_SIDE_AH_DE.md](N7_SIDE_AH_DE.md). |

There are eight cyclic starts for each of lengths one, two and
three, and four unordered opposite edge pairs for length four.
These are all possibilities; they are literal octagon labels,
without rotating distinct edge-pair cases into an unproved one.
The height alternatives overlap at h=e. No global h>=e
normalization is made in this exterior row.

The AB/EF proof uses [N7_PROJECTED_SIGNS.md](N7_PROJECTED_SIGNS.md)
for its remaining good sign chamber; that theorem removes the
extra projection-coordinate condition in
[N7_PROJECTED_CHAMBER.md](N7_PROJECTED_CHAMBER.md) and proves the
strict sharp bound m<A*. Its inward secondary point is genuinely
inward because it is not an eighth square-boundary point. The other
line-class alternatives have their stated rational s contradictions.
Every alternative contradicts m>=A*. Thus (1,0,2) is excluded.

## 4. Every all-interior heptagon count

Assume the three free points are strictly inside K. This property
is preserved by left/right reflection. Make that one reflection,
if needed, to arrange h>=e. This choice is made only after entering
the all-interior row. Together with (1) it gives a<=e<=h.

The actual chords HC and CE partition the heptagon into HABC,
HCEF and CDE. No further actual point lies on either chord.
Let their free-point counts be (k,j,q). The complete argument in
[N7_HEPTAGON_ONE_EAR.md](N7_HEPTAGON_ONE_EAR.md), Section 1,
gives k<=2,j<=2,q<=1. Therefore exactly the following five counts
remain:

| (k,j,q) | Complete source |
| --- | --- |
| (2,0,1) | The analytic endpoint/ear budget in [N7_HEPTAGON_ONE_EAR.md](N7_HEPTAGON_ONE_EAR.md), Section 1. |
| (1,1,1) | The two complete orientation rows of [N7_HEPTAGON_ONE_EAR.md](N7_HEPTAGON_ONE_EAR.md). |
| (2,1,0) | [N6_TWO_LOWER_SIDE.md](N6_TWO_LOWER_SIDE.md), Section 6, including both normalized side locations and the closed outer side. |
| (0,2,1) | [N7_HEPTAGON_TWO_UPPER_EAR.md](N7_HEPTAGON_TWO_UPPER_EAR.md), its complete 64-leaf proof. |
| (1,2,0) | The four complete lower-cell arguments in Section 5 below. |

For the (2,1,0) transfer, remove D from the selected hull to use
the six contacts A,B,C,E,F,H. Its two lower points and unique upper
point satisfy the side theorem. Take its side point S=D=(1,d).
The actual sign CED=(1-c)(d-e)<0 puts D in the right virtual cap;
D lies on its outer square side. Section 6 of that theorem explicitly
allows this boundary, and retains both side models because its
lower normalization may transpose the picture. No statement
requiring S strictly inside the square is substituted here.

All four cited completed count theorems contradict the rational s
hypothesis. It remains only to assemble (1,2,0).

## 5. Complete one-lower and central coverage

Name G in HABC and O,P in HCEF. The local actual lower-point lemma
[ONE_LOWER_POINT.md](ONE_LOWER_POINT.md) and the common setup
[N7_ONE_LOWER_SETUP.md](N7_ONE_LOWER_SETUP.md) give:

| Lower cell | Exact coverage and full exclusion |
| --- | --- |
| ACG<0,HBG>0 | G is inside ABC; [N7_ONE_LOWER_ABC.md](N7_ONE_LOWER_ABC.md). |
| ACG>0,HBG<0 | G is inside ABH; [N7_ONE_LOWER_ABH.md](N7_ONE_LOWER_ABH.md). |
| ACG>0,HBG>0, ac>=bh | Central CA; the five upper-pair words below. |
| ACG>0,HBG>0, ac<=bh | Central CB; the same complete five-word cover. |

The two negative lower signs would put G in both occupied opposite
ears and force hc>=12s>1, so are impossible. Neither sign can
vanish. The weak central orders cover equality and both strict
orders, with no physical reflection of the larger configuration.

In either central cell permute O,P so HOP<0. The common
HEF-capacity-one ray gives EHP>0. The accepted actual
[central pair cut](N7_CENTRAL_PAIR_CUT.md) gives DGO<0, and the
[central area-orientation theorem](N7_CENTRAL_AREA_ORIENTATION.md)
excludes AGT>0,DGT>0 for T=O,P.

The eight sign words of (COP,EOP,FOP) have this exhaustive status:

| C | E | F | Complete disposition |
| --- | --- | --- | --- |
| - | - | - | Impossible: the affine OP test is negative at every vertex H,C,E,F, hence at O and P, where it is zero. |
| - | - | + | The line segment inside HCEF lies in HEF, putting O,P there despite its capacity one. |
| - | + | - | E-only: [N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md](N7_CENTRAL_COMPLETION_E_ONLY_EXCLUSION.md), both cells. |
| - | + | + | EF: [N7_CENTRAL_COMPLETION_CA_UPPER_EXCLUSION.md](N7_CENTRAL_COMPLETION_CA_UPPER_EXCLUSION.md) and [N7_CENTRAL_COMPLETION_CB_UPPER_EXCLUSION.md](N7_CENTRAL_COMPLETION_CB_UPPER_EXCLUSION.md). |
| + | - | - | C: [N7_CENTRAL_COMPLETION_C_EXCLUSION.md](N7_CENTRAL_COMPLETION_C_EXCLUSION.md), both cells. |
| + | - | + | Impossible: the diagonals HE and CF meet; the affine OP test would be negative and positive at their common point. |
| + | + | - | CE: the complete CA and CB upper exclusions cited in the EF row. |
| + | + | + | CEF: [N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md](N7_CENTRAL_COMPLETION_CEF_EXCLUSION.md), both cells. |

For the F-only row the line crosses EF and FH; its entire segment
inside the convex quadrilateral lies in the actual triangle HEF.
The two points are strict occupants, since none is on an actual
edge. In the C/F-positive row, HE has two negative endpoints and
CF has two positive endpoints; their strict diagonal intersection
therefore supplies the stated contradiction. No geometric sign
word is omitted.

Each of the other five words has a complete printed hand argument.
The new C cover has 51 leaves and covers both cells; the new
CA and CB CE/EF covers have 95 and 84 leaves, respectively.
Their full literal source tables and finite coverage are checked
by the separate exact readers. Thus both central cells, all four
lower cells, (1,2,0), every all-interior count and every exterior
count are excluded under m>=A*. This proves the theorem.

## 6. Boundary faces and scope

All genuine weak normalization faces in (1), including b=f,
f=c, a=e and d=h, remain in the cited weak domains. The all-interior
choice h>=e includes h=e; the two exterior height proofs also cover
h=e. The central equality ac=bh belongs to both central roots.
Closed rational boxes and shared endpoints of finite rectangle
covers enlarge the verified domains and remove no such face.

Every sign cut concerns a triangle of three distinct actual points.
Its zero face is excluded by the positive competitive minimum,
including points on actual hull edges or partition chords and
pair lines through actual vertices. Coincident actual contacts
or a collinear triple likewise have m=0. No limit argument is
used to replace strict attainment exclusion by a uniform gap.

Exact N7 has no free point on a square side and no occupied square
corner. A limit in which an eighth square contact appears belongs
to N8; a limit with an occupied corner belongs to a corner family
of NORMALIZATION.md. Those are different global normalization
rows, not omitted N7 faces. A closed polynomial source box may
contain such limiting coordinates without asserting that they
are actual N7 configurations. The boundary-valid D transfer in
Section 4 is separately included exactly where it is required.

No N7 placement, actual hull alternative, lower cell, central
contact order, pair-line word or permitted equality face is left
as an additional parent obligation by this assembly.

## 7. Verification status

The finite catalogue reader
[N7_CENTRAL_COMPLETION_PARENT_check.py](N7_CENTRAL_COMPLETION_PARENT_check.py)
checks the exact threshold comparisons, both five-count
enumerations, the complete literal octagon arc catalogue, the
lower and central sign catalogues, and every referenced manuscript
link. It does not replace the source-complete readers of the
individual proof tables.

Independent mathematical and coverage review accepts this assembly,
including the sharp projected hypothesis, every exterior hull and count,
the boundary-valid D transfer, the lower and central catalogues, and all
permitted equality faces. A separate exact arithmetic/count pass also
recomputes the threshold gaps and the exhaustive catalogues.

The new C/CE/EF proofs have 230 leaves and 1334 shared source stages.
Independent actual-point/Fraction readers check every complete ancestor
chain; 74 deliberate corruptions are rejected across the three packets.
Their respective manuscripts record the source and arithmetic counts.
Thus HP12-N7 is complete. The C1 and N6 global families remain separate
obligations.
