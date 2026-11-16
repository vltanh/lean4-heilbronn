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
