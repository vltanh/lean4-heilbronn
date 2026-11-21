# Two upper points and one point in each side cap

In the six-contact count IIRL the ten points are
\[
 A=(0,a),\ B=(b,0),\ C=(c,0),\ E=(1,e),\ F=(f,1),\ H=(0,h),
 \quad P=(p,q),\ Q=(u,v),\ R=(r,w),\ S=(j,k).
\]
The six contacts satisfy \(0<a<h<1,\ 0<b<c<1,\ a\le e\le h,\ b\le f\le c\).
\(P,Q\) lie inside \(HCEF\), \(R\) in the right cap \(CE(1,0)\)
and \(S\) in the left cap \(FH(0,1)\). Positive clearance excludes
every chord boundary. All unsigned doubled areas are at least
\(s=93/1000\). Transposition interchanges the two occupied caps and
takes \((a,b,c,e,f,h)\) to \((b,a,h,f,e,c)\) after relabeling.
Hence \(e\le f\) can be used, including equality. Interchange \(P,Q\)
to make \([APQ]>0\).

The [chord tables](N6_IIRL_TABLES/INDEX.md) give the finite exclusions
for the pairs they list.

## The ten line placements and the initial box

Use the [two-side-cap theorem](N6_BOTH_SIDE_CAPS.md), where its hull
letters \(D,G\) are \(R,S\) here. Its ten surviving IIRL pairs give
the following root domains. The last column is a convex quadrilateral
containing both interior points. Indeed, the two ends of the chord
through \(P,Q\) are on the first and second crossed edge, and the
convex quadrilateral of their four endpoints contains that chord.

| First edge | Second edge | Additional container |
| --- | --- | --- |
| \(AB\) | \(RE\) | \(ABRE\) |
| \(AB\) | \(EF\) | \(ABEF\) |
| \(AB\) | \(FS\) | \(ABFS\) |
| \(BC\) | \(EF\) | \(BCEF\) |
| \(BC\) | \(FS\) | \(BCFS\) |
| \(CR\) | \(FS\) | \(CRFS\) |
| \(CR\) | \(SH\) | \(CRSH\) |
| \(RE\) | \(SH\) | \(RESH\) |
| \(RE\) | \(HA\) | \(REHA\) |
| \(EF\) | \(HA\) | \(EFHA\) |

Write \(\ell=31/251,\ M=31657/55000\).
The side-cap theorem supplies the first three rows of the box below.
In the last row,
\[
 [CRE]=e(r-c)-(1-c)w\ge s,\qquad
 [FSH]=f(k-h)-(1-h)j\ge s
\]
give \(r\ge c+s/e\) and \(k\ge h+s/f\). Hence both are at least
\(1-M+s/(1-\ell)=23343/44000\).

| Coordinates | Closed interval |
| --- | --- |
| \(a,b,w,j\) | \([\ell,M]\) |
| \(c,e,f,h\) | \([1-M,1-\ell]\) |
| \(p,q,u,v\) | \([\ell,1-\ell]\) |
| \(r,k\) | \([23343/44000,1]\) |

For the two physical cap costs use \(e(1-b)\ge4s\) and \(f(1-a)\ge4s\).
For the first, the actual triangles \(BCR,CRE\) have areas at least
\(s\) and at most \((c-b)w,(1-c)(e-w)\), respectively. Their square
roots have sum at most \(\sqrt{(1-b)e}\) by Cauchy–Schwarz.
Transposition gives the second cost.

Retaining the original depth gives a stronger pair of factors:
\[
e(r-b)\ge 4s+(1-r)w,\qquad f(k-a)\ge4s+(1-k)j .
\]
Indeed \([CRE]=(r-c)(e-w)-(1-r)w\le(r-c)(e-w)\).
The two terms \(Jw\) and \((r-c)(e-w)\) in the square of the
same Cauchy–Schwarz bound have sum at least \(2s+(1-r)w\).
Their geometric mean is at least \(s\). Adding twice that mean
gives the first bound. Transposition gives the second bound.
The tables may also use either bound with its depth term dropped.
The neighboring actual ears give two more depth bounds:
\[
 [REF]-[CRE]=(c-f)(e-w)+(1-r),\qquad
 [EFS]-[FSH]=(h-e)(f-j)+(1-k).
\]
The first terms are nonnegative by the contact and cap orders.
For \(\mathtt{side\_radial\_r}\), use the lower bound
\(r\ge1-\operatorname{hi}([REF])+\operatorname{lo}([CRE])\).
The corresponding \(\mathtt{side\_radial\_k}\) bound is
\(k\ge1-\operatorname{hi}([EFS])+\operatorname{lo}([FSH])\).
Here the upper and lower endpoints come from the completed scalar
stage at which the factor is used.

## Signs and capacities used at each root

The boundary order is \(A,B,C,R,E,F,S,H\), with every cyclically
ordered hull triple positive. Each interior point is strictly inside
the octagon, \(HCEF\), and the listed four-endpoint container.
The six chord tests \(AB,BC,FH,CE,EF,HC\) are positive at each
of \(P,Q,R,S\) except for \(CER,FHS\), which are negative.
These follow from the six-contact placement catalogue, including
the fact that both exterior caps are above the diagonal \(HC\).
For the line \(PQ\), each vertex in the same open boundary arc as
\(A\) has positive determinant with \(PQ\), and every other vertex
has negative determinant.

The eight long triangles
\[
 AEF,\ BEF,\ ABE,\ ABF,\ CRS,\ CSH,\ CRH,\ RSH
\]
have doubled area at most \(69/100\) by the side-cap theorem.
Every four consecutive hull vertices have capacity one for \(P,Q\).
If one of them already lies inside that quadrilateral, then the
other point fails at least one of its four inward edge tests.
When three tests are positive the fourth is therefore negative.
Two established occupants give an immediate contradiction. These
two inferences are the rows labeled *four_cap6* in the determinant tables.

Two further actual anchor comparisons come from
\([HCE]+[HEF]=[HCF]+[CEF]=1-(h-e)(c-f)\le1\).
The four differences \([BCE]-[ABC]\), \([BCH]-[BCE]\),
\([AFH]-[ABH]\) and \([ACH]-[AFH]\) are nonnegative. In fact they
are \((c-b)(e-a),(c-b)(h-e),(h-a)(f-b),(h-a)(c-f)\), respectively.

The [octagon inequality](NINE_CONVEX_POINTS.md) gives
\(\sum_i D_i^{1/3}\le4\) for the eight consecutive ear areas \(D_i\).
Every root is greater than \(453/1000\), and an occupied ear has
root greater than \(653/1000\). Thus one ear is below
\((829/1000)^3<57/100\), and a distinct ear is below
\((629/1000)^3<249/1000\) when one other ear is occupied.
For the sum bound, write the roots as \(453/1000+x_i\) with
\(x_i\ge0\) and \(\sum_i x_i\le376/1000\). Expansion and
\(\sum_i x_i^j\le(\sum_i x_i)^j\) for \(j=2,3\) give
\(\sum_i D_i\le (829^3+7\cdot453^3)/10^9<1221/1000\).

## Which side of a diagonal contains the earlier point

Orient the two crossed edges as \(IJ,KL\) in positive boundary order
so that \([IPQ]>0\) and \([JPQ]<0\). Then \(P\) precedes \(Q\)
along the segment from \(IJ\) to \(KL\). Indeed, at \(IJ\) the
inward-pointing direction has its initial vertex \(I\) on the left.
The ends of the segment are on opposite sides of each diagonal of
\(IJKL\). Along the segment the diagonal \(IK\) is crossed from the
\(J\) side to the \(L\) side, and \(JL\) from the \(I\) side to the
\(K\) side. The following consequences need only the stated capacity
for the triangle in the first column.

| Triangle containing at most one of \(P,Q\) | Forced test |
| --- | --- |
| \(IJK\) | \([IKQ]>0\) |
| \(IKL\) | \([IKP]<0\) |
| \(IJL\) | \([JLQ]<0\) |
| \(JKL\) | \([JLP]>0\) |

For instance, if \(Q\) were on the \(J\) side of \(IK\), then the
earlier \(P\) would be on that side too, and \(IJK\) would contain
both. Each capacity used in this rule is supplied by either a
four-consecutive-vertex cap containing the three vertices or the
long-triangle theorem above. The same proof applies whenever \(P\)
and \(Q\) occupy different contact quadrilaterals.

There is also a forced sign for each cap of four consecutive
vertices whose three boundary edges include either crossed edge.
Write its vertices as \(I_0,I_1,I_2,I_3\) in positive order.
In the octagon this cap is precisely the closed negative side of
the chord \(I_0I_3\). The other crossed edge is outside its three
boundary edges, since the edge separation is at least three.
Thus the cap contains an initial or final interval of the interior
segment. If it contains the initial interval, \(Q\) is outside,
as otherwise the earlier \(P\) would also lie in the cap.
If it contains the final interval, \(P\) is outside by the same
argument. In both cases \([I_0I_3X]>0\) for the excluded point \(X\).
The row *side_arc_cap* lists the cap, its crossed edge and \(X\).

The same initial or final interval argument works for any of the
eight long triangles with one crossed edge as a side. The farther
point cannot be inside that triangle. If two of its inward edge
tests are positive, the third is negative. A row labeled
*side_arc_long* gives the positively ordered triangle, crossed
edge and excluded point, followed in a sign deduction by the
third edge test and its sign.

The coordinate factors may use any of the eight projected ear
products and four overlap bounds in the two-side-cap theorem.
If \(H,A\) are on opposite sides of the directed line \(PQ\), put
\(\sigma=\operatorname{sgn}[HPQ]\). Then
\[
 \sigma(u-p)(h-a)
   =\sigma\bigl([HPQ]-[APQ]\bigr)\ge2s,
 \qquad \sigma(u-p)\ge 62/251 .
\]
The identity \([BPQ]-[CPQ]=(c-b)(v-q)\) gives the same bound for
\(\operatorname{sgn}[BPQ](v-q)\) when \(B,C\) have opposite signs.
Here both fixed spans are below \(753/1000\).
The tables can sharpen these distances with the scalar intervals
at the current stage. For \(\mathtt{side\_spanHA}\), replace the
numerator \(2s\) by the sum of the lower bounds of
\(|[HPQ]|,|[APQ]|\) and replace the denominator \(753/1000\) by
the upper bound of \([AEH]=h-a\). For \(\mathtt{side\_spanBC}\)
use the lower bounds of \(|[BPQ]|,|[CPQ]|\) and the upper bound
of \([BCF]=c-b\). Each divisor is positive because the
corresponding actual span is positive.

When \(A,F\) are on one side of \(PQ\) and \(B,E\) on the other,
put \(\sigma=\operatorname{sgn}[APQ]\),
\(U=\sigma(u-p)\) and \(V=\sigma(v-q)\).
Subtracting the two corresponding pairs of determinants gives
\(V-(e-a)U\ge2s\) and \(U-(f-b)V\ge2s\).
Both displacements are positive by eliminating the other one, since
\((e-a)(f-b)<1\). With both overlaps at least \(21/250\), substitution
then gives \(U,V\ge2s/(1-21/250)\).

For a lower point \(P\) the inequality \(hp+cq\le hc-s\) and the
actual \(BCP,AHP\) clearances give
\(cq\ge(c-b)q\ge s\) and \(hp\ge(h-a)p\ge s\).
Thus \(c-p\ge2s/h\), \(h-q\ge2s/c\), both at least
\(2s/(1-\ell)\). This last pair of factors applies only to BIRL.

## The crossing edges of the contact quadrilateral

Along the line \(PQ\), mark its segment inside the contact octagon
and its shorter segment inside \(HCEF\). A crossing on \(CR\) or
\(RE\) lies in the right cap. Between that crossing and a point in
\(HCEF\), the line meets the base \(CE\), the only side of \(HCEF\)
exposed to the interior of that cap. One way to see this is that the
part of the octagon between \(CE\) and \(CR,RE\) is precisely the
actual triangle \(CRE\). The line cannot pass through \(C,E\).
For the same reason a crossing on \(FS\) or \(SH\) reaches \(HCEF\)
through \(FH\). A lower crossing on \(HA,AB,BC\) reaches it through
\(HC\), since the convex region below \(HC\) is \(HABC\).
An \(EF\) crossing is an endpoint of both segments.

Consequently, when one crossed edge is lower and the other is \(CR\)
or \(RE\), the entire upper segment lies inside the convex hull of
\(HC\) and \(CE\), namely \(HCE\). With upper edge \(FS\) or \(SH\)
it lies inside \(HCF\). In IIRL this places both points in the named
triangle. In BIRL it places \(Q\) there. All these containments at
the actual points are strict by clearance. The corresponding triangle
floor in IIRL is \((4+2\sqrt3)s\).

## Separation by both diagonals of an actual quadrilateral

Suppose \(P,Q\) lie inside an actual convex quadrilateral \(IJKL\)
and each diagonal separates them. Its doubled area is
\(W=[IJK]+[IKL]>0\). For either diagonal \(XY\), its signed
area difference \([XYP]-[XYQ]=[YPQ]-[XPQ]\) has the sign
\(\eta=\operatorname{sgn}[XYP]\). In diagonal coordinates, one of
the two coordinate displacements has magnitude
\(\eta([YPQ]-[XPQ])/W\). The [spread bound](QUADRILATERAL_SPREAD.md)
therefore gives
\[
 W+\eta([XPQ]-[YPQ])\ \ge\ \frac{29}{5}s .
\]
The coefficient \(29/5\) is less than \(3+2\sqrt2\).
In the three quadrilaterals \(ABEF,HCEF,CRSH\), the stronger right
side \(6s\) is available. Their areas, in order, are
\[
 1-(e-a)(f-b),\qquad
 1-(h-e)(c-f),\qquad
 rk-(c-j)(h-w).
\]
Each is at most one by contact and cap order. After normalization
the doubled minimum is therefore at least \(s/W\ge s>1/11\),
as required by the stronger spread bound. A row labeled
*side_spread* gives \(IJKL\) and the selected diagonal in that order.

## Two occupants of an actual triangle

Suppose \(P,Q\) are inside an actual triangle \(IJK\) of doubled
area \(T\). Let \(x=|[IPQ]|,\ y=|[JPQ]|,\ z=|[KPQ]|\) and let
\(I\) be the vertex isolated by the line \(PQ\). The signed values
at \(J,K\) have the opposite sign from the value at \(I\).
The line crosses \(IJ,IK\) at the respective fractions
\(\lambda=x/(x+y)\) and \(\mu=x/(x+z)\) measured from \(I\).
These fractions follow by affine interpolation of the line
determinant at the side endpoints.

Parametrize the crossing segment from \(IJ\) to \(IK\) by
\(\theta\in[0,1]\). Call the earlier and later points \(P_0,Q_0\).
Their actual areas inside the fan at \(I\) give
\[
 T\mu\theta(P_0)\ge s,\qquad T\lambda(1-\theta(Q_0))\ge s,\qquad
 T\lambda\mu(\theta(Q_0)-\theta(P_0))=x .
\]
The first two equalities of area with a barycentric coordinate
follow from the vanishing of that area on the crossed side.
The last follows by taking the determinant of the two endpoint
vectors from \(I\) and restricting them to the segment. Adding
after division by the respective positive multipliers gives
\[
 T\ge x+y+z+2s+\frac{yz+s(y+z)}{x}
   \ge y+z+(2+2\sqrt3)s .
\]
For the last inequality use \(y,z\ge s\) and
\(x+3s^2/x\ge2\sqrt3s\). The linear rows labeled
*side_tri_spread* use the weaker coefficient \(109/20<2+2\sqrt3\)
and give the triangle and its isolated vertex. The rational
comparison follows from \(69^2<3\cdot40^2\).
