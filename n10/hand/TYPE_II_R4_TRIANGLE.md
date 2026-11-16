# Four right points with triangular hull: the unique fan placement

This note treats the whole triangular-right-hull alternative of the
Type-II count (1,2,4). It proves that three specified actual points
occupy three different fans of one actual pentagon, and excludes both
outer placements of Z. It also fixes the side of the central-pair line
containing B. Neither the whole triangular-right alternative
nor the full count row is claimed closed here.

All areas are DOUBLED. Use

    sigma=93/1000, K=4+2sqrt(3), G=(11+3sqrt(5))/2,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0), w=1-b.

The two central points P,Q lie inside DCB. The six right points have
triangular hull BCR, where R=(r,v) is actual and lies in
conv{B,C,(1,0)}. The other three right points are strictly interior.

## 1. Distributed labels and uniform coordinate consequences

The clustered-triple theorem in CLUSTERED_TRIANGLE.md excludes a
clustered arrangement of those three right interior points. Label the
distributed arrangement as Z near side BC, X near side CR, and Y near
side RB. More precisely, the distributed containments proved in
TRIANGLE_OCCUPANCY.md give

    Y inside BRZ and BRX,
    X inside CRZ and CRY,
    Z inside BCX and BCY.                               (1)

These six containments, and the triangle inequalities, imply

    area2(BRZ),area2(BRX),area2(CRZ),area2(CRY),
    area2(BCX),area2(BCY) >= 3sigma.                     (2)

The right-hull doubled area is

    Omega=r-b-wv >= G sigma.                            (3)

The actual triangle DBE gives b(1-lambda)>=sigma, hence b>=sigma.
It follows that

    w<=1-sigma,
    r>=b+G sigma>w,
    r-w >= (G+2)sigma-1 > 181/20000.                    (4)

For the last strict comparison, G>177/20 gives
(177/20+2)sigma-1=181/20000>0.

Write X=(x_X,y_X), and similarly for Y,Z. The positive right-triangle
areas have formulas

    area2(BCT)=x_T-b-w y_T,
    area2(BRT)=(r-b)y_T-v(x_T-b),
    area2(CRT)=(1-v)(1-x_T)-(1-r)(1-y_T).

In particular, (2) and the minimum sigma for all other actual triangles
give the convenient consequences

    x_X<=1-sigma,       x_Y,x_Z<=1-3sigma,
    y_X,y_Z>=3sigma/w,  y_Y>=sigma/w,
    x_Y>=b+w y_Y+3sigma,
    x_X>=b+w y_X+3sigma,
    x_Z>=b+w y_Z+sigma.                                 (5)

There is one further useful consequence of the distributed seven-face
proof. Each of its three corner faces has area at most

    Omega-(G-1)sigma.                                   (6)

Indeed that proof gives the sum of the three intermediate faces at least
(G-4)sigma. The other two corner faces and the interior face each cost
at least sigma, so the complement of any one corner face costs at least
(G-1)sigma. Apply (6) to CRX. Since

    Omega-area2(CRX)=(1-v)(x_X-b)-(1-r)y_X,

we obtain x_X>=b+(G-1)sigma. Consequently

    x_X-x_Z >= b+(G+2)sigma-1 >0.                       (7)

All denominators used above are positive, and no boundary sign vanishes
because all involved points are actual.

## 2. Three small fans partition a convex pentagon

The four points B,Y,X,C form a convex quadrilateral in that cyclic
order, and contain Z. One way to see this directly from (1) is that
Y is outside BCX, X is outside BCY, and Z is inside both. Adding D,
which is across BC from the three right interior points, gives the
convex pentagon

    D-B-Y-X-C.

For completeness, the turns at B and C have positive orientation
because Y lies to the right of DB and X lies below DC; the turns at
Y,X come from the convex quadrilateral, and the turn at D is that of
DCB. The three points P,Q,Z are all strictly inside this pentagon.

Its fan from D consists of the actual triangles DBY, DYX, and DXC.
We prove that each has doubled area strictly below K sigma, so each
can contain at most one further actual point.

First, (5) gives

    area2(DXC)=1-y_X
      <=1-3sigma/w<=1-3sigma/(1-sigma)=628/907.           (8)

Next, x_Y<=1-3sigma and x_Y-b-wy_Y>=3sigma imply
1-y_Y>=6sigma/w. Thus

    area2(DBY)=x_Y-b(1-y_Y)
      <=1-3sigma-6b sigma/w
      <=1-3sigma-6sigma^2/(1-sigma)
      =602053/907000.                                   (9)

Finally, the positive doubled area of DYX is

    M=x_X(1-y_Y)-x_Y(1-y_X).

Use x_Y>=b+w y_Y+3sigma and
1-y_X>=(1-x_X+3sigma)/w. Both factors being replaced are positive.
This gives

    M <= x_X(1-y_Y)
          -(b+w y_Y+3sigma)(1-x_X+3sigma)/w.

The right side increases with x_X, with derivative (1+3sigma)/w.
Using x_X<=1-sigma and then y_Y>=sigma/w yields

    M <= (1+3sigma)(1-5sigma/w)
      <= (1+3sigma)(1-5sigma/(1-sigma))
      =282659/453500.                                  (10)

Each cap is strictly below (149/20)sigma<K sigma. The exact three gaps
are, in the order (8),(9),(10),

    8299/18140000, 527239/18140000, 1261939/18140000.

The two-interior-point theorem now permits at most one of P,Q,Z in
each fan. They cannot lie on actual fan edges. There are three such
points and three fans, so each fan contains exactly one.

There are therefore exactly three possibilities, according to the fan
containing Z. Rename P,Q so that P is earlier than Q when sweeping rays
from DB toward DC. The complete table is

| Location of Z | Location of P | Location of Q |
|---|---|---|
| DBY | DYX | DXC |
| DYX | DBY | DXC |
| DXC | DBY | DYX |

No cut relative to CE was assumed in this section.

## 3. The upper placement of Z is impossible

Suppose Z lies in DXC, the last row of the table. The actual signed
areas of DXZ and RXZ are then positive and at least sigma: the first
sign is the fan containment, and the second follows from X inside CRZ
in (1). Put

    z=x_Z,       a=y_Z,
    dx=x_X-x_Z>0,       dy=y_Z-y_X.

Equation (7) proves dx>0. Moreover D and C are on opposite sides of XZ,
so the difference of their signed areas gives dy>=2sigma>0. The two
positive areas under consideration are

    area2(DXZ)=z dy-dx(1-a)>=sigma,
    area2(RXZ)=dx(a-v)-(r-z)dy>=sigma.                   (11)

We have r-z>0: r>=b+G sigma>916/1000, whereas z<=1-3sigma=721/1000.
Multiply the first inequality by r-z and the second by z, add, and
drop the nonpositive term -z dx v. Division by r>0 gives

    sigma <= dx[z/r+a-1].                              (12)

The bracket in (12) is positive. From (5),

    a<=(z-b-sigma)/w,       dx<=1-sigma-z.

Consequently

    sigma <= F(z),
    F(z)=(1-sigma-z)
            [(1/r+1/w)z-(1+sigma)/w].                  (13)

This concave quadratic increases throughout z<=1-3sigma. Indeed its
derivative is decreasing in z, and (4) gives 1/r<1/w, so at the upper
endpoint

    F'(1-3sigma)
      =(1/r+1/w)(-1+5sigma)+(1+sigma)/w
      >(-1+11sigma)/w>0.

Evaluating (13) there and using r>w again yields

    sigma <=2sigma[(1-3sigma)/r-4sigma/w]
           <2sigma(1-7sigma)/w.

Thus w<2-14sigma. But (3) gives w>=G sigma, contradicting

    (G+14)sigma-2
      >(177/20+14)sigma-2=2501/20000>0.

This excludes the whole Z-in-DXC alternative, independently of whether
the central pair has one or two points above CE.

## 4. The lower placement of Z is impossible as well

Suppose instead that Z lies in DBY, the first row of the table. Write

    Z=(z,a),       Y=(y,t),       R=(r,v).

The actual signed doubled areas DZY and RZY are both positive and at
least sigma. The first follows from the fan containment and the second
from Y inside BRZ in (1).

We record the coarse rational bounds needed in this case. Equations
(3),(5),(6) give

    0<=v<1/10,       a>3/10,
    1/10<t<1/5,      z>9/20.                            (14)

Here v<=1-G sigma/w<=1-(177/20)sigma/(1-sigma)
=1679/18140<1/10; a>=3sigma/w>=279/907>3/10; and
t>=sigma/w>=93/907>1/10. For the upper bound on t, apply (6) to
the corner face BRY and use the identity

    Omega-area2(BRY)=(r-b)(1-t)-v(1-y).

It implies 1-t>=(G-1)sigma/(r-b)>=(G-1)sigma/(1-sigma),
so t<3539/18140<1/5. Finally BRZ>=3sigma and BCZ>=sigma
give z>=b+4sigma>=5sigma=93/200>9/20.

In particular a>t. The first signed area inequality is

    U:=y(1-a)-z(1-t)>=sigma.                            (15)

It forces y>z, since 1-a<1-t. The other signed area is

    area2(RZY)=zt-ay+r(a-t)+v(y-z)>=sigma.

Use r<=1, v<1/10, and the two positive differences just established.
The following upper replacement is therefore at least sigma:

    V:=z(t-1/10)-y(a-1/10)+(a-t)>=sigma.                (16)

Multiply (15) by a-1/10>0, multiply (16) by 1-a>0, and add. The y
terms cancel, giving the exact identity and inequality

    (a-1/10)U+(1-a)V
       =(a-t)(1-a-(9/10)z) >= (9/10)sigma.              (17)

Both factors on the last line are positive. Using (14) in (17) gives

    sigma < (a-1/10)(119/200-a)/(9/10)
          <=1089/16000 < sigma.                        (18)

The middle bound is the maximum of that concave quadratic: the gap
between its two roots is 99/200, so its maximum is
(99/200)^2/[4(9/10)]=1089/16000. The final strict rational gap is

    sigma-1089/16000=399/16000>0.

This excludes the complete Z-in-DBY alternative, again without any
assumption about which central points lie above CE.

## 5. The central-pair line has B on its negative side

We now have

    Z inside DYX,       P inside DBY,       Q inside DXC. (19)

Orient the line PQ from P toward Q. The ray ordering about D gives
det(Q-P,D-P)>0. We prove the additional fixed sign

    det(Q-P,B-P)<0.                                    (20)

First, Z lies strictly inside the actual triangle QBX. Its three
positive edge tests follow as follows. The test on BX is the known
containment Z inside BCX. The test on XQ follows because D and C lie
on the positive side of the directed line ZX, and Q lies inside DXC.
For the remaining test, both det(D,B,Z) and det(C,B,Z) are positive;
their convex combination is det(Q,B,Z)>0 because Q lies inside DCB.

Suppose, contrary to (20), that det(Q-P,B-P)>0. This is exactly the
positive QB edge test for P in QBX. The BX edge test is positive
because P is inside DCB and D,C are on that side of BX. Finally D,B,Y
are all on the positive side of the directed line XQ. For D this
follows from Q inside DXC; for B and Y it follows by writing Q as a
positive convex combination of D,C,X and using the convex pentagon
D-B-Y-X-C. Since P lies inside DBY, its XQ edge test is also positive.
Thus P and Z would both be strictly inside QBX. The two-interior-point
bound would require

    area2(QBX)>=K sigma.                               (21)

There is a contradictory uniform upper bound. Put

    T=1-y_X=area2(DXC),       L=x_X-bT=area2(DBX).

The three barycentric coordinates of Q in DXC are at least sigma/T,
because all three fan triangles have actual vertices. In particular
T>=3sigma. The affine function area2(QBX) takes values L,L-y_X,0 at
D,C,X respectively. These are in decreasing order: y_X>0 and
L-y_X=area2(BCX)>=3sigma. Therefore

    area2(QBX)
      <=L-sigma(L+y_X)/T
       =F(x_X,T,b),
    F(x,T,b)=x-bT+sigma(1+b)-sigma(x+1)/T.              (22)

The proved coordinate bounds imply

    x_X>=G sigma>4/5,       x_X<=1-sigma,
    3sigma<=T<=628/907<7/10,
    sigma<=b<=1-G sigma<1/5.

On this entire box, F increases with x and T and decreases with b.
Indeed

    F_x=1-sigma/T>0,       F_b=sigma-T<0,
    F_T=-b+sigma(x+1)/T^2
        >-1/5+sigma(9/5)/(7/10)^2>0.

Consequently (22) gives the exact rational cap

    area2(QBX)
      <=F(1-sigma,628/907,sigma)
       =78389420201/113919200000
       <(149/20)sigma<K sigma.                         (23)

The first strict gap is 539497519/113919200000>0. This contradicts
(21), proving (20). No other actual point lies on the central-pair
line, since all its triples have area at least sigma.

In particular, P cannot join Z inside QBX. The already established
containment of Z does give the
useful necessary inequality area2(QBX)>=3sigma.

## Exact remaining placement and scope

Every triangular-right configuration in the row (1,2,4) therefore has
the single fan placement

    Z inside DYX,       P inside DBY,       Q inside DXC.

The line directed from P to Q has D on its positive side and B on its
negative side. In the two-upper CE cut, TYPE_II_UPPER_PAIR.md further
places E on the same negative side as B.

TYPE_II_R4.md further excludes both central points below CE. The
subsequent three-cut argument in TYPE_II_R4_TRIANGLE_COMPLETE.md now
excludes every placement left by this note and closes the entire
triangular-right branch.
