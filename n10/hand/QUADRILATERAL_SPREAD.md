# A quantitative spread bound for two points inside a quadrilateral

All areas in this note are doubled. The statement is affine invariant
once the two hull diagonals are used as coordinate axes.

**Spread lemma.** Let a convex quadrilateral contain two other actual
points, and suppose each of its two diagonals strictly separates those
points. Normalize the diagonal lengths to one by an affine map, so the
quadrilateral has doubled area one. If every actual triangle has doubled
area at least t>=1/11, then the difference between the two interior
points' coordinates along either diagonal is at most

    1-6t.                                             (1)

The proof below is an exact inequality argument. In particular, no
optimization or finite numerical covering is a premise.

Without the hypothesis t>=1/11, the same geometric assumptions give
the weaker universal spread bound 1-(3+2sqrt(2))*t. Both forms will be
proved below.

## 1. Coordinates and the necessary triangle inequalities

Label the normalized hull and interior points as

    A=(-a,0), B=(0,-b), C=(c,0), D=(0,d),
    a+c=b+d=1,
    O=(-p,q), P=(r,-w),

where a,b,c,d,p,q,r,w are positive. Since the interior points are in the
opposite triangles A D (0,0) and B C (0,0), respectively, put

    L=a-p>0,       R=c-r>0,       S=L+R=1-p-r.

The four actual triangles using a full hull diagonal give

    p,q,r,w>=t.                                       (2)

The occupied-corner triangles ADO and BCP give

    dL-aq>=t,       bR-cw>=t.                         (3)

Write q=t+epsilon and w=t+eta, with epsilon,eta>=0. The actual triangle
COP has positive area

    COP=R q+(1-L)w.

Indeed R>0 and 1-L>0. Its lower bound by t is therefore

    t(L-R) <= R*epsilon+(1-L)*eta.                    (4)

We will prove S>=6t. This is exactly the first coordinate bound in (1).

## 2. What a violation would force

Suppose S<6t. By a half-turn and interchange of O,P, arrange b<=d,
so b<=1/2. Equations (2)--(3) imply

    S>=t*[(1+a)/d+(1+c)/b].                          (5)

Thus the bracket is strictly below six. If b=1/2 it is exactly six,
which is impossible. Hence b<1/2. Substituting a=1-c,d=1-b and clearing
positive denominators shows that the bracket being below six is
equivalent to

    c<3b-1.                                          (6)

For clarity, the numerator of the bracket minus six is
(1-2b)*(c-3b+1). In particular c<1/2 and a>1/2.

Since r>=t, one has R=c-r<=c-t. The second inequality in (3) gives

    b(c-t)>=t(1+c),
    b>t,       c>=t(1+b)/(b-t).                      (7)

Combine (6)--(7), clear the positive b-t, and cancel b>0:

    b>(1+4t)/3.

Set z=1-2b=d-b. Then

    0<z<(1-8t)/3.                                   (8)

Thus a violation automatically forces t<1/8. Together with t>=1/11,
we have z<1/11.

Adding (3) and using q=t+epsilon,w=t+eta gives

    S-6t >= 2a*epsilon+2c*eta-z*(L-R).                (9)

If L<=R, the right side is nonnegative, contradicting S<6t. Thus L>R.
Use (4) to bound the last term in (9):

    S-6t >= [2a-zR/t]*epsilon
             +[2c-z(1-L)/t]*eta.                    (10)

We finish by proving that both coefficients in (10) are nonnegative.

## 3. The two coefficients

For the first coefficient, a>1/2 and R<c<1/2 give

    2at-zR > t-z/2
             > t-(1-8t)/6
              =(14t-1)/6>0,                         (11)

where the final comparison follows from t>=1/11.

For the second coefficient, (3) and q>=t give

    L>=t(1+a)/d=t(2-c)/d.

Since d=(1+z)/2,

    2ct-z(1-L)
       >=2ct-z+z*t*(2-c)/d
        =2t*(c+2z)/(1+z)-z.                         (12)

Equation (7), expressed in z, is

    c>=t*(3-z)/(1-z-2t),

and its denominator is positive because b>t. Substitute this lower
bound in the increasing right side of (12). After multiplication by
the positive (1+z)*(1-z-2t), its numerator is

    H(z,t)=z^3-2z^2*t-10z*t^2+6z*t-z+6t^2.          (13)

For 1/11<=t<1/8 and 0<=z<=(1-8t)/3, we have z<=1/11. Consequently

    dH/dz=3z^2-4zt-10t^2+6t-1
          <=3/121+3/4-1=-109/484<0.

The minimum on this interval is therefore at its right endpoint, where
direct substitution gives the exact factorization

    H((1-8t)/3,t)
      =8*(t+1)*(1-2t)*(11t-1)/27 >=0.               (14)

Thus (12) is nonnegative. Together with (11), both coefficients in
(10) are nonnegative. This contradicts S<6t and proves p+r<=1-6t.
Interchanging the diagonal axes and relabeling the hull and interior
points gives q+w<=1-6t. The spread lemma is proved.

For the threshold-free version, (5) and the reciprocal Cauchy inequality
give directly

    S>=t*[(1+a)/d+(1+c)/b]
      >=t*(sqrt(1+a)+sqrt(1+c))^2
       =t*[3+2sqrt((1+a)(1+c))]
      >=(3+2sqrt(2))*t,

because b+d=1, a+c=1, and (1+a)(1+c)=2+ac>=2. No assumption that
S<6t or that t>=1/11 is used here. Interchanging the axes gives this
bound for the other spread as well.

## 4. Application to the same-side-edge N8 line class

Use the literal N8 coordinates from N8_BOUNDARY_RANGES.md and write

    O=(x,y),       P=(x+U,y+V),
    k=e-a>0,       l=f-b>0,       Q=1-k*l.

Suppose OP has A,B,C,D on its negative side and E,F,G,H on its positive
side, and suppose both interior points belong to the actual
quadrilateral ABEF. Its doubled area is Q, the determinant of its two
diagonal vectors

    E-A=(1,k),       F-B=(l,1).

The four triangles ABE,AEF,ABF,BEF each have capacity at most one
interior point by N8_TRIANGLE_CAPS.md. Thus both diagonals AE and BF
strictly separate O,P. The normalized minimum t=s/Q satisfies t>s>1/11,
because 0<k,l<1 gives 0<Q<1. The spread lemma applies.

In the two-diagonal coordinate basis, the displacement P-O is

    ((U-lV)/Q, (V-kU)/Q).

Here U-lV and kU-V are positive: respectively they are the sums of the
two positive OP triangle areas at B,F and at A,E. Applying (1) in both
coordinate directions gives the necessary quadratic inequalities

    Q-6s-(U-lV)>=0,
    Q-6s-(kU-V)>=0.                                 (15)

These statements do not require V to have a prescribed sign. If V>=0,
the OP area sum kU-V>=2s further gives

    U-lV=(kU-V)/k+V*(1/k-l)>=2s/k,
    Q>=6s+2s/k.                                    (16)

The corresponding statement for the quadrilateral CDGH follows by a
square reflection and relabeling. Equations (15)--(16) are necessary
conditions for a whole geometric subcase. They do not by themselves
close the remaining N8 same-side-edge 4/4 class.

## 5. Application to one entire cut of the N8 3/5 placement

In the 3/5 class, N8_TRIANGLE_CAPS.md proves O in AHF and AEH and P in
AEF, with AFO>0 and AFP<0. Suppose EHP<0. Since EHO>0, both diagonals
AF and EH strictly separate the two points in the actual quadrilateral
AEFH. Put

    Q=area2(AEFH)=1-a+f*(h-e)>0.

Its two diagonal vectors can be chosen as (f,1-a) and (-1,h-e).
The positive coordinate-difference numerators are

    (1-a)U-fV=d_F-d_A>0,
    (h-e)U+V=d_H-d_E>0,

where d_T=det(P-O,T-O). The threshold-free spread bound therefore gives

    Q-(29/5)s-[(1-a)U-fV]>=0,
    Q-(29/5)s-[(h-e)U+V]>=0.                         (17)

Here 3+2sqrt(2)>29/5 follows from sqrt(2)>7/5. These are necessary
quadratic inequalities on the whole EHP<0 cut of the forced 3/5
placement. This application does not assume Q<=1 or s/Q>=1/11, and
does not by itself exclude the cut.
