# The nine-point core of BIIR

Retain the six contacts \(A,B,C,E,F,H\), both upper points
\(Q,R\) in \(HCEF\), and the right-cap point \(S\) beyond \(CE\).
Assume that the 84 unsigned doubled triangles on these points
are at least \(s=93/1000\). We orient the upper pair by \([AQR]>0\).
These hypotheses would hold on the indicated nine points of a
competitive BIIR configuration.

The [upper-point line analysis](N6_BIIR_ARCS.md) leaves eleven
crossing pairs in the heptagon \(ABCSEFH\). Its singleton and
two-vertex exclusions, the listed upper-point containers, and
their convex chord signs use only these nine points. The
three-point placement table later in that note concerns the
full ten points.

The [nine-point proof tables](N6_BIIR_CORE_TABLES/INDEX.md) give
the exclusions established for these crossing pairs. The
\(BC,EF\), \(BC,FH\), \(CS,FH\) and \(SE,HA\) pairs also use
consequences of the lower point \(P\). Some stages eliminate its
coordinates, and later stages use its actual determinants.

## The coarse coordinate box

Write \(Q=(u,v)\), \(R=(r,w)\), and \(S=(j,k)\). Put
\[
 \alpha=1037/10000,\quad
 \eta=\frac{4s}{1-\alpha},\quad
 C_+=1-\frac{s}{1-s},\quad
 d=\frac{s}{1-\alpha},\qquad
 A_-=\max\{\alpha,s/(C_+-\alpha)\},\quad
 B_-=\max\{\alpha,s/(1-\alpha)\}.
\]
The inequalities \([ABC]=a(c-b)\ge s\) and
\([ABH]=b(h-a)\ge s\) imply \(a(1-a),b(1-b)\ge s\).
For example, \(b(h-a)\ge s\) implies \(b\ge s/(1-a)\).
Substitute this into \(a(c-b)\ge s\) using \(c\le1\)
and multiply by \(1-a>0\). Transposition gives the other
product. Since \(\alpha(1-\alpha)<s\), all four offsets
\(a,1-a,b,1-b\) are at least \(\alpha\).

By Cauchy–Schwarz,
\[
 \sqrt{a(c-b)}+\sqrt{b(h-a)}\le\sqrt{hc},
\]
so \(h,c\ge4s\). Also \([BCS]=(c-b)k\ge s\), and
\[
 [CSE]=e(j-c)-(1-c)k
       \le (j-c)(e-k)\le(1-c)(e-k).
\]
Thus \(e(j-b)\ge4s\) by the analogous Cauchy–Schwarz inequality
with spans \(c-b,j-c\), and \(e\ge\eta\). The actual \(CEF,EFH\)
areas are at most \(1-f,1-e\) by contact overlap, so \(e,f\le1-s\).
Inserting \(e-k\le1-s\) in the right-cap inequality gives
\(c\le C_+\). The same actual lower ears give
\[
 a\ge A_-,\qquad b\ge B_-,\qquad h-a,c-b\ge d ,
\]
using the bounds on \(a,b,c,h\) just obtained.

Put \(X=s/(1-A_-)\) and \(Y=s/(C_+-B_-)\).
The actual \(AH\) and \(BC\) tests give these lower bounds
on the respective two coordinates of each remaining point.
For the two upper points the actual \(CE,EF,FH\) tests also
give both upper coordinate bounds \(1-s\).
[Hexagon bounds](N6_EXACT_HULL_REDUCTION.md#2-uniform-coordinate-and-cross-pair-signs)

Finally \([CSE]\ge s\) gives \(j\ge c+s/e\) and
\(k\le e-s/(1-c)\). The resulting closed intervals are

| Coordinate | Lower endpoint | Upper endpoint |
| --- | --- | --- |
| \(a\) | \(A_-\) | \(\min(1-s,1-d)\) |
| \(b\) | \(B_-\) | \(\min(1-s,C_+-d)\) |
| \(c\) | \(4s\) | \(C_+\) |
| \(e\) | \(\eta\) | \(1-s\) |
| \(f\) | \(\alpha\) | \(1-s\) |
| \(h\) | \(\eta\) | \(1\) |
| \(u,r\) | \(X\) | \(1-s\) |
| \(v,w\) | \(Y\) | \(1-s\) |
| \(j\) | \(\max\{X,4s+s/(1-s)\}\) | \(1\) |
| \(k\) | \(Y\) | \(1-s-s/(1-4s)\) |

The literal table format retains two coordinate positions for
the lower point \(P\). A nine-point stage needs no actual sign
or occupancy claim involving \(P\). Its two positions may use
any constants in the printed intervals. If \(P\) is present,
the actual \(AH\) and \(BC\) tests still give \(p\ge X,\ q\ge Y\).
The lower placement gives \(hp+cq<hc\), so \(p<c\le C_+\).
The square gives \(q\le1\). These are its two printed intervals.

## Right-cap coordinate rows

The right-cap ears give
\[
 k(c-b)\ge s,\qquad e(j-c)\ge s+(1-c)k.
\]
Substituting the first into the second gives
\(e(c-b)(j-c)\ge s(1-b)\). All three factors on its left
are positive. Thus if \(e\le e_+\), \(c\le c_+\), and
\(b\ge b_-\), then the row *biir\_right\_x\_span* is
\[
 e_+(c_+-b_-)(j-c)-s(1-b)\ge0 .
\]
For any known lower bound \(k_-\) on \(k\), put
\(K=\max\{k_-,s/(c_+-b_-)\}\). The second ear gives the
row *biir\_right\_x\_chord*,
\[
 e_+(j-c)-s-(1-c)K\ge0.
\]
The constant floor *biir\_right\_x* uses \(j>71/100\).
[Right-cap floor](N6_RIGHT_CAP_TRIANGLES.md#contact-bounds-and-their-refinement)

The row *biir\_right\_contact\_span* uses \(c-b>13/100\).
[Right-cap contact span](N6_RIGHT_CAP_TRIANGLES.md#the-triangle-acr)

One can also apply the contact refinement with the current box
and the current scalar floors \(L_T\). Intersect the box with
the following bounds in their displayed order.
\[
\begin{aligned}
 f&\le c_+,\\
 h&\le e_-+(1-e_--L_{EFH})/(1-f_+),\\
 a&\ge L_{ABC}/(c_+-b_-),&
 k&\ge L_{BCS}/(c_+-b_-),\\
 b&\ge L_{ABH}/(h_+-a_-),&
 c&\le 1-\frac{L_{CSE}+e_-(1-j_+)}{e_+-k_-}.
\end{aligned}
\]
For the height use \(L_{EFH}\le1-e-(1-f)(h-e)\). The right
side of \(h\le e+(1-e-L_{EFH})/(1-f)\) increases with \(f\)
where the numerator is nonnegative, and decreases with \(e\).
The two next bounds use \(a(c-b)=[ABC]\) and \(k(c-b)=[BCS]\).
The last two use \(b(h-a)=[ABH]\) and
\((1-c)(e-k)=[CSE]+e(1-j)\).
Repeat four times, rounding each new quotient bound outwards
to a millionth. Stop before the height update when the numerator
\(1-e_--L_{EFH}\) is negative or \(c_+\le b_-\). Stop before
the last two updates if \(h_+\le a_-\) or \(e_+\le k_-\).
Retain the preceding updates. After the last round also take
\(f_+\le c_+\).
The factors *biir\_core\_a\_floor*, *biir\_core\_b\_floor*,
*biir\_core\_c\_cap*, *biir\_core\_f\_cap*,
*biir\_core\_h\_cap* and *biir\_core\_k\_floor* use the six
final endpoints.

For an upper point \(T=(x,y)\), the actual clearance gives
\(hx+cy=hc+[HCT]\). If \(M=\max\{c_+,h_+\}\),
then \(M(x+y)\ge hc+[HCT]\). A lower bound for \(hc\)
is the largest of \(4s\), the product of the coordinate floors,
and the floors for \([ABC]\) and \([ABH]\) added to \(2s\).
The last bound follows because the previous Cauchy–Schwarz
inequality gives \(hc\ge[ABC]+[ABH]+2\sqrt{[ABC][ABH]}\).
Add the current floor for \([HCT]\) and divide by \(M\).
The resulting floor on \(x+y\) supplies the row
*biir\_core\_upper\_sum* with the specified point.

## The direction of the upper-point line

If \(XY\) is the first crossed edge in cyclic order and
\([XQR]>0>[YQR]\), the displacement \(R-Q\) points from
the first crossing to the second. This follows since
\([XQR]-[YQR]=\det(Y-X,R-Q)>0\), so \(R-Q\) points into the
hull from the first edge. If the signs are reversed, use
\(Q-R\). Write the resulting displacement as \((D_x,D_y)\).

The projections of the two edges are ordered on each indicated
axis. The direction follows from the contact orders and
\(j>c\), \(0\le k<e\). A blank gives no restriction.

| Crossed edges | \(x\) direction | \(y\) direction |
| --- | ---: | ---: |
| \(AB,SE\) | \(+\) | |
| \(AB,EF\) | \(+\) | \(+\) |
| \(AB,FH\) | | \(+\) |
| \(BC,EF\) | | \(+\) |
| \(BC,FH\) | | \(+\) |
| \(CS,EF\) | | \(+\) |
| \(CS,FH\) | \(-\) | \(+\) |
| \(CS,HA\) | \(-\) | |
| \(SE,FH\) | \(-\) | \(+\) |
| \(SE,HA\) | \(-\) | |
| \(EF,HA\) | \(-\) | |

For an ordered axis \(i\), write \(\epsilon\) for its chosen
sign. The factor *biir\_core\_axis* records
\(\epsilon D_i\ge0\). Let \(g\ge0\) be a known gap between
the edge projections on that axis. Since the direction of
the line joining the crossing points is \((D_x,D_y)\),
and the square has width one on the other axis, we have
\(\epsilon D_i\ge g|D_{1-i}|\). The suffixes *p* and *m*
add or subtract \(gD_{1-i}\) from \(\epsilon D_i\).

Use the coordinate box to bound each edge projection by
the extrema of its two endpoints. The following additional
gaps use contact or cap clearances. Their lower bounds are
\(4s/e_+\) for \(j-b\) at \(AB,SE\), \(s/b_+\) for \(h-a\)
at \(AB,FH\), and \(s/(1-c_-)\) for \(e-k\) at \(CS,EF\)
or \(CS,FH\). For \(SE,FH\) use \(j-f\ge j-c\ge s/e_+\).
For \(SE,HA\) use \(j>71/100\). Each factor takes the
larger of its box gap and the indicated lower bound.

For hull vertices \(X,Y\) on opposite sides with
\([XQR]>0>[YQR]\), the difference of their determinants is
\[
 [XQR]-[YQR]=(y_X-y_Y)(x_R-x_Q)-(x_X-x_Y)(y_R-y_Q).
\]
It is at least the sum of their two unsigned area floors.
Express the right side in \((D_x,D_y)\). Bound a coefficient
by its upper endpoint when the corresponding displacement
is nonnegative, and by its lower endpoint when the displacement
is nonpositive. If \(D_j\) has unknown sign and its coefficient
is in \([l,u]\), using \((l+u)/2\) leaves an error of at most
\((u-l)|D_j|/2\). For a known projection gap \(g\ge1/3\)
on the other axis \(i\), bound the error by
\((u-l)\epsilon D_i/(2g)\). Use a constant coefficient
directly without a gap. The resulting linear upper bound
minus the two area floors is the nonnegative factor
*biir\_core\_axis\_clear* for \(X,Y\).

## Upper placements within a crossing pair

The hull quadrilateral \(ABEF\) and the triangles \(BCE,AFH\)
partition the contact hexagon. At most one upper point is
in \(BCE\) by its area bound. To form the placement table within
a fixed crossing, let each upper point be in one of these
three regions and retain the allowed pairs of regions.

If all vertices of a region have the same \(QR\) sign, its
interior lies strictly to that side of \(QR\). Neither \(Q\)
nor \(R\) can occupy it. If their regions put them on opposite
sides of \(XY=BE\) or \(AF\) and the endpoints of \(XY\) also
have opposite \(QR\) signs, the identity
\[
 [XYR]-[XYQ]=[XQR]-[YQR]
\]
enforces their order. Inside each allowed region, a hull chord
with all its remaining region vertices on one side gives the
same sign at its occupant. Intersect these signs with the
crossing's fixed signs, omitting every contradictory pair of
regions. The row *biir\_core\_place* uses this finite table.
An empty table in a branch is contradictory. A sign shared
by every compatible row is forced.

The actual triangles \(BCE,EFS,ACS,EFH\) each have capacity one.
The first three bounds are from the
[right-cap triangle note](N6_RIGHT_CAP_TRIANGLES.md).
For the fourth use \([EFH]\le1-e\le1-4s<347/500\).
If one of these triangles has a crossed edge as a side, the
farther upper point cannot be in that triangle. Its segment
to the crossed edge would otherwise contain the nearer upper
point as well. If two inward edge tests for the farther point
are positive, the third is negative. The row
*biir\_core\_arc\_cap* records this sign or the contradiction
from all three inward edge tests.

The contact orders also give upper bounds for six actual triangles
directly from their determinant expansions.

| Triangle | Determinant | Upper bound |
| --- | --- | --- |
| \(ABF\) | \(af+(1-a)b\) | \(f\) |
| \(ABE\) | \(be+(1-b)a\) | \(e\) |
| \(AEF\) | \(1-a-f(e-a)\) | \(1-a\) |
| \(BEF\) | \(1-b-e(f-b)\) | \(1-b\) |
| \(EFH\) | \(1-e-(1-f)(h-e)\) | \(1-e\) |
| \(CEF\) | \(1-f-(1-e)(c-f)\) | \(1-f\) |

The row *biir\_core\_contact\_cap* bounds the last column by the
appropriate box endpoint.

The contact orders and the right-cap ears also bound
three quadrilateral areas. Their determinants of diagonals give
\[
\begin{aligned}
 [ABEF]&=1-(e-a)(f-b),\\
 [CSFH]&=j-(c-f)(h-k),\\
 [SEFH]&=1-k-(j-f)(h-e).
\end{aligned}
\]
In each product use the nonnegative lower bound for each
difference, taking the greater of zero and the difference of
the appropriate box endpoints. The cap ears also give
\(h-k\ge e-k\ge s/(1-c_-)\) and \(j-f\ge j-c\ge s/e_+\).
Subtract the resulting product lower bound from the upper
endpoint for the remaining term. The row *biir\_core\_quad\_cap*
uses this upper bound for the quadrilateral by either
triangulation along a diagonal.

If both diagonals separate \(Q\) from \(R\) inside a convex
quadrilateral of doubled area \(W\), apply the
[two-diagonal spread lemma](QUADRILATERAL_SPREAD.md).
For either diagonal \(XY\), the difference in normalized
coordinates across it is
\((|[XYQ]|+|[XYR]|)/W\). The lemma bounds this difference
by \(1-(1457/250)s/W\), and by \(1-6s/W\) if \(W\le 11s\).
The row *biir\_core\_quad\_spread* uses the equivalent linear
area inequality with the specified diagonal. For the stronger
rate the row cites an upper bound on \(W\).

## Use of the lower point

Nine points can meet the threshold in each of these crossings. In millionths
the coordinates \((a,b,c,e,f,h,u,v,r,w,j,k)\) for \(BC,EF\) can be
\[
 (171988,129285,673943,896545,181161,896546,
 587921,364658,741430,802871,999900,340371).
\]
Their minimum is \(|[AQS]|=93654831257/10^{12}>s\).
For \(BC,FH\) the coordinates can be
\[
 (158861,121036,743950,545334,743949,976444,
 501264,451543,501265,859300,999900,158861).
\]
Here the minimum is \(|[CES]|=395607513/4000000000>s\).
For \(CS,FH\) the coordinates can be
\[
 (218240,244463,807750,869538,807749,920708,
 710560,382691,349180,805651,999900,312868).
\]
Here the minimum is \(|[QRS]|=4857330533/50000000000>s\).
For \(SE,HA\) the coordinates can be
\[
 (143636,129663,813984,901706,282078,901707,
 831729,614434,418328,559052,999900,317568).
\]
Here the minimum is \(|[HRS]|=24564758727/250000000000>s\).

Let \(P=(p,q)\) lie below \(HC\) in \(HABC\). Its clearances
at \(AH,BC,HC,AB\) yield
\[
 (h-a)p\ge s,\quad(c-b)q\ge s,\quad hp+cq\le hc-s,
 \quad ap+bq\ge ab+s.
\]
Define
\[
 P_0=\frac{s}{\min\{h_+-a_-,H_{AEH}\}},\qquad
 Q_0=\frac{s}{\min\{c_+-b_-,H_{BCF}\}},\qquad
 \Lambda=\max\{a_+/h_-,b_+/c_-\},
\]
where \(H_T\) is a current upper bound for the unsigned area
of triangle \(T\). Indeed \([AEH]=h-a\) and \([BCF]=c-b\),
so \(P_0\le p\), \(Q_0\le q\) and all denominators are
positive. These inequalities first give
\[
 G=hc-s-hP_0-cQ_0\ge0.
\]
Since \(\Lambda h-a,\Lambda c-b\ge0\), they also give
\[
 \Lambda G+aP_0+bQ_0-ab-s\ge0 .
\]
This is the compatibility bound from the
[one-lower-point proof](ONE_LOWER_POINT.md#5-compatibility-of-the-four-lower-clearances).
The two factors *biir\_retained\_lower\_hc* and
*biir\_retained\_lower\_ab* use these inequalities.

One can also keep both endpoint choices for the lower point.
Put \(B_0=aP_0+bQ_0-ab-s\). The nonnegative increments
\(p-P_0,q-Q_0\) satisfy
\[
 h(p-P_0)+c(q-Q_0)\le G.
\]
The maximum of the linear clearance at \(AB\) occurs with the
whole remainder on one coordinate. Therefore at least one of
\(aG+hB_0\) or \(bG+cB_0\) is nonnegative. Each is affine
in each contact variable separately. Its maximum over the
current box is bounded by its largest corner value. If this
upper bound is negative for one choice, the other gives the
factor *biir\_retained\_lower\_p* or *biir\_retained\_lower\_q*.

When a later stage lists actual signs involving \(P\), it
uses the lower placement \(P\in HABC\) from the BIIR hypotheses.
It starts with the inherited coordinate box and all previous
determinant decisions. The actual signs of the lower placement,
the three-region occupancy bounds, and the factors involving \(P\)
are the ones in the [BIIR crossing analysis](N6_BIIR_ARCS.md).

For the lower point in \(ABC\) or \(ABH\), the
[one-lower-point lemma](ONE_LOWER_POINT.md#1-the-ear-alternatives)
gives \(hc\ge(4+2\sqrt3)s>(149/20)s\). If the signs put it
inside both, the same area argument gives \(hc\ge12s\).
The factor *biir\_lower\_ear\_cost* subtracts the indicated
rational lower bound from \(hc\).

If \([ACP]>0\) and \([HBP]>0\), the lower point is in the
central part of \(HABC\). Equations (7) and (10) of the
[one-lower-point proof](ONE_LOWER_POINT.md#3-a-shared-central-strip-inequality)
give the other three factors. The coordinate floors are
\[
 p\ge\frac{s(c_++b_-)}{h_+(c_+-b_-)},\qquad
 q\ge\frac{s(h_++a_-)}{c_+(h_+-a_-)} .
\]
The factor *biir\_central\_span* is
\[
 c_+h_+(h-a)(c-b)-s(3hc-ac-bh-ab)\ge0 .
\]
