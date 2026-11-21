# The right diagonal sector of convex BITT

Use the normalized contacts and point placements of the
[BITT setup](N6_BTTT_REMAINING_BITT_SETUP.md). Assume that every actual
unsigned doubled triangle area is at least $s=93/1000$, and that
$[ERS],[FRS]>0$. By the
[octagon ear argument](N6_BTTT_REMAINING_BITT_OCTAGON.md), the lower
point satisfies $[ACP],[HBP]>0$.

Let $X$ be the intersection of the diagonals $HE$ and $CF$ of the
strictly convex quadrilateral $HCEF$. The upper point $Q$ cannot
lie in the open triangle $CEX$. Within $HCEF$, the interior of this
sector consists of exactly the points with $[HEQ]<0$ and $[CFQ]<0$.
Indeed $C$ is on the negative side of $HE$ and $E$ is on the negative
side of $CF$. No actual point can lie on either diagonal at the
assumed positive clearance.

The [literal index and tables](N6_BTTT_REMAINING_BITT_CONVEX_CHAMBER_TABLES/INDEX.md)
give the proof. The determinant cover starts with $AEQ$. Its negative
child splits on $BFP$ and its positive child splits on $AEP$.
All 17 sign splits are exhaustive because a zero actual determinant
violates the clearance assumption. The subsequent signs, completed
boxes and actual inequalities are recorded at their respective nodes.

The sign, scalar and support rules are those in the
[triangular reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
with the [convex octagon rules](N6_BTTT_REMAINING_BITT_OCTAGON.md).
The prior pentagon ceilings follow from
[the pentagon ear inequality](PENTAGON_EAR_SUPPORT.md).
Each application records the earlier endpoints and the precise coefficient.

A coordinate split at $x=t$ takes the two closed intervals $x\le t$
and $x\ge t$ within the parent box. Each child inherits every other
interval. The table supplies both children at all 185 cuts, including
their common cutting faces. A terminal product uses only the following
nonnegative factors.

- A coordinate factor is the gap to an endpoint in that terminal's
  completed box.
- An area factor uses the cited proved endpoint and the sign of its
  actual triangle.
- A physical factor uses the printed polynomial with its explicit
  geometric witness. An inherited factor gives the stage and factor
  number, within the same sign chamber and before the coordinate cuts.

The 203 terminal contradictions consist of three empty intervals,
two conflicting area bounds and 198 positive-product sums. Of those
sums, 194 expand to strictly negative rational constants and four
have strictly negative shifted monomial bounds by
[the coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

Two standard-library replays read the literal Markdown. The independent
Fraction replay checks the full binary coverage and reconstructs 1,372
physical factors, 3,641 coordinate updates, 9,043 area updates and
14,178 positive products.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js + contradiction 'HEQ-,CFQ-'
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-convex-chamber
```
