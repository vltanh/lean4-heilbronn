# Excluding the normalized one-corner family

**Theorem.** If a ten-point configuration in the unit square has one
occupied corner and the normalized C1 contacts, some actual triangle
has ordinary area below \(93/2000\).

Put \(s=93/1000\) and suppose every unsigned doubled area is at least
\(s\). All actual points are distinct and all triangle orientations
are strict. Use the five distinct contacts
\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),
 \qquad 0<d\le h\le1,\quad 0<f\le c\le1.
\]
The contact orders are those of the C1 normalization.
[Normalization, §4](NORMALIZATION.md)

The actual chords partition the five remaining points into \(OHC\),
\(HCDF\), and the right, top and left corner caps. Write the
corresponding counts as \((k,j,r,t,l)\). A point on an actual chord
would give zero area. Square-side points belong to the corresponding
closed-square cap or anchor region. Interchanging the axes permits
\(r\ge l\) and preserves unsigned areas. Within each resulting
count the listed proof uses its own labeling and hypotheses.

The [placement reduction, §6](C1_EXTERIOR_REDUCTION.md) gives the
32 exterior rows below, in addition to the exact pentagon
\((3,2,0,0,0)\), which is excluded separately.
[Exact pentagon](C1_PENTAGON.md)

## Zero or one lower point

| Count \((k,j,r,t,l)\) | Exclusion |
| --- | --- |
| \((0,1,1,2,1)\), \((1,0,1,2,1)\) | [Top pair and both side caps](C1_TOP_PAIR_BOTH_SIDES.md) |
| \((0,1,1,3,0)\), \((1,0,1,3,0)\) | [Three top points with a side cap](C1_THREE_TOP_NO_SIDE.md) |
| \((0,1,2,1,1)\), \((1,0,2,1,1)\) | [Side pair with opposite and top caps](C1_SIDE_PAIR_OPPOSITE_TOP.md) |
| \((0,2,0,3,0)\) | [Two central points and three top points](C1_TOP_TRIPLE_COMPLETION.md) |
| \((0,2,1,1,1)\) | [Two central points and three caps](C1_TWO_CENTRAL_THREE_CAPS.md) |
| \((0,2,1,2,0)\) | [Two central points, right cap and top pair](C1_IIRTT.md) |
| \((0,2,2,0,1)\), \((1,1,2,0,1)\) | [Side pair with an opposite point](C1_SIDE_PAIR_OPPOSITE_CENTRAL.md) |
| \((0,2,2,1,0)\) | [Two central points, side pair and top point](C1_TWO_CENTRAL_SIDE_PAIR_TOP.md) |
| \((1,1,0,3,0)\) | [One lower point and three top points](C1_BITTT.md) |
| \((1,1,1,1,1)\) | [One lower point and three occupied caps](C1_ONE_LOWER_THREE_CAPS.md) |
| \((1,1,1,2,0)\) | [Lower, central, right and top pair](C1_BIRTT.md) |
| \((1,1,2,1,0)\) | [Lower, central, side pair and top point](C1_ONE_LOWER_SIDE_PAIR_TOP.md) |
| \((1,2,0,2,0)\) | [Lower, central pair and top pair](C1_BIITT.md) |
| \((1,2,1,0,1)\) | [Lower, central pair and both sides](C1_ONE_LOWER_TWO_CENTRAL_SIDES.md) |
| \((1,2,1,1,0)\) | [Lower, central pair and adjacent caps](C1_BIIRT_SETUP.md) |
| \((1,2,2,0,0)\) | [Lower, central pair and side pair](C1_BIIRR.md) |

## Two or three lower points

| Count \((k,j,r,t,l)\) | Exclusion |
| --- | --- |
| \((2,0,0,3,0)\) | [Two lower points and three top points](C1_TWO_LOWER_THREE_TOP.md) |
| \((2,0,1,1,1)\) | [Two lower points and all three caps](C1_TWO_LOWER_THREE_CAPS.md) |
| \((2,0,1,2,0)\) | [Two lower points, side cap and top pair](C1_TWO_LOWER_SIDE_TOP_COMPLETE.md) |
| \((2,1,0,2,0)\) | [Two lower points, central point and top pair](C1_TWO_LOWER_CENTRAL_TWO_TOP.md) |
| \((2,1,1,0,1)\) | [Two lower points, central point and both sides](C1_TWO_LOWER_BOTH_SIDES.md) |
| \((2,1,1,1,0)\) | [Two lower points, central point and adjacent caps](C1_TWO_LOWER_CENTRAL_SIDE_TOP.md) |
| \((2,2,0,1,0)\) | [Two lower points, central pair and top point](C1_BBIIT_TWO_EARS.md) |
| \((2,2,1,0,0)\) | [Two lower points, central pair and side point](C1_TWO_LOWER_TWO_CENTRAL_RIGHT.md) |
| \((3,0,0,2,0)\), \((3,0,1,1,0)\), \((3,1,0,1,0)\), \((3,1,1,0,0)\) | [Three lower points, §4](C1_THREE_LOWER_ONE_SIDE.md#4-completion-and-the-entire-three-lower-subfamily) |

Every table entry is a contradiction for its full continuous count.
This proves the theorem. Since \(93/1000<2A^*\), no normalized
maximizer can be in C1.
[Threshold comparison](FOUR_CORNERS.md)
