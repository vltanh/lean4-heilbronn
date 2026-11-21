# Complete six-contact exclusion with two lower points

Use the normalized six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

There are four further actual points in the square. Suppose exactly
two of them lie strictly inside the lower quadrilateral HABC. Then
some actual triangle has unsigned doubled area below s=93/1000.
In particular this entire placement has minimum ordinary area
less than 93/2000<A*, and cannot be a normalized maximizer.

This theorem covers every placement of the other two points. The
remaining N6 work concerns k=0 and k=1, where k counts points in
HABC; those counts are not asserted to have a uniform rational gap.

## 1. Exhaustive locations for the other two points

Assume all unsigned actual doubled areas are at least s. The
lower-left cap beyond AB is empty by N6_PLACEMENTS.md, Section 1.
The actual hexagon ABCEFH, together with its right, top and left
exterior corner caps, partitions the square. Every cap is above HC.
The actual chord HC contains no further actual point, since its
triangle with H,C would have zero area.

Name the two lower points P,Q. Each of the two remaining points
therefore lies either inside HCEF or in one of the three exterior
caps. Let j be the number inside HCEF. Precisely three possibilities
remain: j=2, j=1 or j=0. The complete proofs are as follows.

| Location of the other two points | Complete proof | Polynomial leaves | Geometric leaves | Printed integer terms |
|---|---|---:|---:|---:|
| Both in HCEF | N6_EXACT_HULL.md and its three appendices | 290 | 229 | 44924 |
| One in HCEF and one in either side cap | N6_TWO_LOWER_SIDE.md and its appendix | 56 | 26 | 5741 |
| One in HCEF and one in the top cap | N6_TWO_LOWER_TOP.md and its appendix | 113 | 65 | 27514 |
| Both exterior, in any caps | N6_TWO_LOWER_CAPS.md and its appendix | 54 | 2 | 5434 |

For j=2 the first theorem applies directly. For j=1 name the upper
interior point R and the cap point S. The side and top theorems cover
all three caps. For j=0 the cap theorem first excludes two points
in the same side cap analytically, and its four TT, RT, LT, RL models
cover every other unordered pair of caps.

## 2. Labels, boundaries and the contradiction

The shared lower reduction makes one physical transposition when
choosing its lower support cells. It may exchange the right and left
caps. Both side locations are explicitly retained in the side theorem,
and both RT and LT occur in the two-exterior theorem. The top cap is
preserved. Thus the reduction does not remove any of the location
alternatives in the table.

Every later split is by an actual nonzero determinant, or by the
complete zero-or-two-change line rule with its stated interior-point
hypothesis. The respective manuscripts print all compatible children,
all conditional actual containments and every positive sum. Each
polynomial leaf has a strict negative upper bound for a sum of
nonnegative factors. Each geometric leaf contradicts a stated actual
occupancy or determinant condition. The rational boxes are closed;
outer square faces allowed for cap points are included. No omitted
sign-zero face can satisfy the positive area hypothesis.

Consequently every row of the exhaustive location table contradicts
the assumed threshold. This proves the entire k=2 theorem. The
arithmetical checkers replay the printed proofs only; their numerical
discovery history supplies no premise of this assembly.
