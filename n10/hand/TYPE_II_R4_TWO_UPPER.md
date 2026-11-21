# Type II: triangular right hull with both central points above CE

This note excludes the complete Type-II count (1,2,4) subfamily in
which the six right points have a triangular actual hull and both
central points are above CE. No further central-pair or cross-line
orientation is left open in this subfamily.

The proof uses the analytic reductions in TYPE_II_R4_TRIANGLE.md and
TYPE_II_R4_UPPER_P.md, and one fixed cubic contradiction. All 76
positive integer coefficients of that cubic are printed below. Its
exact negative bound is obtained by expanding that fixed polynomial
and bounding its monomials on the proved rational box. No optimizer,
search, adaptive subdivision, or generated-at-runtime table is a
premise. The optional Fraction-only checker
`check_type_ii_r4_two_upper.py` checks this displayed arithmetic.

All areas are DOUBLED. Write

    s=93/1000, K=4+2sqrt(3), G=(11+3sqrt(5))/2,
    K0=149/20<K,       G0=177/20<G,
    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    R=(r,v),       q=1-lambda,       w=1-b.

Every actual triangle has absolute signed area at least s.

## 1. The preceding reductions cover every configuration in this subfamily

The triangular right hull is BCR, with distributed interior points
X,Y,Z. TYPE_II_R4_TRIANGLE.md proves that, after naming the central
points by their ray order from D,

    Z inside DYX,       P inside DBY,       Q inside DXC.

Both P,Q lie above CE. TYPE_II_R4_UPPER_P.md proves that the line
directed from P toward Q has the signs

    D positive;       E,B,C negative.

It also proves

    P inside DEQ,       Q inside DCP,
    y_P>9/20,       y_P<=1-3s,
    det(P,R,Y)<0, det(P,R,Z)>0, det(P,Z,X)>0,
    X,Z inside PCR.                                   (1)

In particular x_P<=1-Ks. These statements include all earlier fan
placements and central-pair orientations: they were excluded or
reduced analytically in the cited notes.

The empty-EBR-fan theorem in TYPE_II_R4.md puts all three X,Y,Z inside
the actual triangle ECR. We next use this additional containing
triangle before fixing the numerical box.

## 2. A second distributed triangle fixes the EZX sign

The triple X,Y,Z must be distributed in ECR too, by the universal
clustered-triple exclusion. We show that its labels are again X near
CR, Y near ER, and Z near EC.

First Y lies inside ERX. Its ER edge test follows from the empty EBR
fan, and its RX edge test follows from Y inside BRX. For the remaining
test, note x_X>x_Y and y_X>y_Y. The line YX has positive slope, and
the convex order B-Y-X-C puts B strictly above it. Its height at x=b
is therefore negative, and at x=0 is smaller still. Since E=(0,lambda)
has lambda>=0, E is above YX. This gives the required XE edge test.

The original right-hull containments put Z outside CRX. Since Y is
inside ERX, distributedness excludes Z from ERX as well. Therefore
Z lies inside ECX. In particular

    det(E,Z,X)<0.                                     (2)

For completeness, X lies inside CRZ by the old distribution. The new
distribution prevents Y from joining it there. Also Y cannot lie in
ECZ, because ECZ is contained in ECX, whereas Y lies in ERX. Thus Y
lies inside ERZ. Applying the same fan argument at Y puts Z inside
ECY. This gives the full second distributed labeling, although only
(2) is needed in the fixed cubic below.

The actual triangle DEX contains P and Z. For P, use P above CE and
its earlier ray than DX. For Z, the DE edge test is x_Z>0, the EX
test is (2), and the XD test is the middle-placement sign DZX>0.
Consequently

    q x_X>=K s.

Since x_X<=1-s, this proves the useful strict bound

    lambda<1-K0 s/(1-s)=4283/18140.                    (3)

## 3. A uniform rational box

We supply the lower lambda bound explicitly. The preceding notes give
b<9/50, y_Y<1/5, x_Y<=1-3s, and x_Y>b. If lambda<=1/10, then

    area2(EBY)=b y_Y+lambda(x_Y-b)
      <b/5+(1-3s-b)/10<=901/10000<s,

a contradiction. Thus lambda>1/10. The actual DBE triangle gives
bq>=s, so b>31/300. The distributed BRY corner-face cap from
TYPE_II_R4_TRIANGLE.md gives

    y_Y<=1-(G-1)s/(r-b)
        <1-(G0-1)s/(1-31/300)
         =9997/53800<93/500.

The last gap is 49/269000. If now lambda<=11/100, use b<177/1000:

    area2(EBY)
      <(93/500)b+(11/100)(1-3s-b)
      <=46381/500000<s.

Here the last gap is 119/500000. Therefore lambda>11/100, and

    b>=b0:=s/(89/100)=93/890.

Put p0=s+3s b0=108717/890000. For the following polynomial calculation
use the twelve coordinates in this exact order:

    V=(lambda,b,u,v,zx,zy,xx,xy,yx,yy,px,py),
    R=(1-u,v), Z=(zx,zy), X=(xx,xy), Y=(yx,yy), P=(px,py).

Every coordinate V_i lies in the closed rational interval
[ell_i,h_i] displayed below. Strict inequalities already proved may
be weakened to these closed intervals.

| i | Coordinate | ell_i | h_i |
|---:|---|---|---|
| 0 | lambda | 11/100 | 1-K0 s/(1-s) |
| 1 | b | b0 | 1-G0 s |
| 2 | u=1-r | 0 | 1-b0-G0 s |
| 3 | v | 0 | 81/1000 |
| 4 | zx | b0+4s | 1-3s |
| 5 | zy | 311/1000 | 585/1000 |
| 6 | xx | b0+(G0-1)s | 1-s |
| 7 | xy | 311/1000 | 585/1000 |
| 8 | yx | s/(185/1000) | 1-3s |
| 9 | yy | s/(1-3s) | 185/1000 |
| 10 | px | p0 | 1-K0 s |
| 11 | py | 9/20 | 1-3s |

Here are the remaining checks on the table. The BCR capacity and its
corner-face bounds give r>=b+Gs, xx>=b+(G-1)s, and

    v<1-G0 s/(1-b0)<81/1000,
    yy<1-(G0-1)s/(1-b0)<185/1000.

The respective final rational gaps are 143/1594000 and 379/1594000.
The BRZ and BCZ clearances give zx>=b+4s. The BC clearances for X,Z
give, for each of their heights,

    3s/(1-b0)<=height<=1-4s/(1-b0).

These are strictly inside [311/1000,585/1000]; the gaps are
443/797000 and 13/31880. All upper x bounds are already proved in
TYPE_II_R4_TRIANGLE.md. The inequality x_Y y_Y>=s from
TYPE_II_R4_UPPER_P.md gives both lower bounds for yx,yy. Finally DBP
gives px>=s+b(1-py)>=s+3s b0, while (1) gives the two upper bounds
for px,py. Thus every row of the box follows from proved geometry
and actual triangle clearances.

## 4. The nonnegative factors

Define 24 affine box factors, with i=0,...,11:

    L_(2i)=V_i-ell_i,       L_(2i+1)=h_i-V_i.

The seven additional affine factors are

    L24=py-px-s,
    L25=1-lambda-s,
    L26=1-v-s,
    L27=1-zy-s,
    L28=1-xy-s,
    L29=1-yy-s,
    L30=1-py-s.

All are nonnegative. For L24 use P above CE with its actual clearance;
the other six are the actual DC triangle clearances at E,R,Z,X,Y,P.

For a displayed ordered triple ABC and its listed sign epsilon, put

    T_ABC=epsilon det(B-A,C-A)-s.

The complete sign list used in the table is

    +DEB, +DBP, -DRP, +CEZ, -CEP, +CBZ,
    -CRX, -CXY, +EBY, +EBP, -EZX, +EZP,
    -BZX, -BXY, -RZX, +RZY, +RZP, -RYP,
    -ZXY, +DYZ, +DZX, +DPY, +PYZ, +PZX.                (4)

Each T is nonnegative by the corresponding actual triangle. To make
the geometric coverage explicit, the signs involving only B,C,R,X,Y,Z
are the original distributed labeling. DYZ,DZX,DPY are the unique
fan placement; PYZ follows by writing P inside DBY, since D and B have
the same positive YZ sign. EZX is (2); RZP,RYP,PZX are (1). The E/B/C
signs with P use P above CE, while those with Z,Y use their right
triangle locations. DEB,DBP are immediate actual anchor clearances.

The one remaining sign, DRP, can also be checked directly. The bounds
r>(G0+1)s, x_Y<=1-3s, y_Y<1/5 give

    det(D,R,Y)=(1-v)x_Y-r(1-y_Y)
      <1-3s-(4/5)(G0+1)s=-37/3125<0.

B has the same negative DR sign. P lies inside DBY, so DRP<0 too.
This accounts for every sign in (4); none is selected numerically.

Finally define two more nonnegative quadratic factors:

    Omega=det(R-B,C-B)=r-b-(1-b)v,
    J=Omega-G0 s,
    H=Omega-det(B-C,Z-C)-(G0-1)s.                      (5)

Nonnegativity of J is the three-interior-point bound for BCR.
Nonnegativity of H is the distributed BCZ corner-face cap. Both were
proved in TYPE_II_R4_TRIANGLE.md, with the stronger constant G.

## 5. One fixed cubic contradicts the rational box

Let W be the sum of the 76 entries in Section 6. An entry `n factors`
means n times the product of the named factors. Each coefficient is a
positive integer and each factor is nonnegative by Section 4. Thus

    W>=0.                                             (6)

Here is the exact upper-bound calculation. Substitute V_i=ell_i+z_i,
where 0<=z_i<=h_i-ell_i, and expand this fixed polynomial:

    W=c_0+sum_(e!=0) c_e z_0^e0 ... z_11^e11.

Its total degree is at most three. Discard negative nonconstant terms
and bound each remaining monomial by its box endpoint. This gives

    W <= c_0+sum_(e!=0,c_e>0) c_e product_i(h_i-ell_i)^e_i
       =-786594690429558640681/76662729967600000000000
       <0.                                            (7)

The middle equality is a fixed rational expansion of the complete
table below and the displayed box. The expansion has 126 nonzero
monomials, of which 53 nonconstant coefficients are positive. These
counts are not premises; the table and the formula on the first line
of (7) specify the entire arithmetic independently. The optional
checker reconstructs every determinant from the twelve coordinates,
performs the substitution and rational expansion, and verifies the
exact fraction in (7).

Equations (6),(7) contradict one another. This excludes the full
triangular-right, two-upper subfamily of Type II. The one-upper cut
and the nontriangular right hull retain their own proof obligations.

## 6. The complete fixed cubic

In this table, for example, `9 T_DEB*L23` means 9 T_DEB L23, with
the positive DEB sign assigned in (4). A repeated L factor denotes
a repeated factor. The largest coefficient is 46.

```text
15 L0*L17
28 L2*L23
16 L3*L18
19 L4*L23
12 L6*L17
24 L13*L20
28 L17*L23
30 L19*L20
11 L0*L4*L11
12 L0*L17*L26
 1 L1*L6*L8
15 L4*L10*L25
 3 L4*L17*L22
 3 L7*L16*L20
42 L9*L14*L20
 4 L9*L23*L23
15 L9*L23*L30
 3 L12*L18*L23
32 L13*L22*L25
 4 L17*L23*L25
 9 T_DEB*L23
37 T_DBP*L1
 3 T_DBP*L7
 6 T_DBP*L14
20 T_DBP*L25
 5 T_DRP*L23
 6 T_CEZ*L6
29 T_CEP*L13
15 T_CBZ*L1
28 T_CBZ*L22
19 T_CBZ*L25
 4 T_CRX*L11
 7 T_CRX*L27
11 T_CXY*L11
 2 T_CXY*L23
14 T_EBY
 3 T_EBY*L9
 3 T_EBY*L24
12 T_EBY*L26
12 T_EBP
37 T_EBP*L27
42 T_EZX
 4 T_EZX*L16
33 T_EZX*L24
21 T_EZP*L6
 8 T_BZX*L23
 3 T_BXY*L20
13 T_RZX*L23
12 T_RZY
 8 T_RZY*L24
10 T_RZY*L27
33 T_RZP*L1
10 T_RZP*L10
11 T_RZP*L15
11 T_RZP*L16
19 T_RZP*L22
 1 T_RZP*L28
 7 T_RZP*L29
 8 T_RYP*L8
11 T_ZXY*L10
22 T_ZXY*L30
 7 J*L18
 8 H*L18
 5 T_DYZ*L6
21 T_DZX*L18
 9 T_DZX*L20
13 T_DPY
 6 T_DPY*L6
14 T_DPY*L10
24 T_DPY*L28
 8 T_PYZ*L4
46 T_PZX
11 T_PZX*L10
 3 T_PZX*L16
11 T_PZX*L26
21 T_PZX*L29
```
