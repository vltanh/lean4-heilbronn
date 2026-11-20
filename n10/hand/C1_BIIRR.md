# One corner, one lower point, two central points and a right-side pair

**Theorem.** In the one-corner normalization, every configuration of
count \((k,j,r,t,l)=(1,2,2,0,0)\) has an actual triangle of doubled
area below \(s=93/1000\). The transposed count has the same bound.

Use \([ABC]=\det(B-A,C-A)\) and suppose for contradiction that all
actual unsigned determinants are at least \(s\). The ten points are
\[
 O=(0,0),\ H=(0,h),\ C=(c,0),\ D=(1,d),\ F=(f,1),
 \quad Y=(u,v),\ Z=(z,w),\ P=(p,q),\ Q=(r,t),\ R=(j,k).
\]
Here \(d\le h, f\le c\), \(Y\) lies in triangle \(OHC\), and \(Z,P\)
lie in quadrilateral \(HCDF\). These three containments are strict.
The two points in the right cap are beyond the chord \(CD\). The
square sides are closed.

## The six outer vertices and the area bounds

The larger bottom intercept of the lines joining the two right-cap
points to \(D\) identifies the outer point \(Q\). A tie would give
three collinear actual points. The side-pair theorem puts \(R\)
strictly inside **both** \(CDQ\) and \(ODQ\), and gives
\[
 d>\rho=347/500,\qquad U=-[CDQ]=d(r-c)-(1-c)t\ge3s .
\]
Choose the labels of the two central points so that \([OZP]>0\).
The clearance excludes a tie in this orientation as well. [Side-pair theorem, §2](C1_EXTERIOR_REDUCTION.md)

The contacts \(O,C,D,F,H\) are vertices of a convex pentagon.
Replacing its side \(CD\) by the two sides through \(Q\) gives the
convex hexagon \(O,C,Q,D,F,H\). Indeed \(C,D\) are square support
contacts and remain extreme, and \(Q\) is the unique point beyond
\(CD\) among these six. The order follows from the side of \(CD\)
containing \(Q\). All turns are strict by the clearance. If a cap
point lies on a square support line, there are at most two actual
points on that line, and both endpoints of its face are extreme.
The remaining four points are strictly inside the hexagon. Thus each
cyclic triple of hull vertices is positive, and all six hull-edge
tests on each interior point are positive.

The side-pair bounds and the actual triangles \(OCQ,HDF\) give
\[
 ct\ge s,\quad dc(1-c)\ge s(1+2c),\quad
 d\le a=1-s,\quad |[OCQ]|<2s,\quad U<21/50 .
\]
For the second inequality multiply \(U\ge3s\) by \(c\), add
\((1-c)ct\ge(1-c)s\), and use \(r\le1\).
For the last inequality use
\(U\le(1-c)(a-s/c)=1-ac-s/c\le1-2\sqrt{as}<21/50\).
The strict square gap follows from \(as=84351/10^6>(29/100)^2\).
Each fan at \(R\) inside \(CDQ\) consequently has doubled area
below \(21/50-2s\). Also \([HDF]=1-d-(1-f)(h-d)\le1-\rho\).
[Bottom-triangle bound, §2](SIDE_PAIR_AREA_REFINEMENTS.md)

## All coordinate endpoints

Set \(b=127/200\), \(c_0=3s\), \(r_0=169/200\),
\(t_0=s/b\), \(t_1=a-3s/(1-c_0)\), \(\lambda=11/50\), and
\(\mu=1-2\lambda\). The function
\(g(c)=ac(1-c)-s(1+2c)\) is nonnegative by the side-pair bounds.
It is concave, and
\[
 g(b)=-35603/40000000,\qquad g'(b)=-43089/100000 .
\]
Hence \(c<b<\rho<d\le h\). In particular the scalar comparison
\(|[OHD]|\ge |[OCF]|\) follows in this right-side configuration.
Subdivision at \(Y\) gives \(hc\ge3s\), whence \(c\ge c_0\).

Before using \(r\le1\), the same inequalities give
\[
 r\ge c+2s/d+s/(dc)\ge 2\sqrt{s/a}+2s/a>r_0 .
\]
Indeed \(r_0-2s/a>0\) and \(4s/a-(r_0-2s/a)^2=
20897111/32905960000>0\). Also
\(U\le(1-c)(d-t)\), so \(t_0\le t\le t_1\).
The weights of \(R\) at the three vertices of \(CDQ\) are at least
\(s/U> s/(21/50)>\lambda\). After removing \(\lambda\) at
each vertex, the remaining weights are nonnegative and sum to
\(1-3\lambda\). Using the coordinate extremes of \(C,D,Q\) gives
the last two rows below.

| Coordinate | Lower endpoint | Upper endpoint |
| --- | --- | --- |
| \(h\) | \(\rho\) | 1 |
| \(c\) | \(c_0\) | \(b\) |
| \(d\) | \(\rho\) | \(a\) |
| \(f\) | \(s\) | \(b\) |
| \(u\) | \(s\) | \(b-2s\) |
| \(v\) | \(t_0\) | \(1-2t_0\) |
| \(z,p\) | \(s\) | \(a\) |
| \(w,q\) | \(t_0\) | \(a\) |
| \(r\) | \(r_0\) | 1 |
| \(t\) | \(t_0\) | \(t_1\) |
| \(j\) | \(\lambda(1+r_0)+\mu c_0\) | \(\lambda(b+1)+\mu\) |
| \(k\) | \(\lambda(\rho+t_0)\) | \(\lambda t_1+\mu a\) |

For the free points \((x,y)\), the actual triangles at \(OH,OC\)
give \(hx,cy\ge s\). The contact \(F\) gives \(hf\ge s\).
For the lower point \(hc-hu-cv\ge s\) also gives
\(u\le c-2s/h\) and \(v\le h-2s/c\).
For either central point the positive edge determinants satisfy
\[
 (1-f)[CDX]+(1-c)[DFX]=[CDF](1-x),\quad
 (1-d)[FHX]+(1-h)[DFX]=[HDF](1-y).
\]
Using \([CDF]\le1-f\) and \([HDF]\le1-d\) gives \(x,y\le1-s\).
These prove every entry before any further division into cases.

## The exhaustive sign proof

The [table index](C1_BIIRR_TABLES/INDEX.md) gives the exact box, the
initial signs, all 107 splits and the 108 corresponding leaf tables.
Each branch concerns an ordered triple of distinct actual points.
Both signs are present and the initial clearance excludes zero.

At each leaf the sign rules are strict convex-hull extremality,
affinity of a determinant in one point, a signed five-point identity,
a box bound below the clearance, triangle capacity, or the distributed
three-point mesh. An interior-line entry specifies its container,
including the choice between the two actual triangles containing R.
For a box bound, each signed determinant is affine in each variable
separately. Its maximum is the largest corner value. For a lower
bound apply this to the negative determinant. Each numbered corner
witness lists all coordinate indices and every difference between
the maximum and a corner value in binary-mask order.

The geometric contradictions consist of 21 clustered triples, 11 area
caps below the actual occupancy cost, and nine five-point identities
with nonzero summands all of the same sign.
[Clustered triangles](CLUSTERED_TRIANGLE.md) and
[triangle occupancies](TRIANGLE_OCCUPANCY.md) supply the bounds.

At the other 67 leaves the displayed scalar variables are unsigned
doubled areas of actual triangles. Each initial bound cites its
occupants or its proved cap. Each relation cites its actual points
and signs. These are the fan sum, the four-point affine identity,
the five-point or six-point determinant identities, the triangle
barycentric identity for testing a line, quadrilateral occupancy,
pentagon and quadrilateral support, and the distributed mesh.
The contact orders give \(hc\ge cd,hf\) as well as \(h\ge c\).
Both diagonal sums for \(HCDF\) equal
\(1-(h-d)(c-f)\le1\).
The universal geometric and scalar rules, including their exact
support rates and arithmetic, are derived in the
[common area rules](AREA_RELATIONS.md),
[quadrilateral support proof](QUADRILATERAL_SUPPORT.md),
[refined support proof](SIX_POINT_ENDPOINT_REFINED.md) and
[one-lower/two-central source lemma](C1_ONE_LOWER_TWO_CENTRAL_SIDES_GEOMETRY.md).
Only the domain proved above supplies the coordinates and initial signs.

A scalar step isolates its indicated area in the cited relation,
substituting the earlier bounds in the indicated directions, then
rounds down for a lower bound or up for an upper bound to a multiple
of \(10^{-6}\). Each referenced value keeps its original meaning.
For a barycentric test, the three fan lower bounds divided by an
outer area upper bound are lower bounds on the three weights. A
sum exceeding one is impossible. Otherwise assign any remaining
weight to the least or greatest signed vertex test to get the
corresponding bound on the test at the actual interior point.

For example, one leaf has \(Z,P\) inside \(HCR\) and \(P\) inside
\(HQR\), giving floors .694 and .279. The fan in \(HDQ\) gives
\(A_{HDR}\le .402959\). Its signed five-point identity reads
\[
 A_{CQR}A_{HDR}=A_{CDR}A_{HQR}+A_{DQR}A_{HCR}.
\]
Using \(A_{CQR}\le .234\) first gives \(A_{HDR}\ge .386705\) and
then \(A_{CDR}\le .106633\). The four-point identity now yields
\[
 A_{HCD}=A_{HDR}+A_{HCR}-A_{CDR}
       \ge .386705+.694-.106633=.974072 .
\]
The box ceiling for the same triangle is .974053. The
[leaf table](C1_BIIRR_TABLES/rppmmpmpppmp.md) gives the geometric
tests and all corner values used in these four steps.

At 62 scalar leaves a lower bound exceeds an upper bound on the
same actual area. Four leaves give a strict positive lower bound
or strict negative upper bound on the identically zero test of a
line at one of its endpoints. One leaf gives three fan floors whose
sum exceeds the outer ceiling. This exhausts the tree. The assumed
clearance is impossible, and transposing the square proves the
left-pair version.

The [independent arithmetic reader](audit_c1_biirr.py) reconstructs
the 107 splits and checks 4,973 sign deductions, 3,206 initial
bounds, 6,559 relations and 14,125 arithmetic steps directly from
the printed tables.
