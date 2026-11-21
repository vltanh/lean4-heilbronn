# The lower diagonal sector of convex BITT

Use the normalized placements of the
[BITT setup](N6_BTTT_REMAINING_BITT_SETUP.md) at unsigned doubled
clearance $s=93/1000$. Suppose $[ERS],[FRS]>0$. The
[octagon ear argument](N6_BTTT_REMAINING_BITT_OCTAGON.md) gives
$[ACP],[HBP]>0$. Let $X=HE\cap CF$ be the intersection of the two
diagonals of $HCEF$.

The upper point $Q$ cannot lie in $\operatorname{int}(HCX)$. Inside
$HCEF$, this open sector consists of exactly the points satisfying
$[HEQ]<0$ and $[CFQ]>0$. The relevant sides follow from $[HEC]<0$
and $[CFH]>0$. A point on either diagonal violates the clearance
of an actual triangle.

The [literal index and tables](N6_BTTT_REMAINING_BITT_CONVEX_BOTTOM_CHAMBER_TABLES/INDEX.md)
give all 62 determinant splits. The first splits on $AEP$.
Its positive branch splits on $AEQ$. The remaining split signs and any
conditional capacity exclusions are recorded at the corresponding
nodes. The scalar rules use actual determinant signs and the proved
containing polygons as in the
[triangular reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md),
[octagon bounds](N6_BTTT_REMAINING_BITT_OCTAGON.md) and
[pentagon ear inequality](PENTAGON_EAR_SUPPORT.md).

Two leaves give an immediate contradiction to the determinant identity
\[
 [abc][ade]-[abd][ace]+[abe][acd]=0.
\]
Here $a$ is the named actual pivot and $b,c,d,e$ are the four distinct
actual endpoints in the row. The three signed summands have the same
strict sign. This identity follows from the two-dimensional determinant
identity applied to the vectors from the pivot.

Each coordinate split has both closed children. The 326 cuts cover
their cutting faces. A polynomial terminal uses only positive
integer products of coordinate gaps, proved actual-area gaps and
physical factors with printed geometric witnesses. Any inherited
source is cited from an earlier stage in the same sign chamber.
The sums yield 357 strictly negative rational constants and five
strictly negative shifted monomial bounds by the
[coordinate-product rule](N6_BTTT_REMAINING_COORDINATE_PRODUCTS.md).

There are 389 terminal contradictions in all. The other 27 are the two
determinant-sign contradictions, eight empty intervals, two incompatible
bounds on a zero determinant, and fifteen conflicting area bounds.

Together with the [right sector proof](N6_BTTT_REMAINING_BITT_CONVEX_CHAMBER.md),
this proves $[HEQ]>0$ throughout the normalized convex BITT alternative.

Two separate standard-library readers replay the printed tables.
The independent Fraction computation checks the complete coverage,
2,852 physical factors, 5,533 coordinate updates, 31,492 area
updates and 23,128 positive products.

```sh
node n10/hand/N6_BTTT_REMAINING_BITT_REPLAY.js + contradiction 'HEQ-,CFQ+' n10/hand/N6_BTTT_REMAINING_BITT_CONVEX_BOTTOM_CHAMBER_TABLES
python3 n10/hand/audit_n6_bttt_remaining.py --bitt-convex-bottom-sector
```
