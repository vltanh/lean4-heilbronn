# Exact tables for two central points and a top pair

The [contact and hull proof](../N6_IITT.md) proves both initial
domains and their signs. The points are in a six-contact normalized
maximizer, with all coordinates of the four free points strictly
inside the square. The scalar bounds use the weakened doubled
threshold \(s=93/1000\). A sharp projection terminal uses the
strict interior hypothesis and the original threshold \(A^*\).

| Top hull | Data and determinants | Global contractions | Case tree |
| --- | --- | --- | --- |
| Triangular \(ERF\) | [Domain](tri/domain.md) | [Two stages](tri/global.md) | [Tree](tri/tree.md) |
| Convex \(ERSF\) | [Domain](quad/domain.md) | [Two stages](quad/global.md) | [Tree](quad/tree.md) |

The [literal table notation](../C1_TOP_TRIPLE_CORE_TABLES/INDEX.md)
gives the orientation, scalar and coordinate rules. Read
the file named by each tree path. Sign splits take both strict
signs. Coordinate cuts take both closed halves. Refined branches
use the certified box from their displayed parent or global stage.
All polynomial indices refer to the coordinate order in the domain.

The positive contact orders are \(e-a,h-e,f-b,c-f,f-e\).
The central quadrilateral has doubled area \(1-(h-e)(c-f)\le1\),
which applies to the two triangulations of \(HCEF\) and to its
actual subquadrilaterals. In the convex hull the eight ear cube
roots sum to at most four. The bound \(.453^3<s\) gives
each ear below \((4-7(.453))^3<.57\).
The total ear area is at most \(7s+(4-7s^{1/3})^3<1.221\).
Indeed, concentrate all surplus above \(s^{1/3}\) in one root.
Each such combination increases the total cubes by
\(3xy(2s^{1/3}+x+y)\) for two surpluses \(x,y\ge0\).
If one ear contains an occupant it has cube root above .653.
Any other ear is then below \((4-.653-6(.453))^3<.249\).
[Octagon proof](../NINE_CONVEX_POINTS.md)

The metric sources for the contact caps, the central point coordinates,
the occupied-side triangles and the top points are derived in the
[proof](../N6_IITT.md). A leaf with a projection witness checks all
ten actual signs and both weak cuts for the indicated reflected or
unreflected labels. [Sharp projection proof](../N6_PROJECTED_COUNT_TERMINALS.md)

The separate reader for the tables is [audit_n6_iitt.py](../audit_n6_iitt.py).
