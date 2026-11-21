# One corner with a lower point, a central point, a right point and a top pair

Let the five actual contacts be \(O=(0,0), H=(0,h), C=(c,0),
D=(1,d), F=(f,1)\), with \(d\le h\) and \(f\le c\).
Consider the one-corner count \((1,1,1,2,0)\). Write
\(Y=(u,v)\) for the point in \(OHC\), \(Z=(z,w)\) for the point in
\(HCDF\), and \(Q=(r,t)\) for the point in the right cap \(CD(1,0)\).
The other two points \(P=(p,q)\) and \(R=(j,k)\) lie in the top cap
\(DF(1,1)\). Assume all actual unsigned doubled areas are at least
\(s=93/1000\). A bracket is a signed doubled area. Points may lie on
the sides of the square. Clearance makes all tests on three distinct
actual points strict. [Placement reduction](C1_EXTERIOR_REDUCTION.md)

## The heptagon and the initial signs

Order the top rays at D so that \([DPR]>0\). If \([FPR]>0\), the
seven points \(O,C,Q,D,P,R,F\) form a monotone chain and have a
consecutive doubled area at most \((5\sqrt5-11)/2<s\). Otherwise
the three inward tests put R strictly inside \(DPF\).
The hull is now \(O,C,Q,D,P,F,H\) in counterclockwise order.
Indeed, \(Y,Z\) are in the contact pentagon and the distinct occupied
caps insert \(Q\) between \(C,D\) and \(P\) between \(D,F\). The
two new cross-cap tests are
\[
 [CQP]=[CQD]+(r-c)(q-d)+t(1-p)>0,\qquad
 [QDP]=(1-r)(q-d)+(d-t)(1-p)>0 .
\]
The latter sum is nonnegative, and clearance makes it positive.
The contact and cap orders used here also hold on square-side faces.
[Top-ray proof](SEVEN_POINT_MONOTONE_CHAIN.md)

The six-point chain \(O,C,Q,D,P,F\) has its last triangle occupied
by R. Its four turns satisfy
\[
 [DPF]<.462,\quad [QDP]<.212,\quad [CQD]<.257,\quad [OCQ]<.205 .
\]
Each of the three smaller ears is empty, since an occupant costs
\(3s=.279\). The heptagon edge signs then imply
\([OQX],[CDX],[QPX]>0\) for each \(X=Y,Z,R\).
All three fan areas of R in \(DPF\) are below \(.462-2s=.276\).
[Six-point proof](SIX_POINT_MONOTONE_CHAIN.md)

In addition to these facts, \(Y\) has \([OHY]<0,[OCY]>0,[HCY]<0\).
The tests at \(Z\) are
\([OHZ]<0,[OCZ]>0,[HCZ]>0,[HFZ]<0,[CDZ]>0,[DFZ]>0\).
These memberships fix the two different labels. All ordered hull
triples and all inward hull-edge tests at \(Y,Z,R\) are positive.
The two triangulations of \(HCDF\) have the same doubled area
\(1-(h-d)(c-f)\le1\). The unit upper bound obtained from that
particular quadrilateral applies to convex quadrilaterals on its
own vertices and \(Z\).

## The fourteen initial intervals

Put
\[
 M=1-s,\quad c_0=3s,\quad c_1=17/20,\quad d_0=4s,\quad
 d_1=1-3s/M,\quad f_1=1-3s/(1-d_0),\quad e=s/c_1,
\]
and set \(p_0=s+s/(1-d_0)\), \(q_0=d_0+s/M\),
\(L=31/154\), \(K=1-2L\). The common right and nested-top bounds
give \(c\le c_1, d_0\le d\le d_1, s\le f\le f_1\),
\(r\ge7/10\), \(p\ge p_0\) and \(q\ge q_0\).
They follow from \(dc(r-c)\ge s\), \((1-d)(1-f)\ge3s\), and the
two edge tests at the outer top point. The weights of R inside \(DPF\)
each exceed \(L=s/.462\). These estimates use the five contacts and
\(Q,P,R\) alone. The bounds \(z,w\le M\) use only the inward tests
of the single point \(Z\) in \(HCDF\). The detailed determinant
identities and endpoint calculations are given in the [contact and
top-point calculation](C1_IIRTT_SETUP.md).

For the lower point, its three fan areas in \(OHC\) give
\[
 hu\ge s,\qquad cv\ge s,\qquad hc-hu-cv\ge s.
\]
In particular \(hc\ge3s\), hence \(c\ge c_0\). The last inequality
gives \(u\le c-2s/h\le c_1-2s\) and
\(v\le h-2s/c\le1-2e\). Every free point has \(x\ge s\) and
\(y\ge e\) by clearance at \(OH,OC\). Finally the right-cap test
gives \((1-c)(d-t)\ge s\), so \(t\le d_1-s/(1-c_0)\).
With the coordinates in the order \(h,c,d,f,u,v,z,w,p,q,r,t,j,k\)
the complete closed box is
\[
\begin{gathered}
[d_0,1], [c_0,c_1], [d_0,d_1], [s,f_1],
[s,c_1-2s], [e,1-2e], [s,M], [e,M],\\
[p_0,1], [q_0,1], [7/10,1], [e,d_1-s/(1-c_0)],\\
[L(1+p_0)+Ks,1-L+Lf_1],\quad[L(1+q_0)+Kd_0,1-L+Ld_1].
\end{gathered}
\]

## Using a pentagon bound before scalar updates

Every occurrence of `pentagon_initial` in the finite argument supplies
a cyclically ordered strictly convex pentagon \(A,B,C,D,E\).
Its three ears have actual doubled areas \(U,V,W\), in order.
Set \(X=A_{ABE}\), \(Y'=A_{ADE}\), \(Z'=A_{ABD}\), and \(J=A_{BDE}\).
The two triangulations of \(ABDE\) give
\(\Delta=X-Z'=Y'-J\). For each ear, the row supplies an initial
lower bound and a rational \(q_i\ge0\) whose square is at most that bound.
The row also supplies four initial endpoints, each with its geometric
witness on the current box. Thus
\[
 g=\max(0,L_X-H_{Z'},L_{Y'}-H_J),\qquad
 T=(q_1+q_2+q_3)^2+g
\]
give a valid scalar relation \(XY'\ge T(X-Z')\).
For \(\Delta>0\) this is the pentagon inequality
\(XY'/\Delta\ge (\sqrt U+\sqrt V+\sqrt W)^2+\Delta\).
For \(\Delta\le0\) it follows from \(T\ge0\) and \(XY'\ge0\).
The row contains only initial endpoints, so this relation may be
used in subsequent updates. The same inequality with the final
endpoints of a completed scalar stage may be used in its later
coordinate or weighted steps. [Pentagon inequality](PENTAGON_EAR_SUPPORT.md)

## The three coordinate cuts and the determinant splits

Starting at the root, use the [finite tree](C1_BIRTT_TABLES/tree.md).
Its 350 determinant splits have one child of each sign. Zero is excluded
by the assumed clearance. The three remaining splits cut a previously
established coordinate interval at the displayed rational. Both
closed children include the cut point. The two cuts in \(c\) occur in
different branches.

| Path | Coordinate | Cut |
|---|---|---:|
| rmpmpmmmmppmmmmp | \(c\) | \(673839/1000000\) |
| rmmpppmmmpppmmmmmmp | \(j\) | \(79883/125000\) |
| rmmpppmmmpppmmmmmmpH | \(c\) | \(659387/1000000\) |

Each of the 354 leaves has a contradiction in its table.

| Contradiction | Leaves |
|---|---:|
| Convexity, determinant signs, occupancy or an area cap | 28 |
| Incompatible rational bounds on actual triangle areas | 245 |
| No point of the current coordinate interval satisfies the cited bound | 65 |
| A nonnegative weighted sum has negative upper bound | 16 |

The [initial table](C1_BIRTT_TABLES/domain.md) lists the box, signs and
all actual coordinate determinants. The [two unconditional stages](C1_BIRTT_TABLES/global.md)
tighten the initial box. Each stage in a branch identifies the box it
uses. A split row marked coarse requires only its displayed determinant.
All assumptions of a descendant are inherited from the root of the
tree along its unique path.

For scalar arithmetic, \(A_T\) denotes the absolute doubled area of T.
A sign fixes which orientation of the determinant is \(A_T\).
Triangle subdivisions give the fan equalities. The four-, five- and
six-point determinant identities and the barycentric line identities
give the displayed scalar equalities. Occupancies and support bounds
give the inequalities. Each scalar update uses its named earlier
references, with outward rounding. The row \(\mathrm{end}\) gives
incompatible endpoints or an impossible scalar relation.
[Area identities](AREA_RELATIONS.md), [occupancy rules](C1_TWO_CENTRAL_THREE_CAPS.md)
and [endpoint arithmetic](SCALAR_AREA_INTERVALS.md)

At a coordinate step a signed area bound, contact order or cited scalar
relation gives a multiaffine polynomial \(G\ge0\). Its maximum over the
other coordinates, for fixed target \(x\), is attained at one of the
listed vertices. Thus the complete set of endpoint lines \(a_ix+b_i\)
gives the necessary condition \(\max_i(a_ix+b_i)\ge0\). Intersect
their nonnegative half-lines with the target interval and take the
closed interval hull of their union. The new interval encloses that
hull. An empty union closes the branch.

The sixteen weighted leaves use 1,452 terms in all. For quantities in
known nonnegative intervals the four products of a lower or upper
endpoint difference with a lower or upper endpoint difference are
nonnegative. Each leaf combines such products, contact constraints,
signed coordinate identities and scalar relations. Inequalities have
positive weights. Equality terms may have either sign. Its collected
sum \(C+\sum d_iX_i\) has upper bound
\(C+\sum_{d_i>0}d_iH_i+\sum_{d_i<0}d_iL_i\).
For example, 24 terms at one leaf give the strictly negative upper
bound \(-5510769752269/78500000000000\).
[The 24-term leaf](C1_BIRTT_TABLES/rpmmpmppppm.md) and
[the product rules](LINEAR_AREA_CERTIFICATES.md)

Every terminal excludes its full branch. Together they exclude the
nested top pair. The chain theorem already excluded the convex pair.
Consequently the count \((1,1,1,2,0)\) and its coordinate transpose
are both impossible at doubled clearance \(93/1000\).
[Table guide](C1_BIRTT_TABLES/INDEX.md)
