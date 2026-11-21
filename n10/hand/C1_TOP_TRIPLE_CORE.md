# A central point and three points beyond the top chord

Let the five one-corner contacts be
\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1),
 \qquad 0<d\le h\le1,\quad 0<f\le c\le1 .
\]
Assume that \(Z\) is in the interior of \(HCDF\) and that \(P,Q,R\)
belong to the top corner triangle \(DF(1,1)\) beyond \(DF\). Square-side
positions are allowed. Write \([XYZ]=\det(Y-X,Z-X)\) and \(s=93/1000\).

**Proposition.** If these nine points have all their unsigned doubled
areas at least \(s\), their top hull is a quadrilateral. One can name
the three top points so that its cyclic order is \(D,P,Q,F\) and
\(R\) belongs to **both** \(DPF\) and \(DQF\). In this labeling
\([DPQ],[DPR],[DQR]>0\), and the signs of
\(([FPQ],[FPR],[FQR],[PQR])\) are \((+,-,-,+)\).

Both one-corner counts IITTT and BITTT contain these nine points.
For IITTT choose either central point as \(Z\). For BITTT choose its
unique central point. The proof up to the last section uses exactly
these nine points.

## The four top signs

Order the rays from \(D\) to the top points so that
\([DPQ],[DPR],[DQR]>0\). The top cap subtends an angle of less than
\(\pi\) at \(D\), and all actual triples have nonzero determinant.
The five-point top-hull catalogue applies with the local labels
\((E,F,Q,R,S)\) replaced by \((D,F,P,Q,R)\). Its proof uses only these
five points and the enclosing corner triangle. Of sixteen sign words,
eight violate the five-point determinant identity. The convex-pentagon
word costs more than \(11s>1\) in its support triangle, and the word
with both opposite ears occupied costs at least \(12s>1\). The six
remaining possibilities are in the table. [Five-point catalogue, §1](N6_TOP_TRIPLE_SETUP.md)

| Word | Top hull | Effect of interchanging the axes |
| --- | --- | --- |
| \(----\) | \(DPF\) | \(---+\) |
| \(---+\) | \(DPF\) | \(----\) |
| \(--+-\) | \(DPF\) | \(--+-\) |
| \(-++-\) | \(DPRF\) | \(++-+\) |
| \(++-+\) | \(DPQF\) | \(-++-\) |
| \(+--+\) | \(DPQF\) | \(+--+\) |

Transposition interchanges \(C,H\) and \(D,F\), preserves the central
quadrilateral and reverses the sign of each ordered determinant.
Reorder the three top rays after transposition. The six explicit
permutations give the last column. Thus \(----\) and \(++-+\) must be
tested for both orders of \(h,c\). For \(--+-\) transposition fixes the
word and permits \(h\ge c\), including equality. [Label permutations, §1](N6_TOP_TRIPLE_TRANSPOSE.md)

## Initial signs and intervals

In each of the three tested words the top container has doubled area
\((1-d)(1-f)\ge(149/20)s\). In the triangular words the triangle
\(DPF\) contains \(Q,R\), so it costs at least \((4+2\sqrt3)s\).
In the single-ear quadrilateral word the opposite contact ears in the
endpoint support triangle cost at least \(3s\) and \(s\). Cauchy–Schwarz
gives the same lower bound \((1+\sqrt3)^2s\). Both exceed \((149/20)s\).
[Triangle occupancy](TRIANGLE_OCCUPANCY.md) and [endpoint support, §1](N6_TOP_TRIPLE_SETUP.md)

Put \(b=1-(149/20)s/(1-s)\). The anchors give \(hf,cd\ge s\), so
\(d,f\ge s\) and the top cost gives \(d,f\le b\). Thus \(h,c\ge s/b\).
For a top point \(T=(x,y)\) the clearance across \(DF\) gives
\[
  (1-d)(x-f)\ge s,\qquad (1-f)(y-d)\ge s .
\]
Both its coordinates lie in \([s+s/(1-s),1]\).
The central point has both coordinates in \([s,1-s]\).
The two lower bounds follow from its triangles on \(OH,OC\).
For the upper bounds use the two positive edge-test identities
\[
 (1-f)[CDZ]+(1-c)[DFZ]=[CDF](1-x_Z),\qquad
 (1-d)[FHZ]+(1-h)[DFZ]=[HDF](1-y_Z).
\]
Here \([CDF]\le1-f\) and \([HDF]\le1-d\) by contact order. These
are all the initial metric assumptions.

For triangular top hulls the nine-point hull is \(OCDPFH\).
For the quadrilateral tested here it is \(OCDPQFH\). Indeed the contact
pentagon and the top hull are on opposite sides of their common edge
\(DF\). At \(D\) the newly inserted neighbor \(T=(x,y)\) gives the turn
\([CDT]=(1-c)(y-d)+d(1-x)\ge0\). At \(F\) the corresponding turn
\([TFH]=(x-f)(1-h)+f(1-y)\ge0\). Clearance makes both strict.
The union is therefore convex, with the stated cyclic order.
Each cyclic hull triple is positive. The three or four inward tests
place \(Z\) inside \(HCDF\) and each inner top point inside its stated
top hull. These tests, the four top signs and the three ordered-ray
tests give all the initial orientations.

## The finite exclusions

A row labeled by three distinct points splits on the sign of their
ordered determinant. Read its negative child at suffix `m` and its
positive child at suffix `p`. Positive clearance excludes equality.
The last four columns below count contradictory leaves by their last
step. Each branch starts with the preceding contact and top-hull
hypotheses and the signs on its path.

| Word | Splits | Geometry | Area intervals | Coordinate intervals | Weighted inequalities |
| --- | ---: | ---: | ---: | ---: | ---: |
| \(----\) | 32 | 11 | 18 | 4 | 0 |
| \(--+-\) | 46 | 7 | 36 | 2 | 2 |
| \(++-+\) | 64 | 3 | 37 | 15 | 10 |

For example, take \(----\) with \([OZP]<0\), \([OZQ]>0\). The three
edge tests of \(OFP\) at \(Z\) are negative, as are its orientation
and the three tests of \(FPZ\) at each of \(Q,R\). Thus \(OFP\)
contains \(Z\) and its fan triangle \(FPZ\) contains \(Q,R\).
The clustered-triangle inequality gives an ordinary area strictly
below \(93/2000\). [Edge tests](C1_TOP_TRIPLE_CORE_TABLES/mmmm/rmp.md)
and [clustered-triangle inequality](CLUSTERED_TRIANGLE.md)

The remaining leaf derivations use the same inward-edge test,
the four-point area sum, the five- and six-point determinant identities,
the triangle and quadrilateral occupancy bounds, and the support
inequality for consecutive pentagon ears. The integer multipliers in
the last column combine named nonnegative expressions or exact
equalities. Their displayed rational ceilings are strictly negative.
The complete domain, individual deductions, interval endpoints,
multipliers and both children of every split appear in the three
tables. [Guide and case trees](C1_TOP_TRIPLE_CORE_TABLES/INDEX.md)

By the symmetry table this excludes five words. In the surviving
word \(+--+\), the inward tests for \(R\) in \(DPF\) are
\([DPR]>0,[PFR]>0,[FDR]>0\), and those in \(DQF\) are
\([DQR]>0,[QFR]>0,[FDR]>0\). This proves the proposition.

## Why the tenth point is needed

The tenth point gives an exhaustive contradiction in the remaining
word, whether it lies in the central quadrilateral or the lower
triangle. [IITTT](C1_TOP_TRIPLE_COMPLETION.md) and [BITTT](C1_BITTT.md)

The surviving nine-point placement can have least doubled area greater
than \(93/1000\). Divide the following integer coordinates by 108.

| \(O\) | \(H\) | \(C\) | \(D\) | \(F\) | \(Z\) | \(P\) | \(Q\) | \(R\) |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| (0,0) | (0,91) | (46,0) | (108,24) | (12,108) | (80,31) | (108,90) | (91,108) | (57,80) |

In integer units the four edge tests of \(HCDF\) at \(Z\) are
\(4520,1106,1680,2080\). The tests \([DFP],[DFQ],[DFR]\) are
\(-6336,-6636,-1092\). The three \(D\)-ray tests are \(1122,3366,3332\)
and the four word tests are \(1422,-1878,-2212,1088\).

Here are all 84 unsigned-area comparisons in grouped form. Use the
label order in the coordinate table. In row \(i\) the entries are
\(\min_{k>j}|[ijk]|\) in integer units, with \(j\) running from the
next label through \(Q\). Each entry is the minimum of at most seven
two-by-two determinants.

| First vertex | Minima for successive second vertices |
| --- | --- |
| \(O\) | 1092, 1104, 1428, 5196, 3852, 3474, 1124 |
| \(H\) | 1874, 1120, 1101, 2540, 1131, 1970 |
| \(C\) | 1106, 3908, 1138, 2646, 2412 |
| \(D\) | 1092, 1211, 1122, 3332 |
| \(F\) | 1561, 1422, 2212 |
| \(Z\) | 1507, 2310 |
| \(P\) | 1088 |

The minimum is \(1088/108^2\), attained at \(PQR\). Its gap above
\(93/1000\) has numerator \(1088000-93\cdot108^2=3248>0\)
over \(1000\cdot108^2\). Continuity and the strict sign margins
also allow \(P\) and \(Q\) to move slightly off their square sides.
