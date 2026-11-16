# Type II: the lower-fan central point cannot lie below CE

This note excludes the complete triangular-right Type-II count (1,2,4)
alternative in which the lower-fan central point P lies below CE. It
does not require a further assumption on the CE side of Q. In the
remaining count catalogue Q is the unique upper point, but the proof
works for either side.

Together with TYPE_II_R4_TWO_UPPER.md and TYPE_II_R4_ONE_UPPER.md,
this closes the entire triangular-right-hull alternative of the count
(1,2,4). The nontriangular right hull remains a separate obligation.

All areas are DOUBLED. Put

    s=93/1000, K=4+2sqrt(3), G=(11+3sqrt(5))/2,
    G0=177/20<G,       u0=1-3s=721/1000,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    R=(r,v),       q=1-lambda,       w=1-b.

The right hull BCR contains the distributed triple X,Y,Z. The unique
placement proved in TYPE_II_R4_TRIANGLE.md is

    P inside DBY,       Z inside DYX,       Q inside DXC.

Throughout this note P lies below CE. Every actual triangle has
absolute signed area at least s.

## 1. The actual triangle EBY contains no further actual point

Write Y=(y,t). The preceding R4 notes give

    s<=b<=1-Gs<1-G0s=:B0,
    y<=u0,
    t<=1-(G-1)s/(r-b)
      <=1-(G0-1)s/(1-b),
    lambda<=1-s/b.

The last inequality is the actual DBE clearance. Since y>b, it gives

    area2(EBY)=bt+lambda(y-b)
      <=bt+(1-s/b)(y-b)
      <=u0+s-(G0-1)s b/(1-b)-s u0/b
       =F(b).                                         (1)

The second replacement uses y<=u0, whose coefficient 1-s/b is
nonnegative, and then the stated upper bound on t.

The function F increases throughout s<=b<=B0. Indeed

    F'(b)=s[u0/b^2-(G0-1)/(1-b)^2]>0.

For the sign, b<9/50, u0>7/10, 1-b>4/5, and G0-1<8 imply
u0(1-b)^2>(7/10)(4/5)^2>8(9/50)^2>(G0-1)b^2.
Consequently (1) has the exact uniform cap

    area2(EBY)<=F(B0)=3484138643/12528060000<3s.         (2)

The final positive gap is 11190097/12528060000. One interior actual
point would split EBY into three actual triangles of area at least s,
so (2) proves the asserted emptiness.

The point P has positive EB and BY edge tests: the first follows from
P inside DCB, the second from P inside DBY. Since it cannot be inside
EBY, it must therefore be above EY:

    det(E,Y,P)>0.                                     (3)

## 2. Y is below ER and P is above ER

We first verify that X,Z are above ER without using a CE-side
assumption for either central point. DBE and the right-hull capacity
give

    lambda<1679/3539<19/40.

Also v<1/10; the preceding coordinate bounds give, for T=X or Z,

    5s<=x_T<r,       y_T>=279/907.

If lambda<=v, the line ER has height at most v<1/10 on the interval
0<=x<=r. If lambda>v, then r<=1 gives, at x=x_T,

    lambda+(v-lambda)x/r
      <=lambda(1-x)+vx
      <19/40-(3/8)x
      <=19/40-(15/8)s=481/1600<279/907.

The last gap is 10133/1451200. Thus both X and Z are strictly above
ER. Since they are below CE and on the interior side of CR, they
belong to ECR.

Suppose Y were above ER too. The ray EY would then have strictly
larger slope than ER, and (3), with x_P>0, would put P above ER.
As P is below CE and inside DCB, it would belong to ECR as well.
That actual triangle would contain P,X,Y,Z, four further actual
points. This is impossible: its doubled area is at most one, whereas
the four-interior-point theorem requires at least (G+2)s>1. The
rational comparison is

    (G0+2)s-1=181/20000>0.

Hence Y is below ER, and its other two edge tests show

    Y lies strictly inside EBR.                       (4)

If P were below ER, its positive EB and BR edge tests would put it
inside EBR too. But

    area2(EBR)=lambda(r-b)+bv
      <=r max(lambda,v)<19/40<Ks.

This contradicts the two-interior-point bound. We conclude that

    P lies strictly inside ECR.                       (5)

No equality case was omitted in these comparisons: a point on ER
would make an actual triangle collinear.

## 3. A small actual quadrilateral would contain Y and Z

The three points P,X,Z in ECR must be distributed by the universal
clustered-triple exclusion. In the fan at P, the triangle ECP lies
on the left side of BC, because E and P do and C is on that line.
It contains neither X nor Z, which are strictly on the right side.
Thus X,Z must occupy different triangles ERP and CRP.

The original right distribution gives X inside CRZ. If Z were inside
CRP, then CRZ would be contained in CRP and X would join Z there,
contrary to distributedness. Therefore

    Z lies strictly inside ERP.                       (6)

The four actual points E,B,R,P form a convex quadrilateral in that
cyclic order. B and P are on opposite sides of ER. Neither can lie
inside the triangle formed by the other three. E is the unique
leftmost vertex, and R is strictly to the right of B,P. Thus all
four are hull vertices. Equations (4),(6) put Y and Z strictly inside
this quadrilateral, on opposite sides of its ER diagonal.

The quadrilateral/two-interior-point theorem therefore requires

    W:=area2(EBRP)>=8s.                               (7)

The short proof of this affine bound is recalled in
OPPOSITE_CORNERS.md, Section 6: if a hull diagonal keeps both points
on one side, use (K+1)s>8s; otherwise both diagonals separate them,
and the normalized diagonal-coordinate argument gives W>=8s.

We now prove the contradictory upper bound W<721/1000.

## 4. The occupied EBR triangle forces b>13/100

Since EBR contains Y, its doubled area is at least 3s. Using r<=1
and v<1/10,

    3s<=lambda(r-b)+bv
       <=lambda(1-b)+b/10.

The function (3s-b/10)/(1-b) increases with b because 3s>1/10.
As b>=s, this yields

    lambda>29s/[10(1-s)]=2697/9070.

Together with bq>=s, it follows that

    b>84351/637300>13/100.                             (8)

The last gap is 751/318650. The distributed BRY corner-face cap now
gives

    t<1-(G0-1)s/(1-13/100)
      =933/5800<161/1000.                              (9)

The final gap is 1/7250. The same inequalities give

    0<c:=lambda-v<1,

and in fact c<19/40, since v>=0 and lambda<19/40.

## 5. A barycentric upper bound for EBRP

Put

    T=1-t,       L=area2(DBY)=y-bT,
    a=y_P,       p=x_P,
    d=area2(DBP)=p-b(1-a),
    A=r-bc.

Here d>=s and A>0. The positive DPY clearance is the exact identity
and inequality

    det(D,P,Y)=L(1-a)-Td>=s.

The doubled area of the quadrilateral is

    W=r a+c(p-b)=Aa+cd.                               (10)

Thus

    W<=A(1-s/L)+d(c-AT/L).

The coefficient of d is negative. Indeed

    AT-cL=rT-cy>0,

because r>9/10, T>4/5, c<19/40, and y<=721/1000 give
rT-cy>15101/40000>0. Using d>=s in (10) therefore gives

    W<=A h+cs=rh+c(s-bh),
    h=1-s(2-t)/(y-b+bt).                              (11)

The actual point P satisfies a<=h, so h>=0. Since r<=1 and 0<c<1,
the right side in (11) is at most max(h,s/b). To check this directly,
if s-bh<=0 then it is at most h. If s-bh>0, it is at most
s+(1-b)h<s/b.

The function h increases with y and t and decreases with b wherever
the denominator is positive. Its t derivative is
s(y+b)/(y-b+bt)^2>0; the other two signs follow immediately by
differentiation. Consequently y<=721/1000, (8), and (9) give

    h<1-s(2-161/1000)/(721/1000-(13/100)(1-161/1000))
      =440903/611930<721/1000.

The last gap is 29853/61193000. Also

    s/b<(93/1000)/(13/100)=93/130<721/1000,

with gap 73/13000. Equation (11) therefore proves

    W<721/1000<8s=744/1000,

contradicting (7).

This excludes the whole P-below-CE alternative. All possible placements
relative to ER and all relevant fans have been covered explicitly.
