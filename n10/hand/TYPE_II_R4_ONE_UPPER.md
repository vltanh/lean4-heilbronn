# Type II: the single upper central point cannot be in the lower fan

This note excludes the complete triangular-right Type-II count (1,2,4)
alternative in which the lower-fan central point P is above CE and the
upper-fan central point Q is below CE. The other CE cuts are closed in
TYPE_II_R4_LOWER_P.md and TYPE_II_R4_TWO_UPPER.md; their complete
assembly is TYPE_II_R4_TRIANGLE_COMPLETE.md. The nontriangular right
hull is a separate remaining alternative.

The final scalar comparison uses the sharper rational threshold

    tau=93073/1000000<2A*,

proved in FOUR_CORNERS.md. All earlier geometric reductions at
sigma=93/1000 remain valid, since tau>sigma. Both numbers refer to
DOUBLED triangle areas.

Retain the anchors and distributed right-hull labels

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0), R=(r,v),
    q=1-lambda,       w=1-b,
    K=4+2sqrt(3),       G=(11+3sqrt(5))/2.

The unique fan placement from TYPE_II_R4_TRIANGLE.md is

    P inside DBY,       Z inside DYX,       Q inside DXC.

Throughout this note P is above CE and Q is below CE.

## 1. Two actual triangles both contain Q and Z

First EYZ has positive orientation, without either CE-side assumption.
Write Y=(y,t), Z=(z,a). The preceding note gives a>t and DYZ>0,
while the original right distribution gives BYZ>0. If y>=z, then

    det(E,Y,Z)=det(D,Y,Z)+q(y-z)>0.

If y<z, then instead

    det(E,Y,Z)=det(B,Y,Z)+b(a-t)+lambda(z-y)>0.

The other two edge tests follow from Z inside BCY and Z below CE.
Consequently

    Z lies strictly inside ECY.                        (1)

The point Q lies above the line EY. Here is a uniform coordinate
verification, including the possibility x_Q>x_Y. From DBE and the
right-hull capacity,

    lambda<=1-sigma/b
      <1-sigma/(1-(177/20)sigma)
       =1679/3539<19/40.

Also x_Y>=5sigma and y_Y<1/5. Throughout 0<=x<=1, the line EY has
height at most

    max(lambda,y_Y/x_Y)
      <max(19/40,(1/5)/(5sigma))<49/100.

Indeed if its slope is nonpositive, its maximum is lambda. If its
slope is positive, its value at x=1 is at most y_Y/x_Y. Meanwhile
the three barycentric masses of Q in DXC are at least
sigma/(1-y_X), so

    y_Q>=y_X+2sigma>=279/907+2sigma
        =223851/453500>49/100.

Since Q is below CE and lies inside DCB, its CE and CY edge tests
are the two other required signs. Thus

    Q lies strictly inside ECY.                        (2)

Next orient PQ from P toward Q. Its D sign is positive by the fan
order. Its Y sign is negative: the segment PQ exits DBY through the
interior of DY. To see that this is its only exit edge, Q lies on
the D side of BY because Q is inside DCB, and on the same side of
DB as P; its later D-ray puts it beyond DY.

The C sign is positive as well. The CE clearances for the two central
points are

    1-y_P<=q(1-x_P)-tau,
    1-y_Q>=q(1-x_Q)+tau.

Therefore

    det(C,P,Q)
      =(1-x_P)(1-y_Q)-(1-y_P)(1-x_Q)
      >=tau(2-x_P-x_Q)>0.

These C and Y signs, together with Q inside DCB, put Q inside PCY.
The already fixed PYZ sign and Z inside BCY put Z inside PCY too.
Combining with (1),(2), the two-interior-point theorem gives

    area2(PCY)>=K tau,       area2(ECY)>=K tau.          (3)

## 2. Opposing bounds depending only on b

Put

    u=1-3tau,       t=y_Y,       y=x_Y,       T=1-t.

The right-hull clearances, now used at the valid threshold tau, give

    y<=u,
    t>=tau/(1-b),
    T<=T(b):=1-tau/(1-b).

The second inequality follows from BRY>=tau and r-b<=1-b. The actual
DBE clearance gives q>=tau/b. Consequently

    area2(ECY)=T-q(1-y)
      <=T(b)-tau(1-u)/b
       =g(b):=T(b)-3tau^2/b.                           (4)

For the other triangle, let L=area2(DBY)=y-bT. P lies inside DBY,
so each of its three barycentric masses is at least tau/L. The same
affine calculation as in TYPE_II_R4_UPPER_P.md gives

    area2(PCY)<=T+tau-tau(1+T)/(y-bT).

For fixed T,b, this expression increases with y. Substitute y<=u.
On 0<b<9/50 and 0<T<=1, the resulting function

    F(T,b)=T+tau-tau(1+T)/(u-bT)

increases with T and decreases with b. Explicitly,

    F_T=1-tau(u+b)/(u-bT)^2>0,
    F_b=-tau T(1+T)/(u-bT)^2<0.

For the first strict sign, u>18/25, b<9/50, tau<1/10 give
u-bT>27/50 and tau(u+b)<59/500, whence F_T>434/729>0.
Thus

    area2(PCY)<=f(b):=F(T(b),b).                       (5)

The function f decreases strictly, because T'(b)<0 and both partial
derivative signs have just been established. The function g increases
strictly on the same interval, since

    g'(b)=tau[3tau/b^2-1/(1-b)^2]>0.

Indeed 3tau(1-b)^2>3(9/100)(4/5)^2=108/625, whereas
b^2<(9/50)^2=81/2500.

## 3. One rational cut excludes the whole interval

Use

    b*=327/2500,       K*=933/125<K.

The last strict inequality follows from sqrt(3)>433/250, whose square
is 187489/62500<3. Direct rational substitution at b* gives

    f(b*)=495032499115388709/712995842008000000,
    g(b*)=65774049426083/94742800000000,
    K* tau=86837109/125000000.

Both upper bounds lie strictly below K* tau. The exact positive gaps
are

    K* tau-f(b*)
      =35435259571886247/89124480251000000000,
    K* tau-g(b*)
      =217386892193/473714000000000.

If b<=b*, use (4) and the increasing function g to contradict (3).
If b>=b*, use (5) and the decreasing function f to contradict (3).
These two intervals cover every allowed b, including b=b*.

This closes the entire case P above CE, Q below CE, with no unexamined
line orientations or right-point placements.
