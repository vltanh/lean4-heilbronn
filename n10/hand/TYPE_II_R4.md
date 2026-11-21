# Four right points: the complete lower-cut exclusion and an empty fan

This note continues the Type-II row (ell,c0,r)=(1,2,4) from
[TYPE_II.md](TYPE_II.md). It excludes the entire alternative in which
both central points lie below CE. If both lie above CE, it proves that
the lower supporting fan EBH is empty, for every right-hull alternative.
The triangular-right alternatives are now fully excluded in
TYPE_II_R4_TRIANGLE_COMPLETE.md. The nontriangular right hull remains a
separate obligation; no exclusion of the whole count row is claimed here.

All areas below are DOUBLED. Write

    sigma=93/1000,
    K=4+2sqrt(3),       G=(11+3sqrt(5))/2,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    q=1-lambda,       w=1-b.

The two central points P,Q lie strictly inside DCB. The other four
points lie in the right triangle conv{B,C,(1,0)}. Every actual unsigned
triangle area is at least sigma. In particular, no actual point lies
on the actual line CE.

## 1. The six-point capacity and the complete zero-upper cut

The actual triangle DBE and the endpoint-six theorem give

    bq>=sigma,       w>=G sigma.                         (1)

The line CE partitions the central triangle DCB into DCE and EBC,
with portions outside DCB ignored. Suppose both P,Q lie below CE.
They are then strictly inside EBC, whose doubled area is

    area2(EBC)=1-wq.

The two-interior-point theorem implies 1-wq>=K sigma. Since q>=sigma/b,

    1 >= K sigma+wq
      >= (K-1)sigma+sigma/b.                            (2)

But K>149/20 and G>177/20, so (1) gives b<3539/20000. Therefore
the last expression in (2) is strictly greater than one, with the exact
rational gap

    (129/20)sigma+sigma/(3539/20000)-1
       =8877383/70780000>0.

The radical bounds follow from sqrt(3)>69/40 and sqrt(5)>67/30,
respectively; their square comparisons are 4800>4761 and 4500>4489.
This contradiction excludes the complete zero-upper cut. Thus at least
one of P,Q lies above CE.

## 2. A bottom supporting contact for every right hull

Apply the supporting-triangle construction to the six actual right
points, including B,C. If their hull is triangular, use its third actual
vertex R'. Otherwise use the supporting triangle from
SIX_POINT_ENDPOINT.md, Section 1. In both cases we have

    R'=(u,v),       b<=u<=1,       0<=v<=1,
    Omega=u-b-wv >= G sigma.                            (3)

Here Omega is the doubled area of BCR'; the six-point theorem proves
the lower bound, and the container is inside the original right
triangle. In the triangular-hull case set H=R'. Otherwise let H be the
actual contact in the relative interior of BR'. Thus H is actual in
both cases and

    b<=x_H<=1,
    0<=y_H<=v<=1-G sigma/w.                             (4)

The triangle EBH has positive doubled area

    delta=b y_H+(1-q)(x_H-b).

Equations (4) give

    delta <= b(1-G sigma/w)+w(1-q)
           =1-wq-G sigma b/w.                          (5)

## 3. Both upper central points make EBH empty

Suppose now that both P,Q lie above CE. They are strictly inside DCE,
so the two-interior-point theorem gives q>=K sigma. Together with (1),

    q>=max(K sigma,sigma/b).                            (6)

We maximize the upper bound (5) using (6), covering every b in (0,1).

For b<=1/K, use q>=sigma/b. The resulting bound is

    delta <= 1-sigma[w/b+G b/w].                        (7)

The expression in brackets decreases with b on this range: its
derivative is -1/b^2+G/w^2<0, since

    G b^2/w^2 <= G/(K-1)^2 < 9/36 <1.

We used G<9 and K-1>6, both immediate by squaring the corresponding
positive rational radical bounds. Thus the right side of (7) increases
up to b=1/K.

For b>=1/K, use q>=K sigma. Equation (5) becomes

    delta <= 1-sigma[K w+G b/w].                        (8)

This bracket increases with b, because its derivative is
-K+G/w^2>G-K>0. The comparison G>K follows, for example, from G>17/2
and K<15/2. Hence the right side of (8) decreases from b=1/K.

The two bounds agree at b=1/K. Therefore, uniformly in b,

    delta <= 1-sigma[(K-1)+G/(K-1)] < 3sigma.            (9)

For an explicit rational proof of the strict last inequality, use
K>149/20, K<15/2 and G>177/20. They give

    K+2+G/(K-1) > 189/20+177/130,
    sigma[189/20+177/130]-1=1423/260000>0.

Consequently EBH contains no other actual point. An interior point
would subdivide it into three actual triangles, forcing delta>=3sigma;
an actual point on one of its edges would give a collinear triple.
This proves the empty-fan statement without a triangular-hull
assumption or a numerical maximization premise.

## 4. Geometric consequences and the remaining scope

The quadrilateral E-B-H-C is convex. Its diagonal EH partitions it
into EBH and ECH. Therefore every further actual point inside BCH
is strictly inside ECH when both central points are above CE.

In particular, if the right six-point hull is triangular, H is its
third vertex and all three right interior points lie inside ECH.
The quadrilateral D-E-H-C then contains the two central points above EC
and the three right interior points below EC. This is a proved
five-interior-point placement, not a contradiction by itself.

For a nontriangular right hull, use its four support anchors B,C,H,F
and the two additional points. The five-cell calculation excludes IV,V,
simultaneous I and III, and two points in I or two in III at the present
threshold. Thus the support patterns are I+II, II+II, or II+III.
In the first two patterns both additional points lie in BCH and are
therefore forced into ECH; in the last pattern its central point is
forced into ECH. This keeps all right-hull alternatives explicit.

After this note the row (1,2,4) has exactly the two possible cuts of
its central pair relative to CE: one upper and one lower, or both upper.
The entire both-lower alternative is excluded. The empty-fan statement
adds a uniform restriction in the both-upper alternative. The subsequent
TYPE_II_R4_TRIANGLE_COMPLETE.md closes both cuts for triangular right
hulls. The nontriangular right-hull child and parent Type-II family
remain open.
