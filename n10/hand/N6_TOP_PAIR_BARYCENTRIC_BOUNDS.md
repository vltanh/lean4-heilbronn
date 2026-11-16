# Barycentric bounds for a triangular N6 top pair

Use the six actual contacts

    A=(0,a), B=(b,0), C=(c,0), E=(1,e), F=(f,1), H=(0,h),
    0<a<h<1, 0<b<c<1, a<=e<=h, b<=f<=c.

Every unsigned actual doubled triangle area is at least s=93/1000.
Let U=(u,v), V=(r,w) be actual top-cap points, and suppose V is
strictly inside the actual triangle EFU. This note proves coordinate
bounds for this triangular alternative. It does not discard the
nontriangular alternative or close a placement count by itself.

## 1. A bound requiring no occupied side cap

Put epsilon=1037/10000. The actual ABC and ABH clearances give

    a(c-b)>=s, b(h-a)>=s.

If t=min(a,b), one of their left sides is at most t(1-t). If
0<t<=epsilon, this is at most epsilon(1-epsilon)=9294631/10^8<s.
Thus a,b>epsilon, and the contact orders imply e,f>epsilon.
The top container EF(1,1) consequently has doubled area

    Omega=(1-e)(1-f)<(1-epsilon)^2=80335369/10^8<9s,
    9s-(1-epsilon)^2=3364631/10^8>0.                 (1)

Write D for the doubled area of the actual triangle EFU. Containment
gives D<=Omega. The three barycentric weights of V in EFU are the
three actual subtriangle areas divided by D. Each is at least s/D,
and hence strictly greater than 1/9 by (1).

Subtracting 1/9 from each weight leaves three nonnegative remainders
with sum 2/3. Since f<u<=1 and e<v<=1, coordinate minima and maxima
at the three vertices give

    9r>=7f+1+u,    9r<=f+u+7,
    9w>=7e+1+v,    9w<=e+v+7.                      (2)

These four bounds apply independently of the other free-point locations.

## 2. A stronger bound when either side cap is occupied

Suppose first that an actual point X occupies the right cap CE(1,0).
The four actual points B,C,X,E have nontriangular hull and lie in
the endpoint triangle B,E,(1,0). The four-point endpoint support
bound, as used in N6_PLACEMENTS.md, gives

    e(1-b)>=4s.

Using f>=b and b>epsilon yields the sharper top-container bound

    Omega=(1-e)(1-f)<=(1-e)(1-b)
          =1-b-e(1-b)<=1-b-4s<1-epsilon-4s
          =5243/10000<(17/3)s,
    (17/3)s-5243/10000=27/10000>0.                  (3)

If the left cap is occupied, use its endpoint bound f(1-a)>=4s
and the order e>=a to obtain the same inequality. Both arguments
use actual N6 contacts; the positive lower-contact bound is essential.

Now D<=Omega<(17/3)s. Every barycentric weight of V in EFU is
strictly greater than 3/17. Their remainders sum to 8/17. The resulting
four stronger affine bounds are

    17r>=11f+3+3u,    17r<=3f+3u+11,
    17w>=11e+3+3v,    17w<=3e+3v+11.                (4)

For an explicit check, write the weights at E,F,U as
3/17+eta_E, 3/17+eta_F, 3/17+eta_U, where each eta is
nonnegative and their sum is8/17. The four nonnegative differences
in (4) are exactly

    17[(1-f)eta_E+(u-f)eta_U],
    17[(1-f)eta_F+(1-u)eta_U],
    17[(1-e)eta_F+(v-e)eta_U],
    17[(1-e)eta_E+(1-v)eta_U],                      (5)

in the order lower-r, upper-r, lower-w, upper-w. The analogous
identities for (2) replace 17 by 9 and each base weight by 1/9.
All coefficients in (5) are nonnegative throughout the top cap.

The hypotheses are invariant under coordinate transposition, so the
same result applies after exchanging the two side caps. All square-side
faces are included: the weak upper estimates remain valid there, while
the assumed positive actual minimum excludes a collinear fan triangle.

The companion [check_n6_top_pair_barycentric_bounds.py](check_n6_top_pair_barycentric_bounds.py) verifies the
rational gaps and all eight affine remainder identities exactly.
