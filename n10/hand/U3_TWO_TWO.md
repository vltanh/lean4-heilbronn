# U3 distributed: complete exclusion of the 2/2 fan split

This note excludes the entire distributed-upper U3 family whose four lower
points split 2/2 across the line BY defined below. The proof reduces the
configuration to nine actual points with a quantitative height condition,
then supplies a fixed nonnegative cubic for each possible orientation row.
There are seventeen rows and **1,463 positive integer entries**, all at
most 284. Every entry and every exact negative bound is printed below.
No optimizer, numerical feasibility assertion, adaptive coordinate cover,
or certificate generated at runtime is a premise. The optional checker
`check_u3_two_two.py` checks the transcription of this finite algebra using
rational arithmetic.

The 4/0 and 0/4 splits are independently excluded in
[U3_FOUR_ONE_SIDE.md](U3_FOUR_ONE_SIDE.md). The 3/1 split remains a separate
obligation; the U3-DISTRIBUTED parent is not closed by this note alone.

Put

    s=93/1000,       G=4+2sqrt(3),       J=(11+3sqrt(5))/2.

Assume all actual unsigned doubled triangle areas are at least s. The
candidate satisfies 2A*>s, so an exclusion at this threshold suffices.
We use the following established hand lemmas at this rational threshold:

* an actual triangle containing two or three other points has doubled
  area at least Gs or Js, respectively;
* no actual triangle in the square contains four other points;
* no actual triangle in the square has three other points in a clustered
  fan pattern;
* seven points in a triangle of doubled area at most one, including two
  actual container vertices, have minimum doubled area less than s.

The first two statements follow from
[TRIANGLE_OCCUPANCY.md](TRIANGLE_OCCUPANCY.md). For the second at exactly s,
its four-interior constant exceeds 54/5, and (54/5)s=2511/2500>1.
The other statements are proved at s in
[CLUSTERED_TRIANGLE.md](CLUSTERED_TRIANGLE.md) and Sections 5–9 of
[THREE_CORNERS.md](THREE_CORNERS.md). We will use the rational comparisons

    Gs>69/100,       Js>823/1000.                         (1)

For example sqrt(3)>173/100 proves the first. The bound
sqrt(5)>559/250 gives J>4427/500 and hence Js>823/1000.
All actual points are distinct and no three are collinear, since otherwise
the desired small triangle already exists.

## 1. The distributed fan and the two C-side points

Use the actual corners A=(0,0), B=(0,1), C=(1,1). Choose Y among the three
upper points with least y-x. No other upper point lies inside ACY, because
it would have a strictly smaller B-barycentric coordinate. Distributivity
therefore permits the exhaustive labeling

    Z inside ABY,       X inside BCY.

It also gives the cyclic containments

    Y inside CAZ and CAX,       X inside BCZ,       Z inside ABX. (2)

These follow by the elementary fan argument in Section 2 of
TRIANGLE_OCCUPANCY.md, and include a tie in the minimum coordinate.
Write Y=(u,1-h). Reflect in x+y=1 if needed so u>=h; this preserves the
2/2 split and exchanges the A- and C-side labels.

A lower point L=(x,y) is A-side when

    h x-u(1-y)<=-s,

and C-side when the same expression is at least s. These are the two
possible signs of its actual triangle BYL. Every A-side L has Y,X inside
BCL; every C-side L has Y,Z inside ABL. For the first assertion, its B-ray
precedes BY, while the segment CL is strictly below AC and Y is above AC;
then X inside BCY gives the second containment. The other assertion is
its reflected version. Consequently

    L_y<=1-Gs for an A-side L,       L_x>=Gs for a C-side L. (3)

Consider B,C,Y,X and the two C-side lower points. They all lie in the
triangle with vertices B,C,(1,0), of doubled area one: Y satisfies
u+1-h>=1, X is inside BCY, and a C-side L satisfies

    h(x+y-1)>=s+(u-h)(1-y)>0.

Their supporting triangle with base BC therefore has doubled area D<=1.
One supporting leg contacts Y. Indeed Y has the smallest B-ray parameter
x/(1-y), by (2) and the C-side signs. The other leg contacts one of the
lower points: upper points have (1-x)/(1-y)>1 and lower points have this
ratio less than one. Call that contact R and the other C-side point S.
The actual hull is nontriangular, since Y is outside BCR and both lower
points are outside BCY. Thus the contacts are distinct and lie strictly
inside their respective support legs, as in SIX_POINT_ENDPOINT.md §1.

Map the supporting triangle to the standard upper half-square, taking
B,C to A',E' and Y,R to H',F'. Its normalized doubled minimum is at least
s, because D<=1. The free point X is inside A'E'H', while S is outside.
The five-cell calculation in THREE_CORNERS.md §2 is valid at s: cells IV
and V are empty, and I and III cannot coexist. Hence S is in III and X
is in II. Returning to the original coordinates gives

    X,S inside BCR;       S inside CYR;       1-R_y>=Gs.   (4)

In particular S_y>R_y.

## 2. A one-half mixed-pair consequence

We also need the sharper containment

    S inside CRX.                                       (5)

Here are the precise one-half hypotheses behind it, so no full C2 theorem
or opposite-half contact is being imported. In the standard half-square,
let A0=(0,0), E0=(1,1), H0=(0,h0), F0=(f0,1), with one point P0 in
cell I and one point Q0 in II. Put beta0=1-f0. Both points lie inside
A0E0H0, and P0 lies inside A0H0F0. At minimum doubled area at least s,

    h0>=Gs>.69,       h0 f0>=3s,       (1-h0)beta0>=s.

Therefore beta0>.3. Also h0>beta0, because h0<=beta0 would imply
h0(1-beta0)<=h0(1-h0)<=1/4, contrary to 3s>1/4.

Orient the pair line from P0 to Q0 and let e_V=D(P0,Q0,V), where
D(U,V,W)=det(V-U,W-U). Their cells give e_A0<0<e_F0. The signs at H0,E0
cannot both be negative, since Q0 is inside A0E0H0. Thus there are exactly
three rows:

    e_H0>0>e_E0;       e_H0<0<e_E0;       e_H0>0,e_E0>0.

In the middle row, the edge tests put P0 inside H0F0Q0. Writing
Q0=(p0,p0+w0), its central-cell inequalities and the three fan areas give

    s<=h0 beta0(1-beta0)/(2h0+2beta0-h0 beta0).

The right side increases with h0. Insert the anchor bound
h0<=1-s/beta0 and clear positive denominators. This yields

    F(beta0):=beta0^3-beta0^2+(3s+s^2)beta0-2s^2<=0.

But put z0=beta0-9/20>=-3/20. The exact expansion gives

    F(beta0)=z0^3+(7/20)z0^2-(4851/1000000)z0
                 +15381/20000000
      >=(1/5)z0^2-(4851/1000000)z0+15381/20000000>0.

The last quadratic has positive leading coefficient and discriminant
-591707799/1000000000000<0. This excludes the middle row. The calculation
is the local one-half argument in C2_MIXED.md §2, with every needed
hypothesis supplied above.

Both remaining rows have e_H0>0. Together with e_A0<0 and the fixed sign
at the edge A0H0, their edge tests put P0 strictly inside A0H0Q0.
Reflect this statement to the III/II pair S,X from Section 1. Its actual
endpoint, contact and central point are C,R,X, respectively. This proves
(5). In particular the signed actual determinants XRS and YRS are both
positive, by (5) and (4).

## 3. Selecting one A-side point with a definite height

The two A-side points cannot nest inside each other's BC triangles.
If M were inside BCL, then BCL would contain Y,X,M, with Y,X both inside
its fan BCM; this is a forbidden clustered triple. In B-perspective
coordinates

    p_B(L)=x_L/(1-y_L),       q_C(L)=(1-x_L)/(1-y_L),

containment M in BCL is equivalent to both p_B(M)>p_B(L) and
q_C(M)>q_C(L). Thus increasing B-ray order for the A-side pair is also
strictly decreasing q_C order, and both corresponding B- and C-pair
areas are positive.

R cannot be inside BCL for either A-side L either: by (4), BCL would
then contain the four actual points Y,X,R,S. Since R's B-ray follows
both A-side rays, R extends their B/C antichain. In particular

    x_R-x_L>=s,       x_L<=1-s                           (6)

for each A-side point. To see the gap, let dx>0 be the x difference in
this antichain and dy the height difference. If dy>=0, the positive
C-area is at most dx; if dy<0, the positive B-area is at most dx.
Each actual area is at least s.

Choose P to be the A-side point with greater height, and write
P=(p,q), R=(v,j). The actual triangle formed by A and the two A-side
points has doubled area at least s, but no more than (1-s)q by (6).
Therefore

    q>=s/(1-s)>1/10.                                    (7)

The same discarded mate yields two further nonnegative quadratic factors:

    H1=q(v-s)-s>=0,       H2=q(u-s)-s h>=0.              (8)

Indeed both A-side x coordinates are at most v-s by (6), and at most
(u-s)/h by their BY clearance and nonnegative heights. Both heights
are at most q. The absolute determinant with A is at most q times
either x cap, proving (8).

Discard the other A-side point after deriving (7)–(8). The remaining
nine actual points are A,B,C,Y,Z,X,P,R,S.

The C-side pair forms the analogous A/B antichain: a nesting would
produce Y,Z in the same fan of a forbidden clustered triple. Since
S_y>R_y by (4), its A- and B-pair areas are positive. The same gap argument,
now in the y coordinate, gives

    S_y-R_y>=s.                                         (9)

Both C-side points lie in x+y>1. The selected P satisfies x+y<1: otherwise
B,C,Y,X,P,R,S would be seven actual points in the closed half-square
x+y>=1 with B,C actual container vertices, contradicting the endpoint-
seven theorem. This also covers equality on its virtual diagonal edge.

## 4. Rational bounds and the exhaustive sign catalogue

Use the twelve coordinates

    Y=(u,1-h), Z=(z,w), X=(x,1-a),
    P=(p,q), R=(v,j), S=(l,m).

The distributed fan containments imply

    u,h>=3s;       z<=u-2s;       a<=h-2s;
    w-z>=1-u-h+2s;       1-a-x>=1-u-h+2s.

Also u+h<=1-s. Equation (4) and the C-side clearance of R give
h>=s+(69/100)u. Together with h<=u this implies

    3/10<=h<=u<241/500.

For the upper bound, u<=(1-2s)/(1+69/100)=407/845<241/500.
Furthermore h v>=s+(69/100)u and h<=u give

    v>=69/100+s/u>22/25.

Consequently every configuration lies in the following closed rational
box. The coordinate order in the table will also define the polynomial
expansion in Section 6.

| Index i | Coordinate z_i | Lower a_i | Upper b_i |
|---:|---|---:|---:|
| 0 | u | 3/10 | 241/500 |
| 1 | h | 3/10 | 241/500 |
| 2 | z | s | 3/10 |
| 3 | w | 2s | 1-s |
| 4 | x | s | 1-2s |
| 5 | a | s | 3/10 |
| 6 | p | s | 1-s |
| 7 | q | 1/10 | 31/100 |
| 8 | v | 22/25 | 1 |
| 9 | j | 0 | 31/100 |
| 10 | l | 69/100 | 1 |
| 11 | m | s | 1-s |

The remaining four undetermined signs that occur in the proof are

    D(B,Z,P),       D(B,X,S),       D(Y,X,P),       D(Y,Z,S). (10)

Each is nonzero. Their sixteen binary choices are exhaustive. One choice
is divided further by the nonzero actual sign of D(C,P,S), yielding
seventeen rows. No coordinate subdivision is used.

We record three useful conditional consequences for the factor signs.
If D(B,Z,P)<0, all three upper points lie inside BCP, so
q<177/1000 by (1). In that case D(C,P,S)>0: a negative sign would put
S inside BCP as a fourth point. Similarly, if D(B,X,S)>0, all three
upper points lie inside ABS, and

    l>823/1000,       D(A,P,S)>0.                        (11)

A negative APS sign would put P inside ABS as a fourth point.
Finally, if D(B,X,S)<0, then

    D(Y,X,S)<0.                                         (12)

Indeed B,C,R,Y form a convex quadrilateral in that cyclic order. The
line XS has signs B negative, C positive and R negative, by the stated
BXS sign, corner separation, and (5). A positive sign at Y would alternate
around this quadrilateral, which is impossible for a line. Thus (12)
holds. These are exact sign deductions; zero cases already give a small
triangle.

## 5. Every factor used in the tables is nonnegative

For i=0,...,11 define the twenty-four coordinate factors

    L_(2i)=z_i-a_i,       L_(2i+1)=b_i-z_i,

using the box in Section 4. Define the remaining affine factors by

```text
L24=u-h
L25=h-s-(69/100)u
L26=1-s-u-h
L27=u-z-2s
L28=h-a-2s
L29=w-z+u+h-1-2s
L30=u+h-a-x-2s
L31=p-q-s
L32=v-j-s
L33=l-m-s
L34=1-p-q
L35=v+j-1
L36=l+m-1
L37=v-p-s
L38=m-j-s
L39=u-s
L40=v-s
L41=l-s
L42=w-z-s
L43=1-s-a-x
L44=h-s
L45=1-s-q
L46=1-s-j
```

Every L factor is nonnegative by the proved bounds, fan containments,
square containment and actual corner-pair triangle clearances.
Use the two quadratic factors H1,H2 from (8). The additional affine factor

    E_S=l-823/1000

is used only in rows with positive BXS, where it is nonnegative by (11).

For any three actual point labels define

    T+UVW=D(U,V,W)-s,       T-UVW=-D(U,V,W)-s.

The signs below specify globally nonnegative T factors; a space between
labels in the descriptions means concatenation in the tables.

| Source of the sign | Nonnegative factors |
|---|---|
| The distributed upper triple | T-ABC, T+AYZ, T+AYX, T-AZX, T-BYZ, T+BYX, T+BZX, T-CYZ, T-CYX, T-CZX, T-YZX |
| An upper U and lower V seen from A | T-AUV for U in {Y,Z,X}, V in {P,R,S} |
| An upper U and lower V seen from C | T+CUV for the same choices |
| Known B-ray order | T-BYP, T+BYR, T+BYS, T+BZR, T+BZS, T-BXP, T-BXR, T+BPR, T+BPS, T+BRS |
| The lower antichains and (4) | T+ARS, T+CPR, T-CRS |
| The two strict containments (4)–(5) | T+XRS, T+YRS |

The upper-only signs follow directly from (2) and the distributed inner
face. For the A/C signs, every upper point is above AC and every lower
point is below it; comparison of their slopes from A, or from C, gives
the indicated orientation. The B-ray order is

    Z before Y before R before S,       P before Y,
    X after R,

with the unfixed relative positions precisely those in (10). The remaining
listed signs were established in Sections 1–3. Thus this table does not
assume an unproved ordering of the noncorner points.

In each row, the four specified signs in (10) give its T factors for
BZP, BXS, YXP and YZS. Rows 9 and 10 additionally give the stated sign
of CPS. The conditional factors T+APS and T-YXS are available by
(11)–(12), respectively; T+CPS is also available when BZP is negative.
Every T used below belongs to this catalogue for its row.

## 6. The exact contradiction and coverage rule

Each entry `n factor` in a row means n times the displayed factor or
product of factors. All n are positive integers, and all factors have
already been shown nonnegative in that row. Let W be their sum. Then

    W>=0.                                               (13)

Every displayed W has total degree at most three. To bound it above,
substitute z_i=a_i+t_i in the coordinate order of Section 4. Thus
0<=t_i<=d_i:=b_i-a_i. Expand the displayed polynomial as

    W=c0+sum_(e!=0) c_e t_0^e0 ... t_11^e11.

Since every t_i is nonnegative, discard its negative nonconstant terms
and bound each positive monomial separately. This gives the entirely
rational rule

    W<=c0+sum_(e!=0,c_e>0) c_e product_i d_i^e_i=:U(W).   (14)

Every row below supplies the exact value of (14), and every value is
strictly less than -1/100. Thus each contradicts (13). Checking these
values requires only expanding the displayed small-integer products and
adding rational coefficients; no solver or omitted certificate is needed.

In the coverage table, a sign is the sign of the determinant in the
column heading; a dash in the CPS column means that sign is unrestricted.
The four primary columns cover all sixteen binary choices. The choice
(+,-,-,-) is covered by its two CPS signs, and only by those two rows.

| Row | BZP | BXS | YXP | YZS | CPS | Entries |
|---:|:---:|:---:|:---:|:---:|:---:|---:|
| 1 | - | - | - | - | — | 25 |
| 2 | - | - | - | + | — | 55 |
| 3 | - | - | + | - | — | 98 |
| 4 | - | - | + | + | — | 108 |
| 5 | - | + | - | - | — | 50 |
| 6 | - | + | - | + | — | 45 |
| 7 | - | + | + | - | — | 73 |
| 8 | - | + | + | + | — | 44 |
| 9 | + | - | - | - | - | 158 |
| 10 | + | - | - | - | + | 162 |
| 11 | + | - | - | + | — | 107 |
| 12 | + | - | + | - | — | 93 |
| 13 | + | - | + | + | — | 144 |
| 14 | + | + | - | - | — | 101 |
| 15 | + | + | - | + | — | 45 |
| 16 | + | + | + | - | — | 115 |
| 17 | + | + | + | + | — | 40 |

## 7. The seventeen complete coefficient tables

### Row 1: signs (-,-,-,-); CPS 0

There are 25 positive integer entries. The exact bound is

    U(W)=-4239867/100000000<-1/100.

```text
4 L26;  3 L1*L7;  3 L13*L25
3 L21*L29;  10 T+AYX;  10 T+AYX*L45
3 T-AYP*L26;  2 T-AYS*L27;  19 T-BYZ
18 T-BYZ*L31;  10 T+BYX*L14;  13 T-BYP*L26
18 T-BYP*L29;  2 T+CYS*L27;  1 T+CXS
1 T+CXS*L27;  1 T-YZX*L45;  4 T-BZP
16 T-BZP*L39;  17 T-BZP*L44;  1 T-BXS
1 T-BXS*L27;  21 T-YXP;  1 T-YXP*L7
3 T-YZS
```

### Row 2: signs (-,-,-,+); CPS 0

There are 55 positive integer entries. The exact bound is

    U(W)=-231053/20000000<-1/100.

```text
6 L4*L26;  2 L10*L17;  2 L10*L31
3 L22*L27;  3 L25*L33;  4 L26*L31
3 L26*L35;  3 L8*L14*L33;  8 L10*L12*L33
3 L15*L30*L41;  1 L23*L26*L34;  2 L23*L26*L40
3 T+AYX;  5 T+AYX*L33;  10 T+AYX*L41
12 T+AYX*L45;  3 T-AYP*L10;  7 T-AZS*L26
2 T+ARS*L24;  2 T-BYZ*L8;  9 T-BYZ*L21
7 T-BYZ*L22;  15 T-BYZ*L31;  4 T-BYZ*L40
6 T+BYX*L14;  2 T-BYP*L38;  5 T+BYR
2 T+BYR*L34;  3 T+BYR*L41;  2 T+BYS*L29
5 T+BYS*L42;  4 T+BZS*L17;  15 T+BPS*L29
5 T+BRS*L8;  1 T-CYZ*L9;  2 T-CZX*L31
1 T+CZP*L26;  1 T+CZP*L30;  2 T+CXP*L29
1 T+CXS*L26;  3 T-CRS;  5 T-CRS*L8
4 T-YZX;  1 T-YZX*L41;  4 T+XRS
16 T-BZP;  15 T-BZP*L33;  3 T-BZP*L43
5 T-BXS*L14;  18 T-YXP;  8 T-YXP*L33
10 T-YXP*L41;  22 T+YZS;  15 T+YZS*L31
4 T+YZS*L40
```

### Row 3: signs (-,-,+,-); CPS 0

There are 98 positive integer entries. The exact bound is

    U(W)=-289319861/25000000000<-1/100.

```text
20 L1*L7;  34 L4*L25;  9 L8*L26
20 L9*L14;  25 L10*L13;  18 L10*L23
19 L10*L29;  24 L10*L30;  10 L10*L33
37 L12*L25;  3 L13*L26;  8 L14*L43
2 L17*L29;  5 L24*L29;  23 L25*L31
1 L26*L26;  34 L26*L34;  35 L4*L25*L41
14 L5*L26*L36;  39 L5*L26*L41;  4 L6*L9*L14
4 L6*L10*L13;  4 L6*L31*L33;  32 L7*L14*L22
23 L7*L14*L36;  12 L7*L22*L25;  11 L7*L25*L36
33 L7*L26*L41;  52 L7*L31*L36;  16 L10*L33*L42
2 L13*L24*L29;  29 L17*L23*L29;  29 L18*L21*L29
3 L21*L25*L31;  8 L23*L25*L31;  5 L23*L26*L30
11 L23*L26*L43;  17 L23*L29*L30;  11 L24*L29*L33
12 L24*L29*L41;  6 L24*L33*L34;  30 L24*L33*L42
23 L26*L27*L41;  3 L26*L34*L41;  46 T-AYP
14 T-AYP*L7;  3 T-AYP*L41;  2 T-AYS*L26
36 T-AZX*L24;  24 T-AZX*L26;  16 T-AZS*L10
15 T-AXS*L14;  10 T-BYZ*L26;  22 T-BYZ*L31
42 T-BYZ*L33;  141 T-BYZ*L41;  43 T-BYZ*L43
35 T+BZX*L14;  8 T+BZX*L20;  23 T+BZX*L25
43 T+BZS*L1;  19 T+BZS*L26;  26 T+BPS*L10
10 T+BPS*L26;  7 T+CYS*L30;  34 T-CZX*L1
23 T-CZX*L25;  21 T-CZX*L31;  11 T+CZP*L10
12 T+CXS*L26;  18 T+CXS*L29;  24 T+CXS*L30
29 T-CRS*L29;  13 T-YZX*L21;  2 T-YZX*L26
32 H2;  42 T-BZP;  5 T-BZP*L22
25 T-BZP*L28;  21 T-BZP*L30;  51 T-BZP*L36
8 T-BXS*L24;  21 T-BXS*L27;  12 T-BXS*L30
35 T-BXS*L42;  12 T-BXS*L43;  43 T-BXS*L45
39 T+YXP*L6;  27 T+YXP*L23;  2 T+YXP*L29
21 T+YXP*L42;  72 T-YZS;  21 T-YZS*L8
5 T-YZS*L11;  13 T-YZS*L28;  3 T-YZS*L34
12 T-YZS*L39;  23 T-YZS*L45
```

### Row 4: signs (-,-,+,+); CPS 0

There are 108 positive integer entries. The exact bound is

    U(W)=-12525519/1250000000<-1/100.

```text
9 L14*L23;  5 L14*L28;  2 L14*L33
2 L14*L46;  3 L19*L31;  5 L22*L24
7 L24*L36;  9 L25*L31;  6 L4*L14*L33
35 L4*L14*L46;  5 L4*L19*L33;  1 L4*L23*L26
2 L4*L26*L32;  2 L6*L8*L26;  2 L6*L23*L26
2 L6*L26*L37;  5 L6*L26*L40;  13 L7*L14*L33
2 L7*L14*L41;  37 L7*L14*L46;  9 L7*L17*L33
20 L7*L19*L31;  10 L7*L23*L31;  7 L7*L31*L33
17 L7*L31*L46;  10 L10*L17*L22;  5 L10*L17*L36
3 L11*L18*L21;  5 L11*L21*L35;  3 L12*L29*L36
2 L14*L30*L41;  3 L18*L21*L28;  6 L23*L25*L31
13 L23*L26*L34;  4 L24*L38*L42;  2 L24*L38*L45
2 L25*L31*L33;  2 L25*L31*L42;  1 L26*L33*L34
4 L26*L34*L42;  3 L26*L35*L42;  1 L26*L35*L45
2 L28*L31*L41;  1 L29*L31*L36;  5 L29*L33*L34
1 L29*L33*L35;  10 T-AYP;  9 T-AYP*L7
11 T-AYP*L23;  2 T-AYP*L33;  2 T-AZX*L36
17 T-AZX*L38;  6 T-AZX*L45;  4 T-AZS*L26
9 T+ARS*L24;  49 T-BYZ*L21;  5 T-BYZ*L22
6 T+BYX*L7;  14 T+BYR;  5 T+BYR*L33
15 T+BYR*L41;  13 T+BYR*L42;  5 T+BYR*L43
3 T+BYR*L45;  6 T+BYS*L17;  1 T+BYS*L29
4 T+BZX*L21;  4 T+BZX*L31;  21 T+BZX*L38
2 T+BZR*L24;  3 T+BZS*L17;  9 T+BZS*L31
1 T+BRS*L10;  17 T+BRS*L27;  8 T+BRS*L29
3 T-CYZ*L9;  6 T-CYZ*L13;  6 T-CYZ*L36
39 T-CYZ*L41;  2 T-CZX*L14;  6 T-CZX*L21
7 T-CZX*L31;  13 T-CRS;  5 T-CRS*L7
3 T-CRS*L8;  16 T-CRS*L11;  13 T-CRS*L27
4 T-YZX*L46;  21 T+XRS;  4 T+XRS*L44
3 T+YRS*L7;  3 T+YRS*L8;  1 T+YRS*L28
8 T-BZP;  5 T-BZP*L11;  9 T-BZP*L23
9 T-BZP*L26;  17 T-BZP*L33;  3 T-BZP*L43
37 T-BZP*L46;  3 T-BXS*L26;  5 T+YXP*L6
2 T+YXP*L41;  3 T+YXP*L42;  56 T+YZS
6 T+YZS*L32;  7 T+YZS*L40;  4 T+YZS*L45
```

### Row 5: signs (-,+,-,-); CPS 0

There are 50 positive integer entries. The exact bound is

    U(W)=-93059119/5000000000<-1/100.

```text
3 L8*L33;  4 L10*L31;  2 L11*L33
8 L17*L23;  8 L18*L21;  5 L26*L36
2 L29*L34;  1 L30*L34;  3 L8*L12*L23
5 L13*L13*L28;  5 L24*L33*L43;  5 L26*L36*L43
1 L30*L34*L45;  8 T+AYX;  6 T+AYX*L45
11 T-AZX*L23;  4 T-AZX*L26;  5 T-AZS*L24
9 T-BYZ;  11 T-BYZ*L8;  16 T-BYZ*L11
11 T-BYZ*L31;  4 T-BYZ*L45;  24 T+BYX*L14
5 T-BYP*L26;  7 T-BYP*L29;  1 T+BZX*L14
15 T+BZX*L25;  9 T+CYS;  1 T+CYS*L8
6 T-CZX*L26;  2 T-CZX*L31;  10 T-CZX*L41
2 T+CZP*L26;  5 T+CZS*L24;  8 T-CRS
2 T-YZX*L34;  19 T-YZX*L45;  14 T-BZP
29 T-BZP*L28;  4 T-BZP*L39;  2 T-BZP*L44
9 T+BXS;  3 T+BXS*L12;  11 T+BXS*L42
17 T-YXP;  29 T-YXP*L7;  2 T-YXP*L34
1 T-YZS*L13;  10 T-YZS*L43
```

### Row 6: signs (-,+,-,+); CPS 0

There are 45 positive integer entries. The exact bound is

    U(W)=-3944989/100000000<-1/100.

```text
2 L4*L23;  1 L9*L26;  1 L6*L13*L30
2 L6*L26*L41;  2 L6*L28*L33;  2 L6*L30*L36
1 L7*L9*L31;  2 L9*L29*L34;  1 L9*L29*L36
2 L12*L24*L43;  1 L26*L31*L36;  1 L26*L33*L34
3 T+AYX*L22;  4 T+AYX*L45;  4 T-AYP*L10
2 T-AZP*L10;  2 T-AXP*L24;  1 T-AXS*L29
4 T-BYZ*L21;  4 T-BYZ*L22;  7 T-BYZ*L31
5 T+BYX*L13;  6 T+BYX*L33;  3 T+BZX*L21
6 T+BPS*L29;  5 T+BPS*L30;  3 T-CYZ*L41
1 T+CYS*L12;  1 T+CZP*L26;  1 T+CZP*L30
2 T+CXS*L4;  1 T+CXS*L31;  8 T-YZX
6 T-BZP;  6 T-BZP*L33;  1 T-BZP*L41
5 T-BZP*L43;  7 T+BXS;  4 T+BXS*L31
4 T+BXS*L42;  14 T-YXP;  5 T-YXP*L33
2 T-YXP*L41;  14 T+YZS;  7 T+YZS*L31
```

### Row 7: signs (-,+,+,-); CPS 0

There are 73 positive integer entries. The exact bound is

    U(W)=-68311313/5000000000<-1/100.

```text
5 L5*L26;  22 L7*L14;  4 L10*L24
16 L11*L26;  19 L14*L30;  41 L17*L23
15 L23*L24;  9 L24*L33;  28 L25*L31
3 L31*L33;  2 L5*L26*L34;  3 L5*L31*L36
10 L11*L24*L33;  9 L11*L26*L36;  4 L12*L21*L29
4 L12*L23*L29;  12 L12*L23*L30;  10 L13*L26*L36
6 L13*L28*L33;  6 L14*L23*L30;  16 L17*L18*L23
16 L18*L18*L21;  6 L22*L26*L34;  9 L24*L33*L34
3 L24*L41*L42;  3 L25*L31*L36;  3 L25*L31*L41
8 L26*L34*L36;  5 L28*L33*L34;  20 T-AYP
26 T-AYP*L7;  8 T-AYP*L36;  71 T-AZX*L3
17 T-AZX*L15;  32 T-AZX*L23;  62 T-BYZ*L8
37 T-BYZ*L10;  15 T-BYZ*L31;  44 T+BYX*L4
51 T+BYX*L7;  9 T+BYX*L33;  2 T+BYR
24 T+BYR*L21;  78 T+BZX*L26;  3 T+BZS*L26
5 T+BPS*L26;  2 T-CYX*L31;  23 T+CYS*L8
10 T+CYS*L34;  24 T+CYS*L40;  57 T-CZX*L1
34 T-CZX*L20;  23 T-CZX*L31;  19 T-CRS
16 T-CRS*L18;  23 T-CRS*L39;  76 T-YZX
6 T-YZX*L41;  36 T-BZP;  20 T-BZP*L11
16 T-BZP*L30;  4 T-BZP*L36;  7 T-BZP*L43
27 T+BXS;  6 T+BXS*L13;  9 T+BXS*L27
9 T+BXS*L29;  6 T+BXS*L34;  23 T+BXS*L42
20 T+YXP*L6;  23 T+YXP*L42;  9 T-YZS*L9
32 T-YZS*L43
```

### Row 8: signs (-,+,+,+); CPS 0

There are 44 positive integer entries. The exact bound is

    U(W)=-6695941/500000000<-1/100.

```text
5 L7*L14;  3 L7*L31;  10 L14*L33
9 L23*L31;  3 L1*L23*L23;  3 L4*L23*L23
2 L7*L23*L31;  5 L22*L22*L27;  1 T-AYP
7 T+ARS*L24;  3 T+ARS*L26;  14 T-BYZ*L8
27 T-BYZ*L21;  4 T+BYX;  2 T+BYX*L32
12 T+BYR;  2 T+BYR*L43;  13 T+BZS*L31
9 T-BXR;  12 T-BXR*L33;  3 T-BXR*L43
12 T+BPS*L26;  12 T+BPS*L29;  8 T+BRS*L30
2 T-CYZ*L36;  18 T-CYZ*L41;  5 T+CYS*L4
6 T+CZS*L1;  1 T+CXS*L4;  2 T-CRS
12 T-CRS*L39;  15 T-YZX*L41;  3 T+XRS*L30
17 T-BZP;  1 T-BZP*L23;  13 T-BZP*L33
14 T+BXS;  16 T+BXS*L27;  2 T+BXS*L30
12 T+BXS*L32;  1 T+BXS*L43;  31 T+YZS
15 T+YZS*L8;  2 T+YZS*L36
```

### Row 9: signs (+,-,-,-); CPS -

There are 158 positive integer entries. The exact bound is

    U(W)=-59617241/5000000000<-1/100.

```text
41 L10*L30;  21 L10*L33;  52 L10*L43
24 L10*L45;  7 L14*L19;  180 L14*L25
4 L17*L25;  4 L19*L25;  74 L20*L26
84 L26*L26;  22 L4*L8*L33;  7 L4*L22*L31
56 L4*L24*L43;  54 L4*L26*L43;  92 L4*L26*L45
22 L4*L36*L43;  3 L4*L36*L45;  7 L5*L14*L21
21 L6*L10*L33;  11 L6*L13*L33;  59 L6*L24*L33
59 L6*L26*L36;  109 L7*L10*L26;  125 L7*L10*L31
24 L7*L12*L26;  48 L7*L13*L25;  58 L7*L26*L31
2 L8*L12*L26;  6 L8*L13*L25;  6 L8*L14*L25
2 L8*L26*L31;  9 L9*L14*L29;  18 L9*L20*L26
13 L9*L26*L36;  2 L10*L12*L46;  7 L10*L17*L31
1 L10*L17*L45;  20 L10*L23*L30;  110 L10*L24*L42
2 L10*L26*L38;  2 L10*L29*L30;  49 L10*L31*L41
66 L10*L34*L42;  21 L10*L36*L42;  20 L10*L41*L43
2 L11*L24*L33;  8 L12*L18*L26;  2 L13*L17*L44
7 L13*L19*L30;  5 L13*L19*L33;  7 L14*L17*L23
2 L14*L19*L41;  49 L14*L21*L43;  57 L14*L30*L42
6 L18*L24*L31;  2 L18*L26*L36;  5 L19*L25*L41
25 L20*L24*L31;  36 L20*L24*L43;  20 L20*L26*L30
5 L20*L26*L35;  20 L23*L30*L30;  90 L24*L29*L33
9 L24*L33*L34;  9 L24*L33*L37;  17 L24*L33*L42
14 L24*L33*L43;  1 L25*L30*L30;  2 L25*L36*L37
1 L26*L28*L29;  70 L26*L29*L36;  1 L26*L30*L37
18 L26*L31*L36;  9 L26*L33*L34;  1 L26*L33*L35
37 L26*L36*L42;  1 L29*L30*L30;  2 T+AYX*L30
37 T-AZX*L14;  63 T-AZS*L10;  5 T-AXP*L10
91 T-BYZ*L8;  79 T-BYP;  3 T-BYP*L5
12 T-BYP*L9;  4 T-BYP*L23;  257 T-BYP*L33
156 T-BYP*L42;  18 T-BYP*L46;  1 T+BYR*L9
5 T+BYR*L13;  2 T+BYR*L41;  39 T+BYS*L4
15 T+BYS*L26;  1 T+BZX*L8;  9 T+BZX*L14
74 T+BZX*L20;  42 T+BZX*L25;  2 T-BXR*L14
39 T+BPS*L4;  6 T+BRS*L26;  30 T+CYP*L4
3 T+CYR*L10;  75 T+CYS;  80 T+CYS*L6
3 T+CYS*L9;  197 T+CYS*L29;  26 T+CYS*L34
12 T+CYS*L37;  57 T+CYS*L42;  146 T-CZX*L15
121 T-CZX*L24;  101 T-CZX*L26;  65 T-CZX*L36
54 T-CZX*L41;  82 T-CZX*L45;  42 T+CZP*L10
5 T+CXP*L10;  1 T+CXS*L10;  11 T+CXS*L14
96 T+CXS*L30;  6 T+XRS*L24;  4 T+XRS*L26
7 T+XRS*L31;  7 H1*L21;  157 H2
77 H2*L6;  1 H2*L21;  5 H2*L23
84 H2*L42;  1 H2*L46;  33 T+BZP*L10
42 T+BZP*L24;  251 T+BZP*L26;  247 T+BZP*L33
33 T-BXS;  65 T-BXS*L6;  1 T-BXS*L9
13 T-BXS*L13;  9 T-BXS*L14;  115 T-BXS*L30
20 T-BXS*L44;  67 T-YXP*L4;  266 T-YXP*L7
55 T-YXP*L20;  1 T-YXP*L26;  10 T-YXP*L38
209 T-YZS;  258 T-YZS*L31;  44 T-YZS*L43
74 T-CPS;  46 T-CPS*L6;  5 T-CPS*L8
10 T-CPS*L28;  212 T-CPS*L29;  5 T-CPS*L32
3 T-CPS*L40;  1 T-YXS*L26
```

### Row 10: signs (+,-,-,-); CPS +

There are 162 positive integer entries. The exact bound is

    U(W)=-14432481/1000000000<-1/100.

```text
15 L6*L24;  39 L9*L24;  43 L10*L43
28 L10*L46;  14 L17*L21;  46 L17*L23
13 L17*L45;  8 L18*L24;  118 L23*L24
2 L24*L26;  1 L24*L42;  27 L26*L26
9 L26*L30;  4 L4*L8*L21;  30 L4*L13*L21
31 L4*L14*L21;  5 L4*L30*L36;  9 L5*L10*L34
11 L5*L19*L26;  8 L5*L26*L32;  7 L6*L15*L26
24 L6*L26*L31;  57 L6*L26*L35;  6 L7*L9*L26
8 L7*L10*L26;  28 L7*L19*L26;  8 L7*L24*L43
14 L7*L26*L38;  67 L9*L23*L26;  10 L9*L26*L33
4 L9*L26*L35;  3 L10*L15*L29;  29 L10*L15*L42
59 L10*L23*L26;  202 L10*L23*L31;  5 L10*L27*L31
19 L10*L29*L36;  36 L10*L31*L33;  7 L10*L31*L40
4 L10*L31*L42;  19 L10*L33*L42;  3 L12*L24*L42
5 L14*L17*L30;  53 L14*L19*L23;  15 L14*L29*L33
53 L15*L21*L35;  202 L15*L23*L30;  4 L15*L26*L29
13 L15*L26*L33;  38 L15*L29*L30;  36 L15*L30*L33
120 L17*L23*L29;  44 L17*L23*L30;  160 L17*L23*L45
31 L17*L26*L36;  44 L18*L21*L30;  3 L19*L26*L27
24 L19*L26*L36;  117 L19*L27*L33;  54 L19*L31*L33
40 L21*L24*L32;  17 L21*L24*L40;  24 L21*L26*L35
15 L21*L29*L34;  87 L23*L24*L31;  4 L23*L24*L32
73 L23*L24*L43;  20 L23*L24*L46;  6 L23*L26*L30
6 L23*L26*L31;  21 L23*L27*L30;  3 L24*L29*L36
3 L24*L29*L38;  23 L24*L31*L33;  12 L24*L32*L42
54 L24*L33*L45;  5 L24*L36*L42;  4 L24*L40*L43
83 L24*L42*L46;  3 L26*L26*L32;  3 L26*L27*L32
13 L26*L27*L33;  3 L26*L27*L46;  34 L26*L30*L45
67 L26*L31*L33;  3 L26*L31*L42;  1 L26*L31*L46
3 L26*L34*L35;  13 L26*L34*L36;  10 L27*L30*L33
15 L29*L31*L33;  10 T+AYX*L15;  63 T+AYX*L33
4 T-AYP*L10;  8 T-AZX*L24;  5 T-AZS*L24
5 T-AXP*L24;  18 T+ARS*L4;  78 T-BYZ*L8
52 T-BYZ*L19;  26 T-BYZ*L20;  23 T-BYZ*L37
27 T-BYZ*L38;  42 T+BYX*L4;  20 T-BYP*L4
6 T-BYP*L22;  23 T+BYR;  11 T+BYR*L13
120 T+BYR*L21;  45 T+BYR*L23;  7 T+BYS*L4
15 T+BZX*L14;  29 T+BZX*L38;  69 T+BZR*L26
13 T+BZS*L26;  3 T+BPR*L24;  22 T+BPS*L4
58 T+BRS*L4;  59 T+BRS*L26;  67 T+CYS*L10
13 T-CZX*L15;  32 T-CZX*L24;  29 T-CZX*L38
35 T-CZX*L41;  65 T-CZX*L45;  30 T+CZP*L10
37 T+CZP*L24;  32 T+CXS*L24;  21 T+CXS*L26
44 T+CXS*L30;  4 T-CRS*L4;  75 T-CRS*L6
45 T-CRS*L29;  44 T-CRS*L30;  54 T-CRS*L31
36 T-CRS*L39;  107 T-CRS*L45;  4 T+XRS*L26
3 T+YRS*L26;  28 T+BZP*L10;  14 T+BZP*L23
47 T+BZP*L26;  40 T+BZP*L33;  31 T-BXS*L14
44 T-BXS*L30;  31 T-YXP;  54 T-YXP*L7
233 T-YXP*L23;  37 T-YXP*L33;  8 T-YXP*L40
47 T-YZS;  2 T-YZS*L11;  9 T-YZS*L31
36 T-YZS*L43;  44 T-YZS*L45;  120 T-YZS*L46
44 T+CPS;  69 T+CPS*L7;  31 T+CPS*L28
30 T+CPS*L29;  54 T+CPS*L32;  34 T+CPS*L44
```

### Row 11: signs (+,-,-,+); CPS 0

There are 107 positive integer entries. The exact bound is

    U(W)=-13464823/1000000000<-1/100.

```text
8 L24;  13 L3*L4;  4 L4*L23
4 L4*L46;  3 L7*L17;  4 L7*L24
36 L9*L17;  12 L9*L24;  1 L14*L26
7 L22*L24;  2 L24*L24;  22 L24*L32
7 L24*L38;  5 L26*L29;  7 L26*L30
22 L26*L35;  3 L3*L4*L43;  38 L4*L23*L24
47 L4*L23*L46;  5 L4*L30*L33;  2 L6*L26*L43
47 L7*L17*L23;  37 L7*L21*L24;  1 L7*L24*L43
15 L8*L14*L38;  4 L9*L12*L26;  50 L9*L22*L24
21 L9*L24*L32;  2 L9*L24*L40;  25 L9*L26*L35
28 L10*L12*L26;  6 L10*L12*L36;  39 L10*L12*L38
23 L10*L14*L26;  43 L10*L17*L22;  26 L10*L17*L45
40 L10*L21*L24;  24 L10*L24*L31;  3 L10*L24*L45
4 L10*L26*L36;  3 L10*L31*L38;  4 L11*L24*L36
3 L11*L24*L37;  5 L20*L29*L30;  4 L22*L24*L32
4 L22*L26*L35;  1 L23*L26*L37;  3 L24*L26*L31
3 L24*L31*L38;  19 L24*L32*L43;  4 L26*L30*L34
5 L26*L30*L41;  18 L26*L35*L43;  3 L30*L34*L38
3 T-AYP*L24;  15 T-AYS*L26;  2 T-AXR*L14
7 T+BYX*L14;  48 T+BYX*L38;  6 T-BYP
52 T-BYP*L11;  3 T-BYP*L22;  10 T-BYP*L28
2 T-BYP*L36;  39 T-BYP*L38;  3 T-BYP*L39
3 T-BYP*L40;  58 T+BYR;  44 T+BYR*L9
1 T+BYR*L21;  37 T+BYR*L23;  41 T+BYR*L43
23 T-BXR*L14;  3 T+BRS*L10;  5 T-CYZ*L1
93 T-CYZ*L9;  47 T-CYZ*L19;  120 T-CYZ*L20
32 T-CYZ*L26;  52 T-CYZ*L41;  2 T-CYZ*L43
80 T+CYS*L4;  49 T+CYS*L26;  3 T+CXP*L24
93 T+CXS*L4;  46 T+CXS*L26;  53 T-CRS
44 T-CRS*L3;  47 T-CRS*L7;  2 T-CRS*L8
40 T-CRS*L11;  3 T-CRS*L12;  93 T-YZX*L21
79 T+XRS;  3 T+XRS*L12;  2 T+YRS*L8
27 T-YXP;  3 T-YXP*L22;  4 T-YXP*L36
45 T-YXP*L38;  2 T-YXP*L40;  64 T+YZS
5 T+YZS*L1;  93 T+YZS*L9;  32 T+YZS*L26
5 T+YZS*L43;  47 T+YZS*L46
```

### Row 12: signs (+,-,+,-); CPS 0

There are 93 positive integer entries. The exact bound is

    U(W)=-342671877/25000000000<-1/100.

```text
15 L4*L31;  7 L10*L30;  4 L10*L33
3 L10*L45;  7 L25*L31;  33 L26*L41
23 L26*L45;  17 L1*L7*L31;  2 L4*L8*L21
9 L4*L10*L34;  8 L4*L12*L30;  3 L4*L22*L31
32 L4*L31*L44;  2 L4*L33*L34;  12 L4*L36*L45
15 L6*L14*L30;  10 L7*L10*L34;  14 L7*L20*L34
6 L7*L25*L31;  16 L7*L26*L45;  2 L8*L13*L26
27 L8*L15*L20;  48 L8*L24*L33;  8 L8*L24*L41
53 L8*L26*L41;  9 L10*L22*L31;  2 L10*L23*L29
54 L10*L33*L39;  9 L10*L34*L41;  7 L10*L41*L45
29 L14*L23*L30;  14 L14*L24*L33;  3 L14*L29*L30
8 L14*L29*L33;  33 L14*L30*L33;  15 L17*L23*L29
15 L18*L21*L29;  2 L21*L29*L31;  8 L23*L29*L31
52 L23*L30*L31;  4 L26*L30*L31;  2 L26*L33*L34
8 L29*L30*L31;  2 L29*L30*L33;  4 T+AYX*L4
31 T+AYX*L14;  15 T-AYP*L26;  20 T-AYP*L29
47 T-AZX*L24;  17 T-BYZ*L10;  3 T-BYZ*L20
49 T+BYX*L4;  31 T+BYX*L15;  8 T+BZX*L15
59 T+BZX*L20;  55 T+BZX*L26;  26 T+BZX*L34
4 T+BZX*L36;  2 T+BZS*L26;  12 T-BXP*L4
37 T+BPS*L4;  4 T-CYZ*L10;  1 T+CYS*L26
3 T+CYS*L30;  8 T+CYS*L31;  38 T-CZX*L1
11 T-CZX*L20;  16 T-CZX*L25;  16 T+CXS*L14
7 T+CXS*L30;  15 T-CRS*L29;  4 T+BZP
22 T+BZP*L1;  18 T+BZP*L8;  13 T+BZP*L11
7 T+BZP*L28;  8 T+BZP*L33;  56 T+BZP*L41
45 T-BXS;  39 T-BXS*L5;  2 T-BXS*L7
17 T-BXS*L12;  4 T-BXS*L24;  6 T-BXS*L27
35 T-BXS*L31;  7 T-BXS*L43;  55 T+YXP
24 T+YXP*L7;  61 T+YXP*L33;  51 T-YZS
54 T-YZS*L8;  29 T-YZS*L12;  24 T-YZS*L31
```

### Row 13: signs (+,-,+,+); CPS 0

There are 144 positive integer entries. The exact bound is

    U(W)=-50749477/5000000000<-1/100.

```text
29 L3*L4;  47 L4*L11;  20 L4*L23
15 L4*L26;  17 L4*L42;  62 L4*L43
21 L4*L46;  32 L7*L17;  43 L7*L24
29 L8*L17;  24 L10*L24;  8 L14*L26
16 L14*L29;  5 L14*L30;  13 L17*L23
53 L19*L24;  30 L24*L32;  59 L24*L38
101 L26*L26;  76 L26*L30;  161 L3*L4*L8
70 L3*L4*L46;  22 L4*L21*L24;  11 L4*L23*L32
205 L4*L23*L46;  11 L4*L26*L46;  15 L4*L30*L31
43 L4*L30*L33;  5 L4*L31*L43;  40 L4*L33*L46
40 L4*L43*L45;  45 L4*L43*L46;  9 L5*L26*L30
81 L6*L8*L26;  43 L6*L26*L32;  81 L7*L8*L24
205 L7*L17*L23;  38 L7*L17*L30;  12 L7*L17*L33
50 L7*L21*L24;  6 L7*L24*L32;  25 L7*L24*L38
10 L7*L24*L46;  10 L7*L26*L30;  2 L8*L24*L32
8 L9*L26*L34;  6 L9*L26*L37;  44 L10*L13*L26
43 L10*L17*L22;  46 L10*L19*L21;  28 L10*L26*L34
4 L10*L26*L37;  20 L10*L29*L34;  38 L11*L17*L23
6 L12*L26*L28;  3 L13*L24*L30;  31 L13*L24*L43
51 L14*L14*L30;  51 L14*L28*L31;  41 L17*L22*L29
10 L19*L23*L26;  43 L20*L29*L30;  26 L22*L24*L32
15 L24*L29*L33;  10 L24*L30*L42;  11 L24*L37*L43
5 L25*L29*L31;  24 L26*L26*L34;  25 L26*L26*L36
7 L26*L28*L31;  41 L26*L29*L36;  27 L26*L29*L45
12 L26*L30*L34;  43 L26*L30*L41;  1 L26*L30*L45
17 L26*L33*L46;  20 L29*L30*L31;  40 T+AYX*L14
20 T-AYS*L26;  81 T-AZX;  4 T-AZX*L1
11 T-AZX*L22;  5 T-AZX*L25;  14 T-AZX*L31
38 T-AZX*L32;  27 T-AZX*L36;  5 T-AZX*L38
16 T-AZX*L45;  7 T-AZP*L14;  55 T-AZP*L26
19 T-AZP*L29;  44 T-AZP*L30;  22 T-AXP*L4
68 T-AXS*L4;  9 T+ARS*L24;  12 T+BYX*L7
16 T+BYX*L21;  92 T+BYX*L31;  284 T+BYX*L38
77 T+BYR;  11 T+BYR*L5;  3 T+BYR*L7
275 T+BYR*L11;  195 T+BYR*L23;  9 T+BYR*L33
13 T+BYR*L43;  196 T+BYS*L10;  4 T+BRS*L10
104 T-CYZ*L9;  23 T-CYZ*L12;  175 T-CYZ*L19
48 T-CYZ*L20;  40 T-CYZ*L26;  81 T-CYZ*L33
105 T-CYZ*L43;  22 T+CYP*L4;  50 T+CYS*L4
53 T+CYS*L26;  21 T+CXS*L26;  62 T-CRS
213 T-CRS*L7;  77 T-CRS*L11;  3 T-YZX*L26
51 T+XRS;  2 T+XRS*L6;  17 T+XRS*L29
24 T+XRS*L42;  265 T+XRS*L44;  20 T+BZP
9 T+BZP*L14;  24 T+BZP*L28;  19 T+BZP*L42
50 T+BZP*L43;  19 T-BXS*L26;  102 T+YXP
51 T+YXP*L14;  3 T+YXP*L29;  7 T+YXP*L42
90 T+YZS;  70 T+YZS*L11;  62 T+YZS*L26
11 T+YZS*L32;  16 T+YZS*L43;  245 T+YZS*L46
```

### Row 14: signs (+,+,-,-); CPS 0

There are 101 positive integer entries. The exact bound is

    U(W)=-402869/31250000<-1/100.

```text
6 L24;  9 L4*L28;  10 L4*L30
4 L9*L24;  2 L14*L26;  2 L14*L36
66 L17*L23;  26 L23*L24;  2 L24*L32
11 L24*L45;  8 L26*L26;  9 L26*L30
5 L30*L34;  2 L8*L14*L37;  12 L8*L26*L33
2 L9*L24*L42;  7 L10*L21*L31;  14 L10*L23*L31
15 L11*L13*L26;  2 L11*L13*L37;  11 L11*L24*L33
12 L11*L26*L33;  3 L13*L13*L28;  1 L13*L30*L31
6 L14*L24*L43;  21 L17*L18*L23;  21 L18*L18*L21
4 L22*L26*L30;  16 L23*L24*L31;  1 L23*L24*L42
18 L23*L30*L34;  2 L24*L32*L45;  12 L24*L41*L43
6 L26*L26*L45;  4 L26*L28*L33;  7 L26*L30*L45
26 L26*L36*L43;  1 L28*L34*L36;  1 L30*L34*L34
1 L33*L34*L43;  11 T+AYX*L29;  3 T+AYX*L38
4 T-AYS*L24;  1 T-AZX*L33;  5 T-AXS*L24
8 T+BYX*L7;  31 T+BYX*L13;  9 T+BYX*L14
17 T-BYP;  2 T-BYP*L13;  11 T-BYP*L30
1 T-BYP*L36;  9 T-BYP*L41;  15 T-BYP*L43
2 T-BYP*L46;  3 T+BYR;  46 T+BYR*L21
5 T-BXR*L14;  5 T-BXR*L33;  36 T-CYX*L4
2 T+CYS*L5;  10 T+CYS*L7;  50 T+CYS*L8
10 T+CYS*L27;  1 T+CYS*L37;  44 T+CYS*L40
43 T-CZX*L1;  32 T-CZX*L20;  3 T-CZX*L26
11 T-CZX*L36;  19 T-CZX*L41;  11 T+CZS*L24
45 T+CXS*L27;  5 T+CPR*L28;  27 T-CRS
4 T-CRS*L8;  3 T-CRS*L10;  21 T-CRS*L18
43 T-CRS*L39;  12 T-YZX*L21;  13 T-YZX*L23
1 T+XRS*L26;  44 T+BXS;  9 T+BXS*L1
4 T+BXS*L12;  74 T+BXS*L26;  14 T+BXS*L31
5 T+BXS*L32;  3 T+BXS*L42;  47 T-YXP
3 T-YXP*L13;  20 T-YXP*L23;  2 T-YXP*L32
12 T-YXP*L33;  2 T-YXP*L34;  11 T-YXP*L39
11 T-YXP*L44;  3 T-YXP*L46;  20 T-YZS
47 T-YZS*L9;  3 T-YZS*L43
```

### Row 15: signs (+,+,-,+); CPS 0

There are 45 positive integer entries. The exact bound is

    U(W)=-25746899/500000000<-1/100.

```text
13 L26;  43 L4*L23;  3 L22*L24
5 L26*L33;  2 L26*L41;  1 L30*L34
13 L7*L17*L23;  12 L7*L18*L21;  13 L13*L28*L41
2 L23*L24*L31;  1 L30*L31*L33;  1 L30*L34*L41
3 T+AYX*L22;  2 T+AYX*L31;  12 T+AYX*L36
2 T+ARS*L24;  30 T-BYZ*L21;  14 T+BYX
12 T+BYX*L23;  11 T+BYX*L33;  2 T+BYX*L37
3 T-BYP;  3 T-BYP*L36;  7 T-BYP*L41
1 T+BYR*L13;  6 T+BYS*L14;  2 T-BXR*L13
2 T-BXR*L14;  4 T-BXR*L33;  2 T+BPR*L30
9 T+BPS*L30;  3 T+BRS*L30;  14 T-CYZ
30 T-CYZ*L41;  13 T-CRS*L7;  4 T-CRS*L39
25 T+BXS;  8 T+BXS*L31;  4 T+BXS*L32
2 T+BXS*L45;  15 T-YXP;  2 T-YXP*L32
8 T-YXP*L33;  13 T-YXP*L41;  43 T+YZS
```

### Row 16: signs (+,+,+,-); CPS 0

There are 115 positive integer entries. The exact bound is

    U(W)=-113564297/6250000000<-1/100.

```text
4 L4*L29;  7 L8*L17;  22 L8*L24
21 L10*L24;  12 L11*L26;  45 L17*L23
8 L17*L39;  28 L23*L24;  14 L24*L33
8 L24*L37;  5 L26*L35;  41 L26*L36
5 L4*L26*L34;  2 L7*L13*L24;  2 L8*L22*L26
6 L8*L24*L32;  8 L8*L24*L33;  14 L8*L24*L40
3 L8*L24*L41;  22 L8*L26*L35;  12 L8*L26*L36
3 L8*L33*L34;  2 L9*L21*L31;  6 L10*L24*L32
14 L10*L24*L40;  6 L10*L26*L35;  11 L12*L19*L30
5 L12*L24*L42;  3 L12*L30*L33;  4 L13*L24*L32
4 L13*L26*L35;  14 L14*L30*L41;  14 L14*L30*L46
21 L17*L18*L23;  1 L17*L18*L33;  2 L17*L23*L35
24 L18*L18*L21;  3 L18*L24*L41;  8 L23*L24*L40
14 L23*L30*L31;  2 L24*L35*L41;  2 L26*L31*L41
2 L26*L36*L40;  14 L28*L31*L38;  22 T+AYX*L14
9 T-AYP*L26;  8 T-AYP*L29;  11 T-AZX*L23
13 T-AZX*L24;  15 T-AZX*L26;  9 T-AZX*L33
6 T-AZP*L29;  11 T-AZP*L30;  11 T-AXS*L4
22 T+BYX;  2 T+BYX*L5;  30 T+BYX*L23
45 T+BYX*L40;  32 T+BYX*L42;  26 T+BYX*L45
18 T+BYR*L21;  2 T+BYR*L31;  13 T+BYR*L43
8 T+BYR*L45;  8 T+BZX*L15;  6 T+BZX*L26
47 T-BXR*L26;  11 T-BXR*L31;  2 T-BXR*L33
6 T+BPS*L4;  29 T+CYS;  48 T+CYS*L8
2 T+CYS*L37;  21 T+CYS*L40;  50 T-CZX*L1
2 T-CZX*L25;  5 T+CXP*L4;  34 T-CRS
36 T-CRS*L8;  2 T-CRS*L10;  22 T-CRS*L18
2 T-CRS*L35;  5 T-CRS*L39;  4 T-YZX*L14
6 T+XRS*L26;  11 H1*L30;  2 T+BZP*L25
12 T+BZP*L28;  26 T+BZP*L41;  6 T+BZP*L42
11 T+BZP*L43;  39 T+BXS;  16 T+BXS*L5
16 T+BXS*L29;  2 T+BXS*L32;  2 T+BXS*L34
19 T+BXS*L37;  16 T+BXS*L40;  4 T+BXS*L42
30 T+YXP;  12 T+YXP*L7;  10 T+YXP*L32
14 T+YXP*L36;  9 T+YXP*L41;  14 T+YXP*L46
27 T-YZS*L9;  26 T-YZS*L12;  20 T-YZS*L43
6 T+APS*L1;  19 T+APS*L4;  1 T+APS*L8
17 T+APS*L28;  3 E_S*L8*L31;  33 E_S*T-BXR
38 E_S*T-CZX
```

### Row 17: signs (+,+,+,+); CPS 0

There are 40 positive integer entries. The exact bound is

    U(W)=-21680087/500000000<-1/100.

```text
2 L26;  2 L3*L4;  10 L4*L23
6 L4*L33;  1 L8*L24;  2 L8*L26
4 L14*L30;  3 L22*L24;  4 L26*L32
3 L28*L31;  3 L4*L23*L46;  1 L4*L33*L40
4 L7*L17*L23;  1 L16*L29*L33;  1 L26*L33*L46
4 T+ARS*L24;  8 T-BYZ*L21;  10 T+BYX
9 T+BYX*L32;  1 T+BYX*L40;  3 T+BYR*L23
10 T+BYR*L43;  1 T-BXR;  10 T-BXR*L26
9 T-BXR*L33;  9 T+BRS*L30;  6 T-CYZ
1 T-CYZ*L32;  8 T-CYZ*L41;  3 T-CYZ*L46
5 T-CRS*L7;  11 T-CRS*L39;  9 T+BXS
9 T+BXS*L32;  1 T+BXS*L40;  4 T+YXP
16 T+YZS;  1 T+YZS*L32;  3 T+YZS*L46
6 E_S*L29
```

## 8. Conclusion and scope

Each possible primary sign choice has an explicit contradiction. The one
choice requiring the CPS sign is excluded in both of its exhaustive
alternatives. Thus the nine-point necessary configuration from Sections
1–4 does not exist, and the original U3 distributed 2/2 fan split is
impossible at minimum doubled area s.

This excludes the entire 2/2 subfamily, including all coordinate closure
faces consistent with positive actual triangle area. Along with the
separate 4/0 and 0/4 proof, it leaves only the 3/1 split, up to reflection,
inside U3-DISTRIBUTED. No claim about that remaining split is made here.
