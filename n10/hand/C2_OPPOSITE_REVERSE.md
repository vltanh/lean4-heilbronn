# Opposite mixed halves: exclusion of the reverse BF orientation

This note closes the complete reverse-BF branch of the opposite-corner
mixed/mixed C2 family. It uses neither of the two remaining half-pair
orientations as an additional assumption. Its scalar contradiction is
an explicit cubic inequality, proved below by a positive quadratic
lower bound.

Use the setup and geometric reductions of
[C2_OPPOSITE_MIXED.md](C2_OPPOSITE_MIXED.md):

    A=(0,0), E=(1,1), H=(0,h), B=(b,0),
    D=(1,d), F=(f,1), delta=1-d,
    sigma=93/1000,       c=89/100,
    0<f<=b<1,           h,delta<c.

The upper half is mixed toward A, with noncentral point P in cell I
and central point Q in cell II. The lower half is mixed toward E, with
central point R and noncentral point S. Both noncentral points lie in
their occupied-corner triangles, by
[C2_MIXED_CORNER.md](C2_MIXED_CORNER.md).

Orient the central-pair line from Q to R and put
d_V=det(R-Q,V-Q). We treat the branch

    d_B>0>d_F.

The complete geometric reduction in C2_OPPOSITE_MIXED.md gives

    R lies strictly inside BPQ,
    Q lies strictly inside FSR,
    Q is on the E side of BF and R is on the A side of BF.             (1)

Every actual unsigned doubled triangle area is at least sigma. The
mixed-half fan bounds and h,delta<c give

    hf>=3sigma,       delta(1-b)>=3sigma,
    3/10<f<=b<7/10.                                    (2)

Indeed 3sigma/c>3/10, so f>3/10 and 1-b>3/10.

## 1. The upper noncentral point forces a scalar inequality

Put

    a=sigma/c=93/890,       A0=sigma+a,
    v=b-f>=0.

The determinant-one affine coordinates

    (X,Y)=(x+v y-b,y)

send B,F to (0,0),(0,1). Write the transformed points as

    P=(-p,y_P),       R=(-r,z),
    p=b-x_P-v y_P>0,       r>=sigma.

The inequality r>=sigma is the actual triangle BFR area, using the
side of BF in (1). Also p>0 follows directly from cell-I membership:

    p=b(1-y_P)+(f y_P-x_P)>=sigma.

Since R lies below AE,

    sigma<=x_R-y_R=b-(1+v)z-r,
    z<=(b-2sigma)/(1+v).                                (3)

The strict containment R in BPQ fixes the sign of the BPR fan
triangle. In these coordinates its unsigned doubled area is

    pz-y_P r>=sigma.

Using r>=sigma, p>0, and (3) yields

    p(b-2sigma)>=sigma(1+v)(1+y_P).                    (4)

Two other actual triangle areas give

    h x_P>=sigma,       f y_P-x_P>=sigma.

As h<c, they imply

    x_P>=a,       y_P>=A0/f.                            (5)

Substitute p=b-x_P-v y_P into (4). In its left side minus right side,
the coefficient of x_P is -(b-2sigma)<0, and the coefficient of y_P is

    -v(b-2sigma)-sigma(1+v)<0.

The strict signs follow from b>3/10>2sigma and v>=0. Thus replacing
x_P,y_P by the lower bounds in (5) can only increase that difference.
Multiplying by f>0 gives the necessary inequality

    F(f,b):=[f(b+sigma)-b A0](b-2sigma)
              -sigma(1+b-f)(f+A0) >= 0.                (6)

## 2. The lower noncentral point forces the opposed inequality

Apply the half turn (x,y)->(1-x,1-y). It exchanges the two noncentral
points and the two central points, and sends the upper contact data to

    h'=delta,       f'=1-b,       b'=1-f.

The other containment in (1), Q inside FSR, supplies exactly the
containment needed for the transformed argument. Therefore

    F(1-b,1-f)>=0.                                      (7)

We now show that (6) and (7) cannot both hold anywhere in the entire
domain (2).

## 3. Symmetry reduces the contradiction to one positive cubic

Keep v=b-f, and introduce the independent asymmetry variable

    r0=f+b-1.

Equation (2) gives

    0<=v<2/5,       |r0|<2/5.                           (8)

Expanding the two explicit polynomials in (6)--(7), with the exact
values sigma=93/1000 and a=93/890, gives

    F(f,b)+F(1-b,1-f) = S0(v)+C(v)r0^2,
    F(f,b)-F(1-b,1-f) = r0 J(v,r0),                    (9)

where

    S0(v)=-P(v)/44500000,
    C(v)=(11125000v+26911500)/44500000,
    J(v,r0)=(55625r0^2-55625v^2+46615v+85872)/222500,

    P(v)=11125000v^3+9311500v^2-3106261v+246761.

On the domain (8),

    0<C(v)<7/8,       J(v,r0)>3/8.                     (10)

For the second bound, write the numerator of J as

    55625r0^2+v(46615-55625v)+85872.

The first two terms are nonnegative because v<2/5. The constant term
alone is enough, since

    85872/222500-3/8=4869/445000>0.

Combining (8)--(10),

    min(F(f,b),F(1-b,1-f))
      =[S0(v)+C(v)r0^2-|r0|J(v,r0)]/2
      <=S0(v)/2,                                      (11)

because C(v)|r0|<(7/8)(2/5)=7/20<3/8<J(v,r0).

Finally P(v)>0 for every v>=0. Put z=v-2/15, so z>=-2/15. A direct
expansion is

    P(v)=11125000z^3+13761500z^2-29861z+3307637/135.

The cubic and quadratic terms satisfy

    11125000z^3+13761500z^2
       =z^2(13761500+11125000z)
       >=(36834500/3)z^2.

Consequently

    P(v)>=(36834500/3)z^2-29861z+3307637/135>0.          (12)

The last quadratic has positive leading coefficient and negative
discriminant,

    29861^2-4(36834500/3)(3307637/135)
       =-97395898036199/81<0.

Thus S0(v)<0. Equation (11) says at least one of the necessary
inequalities (6)--(7) is strictly false. This contradiction excludes
the entire reverse-BF branch.

Together with the complete normal-BF exclusion in
C2_OPPOSITE_MIXED.md, this proves that no opposite-corner mixed/mixed
configuration can attain minimum ordinary triangle area at least A*.
