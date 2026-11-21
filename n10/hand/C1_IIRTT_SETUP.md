# One corner, two central points, one right point and two top points

This note establishes the geometry and the initial bounds for the count
\((k,j,r,t,l)=(0,2,1,2,0)\). It makes no count-exclusion claim by itself.
All ten points are actual, and every unsigned doubled area is assumed at
least \(s=93/1000\). The contacts are
\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad
 D=(1,d),\quad F=(f,1),\qquad d\le h,\ f\le c.
\]
Write the central points as \(Y=(u,v),Z=(z,w)\), the right-cap point
as \(Q=(r,t)\), and the top-cap points as \(P=(p,q),R=(j,k)\).
The square is closed. A point cannot be on an actual chord because the
clearance excludes every actual collinear triple.
[Placement definitions](C1_EXTERIOR_REDUCTION.md)

## Labels, hull and initial signs

Interchanging the two top points gives \([DPR]>0\). The
[seven-point monotone-chain lemma](SEVEN_POINT_MONOTONE_CHAIN.md) then
puts \(R\) strictly inside \(DPF\). Independently interchange \(Y,Z\)
so that \([OYZ]>0\). Neither operation imposes an order on \(h,c\).

The outer hull is the strict convex heptagon \(O,C,Q,D,P,F,H\).
Indeed, the contact pentagon \(O,C,D,F,H\) is convex. The right point
is the unique point beyond \(CD\) among this pentagon and \(Q\), so
inserting it gives \(O,C,Q,D,F,H\). The top point is inward of the
two new edges, since
\[
 [CQP]=[CQD]+(r-c)(q-d)+t(1-p)>0,
\]
\[
 [QDP]=(1-r)(q-d)+(d-t)(1-p)>0.
\]
The latter expression is nonnegative from the cap coordinates, and
clearance excludes zero. Thus \(P\) is inserted between \(D,F\).
The square support contacts \(C,D,F,H\) remain extreme after both insertions.
If an inserted point is on a square support line, its contact and that
point are the endpoints of that face; a third actual point on the line
would violate clearance. The two central points and \(R\) are strictly
inside the heptagon. Thus every cyclic hull triple and every hull-edge
test at \(Y,Z,R\) is positive.

The central points have the additional tests
\[
 [OHX]<0,\quad[OCX]>0,\quad[HCX]>0,\quad
 [HFX]<0,\quad[CDX]>0,\quad[DFX]>0\qquad(X=Y,Z).
\]
The three inward tests of \(DPF\) at \(R\) are positive. No lower
point, side-pair condition or transposition normalization is assumed.

The six-point chain \(O,C,Q,D,P,F\), with its occupied final turn
\(DPF\), gives
\[
 A_{DPF}<.462,\quad A_{QDP}<.212,\quad
 A_{CQD}<.257,\quad A_{OCQ}<.205 .                 \tag{1}
\]
Here \(A\) denotes unsigned doubled area.
[Six-point chain bounds](SIX_POINT_MONOTONE_CHAIN.md)
The last three triangles are empty, since each bound is below \(3s\).
For \(X=Y,Z,R\), their two hull-edge tests are positive; emptiness
therefore supplies the remaining outward tests
\[
 [OQX]>0,\qquad[CDX]>0,\qquad[QPX]>0.             \tag{2}
\]
The fan identity in \(DPF\) also gives
\[
 A_{DPR},A_{PFR},A_{FDR}<.462-2s=.276.            \tag{3}
\]

## Contact and outer-point bounds

Put
\[
 a=1-s=907/1000,\quad d_0=4s=93/250,\quad
 d_1=1-3s/a=628/907,\quad
 f_1=1-3s/(1-d_0)=349/628,
\]
\[
 c_0=1/10,\quad c_1=17/20,\quad
 \ell=s/c_1,\quad
 p_0=s+s/(1-d_0)=37851/157000,\quad
 q_0=d_0+s/a=107601/226750.
\]
The right point satisfies \(ct\ge s\) and
\(d(r-c)-(1-c)t\ge s\). Multiplying the latter by \(c\) and adding
\((1-c)ct\ge(1-c)s\) gives \(cd(r-c)\ge s\).
Consequently \(dc(1-c)\ge s\) and \(d\ge4s\).
The actual anchor triangles give \(hf,cd\ge s\), hence \(f\ge s\).
Moreover,
\[
 s\le A_{CDF}=1-c+d(c-f)\le1-f,\qquad
 s\le A_{HDF}=1-h+f(h-d)\le1-d,
\]
so \(d,f\le a\). Since \(R\in DPF\),
\(A_{DPF}\ge3s\). This triangle is in the top-corner container of
doubled area \((1-d)(1-f)\), so
\[
 d\le d_1<7/10,\qquad f\le f_1.                 \tag{4}
\]
The rational bounds \(c_0<c<c_1\) follow from the right support
inequality. For \(c\le c_0\), its left side is at most
\((7/10)c_0(1-c_0)=63/1000<s\). For \(c\ge c_1\), it is at most
\(d_1c_1(1-c_1)\), whose difference from \(s\) is
\(4281/907000>0\). We have used the monotonicity of \(c(1-c)\)
on the two corresponding outer intervals of \([0,1]\).

For any actual non-contact point \((x,y)\), the triangles at \(OH,OC\)
give \(hx,cy\ge s\). Thus \(x\ge s\) and \(y\ge\ell\).
For a central point, the positive edge tests satisfy
\[
 (1-f)[CDX]+(1-c)[DFX]=[CDF](1-x),
\]
\[
 (1-d)[FHX]+(1-h)[DFX]=[HDF](1-y).
\]
Using \([CDF]\le1-f\) and \([HDF]\le1-d\) gives
\(x,y\le a\), including the allowed contact-order equalities.

For the right point, the support inequality before replacing \(r\)
by one is \(cd(r-c)\ge s\). If \(r\le7/10\), then
\(d c(r-c)\le(7/10)^3/4<s\), with gap \(29/4000\).
Hence \(r>7/10\). The right-cap test also gives
\[
 (1-c)(d-t)\ge s,\qquad
 \ell\le t\le d_1-s/(1-c_0).                    \tag{5}
\]
For the outer top point, its cap test gives
\[
 (1-d)(p-f)-(1-f)(1-q)\ge s.
\]
The same cap area equals
\((1-f)(q-d)-(1-d)(1-p)\). Thus
\(p\ge f+s/(1-d)\) and \(q\ge d+s/(1-f)\).
Consequently \(p\ge p_0,q\ge q_0\).

## The four endpoints for the inner top point

Put \(\lambda=s/.462=31/154\) and \(\mu=1-2\lambda\).
The three barycentric weights of \(R\) in \(DPF\) exceed
\(\lambda\), by (1) and the three actual fan floors \(s\).
The residual weight \(1-3\lambda=61/154\) is positive.
Every vertex of \(DPF\) has abscissa at least \(s\) and ordinate
at least \(d_0\). Assigning this residual to those lower bounds gives
\[
 j\ge\lambda(1+p_0)+\mu s,\qquad
 k\ge\lambda(q_0+1)+\mu d_0.                    \tag{6}
\]
Keeping just the weight at \(F\) for the abscissa upper bound and
the weight at \(D\) for the ordinate upper bound gives
\[
 j\le\lambda f_1+1-\lambda,\qquad
 k\le\lambda d_1+1-\lambda.                     \tag{7}
\]
These four bounds use the fixed preceding endpoints, rather than a
later conditional refinement.

The full initial box, in coordinate order
\(h,c,d,f,u,v,z,w,p,q,r,t,j,k\), is therefore
\[
\begin{split}
 &[d_0,1],\ [c_0,c_1],\ [d_0,d_1],\ [s,f_1],\\
 &[s,a],\ [\ell,a],\ [s,a],\ [\ell,a],\\
 &[p_0,1],\ [q_0,1],\ [7/10,1],\ [\ell,d_1-s/(1-c_0)],\\
 &[\lambda(1+p_0)+\mu s,\lambda f_1+1-\lambda],\\
 &[\lambda(q_0+1)+\mu d_0,\lambda d_1+1-\lambda].
\end{split}                                                    \tag{8}
\]

## Scope of the generic sources

A signed actual triangle is separately affine in every coordinate.
Its maximum on any independently established subbox of (8) is its
largest corner value. The universal unit ceiling is also valid.
The special caps in (1), (3), and \(A_{HDF}\le1-d_0\) are bounds on
unsigned areas and therefore upper bounds for either signed orientation.
The engine's `monotone_chain` tag on \(HDF\) denotes this last elementary
anchor bound.

The area of \(HCDF\) is \(1-(h-d)(c-f)\le1\). The unit ceiling for
an actual convex quadrilateral is used only when all four vertices are
among \(H,C,D,F,Y,Z\); their convex hull lies in that container.
All other quadrilateral ceilings require their own joint corner maximum.
Hull extremality, actual-triangle capacities, fan sums, affine line
tests in \(HCDF\) or \(DPF\), actual-point determinant identities,
and the generic distributed-triangle mesh keep their usual premises.
The seven-vertex domain has no octagon-ear source. A child box or area
endpoint requires explicit earlier-case ancestry before it can be used.

The independent geometry adapter is
[audit_c1_iirtt_geometry.py](audit_c1_iirtt_geometry.py). This setup
establishes its domain and source families; branch coverage and the
literal scalar and physical certificates are separate obligations.
