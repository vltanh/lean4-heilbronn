# Central triple with a triangular left hull: complete exclusion

In the normalized adjacent-corner family, suppose

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<=1/2, 0<lambda<1,

and an actual point P lies strictly inside DBE. Suppose three other
actual points lie strictly inside DBC. Then these eight points already
have an unsigned doubled triangle area less than s=93/1000.

Consequently the entire triangular-left child of the count (2,3,2) is
excluded, with both right points unrestricted. This includes the case in
which both side hulls are triangular. It does not exclude the other
surviving side-hull combination, in which the left hull is quadrilateral
and the right hull triangular: reflecting that combination need not
preserve b<=1/2.

Write `[UVW]=det(V-U,W-U)` for signed doubled area. Assume for a
contradiction that every actual unsigned triangle area is at least s.
We use

    K=933/125=7.464 < Gamma2=4+2sqrt(3),
    J=4427/500=8.854 < Gamma3=(11+3sqrt(5))/2.

The rational comparisons follow from `sqrt(3)>433/250` and
`sqrt(5)>559/250`. Actual triangles with two or three actual interior
points therefore have doubled areas greater than Ks or Js,
respectively. Triangles have capacity three, and every interior triple
is distributed, by TRIANGLE_OCCUPANCY.md and CLUSTERED_TRIANGLE.md.

## 1. Two small triangles and an exhaustive central placement

Put q=1-lambda. Subdivision of DBE at P gives

    bq>=3s.                                             (1)

Since b<=1/2, this gives b>=3s and lambda<=1-6s. Moreover

    [EBC]=1-(1-b)q<=1-3s.                               (2)

Indeed 1-b>=b. The actual triangle EBC thus has capacity at most two,
because

    Js-(1-3s)=51211/500000>0.                            (3)

The line EC partitions the actual quadrilateral DEBC into DEC and
EBC. All four points P and the three central points are strictly inside
that quadrilateral, and none is on EC. A 2+2 distribution is impossible:
if both triangles contained two points, then

    [DEC]+2[EBC]>3Ks>2,

whereas direct expansion gives

    [DEC]+2[EBC]=1+2b+lambda(1-2b)<=2,
    3Ks-2=10307/125000>0.                               (4)

Four points inside DEC are also impossible. Together with (2)-(3),
these facts force exactly three of the four points into DEC and one
into EBC.

The point P must be one of the three in DEC. If instead P were in
EBC, all three central points would lie in DEC. They would then all
lie in DCP: their two edge tests at DC and DP follow from their
membership in DBC, while the edge CP has negative sign throughout
DEC because it has negative signs at D and E and zero at C. On the
other hand, EBP>=s and p_P<b imply

    b y_P>=s,
    |[DCP]|=1-y_P<=1-2s<Js.                            (5)

The last exact gap is `Js-(1-2s)=4711/500000>0`.
This contradicts the three-interior-point bound on DCP.

Choose the central point Y of greatest ordinate. Its fan triangle CDY
contains no other central point. Distribution therefore puts one of the
other points in DBY and one in BCY; name them Z and X respectively.
The seven-face construction in TRIANGLE_OCCUPANCY.md gives the
thirteen positive areas

    DBZ, BCX, CDY, DZY, BXZ, CYX, ZXY,
    DZX, BXY, CYZ, DXY, BYZ, CZX.                       (6)

The rays CY,CZ,CX occur in that order from CD toward CB. Therefore
the two central points in DEC are Y,Z, and the placement is exactly

    P,Y,Z inside DEC; X inside EBC.                     (7)

This establishes all four signs ECP+, ECY+, ECZ+, ECX-.

## 2. The second distributed mesh fixes all but one sign

First Y lies strictly above P as well as above X,Z. To verify this
without imposing an extra choice of labels, use

    |[DBP]|=b(1-y_P)-p_P>=s, p_P>=s.

These imply

    [BCP]<=1+s-(p_P+s)/b<=1-3s.                        (8)

Thus BCP cannot contain all three central points. The convex actual
quadrilateral DPBC contains DBC, and CP divides it into DCP and BCP.
At least one central point is in DCP and consequently has ordinate
greater than y_P. Since Y has the greatest central ordinate,
`y_Y>y_P` follows.

The actual triple P,Y,Z in DEC is distributed. At Y, its fan triangle
CDY contains neither P nor Z because both are below Y. The other two
fan triangles each contain one of P,Z. The order is

    P inside DEY, Z inside ECY.                         (9)

Indeed the reverse order, together with the distributed-mesh lemma,
would give DZP>0. But DPZ>0: the ray DP lies strictly on the left side
of DB, while DZ lies strictly on its right side. These are opposite
signs, so the reverse order is impossible.

Applying the same seven-face construction to (9) fixes the second
complete mesh. For outer order D,E,C and interior labels
`X'=Z,Y'=Y,Z'=P`, its thirteen positive areas are

    DEP, ECZ, CDY, DPY, EZP, CYZ, PZY,
    DPZ, EZY, CYP, DZY, EYP, CPZ.                       (10)

In particular EPZ<0. The only remaining sign needed is PXZ.
If PXZ<0, TYPE_II_CENTRAL_CHAMBER.md applies directly to (6), (7)
and EPZ<0, giving a contradiction. Thus it remains to exclude PXZ>0.

## 3. A rational coordinate box for the final sign

Write

    P=(p,y), X=(x,v), Z=(z,w).

The following closed box contains the whole remaining branch:

| Variable | Lower bound | Upper bound |
|---|---:|---:|
| b | 279/1000 | 1/2 |
| lambda | 0 | 442/1000 |
| p | 93/1000 | 314/1000 |
| y | 186/1000 | 628/1000 |
| x | 356/1000 | 768/1000 |
| v | 372/1000 | 721/1000 |
| z | 170/1000 | 582/1000 |
| w | 372/1000 | 721/1000 |

Here are direct derivations. Equation (1) gives the first two rows.
DEP>=s gives p>=s; EBP>=s gives y>=s/b>=2s. Together with
`b(1-y)-p>=s`, these give p<=b-2s<=314/1000 and
`y<=1-2s/b<=628/1000`.

The mesh (6) puts Y inside CDX and CDZ, X inside BCZ, and Z inside
DBX. Thus

    [CDX],[CDZ],[DBX],[BCZ]>=3s,
    [BCX],[DBZ]>=s.

Adding the three barycentric fan areas gives

    4s<=v,w<=1-3s.

Writing the same bounds in Cartesian coordinates gives

    x>=3s+3bs>=3s+9s^2>356/1000,
    x<=1-4s+3bs<=1-5s/2<768/1000,
    z>=s+3bs>=s+9s^2>170/1000,
    z<=1-6s+3bs<=1-9s/2<582/1000.

No subdivision of this box is used.

## 4. Four containments and a convex quadrilateral

Assume PXZ>0. The ray CP is between CD and CE, and CX is between
CE and CB, by (7), so CPX>0. The signed triangles in (6), (7), (10)
and the left/central separation give

    P,Z inside DEX;
    Z inside DPX and CPX;
    X,Z inside BCP.                                    (11)

For DEX, both P,Z are on the positive side of EX because they lie
inside DEC, whereas X lies inside EBC. Their other two edge tests are
DEP,DEZ>0 and DPX,DZX>0. The other containments follow from the
explicit edge signs

    DPZ>0, PXZ>0, XDZ=-DXZ>0;
    CPZ>0, PXZ>0, XCZ=-CXZ>0;
    BCX,BCZ,CPX,CPZ>0, PBX,PBZ>0.

The four points D,P,X,C form a convex quadrilateral in that order:
DPX,DPC,DXC,PXC are positive. It contains Y,Z. For Y the edge signs
are DPY,PXY,XCY,CDY>0; here PXY>0 follows, for example, because P
lies in DBE and all three of DXY, EXY, BXY are positive. For Z the corresponding
signs are DPZ,PXZ,XCZ,CDZ>0. Consequently

    [DEX]>=Ks, [DPX]>=3s, [CPX]>=3s, [BCP]>=Ks,
    [DPX]+[DXC]>=8s.                                  (12)

These are the only strengthened area factors in the following cubic.

## 5. One explicit cubic contradiction

Let the eight variables in the box order be a_i, with lower and upper
endpoints l_i,u_i. Define the sixteen affine factors

    L_(2i)=a_i-l_i, L_(2i+1)=u_i-a_i, 0<=i<8.

All are nonnegative. In the table, `+UVW` means `[UVW]-s`, and
`-UVW` means `-[UVW]-s`. Also put

    DEX2=[DEX]-Ks, DPX1=[DPX]-3s,
    BCP2=[BCP]-Ks, CPX1=[CPX]-3s,
    Q=[DPX]+[DXC]-8s.

Every factor is nonnegative by the actual signs and (12). Form W as
the sum of the sixteen rows below.

| Weight | Product |
|---:|---|
| 15 | L4 L11 |
| 1 | (-DCP) L1 |
| 6 | +BCX |
| 5 | (+BCX) L5 |
| 2 | (-DCX) L1 |
| 6 | -DXZ |
| 8 | (+DPZ) L9 |
| 2 | +CPZ |
| 8 | (+CPZ) L8 |
| 14 | +PXZ |
| 7 | DEX2 L6 |
| 8 | DPX1 L12 |
| 3 | BCP2 |
| 5 | BCP2 L8 |
| 8 | CPX1 L13 |
| 5 | Q L1 |

Thus W>=0. Expanding at the lower corner, write

    W(l+t)=c0+sum_(alpha!=0) c_alpha t^alpha,
    0<=t_i<=u_i-l_i.

Dropping the nonpositive nonconstant terms and replacing each remaining
monomial by its upper endpoint gives the exact value

    c0+sum_(c_alpha>0,alpha!=0) c_alpha (u-l)^alpha
       =-192675309/500000000<0.                        (13)

This is a fixed rational polynomial identity and box inequality. The
sixteen products, all eight intervals and the expansion rule are printed
above. The optional Fraction-only checker
`check_type_ii_232_left_triangle.py` reconstructs them directly and
verifies (13); it contains no optimization or discovery data.

Equation (13) contradicts W>=0 and excludes PXZ>0. The negative sign
was excluded in Section 2, so every configuration under the stated
hypotheses is impossible. This completes the whole triangular-left
child and leaves the left-quadrilateral/right-triangular child explicit.
