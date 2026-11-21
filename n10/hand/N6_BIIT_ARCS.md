# Exclusion of the six-contact BIIT count

Use the six normalized contacts \(A,B,C,E,F,H\) of
[the placement reduction](N6_PLACEMENTS.md). In BIIT,
\(P\) lies in \(HABC\), \(Q,R\)
lie in \(HCEF\), and \(S=(t,z)\) is in the top cap beyond \(EF\).
The cap base exposes \(S\), and each contact is extreme on its
square side, so the actual hull is the strict heptagon \(ABCESFH\).

**Theorem.** A normalized configuration of count
\((1,2,0,1,0)\) has least ordinary triangle area \(m<A^*\).
Suppose instead that \(m\ge A^*\). The common inequalities
below use the doubled clearance \(s=93/1000<2A^*\).
Where the ESF proof retains the larger
floor \(9307/100000\), it uses the exact comparison in the
[IITT proof](N6_IITT.md).

**Lemma.** The line through \(Q,R\) has at least two heptagon
vertices on each side. The short arc \(A,B\) is also impossible.

Both \(Q,R\) are strictly inside the heptagon. Their line meets
two open edges by positive clearance. If the line isolates a
single vertex, the full chord lies inside the ear at that vertex.
The ears at \(A,B\) lie below \(HC\), and the ear at \(S\) is
outside the contact hexagon. None contains either upper point.

## A bound at \(E\) and \(F\)

The lower ear inequalities give \(hc\ge4s\) by
Cauchy–Schwarz, hence \(c\ge4s\). They also give
\(b(1-b)\ge s\) as in [the right-cap triangle bounds](N6_RIGHT_CAP_TRIANGLES.md),
so \(f\ge b>103/1000\). The actual top-cap inequality
\([ESF]\ge s\) gives \(t\ge f+s/(1-e)\). Therefore
\[
\begin{aligned}
 [CES]&=(1-c)(z-e)+e(1-t)\\
 &\le (1-c)(1-e)+e(1-f)-\frac{es}{1-e}\\
 &\le .628+.269 e-\frac{.093 e}{1-e}\\
 &=.990-.269(1-e)-\frac{.093}{1-e}
 \le .990-2\sqrt{.269\cdot .093}<347/500.
\end{aligned}
\]
For the strict comparison, \((.148)^2<.269\cdot .093\).
The two-point triangle cost exceeds \(347/500\), so the ear
at \(E\) cannot contain both upper points. Transposition
gives the same conclusion at \(F\). This proof of the area
bound also applies if an additional right or left cap is occupied.

## The isolated vertex \(H\)

If \(H\) is isolated, the line crosses \(FH\) and \(HA\).
When restricted to \(HCEF\), it enters through \(HC\) and
leaves through \(FH\), since \(HA\) lies below \(HC\).
The resulting segment lies in the actual triangle \(HCF\),
which therefore contains both upper points.

Interchange \(Q,R\) if needed so \(d_H<0<d_X\) for all other
hull vertices, where \(d_X=[XQR]\). Write \(U=x_Q-x_R\) and
\(V=y_Q-y_R\). Subtraction gives
\[
 d_A-d_H=(h-a)U\ge2s,\qquad
 d_F-d_H=fV-(1-h)U\ge2s.
\]
In particular \(U,V>0\), and \(d_C-d_F=U+(c-f)V\ge U\).
The [triangle spread inequality](N6_IIRL_SETUP.md#two-occupants-of-an-actual-triangle)
for the isolated vertex \(H\) gives
\[
 [HCF]\ge d_C+d_F+(2+2\sqrt3)s
       \ge (4+2\sqrt3)s+U
       > (149/20)s+\frac{2s}{h-a}.
\]
On the other hand the virtual top-cap triangle gives
\((1-e)(1-f)\ge s\). Since \(e\ge a\),
\[
 [HCF]=c(1-h)+hf
       \le 1-h(1-f)\le 1-\frac{sh}{1-a}.
\]
Together the bounds imply
\[
  1>s\left(\frac{149}{20}+\frac{h}{1-a}+\frac{2}{h-a}\right).
\]
The two fractions sum to at least \(3/(1-a)\), since their
difference from that value is
\((1-h)(2/(h-a)-1)/(1-a)\ge0\).
But \(a\ge s\) from the actual lower ear, and
\(s(149/20+3/(1-s))>1\). This is a contradiction.
Transposition exchanges \(H,C\) and gives the same argument at \(C\).

Thus no single-vertex arc is possible. If the shorter arc
consists of \(A,B\), both upper points lie in the quadrilateral
\(HABC\) below \(HC\), again impossible.

## The remaining sign patterns

Each row gives a shorter arc, its crossed edges, and any triangle
of \(HCEF\) which must contain both upper points by adjacency.

| Shorter arc | Crossed edges | Containing triangle |
| --- | --- | --- |
| \(B,C\) | \(AB,CE\) | \(HCE\) |
| \(C,E\) | \(BC,ES\) | |
| \(E,S\) | \(CE,SF\) | \(CEF\) |
| \(S,F\) | \(ES,FH\) | \(EFH\) |
| \(F,H\) | \(SF,HA\) | |
| \(H,A\) | \(FH,AB\) | \(HCF\) |
| \(A,B,C\) | \(HA,CE\) | \(HCE\) |
| \(B,C,E\) | \(AB,ES\) | |
| \(C,E,S\) | \(BC,SF\) | |
| \(E,S,F\) | \(CE,FH\) | |
| \(S,F,H\) | \(ES,HA\) | |
| \(F,H,A\) | \(SF,AB\) | |
| \(H,A,B\) | \(FH,BC\) | \(HCF\) |

The hull crosses the line at the two edges joining the shorter
arc to its neighbors. Both upper points belong to the convex
quadrilateral of the four vertices of the crossed edges,
because the chord endpoints lie on those edges. For a three-vertex
arc they also belong to its five-vertex cap. Inside \(HCEF\),
a crossing on \(HA,AB,BC\) enters through \(HC\), one on
\(ES,SF\) through \(EF\), and one on \(CE,FH\) stays on
that edge. Two adjacent edges bound the endpoints of the
segment inside the triangle of their three vertices. This
gives the last column and includes all weaker interval faces.

After choosing \([AQR]>0\), the hull signs in each row are
positive on the arc containing \(A\) and negative on the other.
A determinant branch is impossible when all thirteen rows
disagree with an established actual sign. A sign common to
all surviving rows is forced in that branch.

## The \(E,S\) arc when \(e\le f\)

Choose \(e\le f\) by transposition before choosing a short arc.
This preserves the BIIT count and keeps the common equality face.
In the \(E,S\) row the crossed edges are \(CE,SF\). The whole
segment between them lies in \(CESF\), and its part in \(HCEF\)
lies in \(CEF\). These give the inward signs at \(Q,R\) in both
containers. Take the hull signs and the ordinary region tests
at the three interior points and at \(S\), along with the line
signs just defined. The [initial table](N6_BIIT_TABLES/ES/domain.md)
states all signs explicitly.

Write \(\alpha=1037/10000\), \(d_0=s/(1-\alpha)\) and
\(x_0=s/(1-d_0)\). The lower ear clearances give
\(a,b\ge \alpha\) as above and then \(a,b\ge d_0\), since
\(c-b,h-a\le1-\alpha\). The top-cap budget
\((1-e)(1-f)\ge s\) and \(e\ge a,f\ge b\) show
\(e,f\in[\alpha,1-d_0]\) and \(a,b\le1-d_0\).
The same lower ears give \(c,h\ge4s\).
All free coordinates are at least \(x_0\) by the \(AH,BC\)
clearances. Upper coordinates are at most \(1-s\) by the two
[inward edge identities](N6_BTTT_REMAINING_ITTT_ROUTE.md).
Finally \(t,z\ge\alpha+d_0\) by the actual \([ESF]\) clearance.
These bounds give the table's closed box.

The lower-point factors \(hc-(1457/250)s\) and \(1-s-p-q\)
follow from the five-point endpoint cost and the actual \(HC\)
test, exactly as for
[the adjacent-cap count](N6_ADJACENT_CAPS_LINE.md).
The contact order and top-cost factors are
\[
 e-a,\ h-e,\ f-b,\ c-f,\ f-e,\quad
 (1-e)(1-f)-s,\quad (t-f)(z-e)-s .
\]
The last is nonnegative by \((t-f)(z-e)=[ESF]+(1-t)(1-z)\).
The upper quadrilateral \(HCEF\) and the quadrilateral \(ABEF\)
both have doubled area at most one. The former has area
\(1-(h-e)(c-f)\) and the latter was bounded in the
[three-point cut](N6_CORNER_CONTAINERS.md).

The horizontal-gap factor uses
\[
          (t-f)[EFH]=f[ESF]+(1-f)[SFH].
\]
An established upper bound \(K\) for \([EFH]\) and lower bounds
\(\ell_1,\ell_2\) for \([ESF],[SFH]\) therefore give
\(K(t-f)-f\ell_1-(1-f)\ell_2\ge0\). All three scalar endpoints
are read from the completed scalar stage before the factor is used.

The [finite proof](N6_BIIT_TABLES/ES/tree.md) has 25 determinant
splits and 26 contradictions. Thirteen are area-interval
contradictions and thirteen are coordinate-interval contradictions.
The [literal row guide](C1_IIRTT_TABLES/INDEX.md) applies to
the six-contact coordinates and factors just described.
The optional table replay is

    python3 n10/hand/audit_n6_biit.py

This excludes \(E,S\) in the \(e\le f\) normalization.

## The \(A,B,C\) arc when \(e\le f\)

The crossings are \(HA,CE\), with positive vertices \(A,B,C\)
for the choice \([AQR]>0\). Both upper points belong to \(HACE\),
and the part of the chord inside \(HCEF\) lies in \(HCE\).
This specifies the extra inward signs in the
[domain table](N6_BIIT_TABLES/ABC/domain.md). Use the same
\(e\le f\) box, lower conditions and arithmetic rules as in the
\(E,S\) argument.

The [complete tree](N6_BIIT_TABLES/ABC/tree.md) has 67 sign
splits and 68 contradictions. They are 38 area-interval,
14 coordinate-interval and 16 geometric contradictions.
Its optional replay is

    python3 n10/hand/audit_n6_biit.py ABC

## The \(B,C\) and \(H,A\) arcs

For \(B,C\) the line crosses \(AB,CE\). These crossings put
both upper points in \(ABCE\), and the part of the chord inside
\(HCEF\) lies in \(HCE\). The negative vertices are \(B,C\)
for the choice \([AQR]>0\).
The [domain](N6_BIIT_TABLES/BC/domain.md) uses the same symmetric
box as before and permits either order of \(e,f\).

The [tree](N6_BIIT_TABLES/BC/tree.md) has 36 determinant splits
and 37 terminal contradictions. They comprise 19 area-interval,
five coordinate-interval and thirteen geometric contradictions.
Transposition exchanges \(B,C\) with \(A,H\) and interchanges
\(e,f\). Because the proof allows both orders of \(e,f\), it
excludes the short arc \(H,A\) as well. The table replay is

    python3 n10/hand/audit_n6_biit.py BC

## The \(B,C,E\) and \(F,H,A\) arcs

For \(B,C,E\) the chord crosses \(AB,ES\), placing both upper
points in \(ABES\) and in the five-vertex cap \(ABCES\).
The negative vertices are \(B,C,E\) for \([AQR]>0\).
Use the symmetric initial box without requiring \(e\le f\).
The [domain](N6_BIIT_TABLES/BCE/domain.md) gives the initial
inward tests and line signs.

The [tree](N6_BIIT_TABLES/BCE/tree.md) has 43 determinant splits
and 44 contradictions. They comprise 37 area-interval, five
geometric, one coordinate-interval and one weighted contradiction.
Transposition exchanges \(B,C,E\) with \(A,H,F\). Thus the same
proof excludes the short arc \(F,H,A\) in both contact orders.
The table replay is

    python3 n10/hand/audit_n6_biit.py BCE

## The \(S,F\) arc when \(e\le f\)

In the \(e\le f\) normalization the remaining short arc beside
the top point crosses \(ES,FH\). Both upper points are in \(ESFH\).
The part of the line in \(HCEF\) joins \(EF\) to \(FH\), so it
puts both upper points in \(EFH\). The negative vertices are
\(S,F\) for \([AQR]>0\). These placements give the
[domain signs](N6_BIIT_TABLES/SF/domain.md).

The [tree](N6_BIIT_TABLES/SF/tree.md) has 50 determinant splits
and 51 contradictions. They comprise 35 area-interval, nine
geometric, five coordinate-interval and two weighted contradictions.
The table replay is

    python3 n10/hand/audit_n6_biit.py SF

## The \(C,E\) and \(F,H\) arcs

For \(C,E\) the line crosses \(BC,ES\). Both points lie in
\(BCES\), and the negative hull vertices are \(C,E\) for
\([AQR]>0\). The [domain](N6_BIIT_TABLES/CE/domain.md)
uses the symmetric starting box with no order imposed on \(e,f\).

The [tree](N6_BIIT_TABLES/CE/tree.md) has 58 determinant splits
and 59 contradictions. They comprise 41 area-interval, nine
coordinate-interval and nine geometric contradictions.
Transposition exchanges \(C,E\) with \(H,F\) and the proof
covers both contact orders. Its optional replay is

    python3 n10/hand/audit_n6_biit.py CE

## The \(E,S,F\) arc when \(e\le f\)

The line crosses \(CE,FH\) with \(E,S,F\) on its negative
side for \([AQR]>0\). The ordered upper-coordinate bounds
and the two lower-to-upper lines give the stronger initial
constraints in the [ESF proof](N6_BIIT_ESF.md).
Its [complete tree](N6_BIIT_TABLES/ESF/tree.md) has 110
determinant splits and 111 contradictions.

## The \(H,A,B\) arc when \(e\le f\)

The line crosses \(FH,BC\). Its negative hull vertices are
\(C,E,S,F\) for \([AQR]>0\), and the upper segment lies in
\(HCF\). The [HAB proof](N6_BIIT_HAB.md) uses this containment
and the ordered top-ear budgets. Its
[complete tree](N6_BIIT_TABLES/HAB/tree.md) has 130 determinant
splits and 131 contradictions.

## The \(C,E,S\) and \(S,F,H\) arcs

For \(C,E,S\) the two crossed edges are \(BC,SF\). Both upper
points belong to \(BCSF\) and \(BCESF\). Both contact orders
are allowed in the [CES proof](N6_BIIT_CES.md). Its
[complete tree](N6_BIIT_TABLES/CES/tree.md) has 172 determinant
splits and 173 contradictions. Transposition exchanges
\(C,E,S\) with \(S,F,H\), so this excludes both arc locations.

## Complete arc coverage

Take \(e\le f\) by transposition, relabeling \(Q,R\) if
necessary to have \([AQR]>0\). The one-vertex arcs and the
arc \(AB\) have already been excluded. The thirteen remaining
arcs have the following nine proofs.

| Arc or reflected pair | Contradictions |
| --- | ---: |
| [\(ES\)](N6_BIIT_TABLES/ES/tree.md) | 26 |
| [\(SF\)](N6_BIIT_TABLES/SF/tree.md) | 51 |
| [\(BC,HA\)](N6_BIIT_TABLES/BC/tree.md) | 37 |
| [\(CE,FH\)](N6_BIIT_TABLES/CE/tree.md) | 59 |
| [\(ABC\)](N6_BIIT_TABLES/ABC/tree.md) | 68 |
| [\(HAB\)](N6_BIIT_TABLES/HAB/tree.md) | 131 |
| [\(BCE,FHA\)](N6_BIIT_TABLES/BCE/tree.md) | 44 |
| [\(CES,SFH\)](N6_BIIT_TABLES/CES/tree.md) | 173 |
| [\(ESF\)](N6_BIIT_TABLES/ESF/tree.md) | 111 |

The four reflected pairs use proofs that allow both contact
orders. The other five rows use \(e\le f\). The four pairs
and five single rows cover all thirteen arcs, with 700
contradictions in the nine trees. Each split considers both
possible signs of an actual determinant, whose unsigned
area is positive. This proves the theorem.

## Tools for the remaining arc tables

For either upper point \(X\), the line from \(P\) to \(X\)
enters the heptagon through \(HA,AB\) or \(BC\) and exits
through \(CE,ES,SF\) or \(FH\). These twelve pairs of edges
give the signs of the hull vertices along the line. They also
put \(P,X\) in the convex hull of the crossed-edge endpoints.
If the entry is \(HA\) or \(BC\), then \(P\) lies in \(HAC\)
or \(HBC\), respectively. If the exit is \(CE\) or \(FH\),
then \(X\) lies in \(HCE\) or \(HCF\), respectively. Positive
clearance excludes vertices as crossings and makes every
inward test strict. A table row uses a sign only when all
compatible pairs impose it. An empty list is a contradiction.
[Lower-to-upper line derivation](N6_BIIT_ESF.md#the-two-lower-to-upper-lines)

The upper area bounds \([CES],[FHS]<.675\) apply in either
contact order. For \(e\le f\), the additional bounds are
\([ACE]<.684,\ [BCE]<.614,\ [CEF]<.674\).
Transposition gives \([BFH]<.684,\ [AFH]<.614,\ [EFH]<.674\)
when \(f\le e\). A stage may apply either ordered list when
its initial coordinate box implies that order.
[Area bounds](N6_BIIT_ESF.md#area-ceilings)

An actual convex pentagon containing \(Q,R\) has area at
least \(9s\). Its finite endpoint support has area at least
\((1137/100)s\). When a triangle contains \(Q,R\) and the
line isolates one vertex, the other two vertices have
unsigned determinants with the pair whose sum is subtracted
from the triangle area. The remainder is at least
\((109/20)s\). For a convex quadrilateral containing an actual
pair and whose two diagonals separate that pair, use the
quadrilateral spread bound with constant \((29/5)s\).
In \(ABEF,HCEF\) the constant is \(6s\).
[Pentagon support](PENTAGON_EAR_SUPPORT.md) and
[quadrilateral and triangle spread](N6_IIRL_SETUP.md#separation-by-both-diagonals-of-an-actual-quadrilateral)

The vertical top gap, the lower and upper sum bounds, and
the subtraction of the unsigned \(HC\) clearances at \(P\)
and \(X\) use the completed scalar endpoints in each stage.
The horizontal line displacement from \(AH\) and the vertical
one from \(BC\) follow by subtracting the two oriented
determinants on opposite sides of \(QR\).
[Coordinate factors](N6_BIIT_ESF.md#remaining-coordinate-factors)
and [displacement rule](N6_ADJACENT_CAPS_TABLES/INDEX.md)

The lower-point endpoint cost \(hc\ge (1457/250)s\) also
gives \(\lambda c+h\ge2\sqrt{\lambda(1457/250)s}\).
For \(\lambda=1/2,1,2\), the printed factors may subtract
the respective rational floors \(1.0411,\ 1.4724,\ 2.0823\).
Squaring each floor verifies it is below the square root bound.
