# U3 distributed: complete exclusion of the 4/0 and 0/4 fan splits

This note excludes the complete distributed-upper family in which all
four lower points lie on the same side of the line BY defined below.
Both reflected alternatives, 4/0 and 0/4, are included. The other fan
splits, 3/1 and 2/2, retain their own proof obligations; the parent
U3-DISTRIBUTED family is not closed here.

The proof first reduces the lower five-point subset to six explicit
convex-pentagon orders. Section 5 supplies one fixed cubic contradiction
for each order. All 269 nonzero small-integer coefficients are printed
in Section 6, together with their exact negative bounds. These tables
are part of the proof; no optimizer, adaptive subdivision, numerical
feasibility assertion, or certificate generated at runtime is a premise.
The optional Fraction-only checker `check_u3_four_one_side.py` checks
the transcription of this finite displayed algebra.

Let A=(0,0), B=(0,1), C=(1,1). Choose Y among the three upper points
with minimum B-barycentric coordinate y-x. No other upper point can
lie inside ACY, since its B-coordinate would then be strictly smaller.
In the distributed case, the other two points occupy different fan
triangles at Y; thus one is Z inside ABY and the other is X inside BCY.
This labeling is exhaustive, including a tie in the minimum coordinate.

Write Y=(u,v) and h=1-v. A lower point L=(x,y) is A-side of BY when
h x-u(1-y)<0, and C-side when this expression is positive. There is no
zero case, because B,Y,L are actual points with positive triangle area.
Suppose all four lower points are A-side. This sign, together with
y<x, puts Y strictly inside BCL: the edge BC test is v<1, the edge LB
test is precisely the stated sign, and the edge CL test follows from

    (1-u)/h>1>(1-x)/(1-y).

The first inequality uses v>u, and the second uses x>y. Since X is
inside BCY, it too lies strictly inside BCL. Put

    s=93/1000, G=4+2sqrt(3), k=Gs, r=1-k.

Assume every actual unsigned doubled triangle area is at least s.

## 1. Lower points form an antichain and lie in a short strip

The two-interior triangle theorem applied to BCL gives y_L<=r. We also
have x_L-y_L>=s, by the actual triangle ACL.

No lower M can lie inside BCL for another lower L. Otherwise BCL
contains Y,X,M, with both Y and X inside its fan BCM. This is a
clustered triple, excluded by CLUSTERED_TRIANGLE.md.

For any point L=(x,y) put H=1-y, p=x/H, q=(1-x)/H. Containment M in
BCL is equivalent to p(M)>p(L) and q(M)>q(L), with weak inequalities
for closed containment. Actual collinear triples are excluded. Thus,
when lower points are ordered by increasing p, their q values decrease
strictly. Their original x coordinates also increase strictly.

Accordingly, for any earlier/later lower pair Pi=(xi,yi), Pj=(xj,yj),
both the following actual doubled areas have the displayed positive
sign and are at least s:

    xj(1-yi)-xi(1-yj)>=s,                               (B)
    (1-xi)(1-yj)-(1-xj)(1-yi)>=s.                       (C)

The simple rational bounds k>69/100 and r<31/100 will be used below.

## 2. Every quadrilateral with A and three lower points has small area

Take three lower points P1,P2,P3 in increasing x order. Assume A and
these points form a convex quadrilateral. Up to reversing orientation,
the two possible cyclic orders are A,P1,P2,P3 and A,P1,P3,P2. The third
order would violate the x-monotonicity of the two boundary chains from
the leftmost vertex A to the rightmost vertex P3.

We prove that its unsigned doubled area D satisfies

    D <= M:=r[2-r-s-s/(1-r)].                           (1)

First, r<M, because 1-r-s-s/(1-r)>0 using k>69/100.

### Order A,P1,P2,P3

Its signed area is

    E=-(x3-x1)y2+x2(y3-y1).

If E>=0 then E<=x2 y3<=r. If E<0 and y1<=y3, then -E<=r as well.
Only E<0 and y1>y3 needs work. Write

    D=(x3-x1)y2+x2(y1-y3).

By x1>=y1+s and (B) for P2,P3,

    D <= x3 y2-(y1+s)y2
          +[x3(1-y2)-s](y1-y3)/(1-y3).

The coefficient of x3 is positive, so use x3<=1. The coefficient of
y1 in the result is

    [1-2y2+y2 y3-s]/(1-y3)>0,

because yi<=r<31/100. Therefore y1<=r gives

    D <= y2(1-r-s)+(1-y2-s)(r-y3)/(1-y3).

The latter expression decreases with y3, so replace y3 by zero. Its
coefficient of y2 is 1-2r-s>0, so finally use y2<=r:

    D <= 2r(1-r-s) < M.

The last comparison is
M-2r(1-r-s)=r^2[1-s/(1-r)]>0.

### Order A,P1,P3,P2

The signed area is

    E=-(x2-x1)y3+x3(y2-y1).

If E>=0 then E<=x3 y2<=r. Otherwise its unsigned area is

    D=(x2-x1)y3+x3(y1-y2).

Use x1>=y1+s; the resulting coefficient of y1 is x3-y3>=s>0, so
y1<=r yields

    D <= (x2-r-s)y3+x3(r-y2).

By (C) for P2,P3,

    x2 <= 1-[s+(1-x3)(1-y2)]/(1-y3).

After substituting, the coefficient of x3 is

    r-y2+y3(1-y2)/(1-y3)>=0.

Use x3<=1, then y2>=0. This gives

    D <= r+y3[1-r-s-s/(1-y3)].

The last expression increases with y3 on [0,r]: its derivative is at
least k-s-s/k^2>0, which follows already from k>69/100. Therefore
y3<=r proves (1).

## 3. A quadrilateral hull cannot contain the fifth lower-subset point

A convex quadrilateral containing one further actual point has doubled
area at least 2(1+sqrt(2))s. To recall the short proof, write its four
positive fan areas about that point as a,b,c,d. Each is at least s,
and the two actual diagonal triangles give |ac-bd|>=s^2. Interchanging
the products if needed, ac>=bd+s^2>=2s^2. AM--GM gives

    a+b+c+d>=2sqrt(ac)+2sqrt(bd)>=2(1+sqrt(2))s.

But (1) gives the strict opposite inequality. At the exact value of r,

    M=-25947/125000+189457sqrt(3)/500000
       <2(1+sqrt(2))s.

For a wholly rational comparison, use sqrt(3)<17321/10000 and
sqrt(2)>14142/10000; the resulting positive gap is

    1501303/5000000000>0.

Thus A plus the four lower points cannot have quadrilateral hull.
Its hull cannot be triangular either: any triangle in their bottom
strip has doubled area at most r, whereas its two interior actual
points would require doubled area at least Gs=k>r.

The hull of A and the four lower points is therefore a convex pentagon.
Reflection gives the corresponding statement for a 0/4 fan split,
using C and the four right-strip points instead.

## 4. The pentagon cannot put all three intermediate vertices on one chain

Order its four lower vertices by increasing x as P1,P2,P3,P4. Every
pair of lower points has x separation at least s. Indeed, writing
dx=xj-xi>0 and dy=yj-yi, when dy>=0 the positive C-area is

    dx(1-yi)-(1-xi)dy<=dx,

and when dy<0 the positive B-area is

    dx(1-yi)+xi dy<=dx.

Each area is at least s. Also x1>=s by triangle ABP1.

Suppose all of P1,P2,P3 lie on the same side of the chord AP4. Then
convexity makes them a strictly concave or strictly convex graph in
x order. Let D=x4<=1, put x0=0, and let di=xi-x(i-1), i=1,2,3,4.
Thus d1,d4>=s. Subtract the affine chord AP4, and change sign if
needed, to obtain a positive concave piecewise-linear function f on
[0,D], vanishing at its endpoints. Its three downward slope jumps
delta_i satisfy

    delta_i>=s/(di*d(i+1)),       i=1,2,3,

because these are exactly the three consecutive actual ear areas.
Also f(x2)<=r: above the chord this follows from y2<=r and the
nonnegative chord height; below it, from y2>=0 and chord height<=r.

The elementary slope-jump interpolation formula gives

    f(x2)=(D-x2)[delta1*x1+delta2*x2]/D
             +x2*delta3*(D-x3)/D
       >=(s/D)[(D-x2)/d2+x2(D-x2)/(d2*d3)+x2/d3].

Put L=x2 and R=D-x2. Since d2<=L-s and d3<=R-s, the bracket is at
least

    [D^2-LR-sD]/[LR-sD+s^2].

This expression decreases with LR, so LR<=D^2/4 gives

    f(x2)>=s(3D-4s)/(D-2s)^2
           >=s(3-4s)/(1-2s)^2
           =61101/165649>31/100>r.

For the second inequality, the function of D decreases on D>2s;
its derivative has numerator -3D+2s. This contradicts f(x2)<=r.

Thus the three intermediate vertices split 2+1 between the two chains
from A to the rightmost lower point. There are exactly six remaining
orders, according to the nonempty proper subset U of {1,2,3} above
the chord AP4. If L is its complementary subset, the counterclockwise
cyclic order is 0, then L in increasing order, then 4, then U in
decreasing order. We exclude all six next.

## 5. A fixed nonnegative cubic for each remaining order

For this section only, enlarge the strip to the rational height
R=31/100; all necessary inequalities remain valid because r<R. Keep
s=93/1000 and P0=A=(0,0), Pi=(xi,yi), i=1,2,3,4. Define 23 affine
factors as follows, with i running from 1 to 4:

    L_(5i-5)=xi-s,       L_(5i-4)=1-xi,
    L_(5i-3)=yi,         L_(5i-2)=R-yi,
    L_(5i-1)=xi-yi-s,
    L20=x2-x1-s,  L21=x3-x2-s,  L22=x4-x3-s.

Every L factor is nonnegative: use square containment, the strip bound,
triangles ABPi and ACPi, and the x-gap argument in Section 4. For i<j
define the two nonnegative quadratic factors from Section 1:

    B_ij=xj(1-yi)-xi(1-yj)-s,
    C_ij=(1-xi)(1-yj)-(1-xj)(1-yi)-s.

For an ordered triple, put

    T_ijk=det(Pj-Pi,Pk-Pi)-s.

Whenever i,j,k occur in the stated counterclockwise pentagon order,
T_ijk is nonnegative, by the actual triangle area. Every T used in a
case below has exactly that orientation. This can be checked directly
against its five-entry cyclic order.

The table for each case defines W as the sum of its entries: an entry
`n factor` means n times that factor. Juxtaposed factors are multiplied;
for example `7 B12*L3` means 7 B_12 L_3. Repeated L indices mean repeated
factors, so `2 L1*L1*L7` means 2 L_1^2 L_7. Every displayed coefficient
is a positive integer, and every factor is nonnegative. Therefore

    W>=0.                                               (2)

Here is the direct algebraic upper-bound rule used to contradict (2).
Expand the displayed polynomial as

    W=c0+sum_e c_e x1^e1 y1^e2 ... x4^e7 y4^e8.

All exponents have total degree at most three. Put nu(e)=e2+e4+e6+e8.
Because 0<=xi<=1 and 0<=yi<=R, discarding negative nonconstant terms
and bounding each remaining monomial separately gives

    W<=c0+sum_(e!=0,c_e>0) c_e R^nu(e)=:U(W).            (3)

Section 6 displays the complete polynomials in factored form and the
exact values of (3). All six satisfy U(W)<-1/100. Expanding the listed
small-integer expressions and adding their positive coefficients as
in (3) checks these inequalities directly; there are no hidden sign
cases or unspecified numerical tolerances.

## 6. The six complete coefficient tables

### Case 1: U={1}, cyclic order (0,2,3,4,1)

There are 37 nonzero entries. The exact bound is

    U(W)=-16593/62500<-1/100.

```text
23 L4*L5;  14 L14*L16;  16 L16*L17
17 L17*L22;  3 L18*L21;  6 L5*L7*L16
79 L5*L18*L21;  43 L6*L7*L10;  9 L6*L7*L15
45 L6*L12*L21;  18 L6*L12*L22;  43 L7*L10*L21
63 L7*L15*L21;  13 L10*L10*L18;  48 L10*L13*L16
79 L10*L18*L21;  44 L12*L21*L21;  44 L12*L21*L22
16 C34;  3 B12*L5;  21 B12*L9
1 B34*L16;  29 C34*L10;  1 C34*L15
20 T021;  9 T234;  57 T023*L6
22 T023*L15;  108 T023*L21;  104 T023*L22
16 T024*L22;  2 T021*L5;  21 T021*L9
16 T034*L16;  79 T234*L5;  63 T234*L10
16 T234*L15
```

### Case 2: U={2}, cyclic order (0,1,3,4,2)

There are 45 nonzero entries. The exact bound is

    U(W)=-68789/500000<-1/100.

```text
1 L1*L2;  3 L4*L16;  14 L4*L22
5 L5*L16;  9 L14*L16;  13 L17*L22
4 L18*L21;  1 L0*L6*L8;  118 L0*L10*L18
38 L0*L13*L16;  24 L0*L18*L21;  6 L1*L1*L12
12 L1*L2*L10;  6 L1*L12*L20;  1 L2*L5*L21
24 L2*L15*L21;  1 L5*L8*L11;  2 C12
4 C34;  1 C12*L6;  6 C12*L10
16 C12*L15;  7 B23*L1;  15 B23*L19
1 B23*L21;  7 B34*L16;  17 C34*L0
4 C34*L5;  1 C34*L10;  14 C34*L15
19 T342;  12 T013*L1;  40 T013*L6
97 T013*L15;  112 T034*L0;  7 T034*L16
31 T032*L16;  15 T032*L18;  16 T042*L10
29 T042*L20;  31 T042*L21;  40 T134*L5
13 T342*L0;  2 T342*L5;  1 T342*L11
```

### Case 3: U={3}, cyclic order (0,1,2,4,3)

There are 25 nonzero entries. The exact bound is

    U(W)=-9453/500000<-1/100.

```text
1 L1*L2;  10 L5*L13;  3 L17*L21
1 L1*L1*L7;  12 L1*L2*L5;  11 L1*L7*L20
11 L1*L7*L21;  3 L2*L5*L10;  1 C23
1 B23*L16;  3 C23*L15;  2 B24*L16
2 B34*L15;  4 T243;  12 T012*L1
1 T012*L6;  11 T012*L15;  11 T014*L21
12 T024*L0;  1 T024*L21;  12 T023*L16
12 T043*L5;  1 T124*L5;  11 T124*L10
2 T243*L15
```

### Case 4: U={1,2}, cyclic order (0,3,4,2,1)

There are 55 nonzero entries. The exact bound is

    U(W)=-84253/200000<-1/100.

```text
3 L4;  26 L4*L5;  2 L4*L20
5 L7*L16;  13 L8*L22;  14 L9*L22
3 L10*L16;  8 L14*L16;  49 L1*L4*L7
1 L1*L4*L12;  7 L1*L16*L17;  8 L1*L17*L22
49 L3*L4*L6;  27 L3*L9*L20;  7 L3*L11*L16
27 L4*L7*L20;  7 L5*L7*L16;  6 L6*L8*L22
9 C34;  24 B12*L8;  2 B12*L20
50 C12*L3;  33 B14*L12;  24 B23*L2
19 B23*L8;  10 B23*L9;  28 B23*L18
10 B23*L19;  5 B24*L12;  2 B24*L22
2 B34*L16;  31 T342;  8 T421
34 T034*L9;  11 T034*L20;  9 T032*L4
17 T032*L16;  41 T042*L0;  4 T042*L2
12 T042*L21;  22 T041*L21;  80 T021*L1
2 T021*L7;  36 T021*L15;  5 T021*L17
16 T021*L22;  10 T342*L1;  2 T342*L15
13 T342*L20;  4 T341*L9;  1 T321*L4
29 T321*L9;  34 T321*L16;  15 T421*L10
34 T421*L14
```

### Case 5: U={1,3}, cyclic order (0,2,4,3,1)

There are 71 nonzero entries. The exact bound is

    U(W)=-4503897/100000000<-1/100.

```text
72 L4;  3 L4*L9;  9 L4*L19
36 L1*L7*L10;  19 L2*L7*L16;  52 L2*L11*L16
30 L2*L11*L22;  33 L2*L13*L16;  9 L2*L16*L19
10 L2*L22*L22;  4 L3*L8*L16;  22 L3*L17*L21
84 L3*L21*L21;  32 L7*L10*L10;  20 L7*L10*L15
42 L7*L10*L20;  84 L7*L20*L21;  84 L7*L21*L21
13 L8*L10*L16;  48 L8*L16*L21;  55 L10*L12*L16
39 L10*L13*L20;  26 L11*L11*L13;  10 L11*L13*L22
3 L12*L16*L21;  36 L12*L21*L21;  11 L13*L18*L20
5 L13*L20*L21;  47 L17*L21*L21;  250 B12*L13
27 B12*L17;  84 B12*L21;  111 B13*L7
7 C14*L7;  146 B23*L4;  114 B23*L16
35 C23*L3;  6 C23*L17;  57 C23*L20
117 C23*L21;  2 B24*L16;  9 B34*L1
63 B34*L2;  26 B34*L6;  18 B34*L8
49 B34*L10;  18 B34*L15;  105 B34*L21
60 T431;  9 T024*L1;  62 T024*L3
17 T024*L14;  252 T024*L20;  283 T024*L21
4 T021*L18;  40 T043*L4;  15 T041*L22
177 T031*L6;  100 T031*L8;  114 T031*L15
21 T031*L19;  158 T031*L22;  167 T243*L0
68 T243*L2;  18 T243*L6;  2 T243*L19
94 T231*L16;  55 T431*L5;  39 T431*L9
202 T431*L10;  16 T431*L15
```

### Case 6: U={2,3}, cyclic order (0,1,4,3,2)

There are 36 nonzero entries. The exact bound is

    U(W)=-1202479/25000000<-1/100.

```text
16 L2*L19;  8 L13*L13;  14 L15*L16
40 L0*L18*L19;  36 L2*L15*L19;  3 C12
16 C12*L15;  12 C12*L17;  20 B23*L14
1 B23*L16;  5 B23*L17;  3 C23*L16
8 C23*L17;  20 B34*L7;  6 B34*L13
6 B34*L14;  6 B34*L15;  4 B34*L19
20 B34*L21;  6 B34*L22;  8 C34*L13
3 T432;  28 T014*L6;  40 T014*L19
12 T012*L19;  10 T043*L5;  24 T043*L16
29 T042*L20;  40 T042*L22;  29 T032*L6
13 T032*L15;  3 T032*L19;  29 T432*L5
20 T432*L14;  36 T432*L15;  4 T432*L19
```

## 7. Conclusion and scope

Every possible hull of A and the four lower points has now been
excluded: Section 3 excludes triangle and quadrilateral hulls, Section 4
excludes both pentagon orders with all three intermediate vertices on
one chain, and Sections 5--6 exclude each of the other six pentagon
orders. Thus the whole 4/0 A-side fan split is impossible at the
competitive threshold.

Reflection in x+y=1 exchanges A and C, fixes B, and interchanges the
two fan sides. It proves the same conclusion for the whole 0/4 split.
This closes these two complete distributed-upper subfamilies. The 3/1
and 2/2 fan splits remain open in this note.
