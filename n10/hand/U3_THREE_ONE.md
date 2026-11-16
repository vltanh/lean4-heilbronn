# U3 distributed: complete exclusion of the 3/1 fan split

This note excludes the entire remaining distributed-upper U3 family with a
3/1 split across BY. It first reduces the three same-side lower points to
two possible convex quadrilateral orders. Both orders yield one nine-point
necessary configuration. An exhaustive orientation catalogue then supplies
twenty fixed nonnegative cubics, each with an exact negative upper bound.
There are **1,392 positive integer entries**, all at most 382; every entry
and every bound is printed below. No numerical search, optimizer assertion,
coordinate subdivision, or certificate generated at runtime is a premise.
The optional `check_u3_three_one.py` checks the printed algebra using
rational arithmetic and no discovery files.

Together with [U3_FOUR_ONE_SIDE.md](U3_FOUR_ONE_SIDE.md) and
[U3_TWO_TWO.md](U3_TWO_TWO.md), this closes every distributed U3 fan split.
The clustered U3 family is independently excluded in
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md).

Put

    s=93/1000, G=4+2sqrt(3), J=(11+3sqrt(5))/2, r=1-Gs.

Assume every actual unsigned doubled triangle area is at least s. Since
2A*>s, this stronger exclusion suffices for the candidate threshold.
Write D(U,V,W)=det(V-U,W-U). All actual points are distinct and no three
are collinear. We use these established hand results:

* an actual triangle containing two or three other points has doubled
  area at least Gs or Js, respectively;
* no actual triangle in the square contains four other points;
* no actual triangle in the square has three other points in a clustered
  fan pattern;
* seven points in a triangle of doubled area at most one, including two
  actual container vertices, have minimum doubled area less than s.

These are proved in [TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md),
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md), and Sections 5–9 of
[THREE_CORNERS.md](THREE_CORNERS.md). The four-interior constant exceeds
54/5, whose product with s is 2511/2500>1, so its exclusion holds at s.
We will repeatedly use

    Gs>69/100, Js>823/1000, r<307/1000.                  (1)

For the first and third comparisons, sqrt(3)>173/100 gives G>373/50.
For the second, sqrt(5)>559/250 gives J>4427/500.

## 1. Setup and the same-side antichain

Use the actual corners A=(0,0), B=(0,1), C=(1,1). Choose Y among the
three upper points with smallest y-x. No other upper point is inside
ACY. Distributivity therefore gives the exhaustive labeling

    Z inside ABY, X inside BCY,
    Y inside CAZ and CAX, X inside BCZ, Z inside ABX.    (2)

The elementary distributed-fan argument proving these containments is
also given in TRIANGLE_OCCUPANCY.md §2. It allows a tie in the chosen
minimum coordinate. Write Y=(u,1-h). No order between u and h is assumed
yet.

A lower point L=(x,y) is A-side when D(B,Y,L)<=-s and C-side when it is
at least s. Equivalently the expression is h*x-u*(1-y). Every A-side L
has Y,X inside BCL; every C-side L has Y,Z inside ABL. Indeed its B-ray
and the corresponding corner ray enclose the upper points, while the
opposite edge lies below AC. Thus

    y_L<=r for an A-side L; x_L>=Gs for a C-side L.      (3)

Reflect in x+y=1 if needed so that the side with three lower points is
the A-side, and call the single C-side point R. This preserves the
minimum-coordinate choice of Y and exchanges Z,X. We now prove u>h,
without making a second symmetry assumption. If u<=h, put K=(u/h,0).
The triangle ABK has doubled area u/h<=1. Its edge BK lies on the line
BY. It contains Y, Z inside ABY, and all three A-side lower points, as
well as its two actual vertices A,B. These are seven actual points in
an endpoint triangle of doubled area at most one, a contradiction. Thus

    u>h.                                                (4)

The proof below retains the weaker inequality u>=h. It now covers the
3/1 and reflected 1/3 forms with the three-point side labeled A.

Two A-side points cannot nest inside each other's BC triangles. If M were
inside BCL, the three interior points Y,X,M would have Y,X inside the same
fan BCM at M, a forbidden cluster. In B/C perspective coordinates

    p_B(L)=x/(1-y), q_C(L)=(1-x)/(1-y),

containment M in BCL is equivalent to both p_B(M)>p_B(L) and
q_C(M)>q_C(L). Thus increasing p_B order is strictly decreasing q_C order.
Since x=p_B/(p_B+q_C), it is also increasing x order. For an ordered pair
U,V, both actual determinants D(B,U,V) and D(C,U,V) are positive and
therefore at least s. They imply x_V-x_U>=s: if the height difference is
nonnegative the C determinant is at most the x difference, and if it is
negative the B determinant is at most that difference. Each A-side point
also satisfies x-y>=s and x>=s by its actual corner triangles.

The next three sections reduce the possible hull of A and these three
A-side points. Their entire bottom strip is 0<=y<=r<307/1000.

## 2. A plus these three points cannot have triangular hull

A=(0,0) is extreme. Suppose the hull is A,U,V, with U_x<V_x, and M
is its strictly interior fourth point. Put D=|D(A,U,V)|. The three
fan areas at M are at least s, so D>=3s.

If D(A,U,V)>0, then

    D=U_x V_y-U_y V_x <= U_x r <=(1-s)r
      <(907/1000)(307/1000)=278449/1000000<3s,

a contradiction.

Now assume D(A,U,V)=-D. Write U=(b,c). Then c>=D, since
D=c V_x-b V_y<=c, and b>=c+s>=D+s. The actual B-pair area is

    B_UV=V_x-b-D>=s,       B_UV<=1-b-D.                  (5)

Write M=alpha A+beta U+gamma V. All three barycentric coefficients
are at least s/D. In particular each is at most 1-2s/D.

If M follows U in the antichain, its positive B-pair area gives

    gamma B_UV-alpha b>=s.

Use (5), gamma<=1-2s/D, alpha>=s/D, and b>=D+s. The result is

    -2D^2+(1+s)D-2s+s^2>=0.

But the maximum of this quadratic over the real line is

    (1-14s+9s^2)/8=-224159/8000000<0.

If M precedes U instead, its positive C-pair area gives

    alpha(b-c)-gamma C_UV>=s.

Here C_UV>=s, alpha<=1-2s/D and gamma>=s/D. Also (5) gives
b<=1-D-s, and c>=D, so b-c<=1-2D-s. Consequently

    -2D^2+(1+2s)D-2s+s^2>=0.

Its maximum is

    (1-12s+12s^2)/8=-3053/2000000<0.

These are the only positions of M: its x coordinate is strictly below
V_x, and all three lower x coordinates are distinct. Thus no triangular
hull is possible. A and the three A-side points form a convex quadrilateral.

## 3. Both single-chain quadrilateral orders are impossible

Write the A-side points in x order as L1,L2,L3; put x0=0,
D0=x3, and d_i=x_i-x_(i-1). All d_i>=s. Suppose first that L1,L2
are both below the chord AL3. Subtract their graph from that chord to
obtain a positive concave piecewise-linear function f, zero at 0,D0.
Its two downward slope jumps satisfy

    delta1>=s/(d1 d2),       delta2>=s/(d2 d3).

The interpolation formula at x1 gives

    f(x1)=delta1*x1*(D0-x1)/D0+delta2*x1*d3/D0>=s/d2.

But f(x1)<=r x1/D0. Since x1+d2<=D0-s, AM--GM yields

    r>=s D0/(x1 d2)>=4s D0/(D0-s)^2
      >=4s/(1-s)^2>4s>307/1000>r,

a contradiction.

Suppose instead that L1,L2 are both above the chord. Their chain is
strictly concave. Set d=x2-x1, e=x3-x2, and

    E12=x2 y1-x1 y2>=s,
    E23=x3 y2-x2 y3>=s,
    F=D(L1,L3,L2)>=s.

The exact identity

    x2 F=d E23-e E12

therefore implies E23>=s x3/d. Since y3>=0, this gives y2>=s/d;
then E12>=s gives y1>=s/d too. Thus x1>=y1+s>=s+s/d.
The positive B-pair area for L2,L3 is e-E23>=s, so

    e>=s+s x3/d.

Since d>=2s by the B-pair area for L1,L2 and E12>=s, the number d-s
is positive. Combining the last inequalities with x3=x1+d+e<=1 gives

    1>=x3>=d(x1+d+s)/(d-s)
              >=(d^2+2sd+s)/(d-s),
    d^2+(2s-1)d+2s<=0.

This is impossible: its discriminant is

    1-12s+4s^2=-20351/250000<0.

Thus the two intermediate vertices lie on opposite sides of AL3.
There are exactly two quadrilateral orders left, corresponding to which
of L1,L2 is above that chord. Both are covered by the labeling below.

## 4. Discarding the lower-chain vertex

Let Q=L3 be the rightmost A-side point. Let P be the intermediate point
above the chord AQ, and T the one below it. Then

    D(A,P,Q)<=-s,       D(A,T,Q)>=s,       D(A,P,T)<=-s.  (6)

The B/C antichain has P_x<Q_x, T_x<Q_x and both x gaps at least s.
Writing P=(p,q), Q=(v,j), we have T_x<=v-s. Since T_y>=0, (6) gives

    q(v-s)>=s,       j(v-s)>=s.                          (7)

In particular both q,j>=s/(1-s)>1/10. The A-side BY clearance also
bounds T_x<=(u-s)/h. Thus

    q(u-s)>=s h,       j(u-s)>=s h.                      (8)

Discard T after retaining (7)–(8). The remaining nine actual points are
A,B,C,Y,Z,X,P,Q,R, where R is the single C-side lower point. No choice
between the two surviving quadrilateral orders is now needed: all the
retained inequalities hold in both.

One additional fixed sign follows from global occupancy. The A-slopes
satisfy slope(P)>slope(Q) by (6), and both B-rays precede BY, which
precedes BR. If D(A,Q,R)<0, then both P and Q lie inside ABR. That
triangle already contains Y,Z, producing four interior points. Hence

    D(A,Q,R)>=s.                                        (9)

We retain the following unified nine-point necessary configuration: P,Q are an increasing B/C antichain in the
bottom strip, with D(A,P,Q)<=-s and both heights >1/10; R lies in the
right strip and is C-side of BY; (7)–(9) hold; all distributed upper
containments remain valid. Sections 8–10 give a fixed exact contradiction for every remaining
orientation of this configuration.

## 5. Every upper point has the same sign against an opposite-side pair

This lemma applies to any A-side lower point L and any C-side lower point R,
not only to the selected P,Q. We claim

    D(Y,L,R)>0, D(X,L,R)>0, D(Z,L,R)>0.                 (10)

The B-rays of L and R straddle BY. The segment LR is below AC, whereas Y
is above AC. Hence Y is strictly inside BLR.

If the B-ray of R follows BX, X likewise lies inside BLR. Otherwise X
lies inside BCR. If D(C,L,R)>0, the vertices B and C are both on the
positive side of LR, so X is positive too. Suppose instead that
D(C,L,R)<0. Then R is inside BCL. Its other two interior points are Y,X;
there cannot be a fourth, and their triple cannot be clustered.

At Y, the point X is inside BCY. The point R is below AC and its B-ray
follows BY, so R is inside CLY. At X, Y cannot lie inside BCX, since
Y_y<X_y. If Y were inside CLX, then R in CLY would also be inside CLX,
contradicting the clustered-triple exclusion. Therefore Y is inside BLX.
Now R is neither inside BCX (all of whose vertices are above AC) nor
inside BLX (which would share a fan with Y). Thus R is inside CLX. This
is exactly D(X,L,R)>0.

The reflection (x,y) -> (1-y,1-x) interchanges A and C, interchanges X
and Z, and exchanges the roles of L and R. Its reversal of orientation
cancels the exchange of L,R, giving D(Z,L,R)>0 by the same argument.
This proves (10), so each of these three signed determinants is at least s.

For the selected A-side pair P,Q, Y and X lie inside BCQ. Since the
B- and C-pair determinants of P,Q are positive, this also gives

    D(Y,P,Q)>=s, D(X,P,Q)>=s.                           (11)

Finally all three determinants D(Z,X,P),D(Z,X,Q),D(Z,X,R) are negative.
Indeed the line ZX has B on its positive side and A,C on its negative
side, by the distributed upper mesh. The fourth square corner is
A+C-B, so it too is negative. The entire lower half-square is negative.

## 6. Rational bounds for the nine-point model

Write Y=(u,1-h), Z=(z,w), X=(x,1-a), P=(p,q), Q=(v,j), R=(l,m).
The upper mesh and u>=h give

    3s<=u<=1-4s, 3s<=h<=(1-s)/2,
    s<=z<=1-6s, 4s<=w<=1-s,
    s<=a<=(1-5s)/2, x<=1-4s.

Also BYX=h*x-u*a>=s, so

    x>=a+s/h>=s+2s/(1-s)>149/500.

The APQ and BPQ clearances add to v-p>=2s. Moreover

    vq-pj>=s, p>=q+s
        => q(v-j)>=s(1+j).                             (12)

Since j>=s/(v-s)>=s/(1-s), v<=1, (12) implies

    q>=s/(1-2s)>114/1000, p>207/1000.

Using j<307/1000 in j(v-s)>=s gives v>79/200. We may retain the
weaker bound j>51/500. Since AQR=v*m-j*l>=s, v<=1 and l>69/100,
we have m>s+(51/500)(69/100)>163/1000.

Finally R is C-side of BY, so h*l-u*(1-m)>=s. Thus

    u(l+m-1)=[h*l-u*(1-m)]+(u-h)*l>=s.

As u<=1-4s=157/250, it follows that l+m>287/250.
All these rational relaxations are strict, so replacing > by >= is valid
for the polynomial contradiction stage. They will supply the closed rational box used in the exact algebra below.

## 7. An exhaustive sign catalogue for the remaining calculation

All signs in this section are signs of actual doubled determinants;
none is zero. The B-ray order is P<Q<Y<X and Z<Y<R. Thus the two signs
(BZP,BZQ) have precisely the possibilities (++),(-+),(--). Write e for
the sign of BXR, a0 for that of APR. Since the C-ray antichain has
q_C(P)>q_C(Q), the two signs (CPR,CQR) have precisely the possibilities
(++),(+-),(--).

The following implications follow from containment. A signed name such
as YXL denotes D(Y,X,L).

* If BZL<0 for L=P or Q, all three upper points lie in BCL. Its doubled
  area is 1-L_y, so L_y<177/1000. Its upper triple must be distributed.
  At Y its occupied fans are BLY (containing Z) and BCY (containing X).
  The distributed mesh with A replaced by L therefore gives YXL>0 and
  YZL>0. Also CLR>0, since otherwise R would be a fourth interior point.
  In the case L=P, the point Z either lies inside BPQ or inside BCQ;
  therefore ZPQ>0.
* If BXR>0, all three upper points lie in ABR, so R_x>823/1000. Its
  distributed mesh gives YZR<0 and YXR<0. We have APR>0, since otherwise
  P would be a fourth interior point. Both CPR and CQR are positive:
  if R were inside BCL, then at R the two points Y,X would share the
  fan BLR, contradicting the clustered-triple exclusion.
* If APR<0, P lies inside ABR along with Y,Z, so R_x>823/1000. Here
  BXR must be negative, or X would be a fourth interior point. Also
  BZP must be positive: if P preceded Z, then at P both Y,Z would lie
  inside BPR, a clustered fan. In the remaining case P lies inside AZR: its ZR edge test follows
  from the already proved cross-pair sign ZPR>0, and the other two
  edge tests follow from P inside ABR and the upper/lower separation.
  The distributed triple Y,Z,P then puts Y inside BZR; hence YZR>0.
* If CLR<0 for L=P or Q, then R lies inside BCL with Y,X, so
  L_y<177/1000. We must have BZL>0, or Z would be a fourth interior
  point. We must also have BXR<0, or Y,X would share the BLR fan at R.
  The fan argument in Section 5 puts Y inside BLX; hence YXL<0.

The rational constant 823/1000 is valid because
J*s>823/1000 for J=(11+3sqrt(5))/2. The required mesh statements are
orientation-sensitive: in particular BZL<0 gives YXL,YZL POSITIVE.

Two additional containments provide useful affine bounds. If BZQ>0,
then both Z and P lie inside ABQ, so v>=G*s>69/100. If BZP>0, Z lies
inside ABP, so p>=3s. If BXR<0, X lies inside BCR, so m<=1-3s.

These implications leave exactly the following 12 basic rows. Here the
first column is (BZP,BZQ), and the last column is (CPR,CQR).

| Row | BZP,BZQ | BXR | APR | CPR,CQR |
|---:|:---:|:---:|:---:|:---:|
| 0 | ++ | - | - | ++ |
| 1 | ++ | - | - | +- |
| 2 | ++ | - | - | -- |
| 3 | ++ | - | + | ++ |
| 4 | ++ | - | + | +- |
| 5 | ++ | - | + | -- |
| 6 | ++ | + | + | ++ |
| 7 | -+ | - | + | ++ |
| 8 | -+ | - | + | +- |
| 9 | -+ | + | + | ++ |
| 10 | -- | - | + | ++ |
| 11 | -- | + | + | ++ |

Any further subdivision uses only signs of actual triangles, and is
therefore exhaustive when both signs are included. The following twenty fixed rows supply the required contradictions,
with all factors and exact bounds displayed.


## 8. Every factor used in the twenty polynomials

Use the coordinate order

    z_0,...,z_11 = u,h,z,w,x,a,p,q,v,j,l,m,
    Y=(u,1-h), Z=(z,w), X=(x,1-a),
    P=(p,q), Q=(v,j), R=(l,m).

Section 6 proves the following closed rational box. For each index i,
define L_(2i)=z_i-a_i and L_(2i+1)=b_i-z_i.

| i | Coordinate | a_i | b_i |
|---:|---|---:|---:|
| 0 | u | 279/1000 | 157/250 |
| 1 | h | 279/1000 | 907/2000 |
| 2 | z | 93/1000 | 221/500 |
| 3 | w | 93/250 | 907/1000 |
| 4 | x | 149/500 | 157/250 |
| 5 | a | 93/1000 | 107/400 |
| 6 | p | 207/1000 | 407/500 |
| 7 | q | 57/500 | 307/1000 |
| 8 | v | 79/200 | 1 |
| 9 | j | 51/500 | 307/1000 |
| 10 | l | 69/100 | 1 |
| 11 | m | 163/1000 | 907/1000 |

The remaining affine factors are:

| Factor | Expression | Reason |
|---|---|---|
| L24 | u-h | Endpoint-seven argument (4) |
| L25 | 1-u-h-s | ACY clearance |
| L26 | u-z-2s | Z inside ABY |
| L27 | h-a-2s | X inside BCY |
| L28 | w-z+u+h-1-2s | Y inside CAZ |
| L29 | u+h-a-x-2s | Y inside CAX |
| L30 | p-q-s | ACP clearance |
| L31 | v-j-s | ACQ clearance |
| L32 | l-m-s | ACR clearance |
| L33 | v-p-2s | APQ and BPQ clearances |
| L34 | l+m-287/250 | Section 6 |
| L35 | 1-s | ABC clearance |
| L36 | u-s | ABY clearance |
| L37 | h-s | BCY clearance |
| L38 | w-z-s | ACZ clearance |
| L39 | x-s | ABX clearance |
| L40 | 1-a-x-s | ACX clearance |
| L41 | p-s | ABP clearance |
| L42 | 1-q-s | BCP clearance |
| L43 | v-s | ABQ clearance |
| L44 | 1-j-s | BCQ clearance |
| L45 | l-s | ABR clearance |

The five quadratic factors from Sections 4 and 6 are

    H1=q(v-s)-s, H2=j(v-s)-s,
    H3=q(u-s)-s*h, H4=j(u-s)-s*h,
    H5=q(v-j)-s(1+j).

The following conditional affine factors are used only under their proved
hypotheses from Section 7:

| Factor | Expression | Required sign condition |
|---|---|---|
| E_Pwide | p-3s | BZP positive |
| E_Qwide | v-69/100 | BZQ positive |
| E_Plow | 177/1000-q | BZP negative or CPR negative |
| E_Qlow | 177/1000-j | BZQ negative or CQR negative |
| E_Rwide | l-823/1000 | BXR positive or APR negative |
| E_Rlow | 1-3s-m | BXR negative |

For actual point labels define

    T+UVW=D(U,V,W)-s, T-UVW=-D(U,V,W)-s.

These T factors are nonnegative throughout the nine-point model:

| Source | Nonnegative factors |
|---|---|
| Distributed upper mesh | T+AYZ, T+AYX, T-AZX, T-BYZ, T+BYX, T+BZX, T-CYZ, T-CYX, T-CZX, T-YZX |
| Upper U in {Y,Z,X}, lower L in {P,Q,R} | T-AUL, T+CUL |
| Known B-ray order | T-BYP, T-BYQ, T+BYR, T+BZR, T-BXP, T-BXQ, T+BPQ, T+BPR, T+BQR |
| Lower hull and antichain | T-APQ, T+AQR, T+CPQ |
| Section 5 | T+YPQ, T+XPQ, T+YPR, T+YQR, T+XPR, T+XQR, T+ZPR, T+ZQR, T-ZXP, T-ZXQ, T-ZXR |

The A/C upper-lower signs follow from the separating diagonal AC. The
remaining signs were proved in Sections 1, 4 and 5. In each basic row,
the six signs in Section 7 provide its T factors for BZP,BZQ,BXR,APR,
CPR,CQR. The implications in that section provide its additional T
factors for YXP,YXQ,YZP,YZQ,YZR,YXR,ZPQ. Finally, the explicitly chosen
extra signs in the next table provide their own T factors. This is the
entire sign catalogue used below.

## 9. Exact bounding rule and exhaustive twenty-row cover

An entry `n factor` denotes n times the displayed factor or product.
Every n is a positive integer and every factor has been proved nonnegative
in that row. Their sum W therefore satisfies W>=0.

Every displayed W has total degree at most three. Substitute z_i=a_i+t_i
using Section 8, with 0<=t_i<=d_i:=b_i-a_i, and expand

    W=c0+sum_(e!=0) c_e t_0^e0 ... t_11^e11.

Discarding negative nonconstant terms and bounding the positive monomials
separately gives the exact rational upper bound

    W<=c0+sum_(e!=0,c_e>0) c_e product_i d_i^e_i=:U(W).

Every value printed below is strictly less than -1/100. Thus each row
contradicts W>=0. The arithmetic consists only of expanding the printed
integer products and adding rational coefficients.

The following table is exhaustive. A 0 in an extra-sign column means no
additional split on that sign; any sign already forced by its basic row
remains in force. Basic rows 0 and 3 are partitioned by YXP<0, or by
YXP>0 with the two YXQ signs. Basic row 4 is partitioned by YXP<0, or
by YXP>0 with the two YZR signs. Basic rows 5 and 8 use the two YZR signs.
All other basic rows are treated whole.

| Row | Basic row | Extra YXP | Extra YXQ | Extra YZR | Entries |
|---:|---:|:---:|:---:|:---:|---:|
| 1 | 0 | - | 0 | 0 | 72 |
| 2 | 0 | + | - | 0 | 83 |
| 3 | 0 | + | + | 0 | 36 |
| 4 | 1 | 0 | 0 | 0 | 13 |
| 5 | 2 | 0 | 0 | 0 | 5 |
| 6 | 3 | - | 0 | 0 | 120 |
| 7 | 3 | + | - | 0 | 52 |
| 8 | 3 | + | + | 0 | 55 |
| 9 | 4 | - | 0 | 0 | 89 |
| 10 | 4 | + | 0 | - | 114 |
| 11 | 4 | + | 0 | + | 148 |
| 12 | 5 | 0 | 0 | - | 110 |
| 13 | 5 | 0 | 0 | + | 41 |
| 14 | 6 | 0 | 0 | 0 | 54 |
| 15 | 7 | 0 | 0 | 0 | 94 |
| 16 | 8 | 0 | 0 | - | 77 |
| 17 | 8 | 0 | 0 | + | 48 |
| 18 | 9 | 0 | 0 | 0 | 77 |
| 19 | 10 | 0 | 0 | 0 | 44 |
| 20 | 11 | 0 | 0 | 0 | 60 |

## 10. The twenty complete coefficient tables

### Row 1: basic 0; extra (-,0,0)

There are 72 positive integer entries. The exact bound is

    U(W)=-36341/3125000<-1/100.

```text
7 L10*L30;  1 L13*L21;  3 L14*L21
9 L15*L29;  4 L21*L37;  4 L21*L44
4 L25*L30;  4 L2*L23*L33;  2 L2*L32*L33
1 L9*L17*L22;  13 L9*L25*L44;  2 L9*L25*L45
16 L9*L30*L44;  13 L10*L25*L43;  2 L10*L25*L45
17 L10*L30*L43;  3 L10*L32*L43;  2 L14*L21*L37
2 L14*L21*L39;  4 L15*L29*L45;  9 L17*L18*L42
5 L21*L31*L37;  3 L21*L37*L44;  2 L24*L34*L40
3 L27*L32*L33;  14 T+AYX;  3 T+AYX*L24
3 T+AYX*L31;  3 T+AYX*L42;  2 T+AYX*L44
3 T+BYX*L33;  2 T-AYP*L9;  3 T-AYP*L10
3 T-AYP*L18;  3 T-AYP*L24;  1 T-AYR*L10
16 T+BPQ*L2;  19 T+BPQ*L29;  3 T+BYR
1 T+BYR*L14;  5 T+BYR*L31;  9 T+BYR*L44
3 T+AQR*L25;  3 T+AQR*L30;  10 T+YPQ
6 T+YPQ*L23;  1 T+YPQ*L32;  1 T+YPQ*L39
3 T+YPQ*L44;  2 T+XQR*L15;  2 T+XQR*L25
7 T-BYP*L18;  2 T-BYQ*L18;  3 T-BYQ*L23
20 T-BYQ*L30;  4 T-BYQ*L32;  14 T-BYQ*L40
17 T-BYQ*L42;  6 T-APQ*L21;  12 H2*L42
1 T-BXR*L33;  9 T-APR;  7 T-APR*L27
7 T-APR*L31;  1 T-APR*L39;  2 T+CQR*L13
34 T-YXP;  3 T-YXP*L24;  20 T-YXP*L31
4 T-YXP*L34;  5 E_Pwide*T+AQR;  1 E_Rlow*T-BYP
```

### Row 2: basic 0; extra (+,-,0)

There are 83 positive integer entries. The exact bound is

    U(W)=-1013569/62500000<-1/100.

```text
3 L10*L32;  12 L10*L33;  14 L15*L25
12 L21*L29;  4 L21*L40;  52 L21*L41
9 L21*L44;  26 L8*L18*L32;  10 L8*L18*L42
7 L10*L31*L45;  7 L10*L32*L33;  11 L10*L32*L43
14 L10*L42*L43;  12 L14*L17*L24;  2 L17*L17*L22
4 L17*L18*L32;  31 L17*L18*L39;  4 L17*L18*L42
5 L17*L21*L37;  6 L17*L21*L42;  1 L17*L30*L37
4 L19*L22*L25;  7 L21*L41*L44;  7 L23*L25*L33
40 T+BYX*L15;  49 T+BYX*L18;  1 T+BYX*L25
25 T+BYX*L30;  33 T-AYP;  12 T-AYP*L31
1 T-AYP*L44;  45 T-AYP*L45;  29 T+BPQ*L10
27 T+BPQ*L25;  33 T+BPR*L25;  12 T+BYR
30 T+BYR*L17;  8 T+BYR*L29;  39 T+BYR*L30
14 T+BYR*L40;  54 T+BYR*L41;  9 T+YQR*L29
48 T-BYQ;  6 T-BYQ*L23;  5 T-BYQ*L29
8 T-BYQ*L32;  12 T-BYQ*L33;  7 T-BYQ*L43
17 T-APQ*L21;  24 T-APQ*L29;  2 H2*L32
50 H2*L39;  4 H2*L42;  13 T-BXR*L25
39 T-BXR*L30;  21 T-APR;  7 T-APR*L9
26 T-APR*L24;  34 T-APR*L29;  5 T-APR*L40
25 T-APR*L43;  13 T+CQR;  2 T+CQR*L17
4 T+CQR*L24;  10 T+CQR*L36;  9 T+CQR*L39
12 T+CQR*L41;  87 T+YXP;  24 T+YXP*L31
39 T+YXP*L32;  28 T+YXP*L44;  7 T+YXP*L45
62 T-YXQ;  2 T-YXQ*L25;  25 T-YXQ*L30
27 T-YXQ*L32;  43 T-YXQ*L42;  19 T-YXQ*L43
5 T-YXQ*L45;  66 E_Pwide*L29;  13 E_Pwide*L18*L24
7 E_Pwide*L22*L29;  12 E_Pwide*T+AQR
```

### Row 3: basic 0; extra (+,+,0)

There are 36 positive integer entries. The exact bound is

    U(W)=-50651309/2000000000<-1/100.

```text
5 L25;  4 L10*L44;  12 L15*L32
12 L21*L40;  14 L22*L30;  4 L30*L40
4 L10*L31*L45;  26 L15*L32*L40;  10 L21*L40*L44
26 L22*L30*L40;  22 T+BYX;  31 T+BYX*L31
9 T+CXQ*L21;  2 T+CXR*L15;  3 T+BYR
23 T+BYR*L31;  23 T+BYR*L40;  2 T+AQR*L8
7 T+AQR*L10;  23 T+XQR*L25;  31 T-BYQ*L8
31 T-BYQ*L10;  54 T-BXQ*L25;  13 H2
5 H2*L40;  18 T-BXR*L31;  4 T-BXR*L44
14 T-APR;  26 T-APR*L40;  37 T+YXQ
23 T+YXQ*L32;  9 E_Qwide*L19;  5 E_Qwide*L23
4 E_Qwide*L44;  15 E_Qwide*L23*L40;  5 E_Qwide*L40*L44
```

### Row 4: basic 1; extra (0,0,0)

There are 13 positive integer entries. The exact bound is

    U(W)=-12174409/250000000<-1/100.

```text
4 L30;  32 L15*L32;  8 L17*L23
8 L18*L21;  32 L22*L30;  13 T+BQR*L25
14 T+BYR;  13 T+BYR*L31;  14 T-BYQ
13 T-BYQ*L32;  32 T-APR;  22 T-CQR
2 E_Rlow*L17
```

### Row 5: basic 2; extra (0,0,0)

There are 5 positive integer entries. The exact bound is

    U(W)=-21187/500000<-1/100.

```text
3 L13*L32;  1 L30*L34;  2 T-APR
3 T-CPR;  1 E_Plow*L45
```

### Row 6: basic 3; extra (-,0,0)

There are 120 positive integer entries. The exact bound is

    U(W)=-76188571/4000000000<-1/100.

```text
3 L10*L23;  8 L10*L42;  2 L21*L36
4 L21*L37;  4 L21*L39;  4 L21*L42
37 L21*L44;  21 L25*L25;  3 L0*L14*L21
2 L0*L17*L33;  14 L1*L10*L41;  19 L1*L10*L43
9 L1*L15*L29;  25 L1*L18*L24;  25 L2*L17*L24
17 L2*L33*L39;  2 L3*L21*L31;  3 L8*L14*L21
19 L9*L14*L24;  36 L9*L18*L33;  4 L9*L19*L25
29 L9*L19*L30;  4 L9*L25*L34;  18 L9*L25*L44
7 L10*L15*L36;  3 L10*L25*L34;  24 L10*L25*L43
9 L10*L30*L45;  32 L10*L31*L41;  6 L13*L17*L22
4 L13*L18*L29;  10 L13*L21*L37;  5 L13*L21*L44
4 L14*L24*L25;  6 L14*L25*L32;  8 L15*L17*L18
3 L17*L17*L24;  4 L17*L18*L36;  3 L17*L18*L39
11 L17*L18*L42;  3 L17*L21*L42;  49 L17*L22*L22
1 L17*L22*L33;  5 L18*L21*L31;  5 L18*L24*L32
49 L21*L22*L44;  10 L21*L25*L30;  3 L21*L39*L44
4 L24*L25*L34;  4 L24*L29*L34;  5 L25*L25*L42
1 L25*L30*L43;  98 T+AYX*L3;  11 T+AYX*L23
34 T+AYX*L25;  49 T+AYX*L30;  5 T+AYX*L31
7 T+AYX*L32;  32 T+AYX*L33;  107 T+AYX*L42
135 T-AYP*L10;  34 T-AYP*L25;  39 T+BPQ*L29
5 T+BQR*L21;  21 T+BYR*L13;  6 T+BYR*L14
11 T+BYR*L17;  23 T+YPQ;  3 T+YPQ*L21
11 T+YPQ*L23;  99 T+YPQ*L37;  50 T+YPQ*L44
16 T-BYP*L18;  47 T-BYQ*L3;  6 T-BYQ*L15
4 T-BYQ*L17;  50 T-BYQ*L18;  5 T-BYQ*L21
25 T-BYQ*L25;  81 T-BYQ*L30;  24 T-BYQ*L40
9 T-BYQ*L42;  44 T-APQ*L1;  11 T-APQ*L23
38 T-APQ*L27;  30 T-APQ*L39;  50 T-APQ*L44
23 H2;  6 H2*L32;  39 H2*L39
21 H2*L42;  3 T-BXR*L33;  3 T+APR
7 T+APR*L9;  10 T+APR*L25;  10 T+APR*L40
53 T+CQR;  6 T+CQR*L13;  5 T+CQR*L18
44 T+CQR*L22;  11 T+CQR*L24;  1 T+CQR*L33
5 T+CQR*L34;  3 T+CQR*L39;  107 T-YXP
99 T-YXP*L3;  33 T-YXP*L25;  29 T-YXP*L31
10 T-YXP*L32;  52 T-YXP*L43;  4 T-YXP*L45
11 E_Qwide*L9*L15;  3 E_Qwide*L10*L45;  18 E_Pwide*L25
21 E_Pwide*L23*L25;  10 E_Pwide*L25*L32;  3 E_Rlow*L9*L12
10 E_Rlow*L9*L30;  7 E_Rlow*L15*L24;  4 E_Rlow*L19*L25
```

### Row 7: basic 3; extra (+,-,0)

There are 52 positive integer entries. The exact bound is

    U(W)=-15027901/1000000000<-1/100.

```text
6 L9*L14;  20 L21*L44;  3 L25*L39
2 L1*L10*L33;  4 L8*L18*L33;  28 L10*L33*L43
12 L14*L17*L45;  4 L17*L17*L22;  12 L17*L22*L22
12 L21*L22*L44;  24 T+BYX*L18;  25 T+BPQ*L25
10 T+YPQ*L10;  2 T+YPQ*L24;  8 T+XPQ*L25
19 T+XQR*L14;  4 T-BYQ*L13;  22 T-BYQ*L14
28 T-BYQ*L33;  3 T-BYQ*L39;  14 T-APQ
5 T-APQ*L9;  12 T-APQ*L23;  2 T-APQ*L29
8 T-APQ*L32;  22 T-APQ*L40;  20 H2*L39
11 T-BXR*L12;  7 T-BXR*L16;  22 T-BXR*L30
13 T+APR;  3 T+APR*L17;  21 T+APR*L44
27 T+CQR;  12 T+CQR*L22;  1 T+CQR*L41
35 T+YXP;  2 T+YXP*L24;  32 T+YXP*L31
4 T+YXP*L44;  20 T-YXQ;  2 T-YXQ*L24
15 T-YXQ*L42;  28 T-YXQ*L43;  1 E_Qwide*L10*L13
1 E_Qwide*L23*L33;  8 E_Qwide*T-BXR;  2 E_Pwide*L29
25 E_Pwide*L9*L18;  33 E_Pwide*T+CXR;  15 E_Rlow*L9*L16
3 E_Rlow*L16*L16
```

### Row 8: basic 3; extra (+,+,0)

There are 55 positive integer entries. The exact bound is

    U(W)=-50417593/4000000000<-1/100.

```text
3 L25;  2 L10*L31;  3 L19*L21
7 L25*L39;  12 L25*L44;  7 L8*L8*L34
13 L8*L8*L44;  13 L9*L10*L43;  7 L9*L21*L40
24 L10*L29*L45;  5 L17*L18*L29;  3 L17*L22*L33
4 L19*L21*L40;  3 L21*L27*L44;  16 L21*L29*L44
4 L25*L44*L45;  14 T+BYX*L9;  3 T+BYX*L22
15 T+BYX*L31;  2 T-AXR*L10;  4 T+BQR*L10
5 T+BQR*L25;  5 T+BYR;  22 T+BYR*L31
25 T+BYR*L40;  6 T+BYR*L44;  4 T+AQR*L8
3 T+AQR*L33;  14 T-BYQ*L10;  15 T-BXQ*L25
4 T-APQ*L45;  8 H2*L29;  22 H2*L40
3 H2*L45;  18 T-BXR;  4 T-BXR*L9
22 T-BXR*L31;  26 T-BXR*L40;  6 T-BXR*L44
3 T+APR;  33 T+YXQ;  3 T+YXQ*L23
25 T+YXQ*L32;  15 T+YXQ*L39;  3 E_Qwide*L2
10 E_Qwide*L23;  4 E_Qwide*L15*L45;  3 E_Qwide*L19*L29
21 E_Qwide*L19*L40;  1 E_Qwide*L19*L45;  3 E_Qwide*L23*L27
17 E_Qwide*L23*L29;  3 E_Qwide*L27*L32;  26 E_Rlow*L9*L9
24 E_Rlow*L9*L29
```

### Row 9: basic 4; extra (-,0,0)

There are 89 positive integer entries. The exact bound is

    U(W)=-6115411/500000000<-1/100.

```text
14 L9*L25;  12 L10*L17;  16 L10*L30
26 L10*L32;  28 L15*L29;  6 L17*L42
12 L18*L23;  64 L18*L42;  12 L20*L25
76 L1*L10*L45;  26 L9*L13*L18;  12 L9*L15*L17
44 L9*L15*L32;  32 L9*L20*L24;  12 L9*L24*L34
34 L9*L25*L32;  16 L9*L25*L44;  10 L9*L25*L45
18 L10*L21*L24;  14 L10*L25*L43;  42 L10*L25*L45
162 L10*L30*L45;  38 L10*L32*L41;  4 L13*L17*L23
2 L13*L17*L24;  8 L13*L18*L21;  24 L13*L18*L24
12 L13*L18*L29;  16 L14*L17*L34;  2 L15*L29*L43
46 L15*L29*L45;  24 L17*L23*L39;  76 L17*L23*L42
10 L17*L24*L42;  116 L18*L21*L42;  24 L18*L32*L41
62 T+AYX;  26 T+AYX*L23;  66 T+AYX*L32
10 T+AYX*L44;  16 T+CXR*L25;  62 T+BPQ*L29
112 T+BYR*L13;  92 T+BYR*L14;  110 T+BYR*L33
22 T+BYR*L39;  6 T+BYR*L44;  38 T+YQR*L33
2 T+XPR*L17;  36 T+XQR*L25;  20 T+XQR*L30
44 T+XQR*L42;  8 T-BYP*L18;  8 T-BYQ
36 T-BYQ*L32;  12 T-BYQ*L33;  54 T-BYQ*L40
74 T-BYQ*L42;  26 T-BYQ*L43;  34 T-BYQ*L45
6 T-APQ*L8;  12 T-APQ*L32;  34 H2
40 T+APR*L9;  30 T+APR*L29;  108 T+CPR
8 T+CPR*L24;  24 T+CPR*L29;  76 T+CPR*L36
10 T+CPR*L44;  24 T-CQR;  2 T-CQR*L13
38 T-CQR*L33;  36 T-CQR*L36;  26 T-CQR*L39
192 T-CQR*L42;  108 T-YXP;  54 T-YXP*L31
92 T-YXP*L32;  8 T-YXP*L44;  92 T-YXP*L45
22 E_Pwide*L17*L27;  2 E_Pwide*L18*L34;  46 E_Pwide*L23*L25
2 E_Pwide*L25*L43;  112 E_Rlow*L9*L30;  16 E_Rlow*L13*L17
20 E_Rlow*T-APQ;  28 E_Qlow*T+BYR
```

### Row 10: basic 4; extra (+,0,-)

There are 114 positive integer entries. The exact bound is

    U(W)=-8077447/400000000<-1/100.

```text
7 L4*L29;  9 L4*L42;  2 L5*L25
7 L10*L26;  3 L10*L31;  5 L10*L33
7 L14*L32;  5 L18*L28;  8 L22*L25
16 L25*L39;  11 L25*L42;  2 L25*L43
18 L4*L6*L42;  6 L4*L28*L42;  3 L4*L42*L44
7 L5*L25*L42;  3 L6*L13*L18;  12 L6*L21*L29
4 L7*L13*L25;  6 L7*L25*L34;  2 L8*L13*L18
8 L8*L15*L22;  14 L8*L15*L34;  21 L9*L14*L38
11 L10*L13*L38;  3 L10*L24*L32;  4 L10*L28*L32
9 L10*L28*L45;  2 L10*L32*L38;  5 L10*L33*L43
19 L10*L38*L45;  23 L10*L42*L45;  8 L17*L18*L38
12 T-AZX*L24;  3 T-BYZ*L33;  6 T+BYX*L15
7 T+BYX*L18;  7 T+BZX*L7;  9 T+BZX*L15
12 T+BZX*L34;  25 T-CZX*L1;  7 T-CZX*L7
11 T-CZX*L20;  8 T+CZQ*L25;  2 T+BPQ*L10
11 T+BPR*L4;  16 T+BPR*L10;  21 T+BPR*L25
6 T+BZR*L25;  2 T+AQR*L25;  8 T-BYQ*L32
5 T-BYQ*L33;  17 T-BYQ*L38;  7 T-BYQ*L45
6 T-APQ*L29;  8 H2*L38;  1 H3*L32
19 T+BZP;  19 T+BZP*L6;  17 T+BZP*L32
5 T+BZP*L38;  11 T+BZP*L40;  4 T+BZP*L44
10 T+BZQ*L25;  13 T+BZQ*L32;  8 T-BXR
3 T-BXR*L24;  19 T-BXR*L30;  3 T-BXR*L31
35 T-BXR*L38;  16 T-BXR*L42;  5 T+APR*L1
14 T+APR*L2;  3 T+APR*L4;  2 T+APR*L6
8 T+APR*L27;  17 T+CPR*L7;  13 T+CPR*L24
4 T-CQR*L6;  2 T-CQR*L27;  9 T-CQR*L28
2 T-CQR*L29;  3 T-CQR*L38;  6 T-YXQ*L22
1 T-YXQ*L34;  8 T-YXQ*L42;  6 T-YXQ*L43
36 T+YXP;  6 T+YXP*L31;  13 T+YXP*L32
12 T+YXP*L38;  2 T+YXP*L44;  1 T+YXP*L45
45 T-YZR;  13 T-YZR*L30;  13 T-YZR*L31
12 T-YZR*L40;  3 T-YZR*L41;  2 T-YZR*L44
2 E_Qwide*L10*L34;  18 E_Pwide*L6*L6;  6 E_Pwide*L6*L28
11 E_Pwide*L6*L29;  2 E_Pwide*T+CXR;  4 E_Rlow*L9
2 E_Rlow*L29;  3 E_Rlow*L6*L17;  17 E_Rlow*L9*L28
24 E_Rlow*L9*L38;  9 E_Rlow*L9*L41;  6 E_Rlow*L29*L38
4 E_Rlow*L29*L41;  2 E_Rlow*T-AYP;  4 E_Rlow*T-AZP
```

### Row 11: basic 4; extra (+,0,+)

There are 148 positive integer entries. The exact bound is

    U(W)=-11542789/1000000000<-1/100.

```text
45 L1*L25;  22 L4*L9;  141 L4*L23
13 L4*L30;  13 L7*L18;  190 L10*L33
43 L17*L29;  137 L23*L25;  42 L25*L43
18 L1*L1*L32;  64 L1*L18*L24;  27 L1*L18*L33
40 L1*L18*L42;  88 L2*L2*L32;  114 L2*L9*L14
65 L2*L17*L24;  201 L4*L23*L30;  33 L4*L23*L42
42 L4*L29*L42;  10 L4*L40*L42;  7 L5*L25*L32
27 L6*L14*L21;  23 L6*L22*L25;  11 L6*L24*L32
53 L7*L14*L17;  8 L7*L17*L23;  4 L7*L17*L32
54 L7*L18*L41;  52 L7*L25*L32;  108 L8*L13*L18
33 L8*L14*L24;  356 L8*L18*L33;  13 L8*L18*L38
34 L9*L14*L28;  13 L10*L13*L37;  87 L10*L13*L43
13 L10*L33*L38;  307 L10*L33*L43;  127 L13*L25*L34
25 L14*L17*L24;  77 L14*L17*L34;  14 L14*L17*L45
32 L14*L24*L24;  32 L14*L25*L27;  32 L15*L25*L26
17 L17*L17*L36;  19 L17*L22*L24;  116 L17*L22*L41
5 L17*L24*L34;  74 L17*L27*L33;  45 L17*L27*L42
42 L17*L37*L42;  14 L18*L24*L34;  14 L18*L25*L32
43 L18*L39*L42;  4 L21*L25*L31;  13 L23*L25*L41
39 L23*L25*L43;  27 L24*L25*L34;  76 L24*L28*L32
54 L25*L26*L32;  13 L25*L28*L34;  18 L25*L43*L43
133 T+BYX*L18;  148 T-CYZ*L1;  3 T-CYZ*L9
233 T-CYZ*L32;  97 T-CYZ*L34;  66 T-CYZ*L37
19 T-CYZ*L40;  304 T-CYZ*L41;  22 T-CYZ*L45
9 T-CZX*L25;  240 T+CYR*L4;  29 T+CYR*L14
14 T-AZQ*L25;  79 T+CZR*L25;  74 T-AXP*L17
23 T+CXP*L4;  6 T-AXR*L17;  6 T+CXR*L25
100 T+BPQ*L25;  107 T+BYR*L1;  6 T+BYR*L8
10 T+BYR*L14;  21 T+BYR*L18;  39 T+BYR*L28
9 T+BZR*L17;  146 T+YPQ*L10;  79 T+XPQ*L25
5 T+XQR*L14;  13 T-BYQ*L8;  30 T-BYQ*L13
62 T-BYQ*L22;  290 T-BYQ*L33;  1 T-BYQ*L34
51 T-APQ*L7;  328 T-APQ*L9;  104 T-APQ*L24
136 T-APQ*L29;  46 T-APQ*L34;  221 T-APQ*L45
13 T-ZXP*L25;  65 H2*L1;  18 H2*L39
3 H2*L42;  23 H3*L10;  23 T+BZP*L9
68 T+BZP*L21;  53 T+BZP*L29;  95 T+APR
67 T+APR*L5;  68 T+APR*L7;  6 T+APR*L27
29 T+APR*L31;  154 T+APR*L43;  12 T-CQR*L7
6 T-CQR*L8;  26 T-CQR*L30;  8 T-YXQ
67 T-YXQ*L24;  14 T-YXQ*L38;  324 T-YXQ*L42
382 T-YXQ*L43;  6 T-YXQ*L45;  305 T+YXP
6 T+YXP*L22;  67 T+YXP*L24;  284 T+YXP*L31
36 T+YXP*L38;  110 T+YXP*L43;  136 T+YZR
148 T+YZR*L1;  36 T+YZR*L14;  14 T+YZR*L31
67 T+YZR*L37;  268 T+YZR*L41;  127 E_Pwide*L1*L32
66 E_Pwide*L2*L24;  140 E_Pwide*L2*L32;  76 E_Pwide*L6*L29
202 E_Pwide*L6*L32;  41 E_Pwide*L17*L22;  72 E_Pwide*L18*L24
190 E_Rlow*L4;  5 E_Rlow*L4*L31;  6 E_Rlow*L4*L44
270 E_Rlow*T+BZP
```

### Row 12: basic 5; extra (0,0,-)

There are 110 positive integer entries. The exact bound is

    U(W)=-35066533/2000000000<-1/100.

```text
14 L2*L33;  4 L4*L27;  13 L5*L10
4 L10*L42;  5 L14*L17;  1 L17*L18
5 L18*L24;  15 L20*L25;  8 L24*L32
1 L27*L33;  3 L4*L34*L44;  1 L6*L8*L17
2 L6*L13*L24;  1 L7*L33*L34;  4 L10*L38*L43
5 L14*L17*L38;  9 L14*L21*L28;  1 L17*L18*L30
7 L17*L18*L45;  20 L18*L28*L45;  6 L18*L38*L45
12 L23*L28*L33;  5 L28*L33*L44;  3 T+BYX*L13
2 T+BZX*L2;  29 T+BZX*L8;  16 T+BZX*L20
2 T-CYZ*L33;  8 T-CZX;  1 T-CZX*L25
4 T-CZX*L31;  3 T-CZX*L34;  29 T-CZX*L39
7 T-CZX*L42;  13 T-CZX*L45;  4 T+CYQ*L10
32 T+CYR;  7 T+CYR*L30;  7 T+CYR*L31
3 T+CYR*L41;  3 T+CYR*L43;  2 T+CZR*L33
4 T+BPQ*L2;  7 T+BPQ*L29;  3 T+BPQ*L32
17 T+BZR*L25;  8 T+YPQ;  7 T+YPQ*L23
9 T+YPQ*L44;  3 T+YPR*L18;  3 T+XQR*L4
10 T+XQR*L25;  3 T+XQR*L30;  7 T+ZPR*L10
17 T+ZQR*L25;  15 T-BYP*L32;  4 T-BYQ
3 T-BYQ*L9;  9 T-BYQ*L18;  8 T-BYQ*L30
40 T-BYQ*L32;  39 T-BYQ*L38;  7 T-BYQ*L40
7 T-BYQ*L42;  7 T-BYQ*L45;  3 T-BXQ*L4
10 T-APQ;  5 T-APQ*L38;  9 T-APQ*L44
10 H2;  5 H2*L28;  1 H2*L30
7 H2*L45;  1 T+BZP*L20;  4 T+BZP*L25
6 T+BZP*L32;  3 T+BZQ*L10;  20 T+BZQ*L25
34 T+BZQ*L32;  3 T-BXR*L13;  3 T-BXR*L14
3 T-BXR*L28;  7 T-BXR*L36;  22 T-CPR
27 T-CPR*L28;  4 T-CPR*L31;  4 T-CPR*L38
3 T-CPR*L44;  6 T-YXP;  6 T-YXP*L7
7 T-YXP*L22;  10 T-YXP*L31;  3 T-YXQ*L13
46 T-YZR;  7 T-YZR*L11;  4 T-YZR*L30
37 T-YZR*L31;  4 T-YZR*L42;  2 E_Qwide*L6*L29
14 E_Rlow*L13;  34 E_Rlow*L28;  4 E_Rlow*L29
8 E_Rlow*L28*L43;  12 E_Rlow*L33*L38;  7 E_Plow*L24
7 E_Plow*L34;  3 E_Plow*L20*L28;  10 E_Plow*L20*L38
2 E_Plow*L29*L43;  6 E_Plow*T+XQR
```

### Row 13: basic 5; extra (0,0,+)

There are 41 positive integer entries. The exact bound is

    U(W)=-6315959/500000000<-1/100.

```text
8 L2*L33;  10 L4*L23;  3 L6*L25
1 L13*L32;  3 L2*L13*L34;  2 L4*L23*L24
18 L4*L23*L42;  6 L6*L20*L24;  32 L7*L13*L23
10 L7*L14*L21;  3 T-BYZ*L13;  3 T-CYZ*L30
6 T-CYZ*L34;  16 T-CYZ*L42;  12 T-CYZ*L43
5 T-CYZ*L45;  27 T-AYR*L6;  40 T+CYR*L4
12 T+CZR*L17;  4 T+CZR*L25;  18 T+BYR
33 T+BYR*L38;  4 T+BYR*L41;  12 T+BYR*L43
6 T+YPQ;  13 T+YPQ*L23;  7 T-BYQ
13 T-BYQ*L22;  6 T-APQ;  13 T-APQ*L23
17 T-CPR;  11 T-CPR*L3;  32 T-CPR*L7
5 T-CPR*L24;  39 T+YZR;  16 T+YZR*L42
12 T+YZR*L43;  7 E_Rlow*L13;  4 E_Rlow*L25
19 E_Plow*L20;  3 E_Plow*L34*L36
```

### Row 14: basic 6; extra (0,0,0)

There are 54 positive integer entries. The exact bound is

    U(W)=-61815641/4000000000<-1/100.

```text
3 L10*L21;  6 L21*L39;  33 L21*L44
10 L24*L32;  8 L25*L34;  4 L25*L45
9 L4*L22*L29;  3 L5*L9*L25;  2 L5*L25*L40
9 L6*L10*L25;  10 L6*L21*L29;  8 L6*L24*L32
2 L6*L24*L40;  8 L6*L25*L34;  2 L10*L22*L25
6 L10*L24*L32;  4 L10*L25*L34;  9 L18*L24*L45
9 L23*L24*L43;  9 L24*L38*L40;  13 T-AZX*L23
6 T-AZX*L24;  33 T+BYX;  29 T+BYX*L32
7 T+BYX*L38;  3 T-CYX*L4;  17 T-CZX*L1
7 T-CZX*L34;  10 T-CZX*L37;  14 T-CZX*L45
15 T-YZX*L32;  50 T+CZQ*L21;  1 T+CXR*L24
11 T+BQR*L25;  3 T+BZR*L25;  20 T-BYQ
23 T-ZXR*L25;  15 H2;  1 T+BZQ*L21
36 T+BXR;  21 T+BXR*L28;  1 T+BXR*L38
65 T+CQR;  31 T+CQR*L5;  20 T+CQR*L26
12 T-YZR;  15 T-YZR*L9;  31 T-YZR*L40
15 T-YXR*L4;  7 E_Qwide*L19;  34 E_Qwide*L23
17 E_Qwide*L37;  8 E_Qwide*L44;  51 E_Qwide*T+CZR
```

### Row 15: basic 7; extra (0,0,0)

There are 94 positive integer entries. The exact bound is

    U(W)=-15885559/1000000000<-1/100.

```text
2 L25;  8 L10*L28;  60 L14*L17
53 L21*L30;  66 L21*L44;  12 L25*L42
2 L1*L6*L30;  1 L2*L12*L32;  2 L5*L25*L43
3 L7*L25*L43;  98 L12*L18*L32;  11 L12*L18*L38
9 L14*L17*L34;  3 L14*L17*L38;  23 L17*L18*L32
65 L17*L18*L41;  28 L17*L22*L22;  1 L19*L21*L39
28 L21*L22*L44;  32 L21*L23*L30;  17 L21*L41*L44
3 L24*L25*L33;  3 L24*L28*L33;  2 L25*L34*L39
2 L25*L40*L42;  2 T+AYZ*L10;  10 T-AZX*L13
2 T-AZX*L15;  6 T-AZX*L24;  5 T-AZX*L25
10 T-AZX*L42;  9 T-BYZ*L17;  3 T-CYZ*L30
12 T-CYZ*L40;  5 T-CYZ*L42;  15 T-CYZ*L43
7 T-CZX*L1;  18 T-CZX*L12;  3 T-YZX*L30
2 T+CYP*L21;  3 T-AYQ*L21;  3 T+CZP*L10
5 T-AXP*L21;  1 T+BPQ*L25;  6 T+BPR*L25
6 T+BQR*L21;  3 T+BYR*L12;  11 T+BYR*L17
2 T+XPR*L25;  102 T-APQ;  72 T-APQ*L23
26 T-APQ*L32;  4 T-ZXP*L25;  23 H2*L32
65 H2*L41;  52 T-BZP;  8 T-BZP*L29
42 T-BZP*L31;  40 T-BZP*L38;  4 T-BZP*L40
9 T-BZP*L44;  50 T+BZQ;  53 T+BZQ*L30
40 T+BZQ*L38;  6 T-BXR*L12;  2 T-BXR*L30
60 T+APR;  32 T+APR*L23;  9 T+APR*L37
8 T+APR*L39;  16 T+APR*L43;  83 T+CQR
22 T+CQR*L22;  6 T+CQR*L34;  3 T+CQR*L36
4 T+CQR*L39;  92 T+CQR*L41;  8 T+YXP
4 T+YXP*L6;  11 T+YXP*L38;  4 T+YXP*L45
40 T+ZPQ*L25;  40 T+ZPQ*L28;  48 E_Qwide*L10
10 E_Qwide*L6*L30;  8 E_Qwide*T+CYR;  51 E_Qwide*T+CXR
55 E_Qwide*T-BXR;  5 E_Rlow*L10;  2 E_Rlow*L1*L12
32 E_Rlow*L12*L32;  108 E_Rlow*L16*L30;  6 E_Rlow*T+CXR
6 E_Rlow*T-BXR
```

### Row 16: basic 8; extra (0,0,-)

There are 77 positive integer entries. The exact bound is

    U(W)=-39176507/2000000000<-1/100.

```text
10 L5*L10;  2 L14*L17;  2 L14*L32
5 L22*L25;  8 L25*L42;  24 L25*L44
4 L10*L38*L45;  30 L14*L17*L45;  12 L17*L18*L28
32 L17*L18*L38;  1 L25*L34*L44;  16 T-AZX*L3
18 T-BYZ;  22 T-BYZ*L30;  15 T-BYZ*L31
18 T-BYZ*L40;  2 T-BYZ*L42;  13 T+BZX*L8
19 T+BZX*L34;  7 T-CZX;  18 T-CZX*L1
13 T-CZX*L34;  13 T-CZX*L39;  23 T-CZX*L41
11 T-CZX*L45;  1 T+CYR*L42;  5 T+BPR*L10
16 T+BPR*L25;  5 T+XQR*L25;  28 T-BYQ*L25
28 T-BYQ*L28;  38 T-BYQ*L32;  29 T-BYQ*L38
7 T-APQ;  26 T-APQ*L45;  5 T-ZXQ*L25
12 H2*L28;  32 H2*L38;  3 T-BZP
37 T-BZP*L22;  1 T-BZP*L27;  23 T-BZP*L29
3 T-BZP*L31;  3 T-BZP*L44;  52 T+BZQ*L25
1 T+BZQ*L30;  43 T+BZQ*L32;  28 T-BXR
3 T-BXR*L31;  5 T-BXR*L42;  4 T-BXR*L43
18 T+APR;  19 T+APR*L37;  6 T+CPR
3 T+CPR*L17;  12 T+CPR*L24;  3 T+CPR*L36
5 T-CQR*L9;  3 T-CQR*L13;  35 T-CQR*L28
8 T-CQR*L38;  1 T+YXP;  6 T+YXP*L23
23 T+YXP*L38;  3 T-YXQ*L21;  66 T-YZR
42 T-YZR*L31;  5 T-YZR*L40;  2 E_Qwide*L7*L30
21 E_Plow*T-AZX;  17 E_Rlow*L9;  26 E_Rlow*L28
13 E_Rlow*L29;  2 E_Rlow*L9*L31;  6 E_Rlow*L9*L38
1 E_Rlow*L24*L31;  37 E_Rlow*T-AZP
```

### Row 17: basic 8; extra (0,0,+)

There are 48 positive integer entries. The exact bound is

    U(W)=-20107171/1000000000<-1/100.

```text
3 L25;  7 L4*L25;  2 L14*L32
3 L17*L23;  4 L18*L21;  25 L4*L14*L23
2 L4*L14*L32;  3 L7*L12*L32;  13 L7*L14*L45
2 L14*L23*L45;  5 L17*L23*L37;  1 L17*L24*L34
2 L22*L22*L26;  1 L22*L26*L34;  1 L28*L34*L45
32 T-BYZ*L21;  5 T-CYZ;  9 T-CYZ*L34
19 T-CYZ*L45;  2 T-AYR*L14;  3 T+CYR*L12
7 T-AZR*L25;  12 T+BYR;  10 T+BYR*L38
1 T+BYR*L42;  5 T+BYR*L43;  3 T+YPR*L25
3 T+YPR*L28;  9 T-BYQ*L34;  6 T-BZP
25 T-BZP*L23;  3 T-BZP*L25;  6 T-BZP*L32
1 T+APR;  14 T+APR*L7;  2 T+APR*L23
6 T-CQR;  2 T-CQR*L24;  3 T-CQR*L36
39 T+YZR;  3 T+YZR*L30;  2 T+YZR*L34
2 E_Rlow*L12;  4 E_Rlow*L17;  2 E_Rlow*L1*L23
1 E_Rlow*L4*L23;  39 E_Rlow*L7*L12;  2 E_Rlow*L12*L23
```

### Row 18: basic 9; extra (0,0,0)

There are 77 positive integer entries. The exact bound is

    U(W)=-69703271/4000000000<-1/100.

```text
5 L14*L17;  3 L21*L42;  26 L21*L44
1 L22*L25;  2 L23*L30;  2 L25*L34
1 L5*L13*L25;  1 L5*L25*L34;  2 L13*L22*L25
1 L13*L24*L38;  5 L14*L17*L45;  2 L17*L17*L18
2 L22*L25*L42;  2 L23*L24*L42;  1 L23*L30*L43
1 L24*L28*L45;  1 L25*L26*L34;  5 T-AZX*L3
2 T-AZX*L15;  8 T-AZX*L23;  7 T-AZX*L42
6 T-BYZ*L10;  1 T-BYZ*L25;  4 T-BYZ*L30
12 T-BYZ*L39;  5 T+BYX*L4;  11 T+BYX*L7
1 T+BYX*L14;  8 T+BYX*L32;  4 T+BZX*L25
1 T-CYZ*L21;  5 T-CZX*L1;  6 T-CZX*L41
8 T-CZX*L45;  4 T-YZX;  3 T-YZX*L42
5 T-YZX*L45;  1 T-AZQ*L21;  1 T+CZQ*L21
4 T+CXR*L12;  1 T+BPQ*L25;  4 T+BPR*L25
1 T+BZR*L25;  7 T-APQ;  4 T-APQ*L45
2 H2;  2 H2*L17;  8 T-BZP
5 T-BZP*L22;  7 T-BZP*L27;  5 T-BZP*L29
1 T-BZP*L31;  1 T-BZP*L40;  1 T+BZQ
1 T+BZQ*L30;  8 T+BXR;  4 T+BXR*L13
5 T+BXR*L26;  8 T+BXR*L28;  4 T+APR
2 T+APR*L1;  5 T+APR*L7;  4 T+APR*L37
1 T+APR*L42;  4 T+CPR*L24;  27 T+CQR
1 T+CQR*L41;  7 T+YXP*L6;  6 T+YXP*L38
5 T-YZR*L9;  3 T-YZR*L15;  1 T-YZR*L29
7 T-YZR*L40;  2 T-YZR*L42;  27 E_Qwide*L23
1 E_Qwide*L28*L42;  1 E_Plow*L22*L33
```

### Row 19: basic 10; extra (0,0,0)

There are 44 positive integer entries. The exact bound is

    U(W)=-21936027/2000000000<-1/100.

```text
10 L1*L7;  7 L2*L31;  2 L18*L29
8 L25*L44;  3 L17*L17*L18;  1 L27*L31*L43
9 T+AYZ*L10;  10 T-AZX*L3;  7 T-AZX*L44
10 T-BYZ*L31;  15 T-BYZ*L39;  11 T+BYX*L4
15 T-CYZ*L9;  3 T-CZX;  11 T-CZX*L43
13 T-YZX;  1 T+BYR;  1 T+BYR*L31
12 T-APQ;  1 T-APQ*L31;  15 H2
2 H2*L17;  1 H2*L29;  12 T-BZQ
11 T-BZQ*L29;  2 T-BXR;  1 T-BXR*L31
1 T-BXR*L43;  3 T+APR;  3 T+YXQ
1 T+YXQ*L32;  11 T+YXQ*L38;  1 T+YXQ*L43
5 E_Plow*L16;  2 E_Plow*L21;  7 E_Plow*L43
1 E_Plow*L31*L43;  12 E_Qlow*L33;  1 E_Qlow*L31*L33
3 E_Qlow*T-AZX;  1 E_Rlow*L9;  3 E_Rlow*L12
1 E_Rlow*L9*L43;  1 E_Rlow*L29*L43
```

### Row 20: basic 11; extra (0,0,0)

There are 60 positive integer entries. The exact bound is

    U(W)=-21437959/1000000000<-1/100.

```text
3 L12*L23;  2 L21*L28;  1 L21*L31
2 L16*L23*L36;  1 L16*L23*L43;  2 L23*L24*L31
3 L24*L32*L34;  3 L25*L34*L34;  1 T-AZX
2 T-AZX*L23;  1 T-AZX*L24;  2 T-AZX*L25
2 T-AZX*L32;  11 T-AZX*L44;  4 T-BYZ*L31
8 T-BYZ*L39;  2 T-BYZ*L43;  2 T+BYX*L7
3 T+BYX*L45;  3 T+BZX;  4 T+BZX*L31
2 T+BZX*L44;  4 T-CZX*L1;  6 T-CZX*L43
10 T-CZX*L45;  2 T+CYR*L31;  3 T+CYR*L34
4 T+CYR*L43;  2 T+CYR*L45;  4 T+CXR*L26
6 T+BQR*L25;  1 T+AQR*L2;  15 T-APQ
2 T-ZXR*L16;  2 T-ZXR*L31;  15 H2
8 T-BZQ;  6 T-BZQ*L29;  4 T-BZQ*L45
8 T+BXR;  1 T+BXR*L17;  3 T+BXR*L22
4 T+BXR*L26;  4 T+BXR*L28;  1 T+BXR*L44
3 T+APR;  3 T+CQR;  4 T+CQR*L26
5 T+CQR*L39;  1 T+CQR*L43;  1 T+YXQ
6 T+YXQ*L38;  6 T+YXQ*L45;  8 T-YZR*L9
4 T-YZR*L40;  2 T-YZR*L44;  3 T-YXR*L22
4 E_Plow*L16;  11 E_Plow*L43;  15 E_Qlow*L33
```

## 11. Conclusion and scope

The analytic hull argument covers every arrangement of A and the three
A-side points. Both surviving quadrilateral orders give the same
nine-point necessary configuration. Its twelve basic orientation rows
are exhausted by the twenty displayed contradictions. Hence the entire
3/1 distributed U3 split, including its reflected 1/3 form and all
coordinate closure faces consistent with positive actual triangle area,
is impossible at minimum doubled area s.

The 4/0 and 0/4 splits are excluded in U3_FOUR_ONE_SIDE.md, and the 2/2
split is excluded in U3_TWO_TWO.md. Thus U3-DISTRIBUTED is closed. With
CLUSTERED_TRIANGLE.md, the whole U3 corner-count family is closed; the
other upper-count families are treated in THREE_CORNERS.md and
TRIANGLE_OCCUPANCY.md.
