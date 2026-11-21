# Finite exclusions for the adjacent-cap counts

The [adjacent-cap lemma](../N6_ADJACENT_CAPS_LINE.md) defines the
points and derives the interior-line placements.

| Count and crossings | Initial box and signs | Tree |
| --- | --- | --- |
| IIRT, \(AB,RE\) | [Domain](IIRT_AB_RE/domain.md) | [41 splits](IIRT_AB_RE/tree.md) |
| IIRT, \(CR,SF\) | [Domain](IIRT_CR_SF/domain.md) | [72 splits](IIRT_CR_SF/tree.md) |
| BIRT, \(CR,HA\) | [Domain](BIRT_CR_HA/domain.md) | [108 splits](BIRT_CR_HA/tree.md) |
| BIRT, \(AB,RE\) | [Domain](BIRT_AB_RE/domain.md) | [63 splits](BIRT_AB_RE/tree.md) |
| IIRT, \(ES,HA\) | [Domain](IIRT_ES_HA/domain.md) | [37 splits](IIRT_ES_HA/tree.md) |
| IIRT, \(BC,ES\) | [Domain](IIRT_BC_ES/domain.md) | [45 splits](IIRT_BC_ES/tree.md) |
| IIRT, \(AB,SF\) | [Domain](IIRT_AB_SF/domain.md) | [63 splits](IIRT_AB_SF/tree.md) |
| IIRT, \(AB,ES\) | [Domain](IIRT_AB_ES/domain.md) | [82 splits](IIRT_AB_ES/tree.md) |
| IIRT, \(RE,FH\) | [Domain](IIRT_RE_FH/domain.md) | [94 splits](IIRT_RE_FH/tree.md) |
| IIRT, \(RE,HA\) | [Domain](IIRT_RE_HA/domain.md) | [168 splits](IIRT_RE_HA/tree.md) |
| IIRT, \(CR,FH\) | [Domain](IIRT_CR_FH/domain.md) | [143 splits](IIRT_CR_FH/tree.md) |
| IIRT, \(BC,SF\) | [Domain](IIRT_BC_SF/domain.md) | [154 splits](IIRT_BC_SF/tree.md) |
| BIRT, \(BC,FH\) | [Domain](BIRT_BC_FH/domain.md) | [98 splits](BIRT_BC_FH/tree.md) |
| BIRT, \(BC,ES\) | [Domain](BIRT_BC_ES/domain.md) | [51 splits](BIRT_BC_ES/tree.md) |
| BIRT, \(AB,SF\) | [Domain](BIRT_AB_SF/domain.md) | [59 splits](BIRT_AB_SF/tree.md) |
| BIRT, \(ES,HA\) | [Domain](BIRT_ES_HA/domain.md) | [40 splits](BIRT_ES_HA/tree.md) |
| BIRT, \(AB,ES\) | [Domain](BIRT_AB_ES/domain.md) | [68 splits](BIRT_AB_ES/tree.md) |
| BIRT, \(BC,SF\) | [Domain](BIRT_BC_SF/domain.md) | [84 splits](BIRT_BC_SF/tree.md) |
| BIRT, \(RE,HA\) | [Domain](BIRT_RE_HA/domain.md) | [78 splits](BIRT_RE_HA/tree.md) |

Read the tree starting from the empty sign assignment in the
domain box. Appending m or p takes the negative or positive sign
of the determinant at the parent. Neither sign can vanish at
the assumed clearance. Each node records the initial box it
actually uses, which is either the domain box or an interval
output already proved at its parent. Further interval updates
within that node inherit the immediately preceding box.

The [literal row format](../C1_IIRTT_TABLES/INDEX.md) and
[general sign and interval rules](../C1_IIRTT.md) apply with the
six-contact coordinates in the domain. Each catalogue number \(i\)
selects row \(i\) in the file with suffix \(\lfloor i/1000\rfloor\),
padded to three digits. A node lists the signs and deductions,
the immutable area updates, any coordinate endpoint lines and
the terminal contradiction. The [positive combination rule](../LINEAR_AREA_CERTIFICATES.md)
justifies the printed weighted sums.

In a coordinate row, the four contact order factors are \(e-a\),
\(h-e\), \(f-b\) and \(c-f\). Each named triangle bound subtracts
the relevant endpoint from the actual signed area or subtracts
that area from the endpoint, as indicated by lo or hi.
The right and top support factors subtract \(4s\) from
\(e(1-b), e(r-b)\) and \(s\) from
\((1-e)(1-f),(t-f)(z-e)\), respectively.
The contact-order relations compare \(BCE\) with \(ABC\),
\(BCH\) with \(BCE\), \(AFH\) with \(ABH\) and \(ACH\) with
\(AFH\). Their common multipliers are \(c-b\) or \(h-a\).
The two upper-quadrilateral bounds both use
\(A(HCEF)=1-(h-e)(c-f)\le1\), where \(A\) is doubled area.
The adjacent-cap ceilings come from Sections 1, 2, 4 and 8 of
the adjacent-cap lemma. The octagon ear sum and individual
ceilings follow from the [cube-root inequality](../N6_IIRL_SETUP.md).
For five-vertex supports, the square-root floors and the three
consecutive ear costs are the [pentagon support inequality](../PENTAGON_EAR_SUPPORT.md).

The \(CR,SF\) rows also use the
[triangle and quadrilateral spread inequalities](../N6_IIRL_SETUP.md).
A triangle row names the actual triangle containing \(P,Q\) and its
vertex which is alone on its side of the line. A quadrilateral
row names the actual containing quadrilateral and one of its
diagonals, after both diagonals have been shown to separate the
points. The stronger spread coefficient \(6s\) is used for
\(ABEF,HCEF\), each of doubled area at most one.
The lower-point factors in BIRT use \(hc-(1457/250)s\) and
\(1-s-p-q\), proved in Section 12 of the adjacent-cap lemma.
The \(AB,RE\) BIRT rows use the same two spread rules as \(CR,SF\),
as well as the stronger support floor for an actual pentagon
containing both points. The triangle bounds for \(CRF,HCR\)
are proved in the [CRF proof](../N6_ADJACENT_CAPS_CRF.md) and
Section 9 of the adjacent-cap lemma, respectively.
The \(ES,HA\) IIRT rows also use the \(9s\) actual-pentagon
area floor when both interior points belong to that pentagon.

For any row using a triangle arc, the triangle has capacity one
and contains the indicated entry or exit edge. The opposite
interior point lies outside it by Section 6. The four-vertex
cap deductions use exactly the same capacity and inward tests
on the corresponding four consecutive hull vertices.

The additional coordinate factors for the right point are
\(r-.71,\ .625-d,\ .881-c\), proved in Section 2.
The horizontal-gap and ear-budget factors are the two subsequent
inequalities there using fixed earlier scalar endpoints.
The lower compatibility factors are (12) of
[the lower-point inequalities](../ONE_LOWER_POINT.md), using (10)
as additional coordinate floors in its lower-central case.
An occupied lower ear gives the stronger \(hc-(149/20)s\ge0\)
from Section 1 of the same proof.

The additional displacement bounds for \(BC,ES\) in BIRT use
the [directed chord](../N6_BIRT_DIRECTED_CHORDS.md).

For two upper points \(X,Y\), a \(\mathrm{chord\_difference}\)
factor names two actual hull vertices \(I,J\) on opposite sides
of \(XY\). Write \(\varepsilon\) for the sign of \([IXY]\).
Subtract the two oriented determinants in the order
\(\varepsilon([IXY]-[JXY])\) and subtract the sum of their
established unsigned area floors. The result is nonnegative.
In a \(\mathrm{chord\_gap}\) factor the two vertices are \(A,H\)
or \(B,C\). For \(A,H\), their difference is
\((h-a)(x_X-x_Y)\). For \(B,C\), it is \((c-b)(y_Y-y_X)\).
The corresponding span is positive. Divide the lower area
sum by the upper endpoint of that span in the current box,
giving a lower bound on the indicated coordinate difference
with its sign \(\varepsilon\).

The factors for opposite upper edges use the identities that
eliminate one coordinate between the two clearances
\([HCX]\) and \([EFX]\). The area endpoints are fixed from
the completed scalar stage.
[Opposite upper-edge identities](../N6_BTTT_REMAINING_ITTT_ROUTE.md#eliminating-a-coordinate-between-the-opposite-upper-edges)

The optional literal-table replay is

    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_AB_RE
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_CR_SF
    python3 n10/hand/audit_n6_adjacent_caps.py BIRT_CR_HA
    python3 n10/hand/audit_n6_adjacent_caps.py BIRT_AB_RE
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_ES_HA
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_BC_ES
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_AB_SF
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_AB_ES
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_RE_FH
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_RE_HA
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_CR_FH
    python3 n10/hand/audit_n6_adjacent_caps.py IIRT_BC_SF
    python3 n10/hand/audit_n6_adjacent_caps.py BIRT_BC_FH
    python3 n10/hand/audit_n6_birt_crossings.py BC ES
    python3 n10/hand/audit_n6_birt_crossings.py AB SF
    python3 n10/hand/audit_n6_birt_crossings.py ES HA
    python3 n10/hand/audit_n6_birt_crossings.py AB ES
    python3 n10/hand/audit_n6_birt_crossings.py BC SF
    python3 n10/hand/audit_n6_birt_crossings.py RE HA
