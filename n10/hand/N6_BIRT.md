# Exclusion of the six-contact BIRT count

Every six-contact configuration of normalized count \((1,1,1,1,0)\)
has least ordinary triangle area below \(93/2000\).

Suppose all actual unsigned doubled triangle areas are at least
\(s=93/1000\). Use the six contacts \(A,B,C,E,F,H\), the lower
point \(P\) in \(HABC\), the upper point \(Q\) in \(HCEF\), the right
point \(R\) beyond \(CE\) and the top point \(S\) beyond \(EF\).
The hull has cyclic order \(A,B,C,R,E,S,F,H\). Sections 1–5 of the
[adjacent-cap lemma](N6_ADJACENT_CAPS_LINE.md) prove that the line
from \(P\) to \(Q\) crosses two open edges and that both arcs
between them contain at least three vertices.

The two points are on opposite sides of \(HC\). The entry edge is
therefore one of \(AB,BC,HA\), and the exit edge is on the upper
side. The cyclic separation of the edges is three, four or five.
Reading the octagon in order gives the following complete list.

| Entry | Exits and proofs |
| --- | --- |
| \(AB\) | [\(RE\), Section 13](N6_ADJACENT_CAPS_LINE.md) · [\(ES\)](N6_BIRT_DIRECTED_CHORDS.md#the-ab-es-crossing) · [\(SF\)](N6_BIRT_DIRECTED_CHORDS.md#the-ab-sf-crossing) |
| \(BC\) | [\(ES\)](N6_BIRT_DIRECTED_CHORDS.md#the-bc-es-crossing) · [\(SF\)](N6_BIRT_DIRECTED_CHORDS.md#the-bc-sf-crossing) · [\(FH\), Section 17](N6_ADJACENT_CAPS_LINE.md) |
| \(HA\) | [\(CR\), Section 12](N6_ADJACENT_CAPS_LINE.md) · [\(RE\)](N6_BIRT_DIRECTED_CHORDS.md#the-re-ha-crossing) · [\(ES\)](N6_BIRT_DIRECTED_CHORDS.md#the-es-ha-crossing) |

Every crossing leads to a contradiction from the printed geometric
deductions and rational arithmetic. Each determinant split covers
both possible signs under positive clearance. The coordinate cut
includes both closed children. The same bound holds under the
area-preserving square symmetries used in the normalization.

For the comparison with the [attained area](ATTAINMENT.md#1-the-algebraic-parameter),
the defining cubic is increasing on the isolating interval and is
\(-71167/976562500\) at \(789/2500\). Thus \(g>789/2500\).
The expression \((-3g^2+5g-1)/6\) is increasing there and at
\(789/2500\) exceeds \(93/2000\) by \(1187/37500000\).
The BIRT upper bound is therefore strictly below \(A^*\).
