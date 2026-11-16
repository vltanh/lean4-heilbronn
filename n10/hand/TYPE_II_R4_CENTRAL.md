# Type II: the central right-support pair is excluded

This note closes the entire II+II right-support alternative of the
nontriangular Type-II count (1,2,4). In fact the final contradiction
is a stronger six-point statement in the normalized supporting
triangle. It does not use the locations of the two central DCB points.
The mixed right-support pairs I+II and II+III remain open.

All areas are DOUBLED. Write

    s=93/1000,       t0=31/299,       K=4+2sqrt(3).

By TYPE_II_R4_NONTRIANGULAR.md, Sections 1--2, the right supporting
triangle BCR has area Omega<897/1000. Its normalized minimum is
therefore

    s/Omega>t0.                                           (1)

Map B,C,R to A=(0,0), J=(1,1), O=(0,1). The actual support contacts
are H=(0,h), F=(f,1), with beta=1-f. The two remaining actual points
P,Q are both in central cell II. For the rest of the proof use only
the weaker fixed minimum t0, rather than the variable s/Omega.

## 1. A product bound forces both contact parameters above 407/500

Both P,Q lie inside AJH and AJF. Thus h,beta>=Kt0>2/3. The exhaustive
central-pair line calculation in TYPE_II_R4_NONTRIANGULAR.md, Section 3
is valid at every threshold greater than 1/11 with these containments.
At t0 it gives, with U=h beta and R=sqrt(U),

    R>2t0,
    (1+4t0)R^2-12t0 R+4t0^2>=0.                         (2)

This use does not import a conclusion at a different threshold: that
section explicitly checks the same-side case, the nested case, all
four H,F sign possibilities, and reflection at the variable threshold.

The quadratic in (2) is negative at both 2t0 and 843/1000. Its values
are respectively

    16t0^2(t0-1)<0,
    -40450427/89401000000<0.

By convexity it is negative between those two arguments. Hence

    U>(843/1000)^2.

Put m=min(h,beta), n=max(h,beta). The actual anchor triangles give

    h-U>=t0,       beta-U>=t0.

Consequently

    m> (843/1000)^2+t0
      =407/500+98051/299000000>407/500,                  (3)
    n<=1-t0/m=(m-t0)/m.                                 (4)

In particular m>t0 and m<1, so all subsequent denominators are positive.

## 2. The HF clearance bounds every central height

Write a central point as X=(x,x+z). Its actual anchor-pair triangles
give

    z>=t0,
    (t0+fz)/beta<=x<=1-(t0+z)/h,
    hf-fz-(h-beta)x>=t0.                                (5)

If h>=beta, substitute the lower strip bound into the final inequality;
its coefficient of x is nonpositive. After cancellation,

    z<=beta-t0/(1-beta).

If h<=beta, substitute the upper strip bound instead, giving
z<=h-t0/(1-h). Thus every central point satisfies

    t0<=z<=W(m):=m-t0/(1-m).                            (6)

For m>=4/5 the right side decreases with m, because its derivative is
1-t0/(1-m)^2<0. Since (3) gives m>4/5 and t0>1/10,

    W(m)<4/5-(1/10)/(1/5)=3/10<3t0.                    (7)

If the line PQ put A,J on opposite sides, one of P,Q would lie
strictly inside the triangle formed by A,J and the other. This is
the base-endpoint nesting test: both points are on the same side
of AJ, and the two opposite endpoint signs are the other two edge
tests for that containment. The outer point would then have height
at least 3t0, contradicting (6)--(7). Therefore A,J have the same
sign on PQ.

## 3. The same-side pair bound with the sharper height cap

Orient P=(p,p+z) to Q=(q,q+a) so that A,J are both negative. Put

    S=1/h+1/beta,
    S0(m)=1/m+m/(m-t0).

Equation (4) gives S>=S0. The standard strip endpoint calculation,
included here, gives a useful quadratic bound. If z>=a, then

    min(-det(A,P,Q),-det(J,P,Q))
      =zq-pa-z+a
      <=a(1-t0/beta)-t0 z/h-(S-1)za
      <=a[1-t0 S-(S-1)a].

If z<=a, it instead gives

    min(-det(A,P,Q),-det(J,P,Q))
      =zq-pa
      <=z(1-t0/h)-t0 a/beta-(S-1)za
      <=z[1-t0 S-(S-1)z].

Thus, with xi=min(z,a),

    t0<=xi[1-t0 S-(S-1)xi]
       <=G_m(xi),
    G_m(x)=x[1-t0 S0(m)-(S0(m)-1)x],
    0<xi<=W(m).                                        (8)

The replacement S by S0 has the displayed direction because its
coefficient is -xi(t0+xi)<0.

The quadratic G_m is increasing throughout [0,W(m)]. To verify this
without an implicit optimization, its derivative at the upper endpoint
has the exact form

    G_m'(W(m))
      =Q(m)/[299m(299m-31)(1-m)],
    Q(m)=117208m^3-117208m^2+19499m-961.                 (9)

The denominator is positive. On m>=4/5, Q''(m)>0 and

    Q'(4/5)=1425139/25>0.

Thus Q increases there, and (3) gives

    Q(m)>Q(407/500)=7283395843/15625000>0.

Since G_m' decreases with its argument, (9) proves that G_m is
increasing on the entire interval used in (8). Consequently

    t0<=G_m(W(m)).                                      (10)

## 4. One positive quartic gives the contradiction

Direct cancellation gives

    G_m(W(m))-t0
      =-t0 P(m)/[(m-t0)(1-m)^2],
    P(m)=2m^4-2m^3+(t0-1)m^2+(t0+1)m-t0.              (11)

The quartic P is strictly positive on m>=407/500. Put z=m-407/500>=0.
Its exact expansion is

    P(m)=2z^4+(564/125)z^3
         +(40567403/18687500)z^2
         -(9508796/583984375)z
         +1659390599/9343750000000.

The quadratic coefficient is greater than 2, the linear coefficient
is greater than -17/1000, and the constant is greater than 17/100000.
The respective positive gaps are

    3192403/18687500,
    3351507/4671875000,
    70953099/9343750000000.

Discarding the nonnegative cubic and quartic terms therefore gives

    P(m)>=2z^2-(17/1000)z+17/100000
         =2(z-17/4000)^2+1071/8000000>0.                (12)

Equations (11)--(12) contradict (10). This excludes both points in
support cell II, regardless of the D-fan placements.

The proof also establishes the following reusable statement: six
actual points with normalized anchors A,J,H,F and both remaining
points in central cell II cannot have every doubled triangle area
at least 31/299. The only geometric input beyond the explicit
determinants is the two-interior-point triangle bound, used in (2).

For the nontriangular right hull of Type II, the exact surviving
support-cell catalogue is now I+II or II+III. No claim is made here
that either mixed pair, or the whole parent row, has been excluded.
