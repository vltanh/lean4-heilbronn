# Weighted barycentric bounds for an actual top fan

Use the N6 contacts and threshold of
[N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md](N6_TOP_PAIR_BARYCENTRIC_BOUNDS.md).
Write

    E=(1,e), F=(f,1), U=(u,v), V=(r,w),
    f<u<=1, e<v<=1,

where U and V are actual top-cap points and V is strictly inside the
actual triangle EFU. All areas in this note are unsigned doubled
areas. This note strengthens the affine bounds when one or more of
the three actual fan triangles have named actual occupants.

## 1. General weighted bound

Suppose a proved positive rational M satisfies

    area(EFU)<=M s.

Suppose the three fan triangles opposite E,F,U have established floors

    area(FUV)>=c_E s,
    area(EUV)>=c_F s,
    area(EFV)>=c_U s,                               (1)

with positive rational c_E,c_F,c_U. Every stronger floor in (1)
requires its own actual occupants and all three inward edge signs.
The common minimum alone gives c_E=c_F=c_U=1.

Let lambda_E,lambda_F,lambda_U be the barycentric weights of V in
EFU. The fan formula and the upper bound on the outer triangle give

    lambda_E>=c_E/M, lambda_F>=c_F/M, lambda_U>=c_U/M.

Consequently c_E+c_F+c_U<=M. If a proposed list of valid floors has
sum greater than M, the containing triangle is already impossible.
Otherwise put eta_i=lambda_i-c_i/M. The eta_i are nonnegative and
their sum is 1-(c_E+c_F+c_U)/M. The coordinate identities for V give
the following four nonnegative affine factors:

    M r-c_E-(M-c_E-c_U)f-c_U u >= 0,
    M-c_F-c_U+c_F f+c_U u-M r >= 0,
    M w-c_F-(M-c_F-c_U)e-c_U v >= 0,
    M-c_E-c_U+c_E e+c_U v-M w >= 0.                 (2)

In the displayed order, the four left sides are exactly

    M[(1-f)eta_E+(u-f)eta_U],
    M[(1-f)eta_F+(1-u)eta_U],
    M[(1-e)eta_F+(v-e)eta_U],
    M[(1-e)eta_E+(1-v)eta_U].                        (3)

Every coefficient in (3) is nonnegative on the closed top container.
Thus the argument includes free points on the outer square sides.

## 2. Uniform rational choices in N6

The actual lower contact clearances give a,b>alpha=1037/10000,
and the contact orders give e,f>alpha. Therefore the top container,
and hence EFU, has doubled area strictly less than

    D0=(1-alpha)^2=80335369/100000000.

With s=93/1000 one may use either of the uniform constants

    M=9, or M0=D0/s=80335369/9300000.                 (4)

Both constants are positive, and M0<9. The first choice reduces (2)
to the ordinary bounds of N6_TOP_PAIR_BARYCENTRIC_BOUNDS when all
three costs are one. The second choice retains the exact rational
top-container cap. No coordinate-box refinement is a premise of (4).

If a side cap is occupied, the stronger bound in that note also
permits M=17/3. This is a conditional option: its actual occupied
side-cap hypothesis must be retained. The two top-triple counts
with no occupied side cap use only (4).

The ordinary actual-triangle occupancy floors at this threshold are

    (1,3,149/20,4427/500)_n s,   for n=0,1,2,3.      (5)

In particular, if the other top point lies inside one of the three
fan triangles, that fan's cost may be three instead of one. Each
cost is attached to its particular fan; it cannot be moved to a
different fan without the corresponding containment.

## 3. Explicit factors and witnesses

The existing factor name

    BARY_UV_cExcFxcU_axis

means (2) with M=9. The letters UV specify outer U and inner V, and
axis is XL,XH,YL,YH in the order of (2). A cost fraction is written
with `d` in place of its slash. These names preserve their original
meaning in previously produced finite sums.

For a rational choice other than nine, use the separate name

    WBARY_M_UV_cExcFxcU_axis.

Here M is likewise printed as a rational with `d` replacing its
slash. Every use checks V inside EFU and separately checks that
the actual occupants of FUV,EUV,EFV justify c_E,c_F,c_U. Thus (1)
is completely determined by the named fan and its established
geometry. A checker may find the occupants from the preceding
complete actual sign record, but it must verify their three inward
edge signs before using the costs. An interval-refinement use is
legitimate because (2), (4), and these actual fan premises are
independent of the coordinate endpoints being refined.

The companion [check_n6_top_weighted_barycentrics.py](check_n6_top_weighted_barycentrics.py)
checks all four symbolic identities and the rational constants.

## 4. Affine tests on every actual line

The following consequence applies to any actual triangle, including a
side-pair triangle from N6_SIDE_PAIR_BOUNDS.md. Let W be an actual
interior point of an actual triangle with vertices V_1,V_2,V_3.
Suppose a proved weight bound gives

    lambda_i >= b_i/N,    N>0, b_i>0,
    R=N-b_1-b_2-b_3 >= 0.                           (6)

Here b_i and N are weight parameters. For the top fan one may take
N=M and b_i=c_i from Section 1. For the side pair one may take
N=11 and b_1=b_2=b_3=3, using its proved weights above 3/11.
Those three numerators are not assertions that the actual fan
triangles have area at least 3s.

Another valid source uses any already proved positive upper bound N
on the outer actual area, and already proved positive lower bounds b_i
on its three opposite actual fan areas. Then lambda_i>=b_i/N.
All four bounds must already be proved. If sum(b_i)>N, the fan
identity already gives a contradiction; no formula below is used
with a negative R.

For any fixed affine functional D on the plane, put D_i=D(V_i) and
D_W=D(W). In particular D(X)=[IJX] for any two distinct actual
points I,J. The affine identity is

    N D_W = sum_i (b_i+t_i) D_i,
    t_i=N lambda_i-b_i >= 0,    sum_i t_i=R.         (7)

It remains true if I or J is W: the left side is then zero.
If V_i equals I or J, its term D_i is exactly zero. Otherwise
its nonzero actual determinant sign must be established before use.
The line may depend on the fixed actual configuration; affinity is
applied after that configuration has been fixed.

Since every t_i is between zero and R, (7) gives

    N D_W >= sum_(D_i>0) b_i D_i
                  + sum_(D_i<0) (b_i+R) D_i,

    N D_W <= sum_(D_i>0) (b_i+R) D_i
                  + sum_(D_i<0) b_i D_i.             (8)

For the first inequality, its difference is

    sum_(D_i>0) t_i D_i
       + sum_(D_i<0) (t_i-R) D_i >= 0.

For the second, its difference is

    sum_(D_i>0) (R-t_i) D_i
       + sum_(D_i<0) (-t_i) D_i >= 0.

Zero terms are omitted. Thus (8) supplies nonnegative quadratic
polynomials expressed as linear combinations of signed actual triangle
areas. Every use retains the actual inner-point containment, the source
of its three weight bounds, and the signs of its nonzero vertex tests.

There is a stronger interval consequence which uses the common
remainder sum. Suppose immutable earlier bounds give

    l_i <= D_i <= u_i.

These endpoints are signed and may be negative or zero. Set
L=min_i l_i and U=max_i u_i. Then

    N D_W >= sum_i b_i l_i + R L,
    N D_W <= sum_i b_i u_i + R U.                    (9)

Indeed the two differences are exactly

    sum_i b_i(D_i-l_i) + sum_i t_i(D_i-L),
    sum_i b_i(u_i-D_i) + sum_i t_i(U-D_i),

respectively. All their terms are nonnegative. No endpoint in (9)
is required to be attained; ties in the minimum or maximum are allowed.

Known orientations convert (9) to bounds on positive unsigned actual
areas. For a positive vertex sign, use its unsigned lower and upper
bounds in that order. For a negative vertex sign, use minus its
unsigned upper and minus its unsigned lower bound. The target sign
determines whether the signed lower or signed upper expression gives
an unsigned lower bound. A zero target is checked directly against
the two signed bounds instead.

All bounds used to obtain N, b_i, l_i and u_i are immutable earlier
references in a finite proof. They may be strengthened later without
altering an earlier update. An area cap obtained from a coordinate
box can be used to refine a later box only after its source box has
already been justified. These requirements prevent circular use of
the proposed refinement.

The independent [check_n6_auxiliary_bounds.js](check_n6_auxiliary_bounds.js)
checks the affine identity, both differences in (8) for all 27
positive/negative/zero vertex patterns, and both identities in (9),
in addition to the earlier weighted and side-pair identities.
