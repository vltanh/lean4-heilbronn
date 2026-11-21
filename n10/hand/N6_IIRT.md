# Exclusion of the six-contact IIRT count

Every normalized configuration of count \((0,2,1,1,0)\)
has least ordinary triangle area below \(93/2000<A^*\).
[Exact threshold comparison](N6_BIRT.md)

Suppose all actual unsigned doubled triangle areas are at least
\(s=93/1000\). Use the hull \(ABCRESFH\) and the two upper points
\(P,Q\) of the [adjacent-cap reduction](N6_ADJACENT_CAPS_LINE.md).
Sections 1–5 show that the line \(PQ\) crosses two open hull edges
and that each arc between them contains at least three vertices.
In cyclic order the two crossed-edge indices therefore differ
by three, four or five. Reading the eight edges in order gives
the following twelve pairs.

| First edge | Second edges and exclusions |
| --- | --- |
| \(AB\) | [\(RE\)](N6_ADJACENT_CAPS_TABLES/IIRT_AB_RE/tree.md) · [\(ES\)](N6_ADJACENT_CAPS_TABLES/IIRT_AB_ES/tree.md) · [\(SF\)](N6_ADJACENT_CAPS_TABLES/IIRT_AB_SF/tree.md) |
| \(BC\) | [\(ES\)](N6_ADJACENT_CAPS_TABLES/IIRT_BC_ES/tree.md) · [\(SF\)](N6_ADJACENT_CAPS_TABLES/IIRT_BC_SF/tree.md) · [\(FH\), Section 6](N6_ADJACENT_CAPS_LINE.md#6-the-crossed-edge-geometry) |
| \(CR\) | [\(SF\)](N6_ADJACENT_CAPS_TABLES/IIRT_CR_SF/tree.md) · [\(FH\)](N6_ADJACENT_CAPS_TABLES/IIRT_CR_FH/tree.md) · [\(HA\), Section 9](N6_ADJACENT_CAPS_LINE.md#9-the-crha-crossing-in-iirt) |
| \(RE\) | [\(FH\)](N6_ADJACENT_CAPS_TABLES/IIRT_RE_FH/tree.md) · [\(HA\)](N6_ADJACENT_CAPS_TABLES/IIRT_RE_HA/tree.md) |
| \(ES\) | [\(HA\)](N6_ADJACENT_CAPS_TABLES/IIRT_ES_HA/tree.md) |

The capacity bounds exclude \(BC,FH\) and \(CR,HA\).
The other ten proofs give 892 determinant splits and seven
closed coordinate cuts. Each determinant branch has both
possible signs because its actual unsigned area is positive.
Each coordinate cut includes its shared face. All 909 leaves
give explicit contradictions. The geometry, initial boxes
and arithmetic rules are in the
[adjacent-cap proof](N6_ADJACENT_CAPS_LINE.md) and
[literal table guide](N6_ADJACENT_CAPS_TABLES/INDEX.md).
This exhausts the count. Square transposition carries the same
exclusion to the left and top caps.
