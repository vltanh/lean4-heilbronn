# A small-bottom-parameter upper-pair chamber

All areas in this note are DOUBLED. Put sigma=93/1000 and use the
Type-II anchors

    D=(0,1), C=(1,1), E=(0,lambda), B=(b,0), q=1-lambda.

**Chamber theorem.** Suppose

    0<b<=9/50,       69/100<=q<1,

and two further actual points P,Q lie strictly inside both DCB and
DCE. If all twenty unsigned triangle areas of these six points are at
least sigma, then B and E lie on the same open side of the line PQ.

For the row (1,2,4), this applies whenever both central points lie above
CE: TYPE_II_R4.md gives b<3539/20000<9/50, while the two-interior-point
theorem gives q>=Gamma2 sigma>69/100. Thus the theorem excludes the
entire opposite-B/E central-pair orientation in that upper cut, for
every right-hull alternative.

## 1. A weighted actual-area identity

Suppose B and E are on opposite sides, and orient P,Q so that

    U=det(P-B,Q-B)>=sigma,
    V=-det(P-E,Q-E)>=sigma.

Write P=(p,p_y), Q=(x,t), and put

    c=bq+lambda,
    J=b(t-lambda)+lambda x.

Here J is the positive doubled area of EBQ. The triangles DCP, DBQ,
and ECQ imply

    p_y<=1-sigma,
    x>=sigma+b(1-t),
    t>=lambda+q x+sigma.

Combining the last two, and using the last one again for an upper bound
on x, gives

    t>=t0:=lambda+[(1+q)sigma+bq^2]/(1+bq),
    J<=[c(t-lambda)-lambda sigma]/q.                    (1)

Direct determinant expansion gives the exact identity

    (t-lambda)U+tV=J(p_y-t).                            (2)

Both coefficients on the left are positive, because Q is above CE.
Hence p_y>t. Using U,V>=sigma, p_y<=1-sigma, and (1) in this order
yields

    F(t):=(1-sigma-t)[c(t-lambda)-lambda sigma]
                    -q sigma(2t-lambda) >=0.           (3)

All quantities multiplied in these deductions have their stated
positive signs. We show that (3) is impossible for t>=t0.

## 2. The quadratic decreases beyond t0

Since F''(t)=-2c<0, it suffices to check F'(t0)<0. Substituting
lambda=1-q gives

    (1+bq)F'(t0)
      =-b^2 q^2(q+sigma)
        +b q(q^2-4sigma q-3sigma)
        +(1-2sigma)q(1-q)-2sigma.                       (4)

Define

    f(q)=q(q^2-4sigma q-3sigma),
    g(q)=(1-2sigma)q(1-q)-2sigma.

On [69/100,1], f increases and g decreases. For f, its derivative
3q^2-8sigma q-3sigma is increasing there and has value
31797/50000>0 at q=69/100. For g, use q>1/2.

Drop the first, negative term in (4). On each interval in the following
table, f at the upper endpoint is positive, so b<=9/50 gives the
displayed uniform upper bound.

| Interval for q | Upper bound (9/50) f(upper)+g(lower) |
|---|---:|
| [69/100,3/4] | -112779/10000000 |
| [3/4,17/20] | -138981/10000000 |
| [17/20,1] | -3879/200000 |

Thus F'(t0)<0 throughout the complete parameter range. Concavity makes
F strictly decreasing on [t0,infinity).

## 3. Its value at t0 is already negative

Exact substitution gives

    F(t0)=-q G(b,q)/(1+bq)^2,

where

    G(b,q)=(93/1000)b^3 q^3-(907/1000)b^2 q^3
      +(194649/500000)b^2 q^2+(907/1000)b q^3
      -(1253053/1000000)b q^2+(432543/1000000)b q
      +(84351/1000000)q^2-(177351/1000000)q
      +31899/250000.                                   (5)

The second derivative in b is

    G_bb=q^2[139500bq-453500q+194649]/250000.

For 0<=b<=9/50 and q>=69/100, the bracket divided by 250000 is at
most -1009401/2500000<0. Hence G is concave in b, and it suffices to
prove positivity at the two endpoints b=0 and b=9/50.

At b=0, G is decreasing with q on the stated interval and

    G(0,1)=8649/250000>0.

At b=9/50, put z=1-q, so 0<=z<=31/100. Expansion gives

    G(9/50,1-z)
      =-(16801947/125000000)z^3
        +(85831701/312500000)z^2
        -(58228623/1250000000)z+42416289/1250000000.

The quadratic coefficient after absorbing the cubic is positive:

    85831701/312500000
      -(16801947/125000000)(31/100)
       =2912407683/12500000000>0.

Discard that nonnegative quadratic part. The remaining linear lower
bound is at least

    42416289/1250000000
      -(58228623/1250000000)(31/100)
       =2436541587/125000000000>0.

This proves G>0 throughout the rectangle. Consequently
F(t)<=F(t0)<0 for every t>=t0, contradicting (3). The opposite-B/E
orientation is completely excluded.

## 4. Exact remaining pair-line catalogue

When both central points are above CE in the row (1,2,4), B and E
must therefore be on the same side of PQ. After orienting PQ, the
remaining patterns are exactly these three:

| Pattern | d_D | d_C | d_E | d_B |
|---|---:|---:|---:|---:|
| D and C together | + | + | - | - |
| D isolated | + | - | - | - |
| C isolated | + | - | + | + |

Here d_T=det(Q-P,T-P). The table is exhaustive because P,Q lie in
both DCE and DCB; every line through them must cut both triangles.
If D,C have the same sign, both E,B must have the other sign. If D,C
have opposite signs, the present theorem leaves the two same-sign
choices for E,B. The table does not assert that these remaining
patterns are feasible or that any of them is already excluded.
