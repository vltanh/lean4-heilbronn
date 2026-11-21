# The upper-point line in the six-contact count BIIR

In this count \(P\) is lower, \(Q,R\) are in \(HCEF\), and \(S\)
is in the right cap beyond \(CE\). We orient the upper pair by
\([AQR]>0\). The actual hull is the heptagon \(ABCSEFH\). The
line \(QR\) crosses two open edges, because a crossing at an
actual vertex would give a zero doubled area. We assume that every
actual doubled area is at least \(s=93/1000\).
[Six-contact placements](N6_PLACEMENTS.md)

The [right-cap triangle bounds](N6_RIGHT_CAP_TRIANGLES.md) rule
out a one-vertex arc around any of \(A,B,C,S,E,F\), leaving only
the ear at \(H\). They also give \([ACS]<347/500\). Thus the
two-vertex arc \(B,C\) is impossible. Its crossed edges \(AB,CS\)
would put both upper points inside \(ABCS\), and both are above
\(HC\). The triangle \(ABC\) is below \(HC\), so splitting
\(ABCS\) at \(AC\) would put both inside \(ACS\).

The two-vertex arc \(A,B\) would put both upper points in
\(HABC\), which is below \(HC\). The two-vertex arc \(C,S\)
would put both in \(BCSE\). The last quadrilateral lies in the
virtual triangle \(B,(1,0),E\), because each of \(B,C,E,S\)
lies there. The virtual triangle would contain the six actual
points \(B,C,E,S,Q,R\), including both actual endpoints \(B,E\).
Its doubled area is \(e(1-b)\le(1-s)^2\), since \(b\ge s\)
by \([ABH]\ge s\) and \(e\le1-s\) by \([EFH]\ge s\).
The six-point endpoint bound requires area at least
\((4427/500)s>(1-s)^2\). [Endpoint cost](SIX_POINT_ENDPOINT.md)

These restrictions leave the following twelve pairs of open edges.
The table gives a container of both upper points whenever the
contact quadrilateral can be replaced by a triangle.

| Short arc | Crossed edges | Triangle inside \(HCEF\) |
| --- | --- | --- |
| \(H\) | \(FH,HA\) | \(HCF\) |
| \(S,E\) | \(CS,EF\) | \(CEF\) |
| \(E,F\) | \(SE,FH\) | — |
| \(F,H\) | \(EF,HA\) | — |
| \(H,A\) | \(FH,AB\) | \(HCF\) |
| \(A,B,C\) | \(HA,CS\) | \(HCE\) |
| \(B,C,S\) | \(AB,SE\) | \(HCE\) |
| \(C,S,E\) | \(BC,EF\) | — |
| \(S,E,F\) | \(CS,FH\) | — |
| \(E,F,H\) | \(SE,HA\) | \(HCE\) |
| \(F,H,A\) | \(EF,AB\) | — |
| \(H,A,B\) | \(FH,BC\) | \(HCF\) |

In every row the closed segment between the two crossed edges
lies in the convex hull of their endpoints. For \(FH,HA\) this
hull is the triangle \(FHA\). In all other rows it is a
quadrilateral with its four vertices in cyclic order. No actual
point can be on a chord boundary.

For the final column, restrict the segment to the contact
quadrilateral \(HCEF\). A crossing on \(CS\) or \(SE\)
reaches that quadrilateral through \(CE\), since the region
between those outer edges and \(CE\) is the actual triangle
\(CSE\). A lower crossing reaches \(HCEF\) through \(HC\).
Crossings on \(EF,FH\) are already on its boundary.
When these two contact edges share an endpoint, the convex
hull of their union is the indicated triangle. Both \(Q,R\)
belong to its interior.

The vertices on each side of \(QR\) form a consecutive arc,
with \([VQR]>0\) for every vertex on the side containing \(A\).
For each row these hull signs and the inward edge signs of the
stated containers are therefore fixed. In an arithmetic branch,
discard a row when any of these signs disagrees with a sign
already established. If no row remains, the branch is
contradictory. If a determinant has the same indicated sign in
all remaining rows, it has that sign in the branch. The rows
marked *biir\_arc* use precisely these two inferences.

## The singleton arc at \(H\) is impossible

For the pair \(FH,HA\), both upper points lie in \(HCF\). Write
\(d_X=[XQR]\), \(U=x_Q-x_R\), and \(V=y_Q-y_R\).
The singleton hypothesis makes \(d_H\le-s\) and every other
hull value at least \(s\). Subtraction gives
\[
 d_A-d_H=(h-a)U\ge2s,\qquad
 d_F-d_H=fV-(1-h)U\ge2s .
\]
Hence \(U,V>0\). Since \(f\le c\), another difference gives
\(d_C-d_F=U+(c-f)V\ge U\), so \(d_C\ge s+U\).
Apply the [two-occupant triangle bound](N6_IIRL_SETUP.md#two-occupants-of-an-actual-triangle)
to \(HCF\), with \(H\) the isolated vertex. It gives
\[
 [HCF]\ge d_C+d_F+(2+2\sqrt3)s
        \ge (4+2\sqrt3)s+U
        > (149/20)s+2s/(1-s) .
\]
In the last step \(h-a\le1-s\) follows from \([ABC]\ge s\).

On the other hand \([HCF]=c(1-h)+fh\le c\).
Write \(S=(r,w)\) for the right-cap point. The actual
clearances give \(w\ge s\) from \([BCS]\), \(e\le1-s\)
from \([EFH]\), and
\[
 s\le[CSE]=e(r-c)-(1-c)w\le (1-c)(e-w).
\]
Thus \(c\le1-s/(1-2s)\). The exact gap
\[
 (149/20)s+\frac{2s}{1-s}
    -\left(1-\frac{s}{1-2s}\right)
 =\frac{89867693}{7382980000}>0
\]
is contradictory. The calculation needs just \(Q,R\) in \(HCF\)
and the three signs at \(A,C,F\) opposite the sign at \(H\).
The terminal *biir\_hcf\_spread* uses it in any branch with these
conditions. The rows labeled *biir\_reduced\_arc* use the remaining
eleven crossing pairs.

Whenever two actual points are inside a triangle, the
[two-occupant spread bound](N6_IIRL_SETUP.md#two-occupants-of-an-actual-triangle)
retains the two line determinants at the nonisolated vertices.
The row *biir\_triangle\_spread* names the triangle, the interior
pair, and the isolated vertex. The coefficient is \(109/20\).
For an actual pentagon with two occupants,
*biir\_pentagon\_area* uses its doubled area floor \(9s\).
The row *biir\_pentagon\_support* uses its support factor
\(XY-(1137/100)s(X-Z)\) with the named cyclic order. Both
pentagon inequalities are in the
[pentagon support proof](PENTAGON_EAR_SUPPORT.md#two-actual-points-inside-the-pentagon).

The [three-point cut](N6_CORNER_CONTAINERS.md#6-a-three-point-cut-through-the-contact-hexagon)
partitions \(P,Q,R\) among the central quadrilateral \(ABEF\), the
right triangle \(BCE\), and the left triangle \(AFH\). Their respective
capacity bounds are two, one, and two. The right bound follows also
from \([BCE]<347/500\). For the left bound, three occupants would
put six actual points (including \(A,H,F\)) in the virtual triangle
\(A,(0,1),F\) with actual endpoints \(A,F\). Its doubled area
is \(f(1-a)\le(1-s)^2\), because \([ABC]\ge s\) gives \(a\ge s\)
and \([CEF]\ge s\) gives \(f\le1-s\). This again violates the
six-point endpoint bound.

For each of \(P,Q,R\), write down its two signs at \(BE,AF\).
They are respectively \((+,-)\) in \(ABEF\), \((-,-)\) in
\(BCE\), and \((+,+)\) in \(AFH\). Each selection of one of
these three pairs for each point is allowed by the sign table
exactly when the three capacities hold. The row *biir\_place*
uses this finite list with the same elimination and forced-sign
rule as *biir\_arc*. The row *biir\_abef* uses the area bound
one for the actual quadrilateral \(ABEF\).

The row *biir\_joint\_arc* combines the eleven crossing pairs
with the placement table. Any region whose vertices all have
the same \(QR\) sign lies strictly to that side of \(QR\).
Thus neither \(Q\) nor \(R\) can occupy that region. If this
holds for the region of \(P\), or for \(HABC\), that sign is
\([PQR]\). Finally, for either chord \(XY=BE,AF\),
\[
 [XYR]-[XYQ]=[XQR]-[YQR].
\]
If \(Q,R\) have opposite signs against a chord and its endpoints
also have opposite \(QR\) signs, the two differences must agree
in sign. This removes every incompatible placement and crossing
pair before applying the same forced-sign rule.

For a specified container of a point, *biir\_joint\_chords* also
records its side of every actual hull chord whose remaining
container vertices all lie strictly on one side. This follows
by convexity and the actual triangle clearance. The cyclic order
\(ABCSEFH\) determines every vertex sign against a hull chord,
so these extra signs need no coordinate bounds.

If one of \(P,Q,R\) has \([BET]<0\), then it is in \(BCE\).
The virtual triangle \(B,(1,0),E\) contains \(B,C,E,S,T\), with
actual endpoints \(B,E\). The
[five-point endpoint estimate](TYPE_II.md) then gives
\[
 e(1-b)\ge (3+2\sqrt2)s>(1457/250)s .
\]
The coordinate factor *biir\_right\_occupied\_cost* uses this
bound in such a branch.

When the right occupant is one of \(Q,R\), the three actual
clearances at \(BE,CE,HC\) also give \(c-b\ge186/721\).
When either upper point lies in \(AFH\), transposition gives
\(h-a\ge186/721\). The sources *biir\_right\_span* and
*biir\_left\_span* use these conditional bounds.
[Upper side spans](N6_CORNER_CONTAINERS.md#6-a-three-point-cut-through-the-contact-hexagon)

The lower point \(P\) and each of \(Q,R\) satisfy the coordinate
sum bounds of the [BIRL setup](N6_BIRL_SETUP.md#lower-and-upper-coordinate-sums).
The proof uses \(P\) in \(HABC\) and the actual signs against
\(HC\), so the second upper point satisfies exactly the same bound.
The sources are *biir\_lower\_sum*, *biir\_upper\_sum\_Q* and
*biir\_upper\_sum\_R*. When the two contacts on a square side
have opposite \(QR\) signs, *biir\_spanHA* or *biir\_spanBC*
uses the [line displacement bound](N6_IIRL_SETUP.md#which-side-of-a-diagonal-contains-the-earlier-point)
with \(Q,R\) in place of \(P,Q\). The divisors are the respective
scalar upper bounds for \(AEH=h-a\) and \(BCF=c-b\).

The [right-contact ranges](N6_RIGHT_CAP_TRIANGLES.md#contact-bounds-and-their-refinement)
also bound \(b,c,h\) directly. In a refined \(e\) interval retain
every printed domain that intersects it. Use the smallest of
their \(b_-\) values and the largest of their \(c_+,h_+\)
values. The \(c_+\) value also bounds \(f\) by contact overlap.
These four affine factors apply with either nine or ten active
points. The [right-cap coordinate rows](N6_BIIR_CORE_SETUP.md#right-cap-coordinate-rows)
using only the contacts and \(S\) also apply to both sets.
