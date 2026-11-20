# Occupied-ear rule for the convex BITT alternative

Use the actual configuration and clearance (s=93/1000) of
[the BITT setup](N6_BTTT_REMAINING_BITT_SETUP.md), in the alternative

\[
 [ERS]>0,\qquad[FRS]>0.
\]

The eight actual points form the strictly convex polygon
\[
                     A,B,C,E,R,S,F,H.
\]
Indeed, the two stated signs make \(ERSF\) strictly convex. In the
top-corner coordinates of the [seven-point chain proof](SEVEN_POINT_MONOTONE_CHAIN.md),
put \(R=(j,k)\), \(S=(l,t)\) and use the two positive determinants
\(U,V\) from that proof. Besides \(k>t\), we have \(l>j\) because
\((1-j)U+jV=(l-j)(1-j-k)>0\). Thus the three successive vectors
on \(E,R,S,F\) have nonpositive horizontal and nonnegative vertical
components in the original square. These weak inequalities include
a point on a supporting square side.

At any of these three directed edges, moving a point to the left or
down increases its inward determinant or keeps it equal. The two
contacts \(B,C\) have both coordinates at most those of \(E\); \(A,H\) have
both coordinates at most those of \(F\). Since \(E,F\) are inward or incident
at each edge, all four other contacts are inward, strictly by
clearance. The six square contacts remain extreme, as each is an
endpoint or the sole point on a supporting square side. The three
top-chain edges are therefore hull edges and replace \(EF\) in
the original hexagon. Both remaining points are inside that
hexagon. The eight ears of the resulting polygon
are the positively oriented triangles

\[
 HAB,\ ABC,\ BCE,\ CER,\ ERS,\ RSF,\ SFH,\ FHA.
\]

[NINE_CONVEX_POINTS.md](NINE_CONVEX_POINTS.md), the octagon corollary,
proves that at most one ear contains an actual point, and that ear
contains at most one. This applies to the actual points \(P,Q\), with
no additional assumption on the positions of any further point.

Consequently, if a preceding actual-sign proof places \(X\in\{P,Q\}\)
inside an ear \(D\), then every other ear is empty of both \(P,Q\),
and \(D\) is empty of the other point. The same point is also forbidden
from a different ear. Two proved ear occupancies with distinct
ear/point pairs therefore give an immediate contradiction.

For an excluded pair \((T,Y)\), if two of the three edge tests of the
positively oriented ear \(T\) at \(Y\) are positive and the third is
unknown, that third sign is negative. A zero determinant is excluded
by the actual minimum clearance. This rule prints the octagon, the
source ear and its proved occupant, the excluded ear and tested point,
and the actual determinant whose sign follows. It asserts no
unconditional empty triangle.

In particular, when \(P\) is in either lower ear \(ABC\) or \(HAB\),
the fixed upper-placement tests at \(Q\) reduce the empty-ear tests to

\[
 [AFQ]<0,\qquad[BEQ]>0,\qquad[CQR]<0,\qquad[HQS]>0.
\]

For example \(Q\in FHA\) is equivalent to \([AFQ]>0\), since
the other two edge tests are positive. Similarly \(BCE,CER,SFH\)
would contain \(Q\) exactly when, respectively,

\[
 [BEQ]<0,\qquad[CQR]>0,\qquad[HQS]<0.
\]

Only signs with their stated geometric premises may be used. An
application remains a finite case proof requiring complete literal
arithmetic and binary coverage.

## Complete reduction to the lower-central position

Neither lower ear can contain \(P\) in this convex alternative.
If \(P\in ABC\), its three actual fan triangles give
\([ABC]\ge3s\). The distinct octagon ear \(BCE\) satisfies

\[
 [BCE]-[ABC]=(e-a)(c-b)\ge0.
\]

But (3) below, applied to the occupied ear \(ABC\), gives
\([BCE]\le248858189/10^9<3s\), a contradiction.

If \(P\in HAB\), then \([ABH]\ge3s\), while the distinct
octagon ear \(FHA\), whose positive area is \([AFH]\), satisfies

\[
 [AFH]-[ABH]=(f-b)(h-a)\ge0.
\]

Again (3) gives \([AFH]\le248858189/10^9<3s\).
The same exact gap in both contradictions is

\[
 3s-\frac{248858189}{10^9}=\frac{30141811}{10^9}>0.
\]

The exhaustive lower-point alternatives therefore force
\([ACP]>0\) and \([HBP]>0\). No reflection or additional coordinate
normalization is used. Independent mathematical review checked both
ear identifications, determinant differences and contradictions.

## Fixed numerical bounds on the eight actual ears

Write \(D_i>0\) for their actual doubled areas, and put \(m=453/1000\).
The octagon inequality in NINE_CONVEX_POINTS.md gives

\[
 x_i:=D_i^{1/3}>m,\qquad \sum_{i=1}^8x_i\le4,
 \qquad m^3=\frac{92959677}{10^9}<s.
\]

In particular every ear satisfies

\[
 D_i\le(4-7m)^3=\frac{569722789}{10^9}.                 \tag{1}
\]

There is also a bound for their sum. If \(y\ge x\ge m\), moving
an amount \(0\le t\le x-m\) from \(x\) to \(y\) increases the
sum of their cubes, since

\[
 (y+t)^3+(x-t)^3-y^3-x^3
       =3t(y+x)(y-x+t)\ge0.
\]

Repeatedly move surplus above \(m\) to a largest entry. The resulting
largest entry is at most \(4-7m\), while the other seven equal \(m\).
Consequently

\[
 \sum_{i=1}^8 D_i
 \le7m^3+(4-7m)^3=\frac{76277533}{62500000}.             \tag{2}
\]

If a preceding actual-sign proof puts an actual point inside an ear
\(T\), subdivision gives \(D_T\ge3s\). Since
\((653/1000)^3<3s\), every other ear satisfies

\[
 D_i\le\left(4-\frac{653}{1000}-6m\right)^3
       =\frac{248858189}{10^9}\qquad(i\ne T).             \tag{3}
\]

The literal physical factors from (1)--(3) are their displayed constant
minus the corresponding actual determinant, or, in (2), minus the sum
of the eight actual determinants. They are multiaffine coordinate
polynomials. An individual scalar upper bound may use (1) or (3) with
the same explicit witnesses.

Each factor or scalar source states the complete ordered convex
octagon and the tested ear. A source using (3) additionally states the
occupied ear and its actual point, whose three inward signs must
already be proved. No endpoint estimate or bound produced by the
factor is used to prove its own geometric premise.

## Verification status

Independent mathematical review accepted the octagon consequences and
the exact surplus-transfer proof of (1)--(3). Every actual application
still requires independent reconstruction of its printed geometric
witnesses, arithmetic, dependencies and case coverage.
