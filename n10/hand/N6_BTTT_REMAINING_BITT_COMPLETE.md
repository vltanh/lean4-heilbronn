# Complete exclusion of the six-contact BITT count

In the six-contact normalization, every configuration of count
$(1,1,0,2,0)$ has least ordinary triangle area below $93/2000$.

Suppose instead that the unsigned doubled area of every actual
triangle is at least $s=93/1000$. Label the lower point $P$ in
$HABC$, the upper point $Q$ in $HCEF$, and the top-cap points $R,S$,
as in the [BITT setup](N6_BTTT_REMAINING_BITT_SETUP.md). A point on
an actual placement edge would make a zero-area triple, so the
placement memberships used below are strict. Choose $[ERS]>0$
by labeling the top pair. Transposition preserves the count and
the choice of triangular or convex top pair. The relabeling in
the setup therefore allows $e\le f$, including equality.

If $[FRS]>0$, all four diagonal sectors of the upper quadrilateral
are excluded by the
[complete convex top-pair proof](N6_BTTT_REMAINING_BITT_CONVEX_COMPLETE.md).

If $[FRS]<0$, the point $S$ is strictly inside the actual triangle
$ERF$. The [triangular lower-ear reduction](N6_BTTT_REMAINING_BITT_TRIANGULAR_REDUCTION.md)
excludes both lower ears and gives $[ACP],[HBP]>0$.
The two possible signs of the actual determinant $[AEP]$ are then
excluded by the [negative AEP proof](N6_BTTT_REMAINING_BITT_TRIANGULAR_AEP_NEGATIVE.md)
and the [positive AEP proof](N6_BTTT_REMAINING_BITT_TRIANGULAR_AEP_POSITIVE.md).

Every pair of alternatives is exhaustive because the separating
actual determinants have absolute value at least $s>0$. The
appendices include both children at every coordinate cut. Their
positive-product sums and strict rational upper bounds are
printed with the geometric witnesses used in each branch.

To compare with the attained candidate, use the
[algebraic parameter](ATTAINMENT.md#1-the-algebraic-parameter).
Its defining cubic is increasing on the stated isolating interval
and has value $-71167/976562500$ at $789/2500$, so $g>789/2500$.
The function $(-3g^2+5g-1)/6$ is increasing on the same interval.
At $789/2500$ it exceeds $93/2000$ by $1187/37500000$.
Hence the BITT upper bound is strictly below $A^*$.
