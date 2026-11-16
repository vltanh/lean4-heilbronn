# A forbidden chamber for a triangular left hull and a central triple

This is a complete analytic exclusion of one stated chamber in the
adjacent-corner count (2,3,2). It does not by itself exclude that whole
count. All areas below are signed doubled areas, written
`[UVW]=det(V-U,W-U)`, and every actual unsigned triangle area is assumed
at least

    s=93/1000.

Let

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0),
    0<b<=1/2, 0<lambda<1,

and suppose P lies strictly inside DBE. Suppose X,Y,Z form the
seven-face distributed mesh inside DBC, with the positive areas

    DBZ, BCX, CDY, DZY, BXZ, CYX, ZXY,
    DZX, BXY, CYZ, DXY, BYZ, CZX.                       (1)

The three simultaneous additional signs

    ECZ>0, EPZ<0, PXZ<0                                (2)

are impossible. The two further right points in the count (2,3,2)
are not used.

## 1. Coordinate ordering and seven actual inequalities

Write

    P=(p,1-j), X=(x,1-h), Z=(z,1-d).

The mesh gives

    3s<=d<=1-4s.                                       (3)

Indeed CDZ contains Y, so d>=3s; BCZ contains X and DBZ has area
at least s, so 1=d+[BCZ]+[DBZ]>=d+4s. The mesh identity

    [DZX]+[BXZ]=[DBX]-[DBZ]

gives `[DBX]-[DBZ]>=2s`. Also `[CDX]>=3s`, since CDX contains Y.
Consequently

    x-z=([DBX]-[DBZ])+b([CDX]-[CDZ])
       >=2s+b(7s-1)>=(11s-1)/2>0.                    (4)

The assumption EPZ<0 puts P strictly inside DEZ: the other two edge
tests are DEP>0 and ZDP=DPZ>0. Therefore p<z. All these coordinates
are strictly between zero and one where used as denominators.

Seven actual triangle inequalities are

    p>=s,
    zj-pd>=s,
    (1-z)h-(1-x)d>=s,
    (1-x)-(1-b)h>=s,
    z-bd>=s,
    (1-lambda)(1-z)-d>=s,
    d(x-p)+j(z-x)+h(p-z)>=s.                           (5)

They follow respectively from DEP, DPZ, -CXZ, BCX, DBZ, ECZ and
-PXZ. In the first one, DEP=(1-lambda)p>=s implies p>=s.
In the sixth, use 1-lambda<=1 to obtain

    d<=1-z-s.                                         (6)

Set

    A=(z-p)/z>0, B0=(x-z)/(1-z)>0,
    R=1-z-(1-b)d.

The second and third inequalities in (5), together with p<z<x,
give the following upper bound for the last one:

    s <= F(A,B0)
      :=d A B0-s[A z/(1-z)+B0(1-z)/z].                (7)

For completeness, replace j by `(s+pd)/z` and h by
`(s+(1-x)d)/(1-z)` in the last expression in (5). Their coefficients
z-x and p-z are negative, so this replacement raises the expression;
expansion gives exactly (7).

The first inequality in (5) gives `A<=1-s/z`. Combining the third
and fourth gives

    (1-B0) R >= s(2-b-z)/(1-z),
    B0 <= 1-s(2-b-z)/[(1-z)R].                         (8)

In particular R>0. Both partial derivatives of F are positive at
any A,B0 for which F>=s: for example

    F=A F_A-s B0(1-z)/z>=s>0

implies F_A>0, and the analogous identity gives F_B0>0. Increasing A
and B0 preserves these derivative inequalities. Therefore (7)-(8)
imply

    s<=T(b,z,d),                                      (9)

where

    A0=1-s/z,
    B1=1-s(2-b-z)/[(1-z)(1-z-(1-b)d)],
    T=d A0 B1-s[A0 z/(1-z)+B1(1-z)/z].

The upper bound B1 increases with b. The last expression consequently
increases with b throughout the comparison starting at the actual
configuration. Since DBZ>=s and b<=1/2,

    b<=b*=min(1/2,(z-s)/d).

It suffices to bound T at b=b*. All denominators remain positive,
because increasing b increases R.

## 2. The branch b*=1/2

At b=1/2, direct differentiation gives

    T_z=s(d+1)(d+3s-2)(d+4z-2)
             /[z^2(d+2z-2)^2].                       (10)

Here d+3s-2<0 by (3). Thus, for fixed d, T is largest at
`z=(2-d)/4` in its domain `0<z<1-d/2`. Moreover b*=1/2 and
(6) imply

    s+d/2<=z<=1-s-d,
    d<=d0:=(2-4s)/3=407/750.

Define

    L(d)=T(1/2,(2-d)/4,d)
        =(d+6s-2)(d^2+4ds-2d+4s)/(d-2)^2.            (11)

At the fixed value s=93/1000 its derivative is

    L'(d)=N1(d)/[125000(d-2)^3],
    N1(d)=125000d^3-750000d^2+1195053d-545788.

On `[3s,d0]`, N1' is decreasing and

    N1'(d0)=1474457/3>0,
    N1(d0)=-26503703/270<0.

Hence N1<0 throughout this interval. The denominator of L' is
negative, so L is increasing. This branch gives T<=L(d0).

## 3. The branch b*=(z-s)/d

Let `U(z,d)=T((z-s)/d,z,d)`. Its derivative in z is

    U_z=s(d+1)[d^2+(3s-1)d+s^2]
              /[d z^2(d+s-1)].                       (12)

The quadratic in brackets is negative throughout (3): it is convex,
and its two endpoint values are

    -114669/1000000, -9951/200000.

The denominator in (12) is negative. Thus U increases with z. In
this branch z<=s+d/2, while (6) still gives z<=1-s-d.

If d<=d0, replace z by s+d/2. At that endpoint b*=1/2,
so Section 2 gives U<=L(d)<=L(d0).

If d>=d0, replace z by 1-s-d and put

    H(d)=U(1-s-d,d)
      =(d^2+2ds-d+s)(d^2+4ds-d+2s^2-s)
             /[d(d+s-1)^2].                          (13)

This function decreases on `[d0,1-4s]`. Here is an explicit rational
check of that claim. Its derivative is

    H'(d)=N2(d)/[500d^2(1000d-907)^3],

where

    N2(d)=500000000000d^5-1360500000000d^4
          +1043649000000d^3-242887643000d^2
          +10560429000d-3192769701.

The denominator is negative. Set u=d-d0, so
`0<=u<=32/375<9/100`. The exact expansion is

    N2(d0+u)=500000000000u^5-(11500000000/3)u^4
      -(3933967000000/9)u^3-(4014458933000/27)u^2
      +(1304065717504/81)u+101425980752591/30375.

Dropping its positive nonconstant terms and bounding u by 9/100 in
the three negative terms yields

    N2(d0+u)>=110315100407257/60750>0.

Therefore H'<0, and H(d)<=H(d0)=L(d0).

## 4. Exact contradiction and scope

Both branches give

    T(b*,z,d)<=L(d0)
      =-(s-2)(7s-2)(8s-1)/[6(s+1)^2].                 (14)

Subtracting s factors exactly as

    L(d0)-s=-(2s-1)(31s^2-46s+4)/[6(s+1)^2]
            =-4021567/3583947000<0.                   (15)

This contradicts (9), proving that all three signs in (2) cannot
occur together. Every comparison covers the whole stated interval;
there is no coordinate sample or numerical optimization in the proof.
The other central-pair and exterior-line chambers still require their
own exclusions before the count (2,3,2) can be checked off.
