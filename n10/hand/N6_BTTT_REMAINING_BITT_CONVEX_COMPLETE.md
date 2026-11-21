# Exclusion of the convex top pair in BITT

Assume the six normalized boundary contacts have the BITT positions
and every actual doubled triangle area is at least $s=93/1000$.
For a convex top pair, the transposition and relabeling in the
[BITT setup](N6_BTTT_REMAINING_BITT_SETUP.md) allow $e\le f$.
The equality $e=f$ is included in that normalization.

The [octagon argument](N6_BTTT_REMAINING_BITT_OCTAGON.md) excludes
both lower ears for $P$, so $[ACP],[HBP]>0$. The other inner point
$Q$ is in the interior of the strictly convex quadrilateral $HCEF$.
Its diagonal intersection $X=HE\cap CF$ divides it into four
triangles. The edges on the original quadrilateral are excluded
by the placement hypothesis. Either diagonal would give an actual
zero-area triple with $Q$, so every admissible $Q$ is in exactly
one of the following open sectors.

| Sector | $[HEQ]$ | $[CFQ]$ | Determinant splits | Coordinate cuts | Contradictions | Proof |
|---|---|---|---|---|---|---|
| $CEX$ | $-$ | $-$ | 17 | 185 | 203 | [Right sector](N6_BTTT_REMAINING_BITT_CONVEX_CHAMBER.md) |
| $HCX$ | $-$ | $+$ | 62 | 326 | 389 | [Lower sector](N6_BTTT_REMAINING_BITT_BOTTOM_CHAMBER.md) |
| $EFX$ | $+$ | $-$ | 39 | 313 | 353 | [Upper sector](N6_BTTT_REMAINING_BITT_TOP_CHAMBER.md) |
| $FHX$ | $+$ | $+$ | 75 | 384 | 460 | [Left sector](N6_BTTT_REMAINING_BITT_LEFT_CHAMBER.md) |

Each sector is excluded by its printed argument and has independent
exact replay. Since the sectors exhaust the convex top-pair alternative,
that alternative has least ordinary triangle area strictly below
$93/2000$.
