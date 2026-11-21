# The HAB arc in the six-contact BIIT count

Use the [BIIT normalization](N6_BIIT_ARCS.md), and suppose every
actual unsigned doubled triangle area is at least \(s=93/1000\).
Choose \(e\le f\) by square transposition before selecting the short
arc. Label the upper points so that \([AQR]>0\), which is possible
by positive clearance. The arc \(H,A,B\) then has positive vertices
and \(C,E,S,F\) are negative. The crossings are \(FH,BC\), so both
upper points lie in the convex quadrilateral \(FHBC\). Within \(HCEF\),
the two edges crossed are \(FH,HC\), whose three endpoints give the
containing triangle \(HCF\).
[Contact-order and fan rules](N6_BIIT_ARCS.md#the-remaining-sign-patterns)

These signs and memberships, with the ordinary BIIT lower-point
conditions, give the [initial table](N6_BIIT_TABLES/HAB/domain.md).
The area deductions use the
[common rules for the remaining arcs](N6_BIIT_ARCS.md#tools-for-the-remaining-arc-tables).
The ordered area-ceiling argument also gives \(e\le171/250\).
When \([ACP]<0\) or \([BHP]>0\), the lower point lies in an actual
ear and the same budget gives \(e\le661/1000\). The two arguments use
the contact order, the top-ear bounds and the lower placement.
[Ordered area ceilings](N6_BIIT_ESF.md#area-ceilings)

The [complete case tree](N6_BIIT_TABLES/HAB/tree.md) has 130
determinant splits and 131 contradictions. There are 73 incompatible
area intervals, 12 incompatible coordinate intervals, 31 geometric
contradictions and 15 exact weighted contradictions. Each determinant
has unsigned doubled area at least \(s\), so its two strict signs
exhaust the case at each split. The product endings use the
[coordinate product rule](N6_BIRT_DIRECTED_CHORDS.md#coordinate-product-endings).

```sh
python3 n10/hand/audit_n6_biit_hab.py
```
