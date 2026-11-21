# One lower point, two central points and a top pair

Use the five actual contacts
\[
 O=(0,0),\quad H=(0,h),\quad C=(c,0),\quad D=(1,d),\quad F=(f,1)
\]
with \(d\le h\), \(f\le c\). Let \(s=93/1000\) and suppose that each
actual triangle has unsigned doubled area at least \(s\).
In the count \((1,2,0,2,0)\), the point \(Y=(u,v)\) lies in \(OHC\),
the points \(Z=(z,w),Q=(r,t)\) lie in \(HCDF\), and
\(P=(p,q),R=(j,k)\) lie on the corner side of \(DF\).
Brackets denote signed doubled areas. All triples used below have
distinct actual labels. [Placement reduction](C1_EXTERIOR_REDUCTION.md)

## The two hulls

Transpose the square coordinates if needed to obtain \(h\ge c\).
The two central points can now be ordered so \([OZQ]>0\), and the top
points independently ordered so \([DPR]>0\). Transposition preserves all
three regions. Equal contact parameters are allowed. Positive clearance
makes both label choices possible.

Use top-corner coordinates \(X=(1-x)/(1-f)\), \(Y'=(1-y)/(1-d)\).
They preserve orientation and put \(D=(0,1),F=(1,0)\).
A top point has nonnegative coordinates with sum less than one.
If \([FPR]<0\), the three inward edge tests of \(DPF\) at \(R\) are
\([DPR]>0,[PFR]>0,[FDR]>0\). Thus \(R\) is strictly inside \(DPF\).
The hull has cyclic order \(O,C,D,P,F,H\). The cap triangle \(DPF\)
and the contact pentagon meet along \(DF\). Their union is convex,
since \(D,F\) remain extreme on their respective square supports and the
turn at \(P\) is positive. All other contact turns are positive.

If \([FPR]>0\), all the cyclic triples of \(D,P,R,F\) are positive.
Moreover the three edges of this path have weakly decreasing first and
increasing second coordinate in the original square. For a direct
check, write \(P=(j_0,k_0),R=(l_0,t_0)\) in top-corner coordinates.
Then \([DPR]=U=l_0(1-k_0)-j_0(1-t_0)>0\) and
\([FPR]=V=k_0(1-l_0)-t_0(1-j_0)>0\) in those coordinates.
The combinations \((1-j_0)U+j_0V=(l_0-j_0)(1-j_0-k_0)\) and
\(k_0U+(1-k_0)V=(k_0-t_0)(1-j_0-k_0)\) give the two orders.
Moving southwest preserves the inward half-plane of each of these
three edges. The contacts \(O,C\) are southwest of \(D\), and \(O,H\)
are southwest of \(F\). All three contacts are strictly inward by
clearance. The hull is consequently \(O,C,D,P,R,F,H\).
These arguments apply also when an actual top point is on a square side.

## Contact and point bounds

Set \(M=1-s\), \(m=s+s/M\). Use \(n=3\) for the triangular top
hull and \(n=4\) for the quadrilateral top hull. In both cases
\[
 (1-d)(1-f)\ge ns,\qquad s\le d,f\le 1-ns/M.
\]
Indeed the top corner triangle has actual endpoints \(D,F\) and contains
\(P,R\). In the triangular case subdivision at \(R\) costs \(3s\).
In the convex case the four-point endpoint inequality costs \(4s\).
The actual anchor bounds \([OCD]=cd\ge s\) and \(-[OHF]=hf\ge s\)
give \(d,f\ge s\). [Four-point endpoint inequality, §1](TYPE_II.md)

The fan of \(Y\) in \(OHC\) gives
\(hu\ge s,\ cv\ge s,\ hc-hu-cv\ge s\). Thus \(h,c\ge3s\), and
\(u\le c-2s/h\le1-2s,\ v\le h-2s/c\le1-2s\).
The same fan gives \(u+v\le1-s\), since \(hc(1-u-v)-(hc-hu-cv)=h(1-c)u+c(1-h)v\ge0\).
For either central point \(X=(x,y)\), \(x,y\ge s\) by its triangles
on \(OH,OC\). The two identities
\[
 (1-f)[CDX]+(1-c)[DFX]=[CDF](1-x),\qquad
 (1-d)[FHX]+(1-h)[DFX]=[HDF](1-y)
\]
and \([CDF]\le1-f, [HDF]\le1-d\) yield \(x,y\le M\).
The remainders in the latter two upper bounds are \((1-d)(c-f)\) and
\((1-f)(h-d)\). Finally, for either top point \(T=(x,y)\),
\[
 (1-d)(x-f)-(1-f)(1-y)
 = (1-f)(y-d)-(1-d)(1-x) = -[DFT]\ge s.
\]
Both coordinates are therefore at least \(m\). In the order
\(h,c,d,f,u,v,z,w,p,q,r,t,j,k\) the closed intervals are
\[
 [3s,1]^2\times[s,1-ns/M]^2\times[s,1-2s]^2
 \times[s,M]^2\times[m,1]^2\times[s,M]^2\times[m,1]^2 .
\]

## The two triangles adjacent to the corner

In either hull, each of \(OCD\) and \(OFH\) contains at most one
additional actual point. Their areas are \(cd,hf\le1-3s/M=628/907\).
Two occupants cost \((4+2\sqrt3)s>347/500\), and
\(347\cdot907-628\cdot500=729>0\).
Every point of \(Y,Z,Q\) is inward of the pentagon edges. It is in
\(OCD\) exactly when \([ODX]<0\), and in \(OFH\) exactly when
\([OFX]>0\). Thus at most one of the three rays can fall below \(OD\)
and at most one above \(OF\). [Two-occupant inequality, §1](TRIANGLE_OCCUPANCY.md)

In the convex top alternative there is a further bound on both areas.
The six points \(O,C,D,P,R,F\) have nondecreasing ordinates.
Their four turns are positive by the hull order. In the transposed
square the same holds for \(O,H,F,R,P,D\). The six-point chain
inequality at the initial turn gives
\[
                        cd<.462,\qquad hf<.462.
\]
If \(OCD\) is occupied, the same inequality gives
\([CDP]<.212,[DPR]<.257,[PRF]<.205\).
If \(OFH\) is occupied, apply it in the transposed square to obtain
\(-[HFR]<.212,[PRF]<.257,[DPR]<.205\). All of these strict bounds
come from the four rational comparisons in the
[six-point chain proof](SIX_POINT_MONOTONE_CHAIN.md).

## The actual top coordinates bound the corner area

In the triangular alternative the subdivision of \(DPF\) at \(R\) and
the identity
\[
 (p-f)(q-d)=[DPF]+(1-p)(1-q)
\]
give \((p-f)(q-d)\ge3s\). In particular both outer coordinates
satisfy \(p,q\ge s+3s/M\). Write \(\lambda=s/M^2\).
Every barycentric weight of \(R\) in \(DPF\) is at least
\(s/[DPF]\ge\lambda\). From \(f\le p\le1\), \(d\le q\le1\),
the lower and upper coordinate bounds obtained from these weights are
\[
 f+\lambda(1+p-2f)\le j\le1-\lambda(2-f-p),\qquad
 d+\lambda(1+q-2d)\le k\le1-\lambda(2-d-q).
\]
Indeed the part left after taking weight \(\lambda\) at each of the
three vertices has mass \(1-3\lambda\), and its two coordinates are
between the minimum and maximum vertex coordinates.

In the convex alternative put
\[
 b=p-j,\quad c'=j-f,\quad u'=q-d,\quad v'=k-q .
\]
The two positive turns at \(P,R\) satisfy
\[
 s\le [DPR]=u'b-(1-p)v',\qquad
 s\le [PRF]=v'c'-b(1-k).
\]
In particular \(u'b,v'c'\ge s\). All four increments are positive,
and Cauchy–Schwarz now gives
\[
 4s\le (\sqrt{u'b}+\sqrt{v'c'})^2
    \le (u'+v')(b+c')=(k-d)(p-f).
\]
Thus the outer coordinates satisfy \(p,k\ge s+4s/M\).
There is also a bound on each of the middle increments. Set
\(B=1-f,\ A=1-d,\ x=b/B,\ y=v'/A\) and \(t_0=s/(AB)\).
Since \(u'\le A-v'\) and \(c'\le B-b\),
\[
 x(1-y)\ge t_0,\qquad y(1-x)\ge t_0.
\]
Taking the convex combination with weights \(1-x,x\) gives
\((1-x)x(1-y)+x y(1-x)=x(1-x)\).
Likewise \(y x(1-y)+(1-y)y(1-x)=y(1-y)\).
Both quantities are therefore at least \(t_0\), giving
\[
 b(B-b)A\ge sB,\qquad v'(A-v')B\ge sA .
\]

One can retain both nonnegative subtractions in the two ear formulas.
Put \(a=1-p,\ w'=1-k\) and \(\Omega=AB\). Since
\(A=u'+v'+w'\) and \(B=a+b+c'\), the stronger necessary bounds are
\[
 t_0\le\min(x,y)-xy-(a/B)y-(w'/A)x .
\]
If \(x\le y\), decreasing \(y\) to \(x\) increases the right side or
keeps it fixed. If \(y\le x\), decrease \(x\) to \(y\).
With \(z_0=\min(x,y)>0\) we therefore obtain
\[
 0<t_0\le z_0(1-a/B-w'/A-z_0).
\]
The two factors are positive. Their arithmetic and geometric means give
\[
 \frac{1-p}{1-f}+\frac{1-k}{1-d}
       +2\sqrt{\frac{s}{(1-d)(1-f)}}\le1 .                 \tag{1}
\]
In particular \(p+k\ge 2-M+2\sqrt{s}>1.7029\), since \(A,B\le M\)
and \((.30495)^2<s\). Thus each of \(p,k\) exceeds \(.7029\) and
at least one exceeds \(.85145\).

Multiplying (1) by \(\Omega\) also gives a polynomial bound with all
four actual coordinates. Indeed \(4s\le\Omega\le M^2<9s\), and
\[
 100s\Omega-(2\Omega+12s)^2
     =4(\Omega-4s)(9s-\Omega)\ge0 .
\]
Consequently \(5\cdot 2\sqrt{s\Omega}\ge 2\Omega+12s\), and (1)
implies
\[
 3(1-d)(1-f)-5(1-d)(1-p)-5(1-f)(1-k)\ge12s.               \tag{2}
\]

### Unequal ear areas

The same calculation applies if the two top ears have established
doubled-area floors \(s_1,s_2>0\). Write \(t_i=s_i/\Omega\),
\(\alpha=(1-p)/B,\ \beta=(1-k)/A\).
The two ear inequalities are exactly the lower bounds
\[
 x-t_1\ge xy+\alpha y+\beta x,\qquad
 y-t_2\ge xy+\alpha y+\beta x.
\]
Put \(z_0=\min(x-t_1,y-t_2)>0\). The right side increases in both
variables, and \(x\ge z_0+t_1,\ y\ge z_0+t_2\). Hence
\[
 z_0(1-t_1-t_2-\alpha-\beta-z_0)
       \ge t_1t_2+\alpha t_2+\beta t_1 .
\]
Both factors on the left are positive, so
\[
 t_1+t_2+\alpha+\beta+2\sqrt{t_1t_2+\alpha t_2+\beta t_1}\le1. \tag{3}
\]
For example, when a third actual top point occupies either of these
two ears, take its floor to be \(3s\) and the other floor \(s\).
With \(t=s/\Omega,\ V=\alpha+\beta\), (3) yields
\(4t+V+2\sqrt{3t^2+tV}\le1\). Squaring the nonnegative left
remainder \(1-4t-V\) gives \((1-2t-V)^2\ge4t\).
Since \(1-2t-V>0\), this gives \(V\le1-2t-2\sqrt{t}\).
For \(A,B\le M\) one has \(t\ge s/M^2>113/1000\) and
\(\sqrt{t}>336/1000\), so \(V<102/1000\).
Both \(1-p\) and \(1-k\) are bounded by \(MV<.093\).
Thus each of the two extreme top coordinates exceeds \(.907\) in
either single-ear word of the
[top triple catalogue](N6_TOP_TRIPLE_SETUP.md).

The two central points cannot occupy opposite wings, one in \(OCD\) and the other in \(OFH\). For a convex top pair even a mixed lower/central pair of wing occupants is impossible, by the four height intervals in the same proof. In the triangular case the upper bound on \(|[OPR]|\) is \(.092\) on all 23 rectangles of the [opposite-wing proof](C1_BIITT_OPPOSITE_WINGS.md).

## Coordinate factors for the two hulls

The factors named `actual_top_budget` are \((p-f)(q-d)-3s\)
in the triangular hull and \((p-f)(k-d)-4s\) in the convex hull.
The bounds `inner_top_lo_x`, `inner_top_hi_x`,
`inner_top_lo_y` and `inner_top_hi_y` give the four differences
from the previously displayed barycentric interval for \(j,k\).
The factors `top_order_px_rx`, `top_order_ry_py`,
`top_order_py_d` and `top_order_rx_f` are
\(p-j,k-q,q-d,j-f\), respectively. The two
`top_ear_clearance` factors are \((q-d)(p-j)-s\) and
\((k-q)(j-f)-s\). The factor `two_top_deficits` is the
left side of (2) minus \(12s\), and `top_extreme_sum` is
\(p+k-1.7029\). The lower-point factor `lower_sum` is \(1-s-u-v\).

In a branch where the actual sign \([ODX]<0\) puts a central
point \(X=(x,y)\) in \(OCD\), the three actual tests give
\[
 (h+cd)x-hc-(1+c)s\ge0,\qquad
 cd(1-x)-(2-c)s\ge0 .
\]
Indeed \(hx+cy-hc\ge s\), \(y\le dx-s\), and
\((1-c)y-d(x-c)\ge s\). Substituting the upper bound on \(y\)
gives both inequalities, respectively. These are
`wing_d_X_lo` and `wing_d_X_hi`. For \(X\) in \(OFH\) use
\([OFX]>0\) and interchange \(h,c\), \(d,f\), \(x,y\) in the
formulas. The factors are then `wing_f_X_lo` and `wing_f_X_hi`.
The opposite-wing deductions require the separately proved placements
in the preceding section. [Opposite-wing proof](C1_BIITT_OPPOSITE_WINGS.md)

## Excluding the triangular top hull

The [initial table](C1_BIITT_TABLES/tri/domain.md) records the box
for \(n=3\), the sign \([FPR]<0\), the hull and inward tests
and the 120 actual determinants. Use the
[two global stages](C1_BIITT_TABLES/tri/global.md) before reading
the contracted branches of the [tree](C1_BIITT_TABLES/tri/tree.md).
There are 219 determinant-sign splits. Each has its two strict
sign children by clearance. The 220 terminal contradictions comprise
63 geometric, 63 area-interval, 70 coordinate-interval and 24
weighted contradictions. All coordinate steps on a branch use
the box indicated by their proved predecessor. Each inequality in
a weighted sum carries a positive integer multiplier, and the
printed upper bounds are strictly negative by the
[table guide](C1_BIITT_TABLES/INDEX.md). This excludes the full
triangular hull alternative.

## Excluding the convex top hull

Use the [initial table](C1_BIITT_TABLES/quad/domain.md) for \(n=4\),
with \([FPR]>0\) and \(O,C,D,P,R,F,H\) in convex order.
The chain and opposite-wing bounds apply in this hull. The
[two global stages](C1_BIITT_TABLES/quad/global.md) and the
[case tree](C1_BIITT_TABLES/quad/tree.md) have the same rules
as the triangular alternative. In this tree the 216 determinant
splits give 217 leaves, comprising 45 geometric, 71 area-interval,
68 coordinate-interval and 33 weighted contradictions.
The exact bounds in all terminal rows give a contradiction on
their full inherited domains. [Table guide](C1_BIITT_TABLES/INDEX.md)

The two hull alternatives exhaust \([FPR]\), since all actual
triangle areas are positive. Hence the entire one-corner count
\((1,2,0,2,0)\) is excluded at \(s=93/1000<2A^*\).
