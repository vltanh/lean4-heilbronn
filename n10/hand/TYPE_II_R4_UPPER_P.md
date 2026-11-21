# Triangular right hull: an upper lower-fan point and the nested chamber

This note continues TYPE_II_R4_TRIANGLE.md in its unique remaining
placement. It fixes several more actual triangle signs whenever the
lower-fan central point is above CE. If both central points are above
CE, it reduces their arrangement to one nested chamber. This is a
reduction, not an exclusion of that final chamber or of the whole
Type-II count (1,2,4).

All areas are DOUBLED. Retain

    sigma=93/1000, K=4+2sqrt(3), G=(11+3sqrt(5))/2,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    R=(r,v), w=1-b, q=1-lambda.

The distributed right-hull labels and the unique fan placement are

    Z inside DYX,       P inside DBY,       Q inside DXC.

Both P,Q lie inside DCB. Throughout Sections 1--4 assume in addition
that P is above CE. Q need not be above CE in those sections.

## 1. Useful coordinate bounds for the two fans

The preceding note proves

    sigma<=b<=1-G sigma<9/50,
    0<=v<1/10,       r>9/10,
    x_X<=1-sigma,    x_Y,x_Z<=1-3sigma,
    x_X>=G sigma>4/5,
    y_X,y_Z>=3sigma/(1-sigma)>3/10,
    y_X,y_Z<3/5,
    1/10<y_Y<1/5,
    x_Z>=5sigma,     x_X-x_Z<9/20.                     (1)

For the upper bound y_X,y_Z<3/5, use their BC clearances together
with the displayed upper bounds on x_X,x_Z. In both cases this gives

    y_X,y_Z <=(1-5sigma)/(1-sigma)=535/907<3/5.

The actual DPY triangle has positive area, so

    x_P(1-y_Y)<=x_Y(1-y_P)-sigma.

Since P is above CE, its CE clearance implies y_P-x_P>=sigma.
Substituting y_P>=x_P+sigma and using (1) gives

    x_P<( (1-3sigma)(1-sigma)-sigma )/(4/5+1-3sigma)
        =560947/1521000<37/100<x_Z.                    (2)

There is also a useful upper bound on y_P which does not require the
CE assumption. Write L=area2(DBY). The three barycentric masses of P
in DBY are at least sigma/L. Maximizing its height at D gives

    y_P<=1-sigma(2-y_Y)/L.

The previous note gives L<=602053/907000 and
y_Y<3539/18140. Therefore

    y_P<8996147/12041060<3/4.                          (3)

## 2. An upper P has height greater than 9/20

Write P=(p,a). The positive EB clearance and the negative CE clearance
give

    b(a-lambda)+lambda p>=sigma,
    p<=(a-lambda-sigma)/(1-lambda).

In particular a-lambda>0. If a<=9/20, maximize the first expression
using b<9/50 and then the bound on p. Multiplying by 1-lambda>0 gives

    0 <= (1-lambda)(area2(EBP)-sigma)
       <= -(41/50)lambda^2+(189/1000)lambda-3/250.      (4)

The quadratic on the last line is strictly negative everywhere. Its
maximum is

    -3/250+(189/1000)^2/[4(41/50)]
      =-3639/3280000<0.

This contradiction proves

    y_P>9/20.                                        (5)

## 3. The signs PRY and PRZ are fixed

Since P lies inside DBY, x_P<x_Y; also x_P>=sigma. Its signed PRY
area is

    det(P,R,Y)
      =(r-x_P)y_Y-(r-x_Y)y_P+v(x_P-x_Y).

Use (1),(5) and drop the nonpositive last term. As y_Y<y_P, the
remaining expression decreases with r. Thus

    det(P,R,Y)
      <(9/10-sigma)/5-(9/10-(1-3sigma))(9/20)
       =1617/20000<sigma.                             (6)

Every actual triangle has absolute signed area at least sigma.
Therefore det(P,R,Y)<0. The other two edge tests follow from Y
lying to the right of BC and above BR, so

    Y lies strictly inside BPR.                      (7)

This triangle has area strictly below K sigma. Indeed (3), x_P>=sigma,
b>=sigma, and v<1/10 give

    area2(BPR)=(r-b)y_P-v(x_P-b)
      <=(1-b)(3/4)+(b-sigma)/10
       =3/4-(13/20)b-sigma/10
      <=(3/4)(1-sigma)=2721/4000
       <(149/20)sigma<K sigma.                       (8)

The rational gap to (149/20)sigma is 63/5000. It cannot contain a
second actual interior point. If det(P,R,Z)<0, the same two edge
tests put Z inside BPR as well, contradicting (8). Consequently

    det(P,R,Z)>0.                                    (9)

We will also use det(P,R,X)>0. First det(D,R,X)>0, since

    det(D,R,X)=(1-v)x_X-r(1-y_X)
       >(9/10)(4/5)-7/10>0.

B and Y have the same positive sign by their right-triangle
containments. P lies inside DBY, so the affine sign at P is positive.

## 4. The sign PZX is positive

Put

    dx=x_X-x_Z>0,       dy=y_Z-y_X,
    z=x_Z,       a=y_Z,       p=x_P,       A=y_P.

Suppose det(P,Z,X)<0. Its absolute area would be

    V:=-det(P,Z,X)=dx(a-A)+(z-p)dy>=sigma.             (10)

If dy<=0, then z-p>0 by (2), and (1),(5) give

    V< (9/20)(3/5-9/20)=27/400<sigma.

Thus dy>0. The positive actual DZX area is

    U:=det(D,Z,X)=dx(1-a)-z dy>=sigma.

Adding it to (10) yields

    dx(1-A)-p dy>=2sigma.

Since A>9/20, this implies

    dx>2sigma/(11/20)=93/275,
    z<1-sigma-93/275=6257/11000<57/100.                (11)

The BCZ clearance gives a<=(z-b-sigma)/(1-b). This expression
decreases with b; using b>=sigma and (11),

    a<(57/100-2sigma)/(1-sigma)=384/907<43/100<A.

The first summand in (10) is now negative. From z<57/100, p>=sigma>
9/100, y_X>3/10, and a<43/100, the other summand satisfies

    V<(48/100)(13/100)=39/625<sigma.

This contradiction excludes (10), proving

    det(P,Z,X)>0.                                    (12)

Together with the known PYZ and RXZ signs, (9),(12) give two actual
containments:

    Z inside PXY and PRX.

In particular both containing triangles have doubled area at least
3sigma. The usual BC and CR edge tests also place both X and Z inside
PCR. Thus

    area2(PCR)>=K sigma,
    x_P<=1-K sigma<30715/100000.                      (13)

For the last bound use
area2(PCR)=(1-v)(1-x_P)-(1-r)(1-y_P)<=1-x_P and K>149/20.

## 5. Two upper points force the C sign negative

Assume for the rest of the note that Q is above CE as well. The
empty-EBR-fan result in TYPE_II_R4.md places Y above ER. Hence both
following actual areas are positive and at least sigma:

    ERY=r y_Y-v x_Y-lambda(r-x_Y),
    EBY=b y_Y+lambda(x_Y-b).

Here b<x_Y<r. Multiply the first by x_Y-b and the second by r-x_Y.
The lambda terms cancel, giving

    x_Y[(r-b)y_Y-v(x_Y-b)]>=sigma(r-b).

Consequently

    x_Y y_Y>=sigma,       y_Y>=sigma/x_Y.              (14)

We use (14) to bound the actual triangle PCY. Put

    T=1-y_Y,       L=x_Y-bT=area2(DBY),       u=1-3sigma.

As P ranges over DBY, area2(PCY) is affine, taking values T,L-y_Y,0
at D,B,Y. These are in decreasing order: L<1 and L-y_Y=area2(BCY)>0.
The three barycentric coordinates of P are at least sigma/L. Thus

    area2(PCY)<=T+sigma-sigma(1+T)/L.                  (15)

For fixed T, the right side increases with x_Y and decreases with b.
Use x_Y<=u and b>=sigma. The resulting function

    F(T)=T+sigma-sigma(1+T)/(u-sigma T)

increases throughout 0<=T<=1, because

    F'(T)=1-sigma(u+sigma)/(u-sigma T)^2
       >=1-sigma(u+sigma)/(u-sigma)^2>0.

Equation (14) gives T<=1-sigma/x_Y<=1-sigma/u=628/721. Therefore

    area2(PCY)
      <=F(628/721)=230268674161/332696077000
       <(149/20)sigma<K sigma.                       (16)

The first strict gap is 4796055769/6653921540000>0.

Orient PQ from P toward Q. Its D sign is positive and its B sign is
negative by TYPE_II_R4_TRIANGLE.md. In addition its X and Y signs
are negative. Indeed the segment PQ exits DBY through the interior
of DY and enters DXC through the interior of DX: P,Q lie in DCB,
and their rays about D lie on the stated sides of DY,DX. Thus each
of those actual edges has D on one side of PQ and its other endpoint
on the other side.

The point Z lies inside PCY: its PC and CY edge tests follow from
Z inside BCY and P inside DCB, and its YP test is the positive PYZ
sign already fixed by the middle fan placement. If the C sign for
PQ were positive, Q would also lie inside PCY. Its PC edge test is
the assumed C sign, its CY test follows from Q inside DCB, and its
YP test is the negative Y sign just proved. This would contradict
the two-interior-point bound and (16). Hence

    det(Q-P,C-P)<0.                                  (17)

## 6. The unique remaining two-upper chamber

TYPE_II_UPPER_PAIR.md puts E on the same negative side as B. Together
with (17), the complete remaining anchor signs are

    D positive;       E,B,C negative.

All other actual right points are on the negative side as well. The
line PQ cuts DE and DC, so its positive part inside the square is
the corner triangle containing D, contained in DCE. The right points
lie below CE.

The signs give the actual nested containments

    P inside DEQ,       Q inside DCP.

Writing P=(x_P,y_P), Q=(x_Q,y_Q), the determinant differences give

    q(x_Q-x_P)>=2sigma,       y_Q-y_P>=2sigma.          (18)

The two containing triangles also give

    q x_Q>=3sigma,       1-y_P>=3sigma.

For example, (5),(13),(18) imply the convenient box

    sigma<=x_P<30715/100000,
    9/20<y_P<=1-3sigma,
    x_Q>=3sigma,
    y_Q>9/20+2sigma,
    x_Q-x_P>=2sigma,       y_Q-y_P>=2sigma.

TYPE_II_R4_TWO_UPPER.md excludes this last nested chamber. In the
one-upper cut, Sections 1--4 apply when P is the upper point; the
two-upper assumptions in Sections 5--6 must not be used there.
TYPE_II_R4_TRIANGLE_COMPLETE.md assembles all three CE cuts.
