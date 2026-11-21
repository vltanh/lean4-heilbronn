# The upper diagonal sector of convex BITT

Use the normalized [BITT placements](N6_BTTT_REMAINING_BITT_SETUP.md)
with unsigned doubled clearance $s=93/1000$ and a convex top pair.
The [octagon ear argument](N6_BTTT_REMAINING_BITT_OCTAGON.md) gives
$[ACP],[HBP]>0$. Write $X=HE\cap CF$ for the diagonal intersection
of $HCEF$.

The upper point $Q$ cannot lie inside $EFX$. Within $HCEF$ this
is precisely the chamber $[HEQ]>0$, $[CFQ]<0$, since $[HEF]>0$
and $[CFE]<0$. Neither diagonal can contain $Q$ at positive actual
clearance.

The [literal index and tables](N6_BTTT_REMAINING_BITT_CONVEX_TOP_CHAMBER_TABLES/INDEX.md)
first split on $AEP$, then on $AFP$ in its positive child. All
39 sign splits give both signs of the indicated actual determinant.
Seven further signs are inferred using the printed capacity upper
bounds. The geometric rules come from the
[triangular reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
and [convex octagon rules](N6_BTTT_REMAINING_BITT_OCTAGON.md).
The prior pentagon source is the
[pentagon ear inequality](PENTAGON_EAR_SUPPORT.md).

At each of the 313 coordinate cuts the two closed children retain
all the unchanged parent intervals. Their common cutting faces are
included. Every terminal product has an explicit positive integer
weight and uses only coordinate gaps, proved actual-area bounds
and the stated geometric inequalities. An inherited factor cites
its earlier stage and factor number. The expanded sums give 330
strictly negative rational constants and six strictly negative
shifted ceilings by the
[coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

The other terminal rows give nine conflicting area bounds, six
empty intervals, incompatible bounds on one zero determinant and
one instance of the three-term determinant-sign contradiction in the
[lower sector proof](N6_BTTT_REMAINING_BITT_BOTTOM_CHAMBER.md).

The 353 contradictions have independent Fraction replay from the
printed tables. It reconstructs the full coverage, 2,177 physical
factors, 4,569 coordinate updates, 25,558 area updates and 21,979
positive products.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js + contradiction 'HEQ+,CFQ-' n10/hand/N6_BTTT_REMAINING_BITT_CONVEX_TOP_CHAMBER_TABLES
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-convex-top-sector
```
