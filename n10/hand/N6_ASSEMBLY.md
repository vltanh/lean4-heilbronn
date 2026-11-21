# Exclusion of the normalized six-contact family

Suppose a normalized corner-free ten-point configuration has
six boundary points and \(m\ge A^*\). Since \(2A^*>.093\),
every actual unsigned doubled triangle area is at least
\(s=93/1000\). The placements are those of the
[six-contact reduction](N6_PLACEMENTS.md).
[Exact threshold comparison](N6_BIRT.md)

Write \((k,j,r,t,l)\) for the counts in \(HABC\), \(HCEF\),
and the right, top and left caps. All four free points are
strictly inside the square. No free point lies on a contact
chord because its area with the chord's endpoints would vanish.
Thus the five cells partition the free points. Transposition of
the square exchanges \(r,l\) and preserves \(k,j,t\), so take
\(r\ge l\). The [two-lower proof](N6_TWO_LOWER_COMPLETE.md)
excludes \(k=2\).

The remaining counts satisfy
\[
 k\in\{0,1\},\quad 0\le j\le2,\quad
 0\le l\le r\le2,\quad 0\le t\le3,\quad k+j+r+t+l=4.
\]
The [exterior-count bounds](N6_EXTERIOR_CUTS.md) and the
[side-pair reductions](N6_SIDE_PAIR_REDUCTION.md) exclude
\(r=2\) with \(t=2\), and \(t=3\) with either side occupied.
The [opposite-side argument](N6_SIDE_PAIR_OPPOSITE.md)
excludes \(r=2\) with \(l>0\). The two additional excluded
rows are \((1,0,2,1,0)\) and \((0,0,1,2,1)\).
[One lower, a side pair and a top point](N6_ONE_LOWER_SIDE_PAIR_TOP.md)
and [two top with both sides](N6_TWO_TOP_BOTH_SIDES.md)

For \(k+j=1\), distribute three exterior points. With \(r=0\)
this gives \(t=3\). With \(r=1\) it gives \((r,t,l)=(1,2,0)\)
or \((1,1,1)\). With \(r=2\) it gives \((2,1,0)\), which is
allowed only at \(k=0\). The restrictions leave no count with
\(k+j=0\). For \(k+j=2\), the four exterior triples are
\((0,2,0),(1,1,0),(1,0,1),(2,0,0)\). For \(k+j=3\),
they are \((0,1,0),(1,0,0)\). The bound \(j\le2\)
then gives the following seventeen rows.

| Count | Placement | Exclusion |
| --- | --- | --- |
| ITTT | \((0,1,0,3,0)\) | [One upper and three top](N6_BTTT_REMAINING_ITTT_COUNT.md) |
| IRTL | \((0,1,1,1,1)\) | [Nine convex points](NINE_CONVEX_POINTS.md) |
| IRTT | \((0,1,1,2,0)\) | [One right and two top](N6_IRTT_CORE_COMPLETE.md) |
| IRRT | \((0,1,2,1,0)\) | [Two right and one top](N6_IRRT.md) |
| IITT | \((0,2,0,2,0)\) | [Two upper and two top](N6_IITT.md) |
| IIRL | \((0,2,1,0,1)\) | [Two upper and both sides](N6_IIRL.md) |
| IIRT | \((0,2,1,1,0)\) | [Two upper and adjacent caps](N6_IIRT.md) |
| IIRR | \((0,2,2,0,0)\) | [Two upper and two right](N6_IIRR.md) |
| BTTT | \((1,0,0,3,0)\) | [One lower and three top](N6_BTTT_REMAINING_COUNT.md) |
| BRTL | \((1,0,1,1,1)\) | [One lower and all three caps](N6_ONE_LOWER_THREE_CAPS.md) |
| BRTT | \((1,0,1,2,0)\) | [One lower, one right and two top](N6_BTTT_REMAINING_BRTT.md) |
| BITT | \((1,1,0,2,0)\) | [One lower, one upper and two top](N6_BTTT_REMAINING_BITT_COMPLETE.md) |
| BIRL | \((1,1,1,0,1)\) | [One lower, one upper and both sides](N6_BIRL.md) |
| BIRT | \((1,1,1,1,0)\) | [One lower, one upper and adjacent caps](N6_BIRT.md) |
| BIRR | \((1,1,2,0,0)\) | [One lower, one upper and two right](N6_BIRR.md) |
| BIIT | \((1,2,0,1,0)\) | [One lower, two upper and one top](N6_BIIT_ARCS.md) |
| BIIR | \((1,2,1,0,0)\) | [One lower, two upper and one right](N6_BIIR.md) |

Every row contradicts \(m\ge A^*\). Together with the
two-lower exclusion and the placement reductions, this gives
\(m<A^*\) for the whole normalized six-contact family.
[Global theorem](ASSEMBLY.md)
