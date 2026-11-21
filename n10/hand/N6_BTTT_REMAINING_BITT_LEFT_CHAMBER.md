# The left diagonal sector of convex BITT

Take the normalized [BITT placements](N6_BTTT_REMAINING_BITT_SETUP.md)
with unsigned doubled clearance $s=93/1000$ and a convex top pair.
The [lower-ear exclusion](N6_BTTT_REMAINING_BITT_OCTAGON.md) gives
$[ACP],[HBP]>0$. Let $X=HE\cap CF$ in the upper quadrilateral $HCEF$.

Suppose $Q$ lies inside $FHX$. This is exactly the region of $HCEF$
with $[HEQ]>0$ and $[CFQ]>0$, since $[HEF]>0$ and $[CFH]>0$.
Neither diagonal can contain an actual point at this clearance.

The [literal index and tables](N6_BTTT_REMAINING_BITT_CONVEX_LEFT_CHAMBER_TABLES/INDEX.md)
first split on $AFQ$. Its positive child splits on $BPS$. The
negative child splits on $AFP$. Every one of the 75 determinant
splits has both nonzero signs. The twelve capacity deductions use
the actual containing triangles and the preceding upper endpoints
named in the table. The proof rules are those in the
[triangular reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
and [octagon argument](N6_BTTT_REMAINING_BITT_OCTAGON.md).
The stronger pentagon sources cite the bounds from
[the pentagon ear inequality](PENTAGON_EAR_SUPPORT.md).

Each of the 384 coordinate cuts has two closed children in its
parent box, including their shared cutting face. Every product
source is a gap from a completed coordinate interval, a proved
actual-area bound, or an explicitly witnessed geometric inequality.
Any inherited source is from an earlier stage of the same
sign chamber. The tables give the weights and full exact expansions
for 417 negative constants and eight negative shifted ceilings by
[the coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

The 460 contradictions include the 425 product leaves, twenty
empty coordinate intervals, thirteen conflicting area bounds and
two incompatible bounds on zero determinants.

Both literal replays check the full binary cover. The independent
Fraction reconstruction checks 3,385 physical factors, 6,174
coordinate updates, 42,282 area updates and 27,117 positive products.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js + contradiction 'HEQ+,CFQ+' n10/hand/N6_BTTT_REMAINING_BITT_CONVEX_LEFT_CHAMBER_TABLES
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-convex-left-sector
```
