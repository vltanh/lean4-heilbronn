"""Exact transcription checks for the coupled-rectangle C1 argument."""

import sympy as sp


def det(a, b):
    return a[0] * b[1] - a[1] * b[0]


def tri(a, b, c):
    return det((b[0] - a[0], b[1] - a[1]),
               (c[0] - a[0], c[1] - a[1]))


sigma = sp.Rational(7, 64)
u, v, p, q, c, a, s, delta = sp.symbols("u v p q c a s delta")
xx, yy, zz = (c, 1 - a), (u, v), (p, q)
h, k, bigq = 1 - v, 1 - v - a, (1 - v) * c - a * u
central = -tri(xx, yy, zz)
cross_p = u * (1 - q) - h * p
d, e = u - c, bigq + u - c
y0 = v - s * (k + h) / bigq
x0 = u + s * (u + d) / bigq
left = ((s + e + d * delta) / k, -delta)
right = ((u - s + u * delta) / h, -delta)
top = (x0, y0)
height = y0 + delta
g0 = (q + delta) * bigq * height / (h * k)
g1 = (s + central) * height / k
g2 = (cross_p - s) * height / h
assert sp.cancel(tri(zz, left, right) - g0) == 0
assert sp.cancel(tri(zz, left, top) - g1) == 0
assert sp.cancel(tri(zz, right, top) - g2) == 0
assert sp.cancel(g1 - g2 - (right[0] - left[0]) * (q - y0)) == 0

assert sp.Rational(55, 384) * (1 / sigma - 3) == sp.Rational(2365, 2688) < 1
assert sp.Rational(11, 98) / sigma == sp.Rational(352, 343) < sp.Rational(11, 5)

rho, gamma = sp.symbols("rho gamma", positive=True)
g1ratio = (sp.Rational(17, 8)
           * (1 / sigma - sp.Rational(21, 5) - rho - sp.Rational(17, 5) / rho)
           / (rho + sp.Rational(6, 5)))
poly1 = 875 * rho**2 - 2605 * rho + 2023
assert sp.cancel(1 - g1ratio - poly1 / (56 * rho * (5 * rho + 6))) == 0
g0ratio = ((1 / sigma - 2 - (1 + rho) / gamma) * rho
           * (1 / sigma - rho - gamma - 3 - (2 * gamma + 1) / rho)
           / ((rho + gamma) * (rho + gamma + 1)))
nn = (49 * gamma**3 + 448 * gamma**2 * rho + 749 * gamma**2
      + 350 * gamma * rho**2 - 2248 * gamma * rho + 252 * gamma
      - 49 * rho**3 + 252 * rho**2 + 252 * rho - 49)
assert sp.cancel(1 - g0ratio - nn / (49 * gamma * (gamma + rho) * (gamma + rho + 1))) == 0

# Every cap determinant used in the global C1 capacity-two corollary.
h, c, d, f = sp.symbols("h c d f")
origin, left, bottom, right, top = (0, 0), (0, h), (c, 0), (1, d), (f, 1)
ul, br, ur = (0, 1), (1, 0), (1, 1)
anchor_cdf = 1 - c + d * (c - f)
anchor_dfh = 1 - h + f * (h - d)
assert sp.expand(tri(bottom, right, top) - anchor_cdf) == 0
assert sp.expand(tri(right, top, left) - anchor_dfh) == 0
for triple, area in [
    ((right, top, ul), f * (1 - d)),
    ((left, top, ul), f * (1 - h)),
    ((top, left, origin), h * f),
    ((origin, bottom, right), c * d),
    ((bottom, right, br), -d * (1 - c)),
    ((br, right, top), d * (1 - f)),
    ((bottom, right, ur), (1 - c) * (1 - d)),
    ((right, ur, top), (1 - d) * (1 - f)),
    ((ur, top, left), (1 - f) * (1 - h)),
]:
    assert sp.expand(tri(*triple) - area) == 0
assert sp.Rational(19, 2) * sigma == sp.Rational(133, 128) > 1

# Opposite-quadrant exclusions for the upper six-point quadrilateral.
lh, lm = h - d, c - f
ww = 1 - lh * lm
xx, yy = (c - h * lm) / ww, (h - c * lh) / ww
assert sp.cancel(h - yy - lh * xx) == 0
assert sp.cancel(c - xx - lm * yy) == 0
assert sp.Rational(52, 7) * sigma == sp.Rational(13, 16) > sp.Rational(81, 100)
assert (1 - 2 * sigma)**2 / (8 * sigma) == sp.Rational(625, 896) < sp.Rational(13, 16)
vv, dd = sp.symbols("v delta", positive=True)
ff = (1 - vv) * (vv - 2 * sigma) / vv**2
assert sp.cancel(ff + 1 - (1 + 2 * sigma) / vv + 2 * sigma / vv**2) == 0
case1 = (1 - vv - dd) / vv - sigma * (1 - vv) * (2 - dd) / vv**2
assert sp.cancel(case1 - ff - dd * (sigma * (1 - vv) - vv) / vv**2) == 0
case2 = (1 - vv) * (vv - 2 * sigma + sigma * dd) / (vv * (vv + dd))
assert sp.cancel(case2 - ff - dd * (1 - vv) * (2 * sigma - (1 - sigma) * vv)
                 / (vv**2 * (vv + dd))) == 0
assert 2 * sigma / (1 - sigma) == sp.Rational(14, 57) < sp.Rational(1, 4)

big_h, rr, zz, alpha, beta = sp.symbols("H R Z alpha beta")
aa = beta + big_h * zz * (1 - rr)
bb = alpha + big_h * rr * (1 - zz)
wrelax = 1 - big_h * rr * zz
subst = {big_h: h * c, rr: (h - d) / h, zz: (c - f) / c,
         alpha: 1 - h, beta: 1 - c}
assert sp.cancel(aa.subs(subst) - ww * (1 - xx)) == 0
assert sp.cancel(bb.subs(subst) - ww * (1 - yy)) == 0
assert sp.cancel(wrelax.subs(subst) - ww) == 0
xrelax = (1 - dd)**2 / 4 - vv**2
wcase = sp.Rational(3, 4) - vv - vv**2 + dd**2 / 4
summ = sp.Rational(1, 5) + 2 * xrelax + dd
balanced = sp.expand(wcase + summ - sp.Rational(5, 2) * summ**2)
balanced_expected = (sp.Rational(9, 40) - dd**2 - sp.Rational(5, 8) * dd**4
                     + (4 + 5 * dd**2) * vv**2 - 10 * vv**4 - vv)
assert sp.expand(balanced - balanced_expected) == 0
assert sp.Rational(9, 40) - sp.Rational(1, 25) - sp.Rational(5, 8) / 625 == sp.Rational(23, 125)
assert sp.Rational(23, 125) - sp.Rational(1, 6) == sp.Rational(13, 750)
cc = sp.Rational(13, 40) - dd + sp.Rational(3, 2) * dd**2 - sp.Rational(5, 8) * dd**4
unbalanced = sp.expand(wcase + summ - 10 * (xrelax + sp.Rational(1, 5)) * (xrelax + dd))
assert sp.expand(unbalanced - cc + vv - (4 + 5 * dd**2) * vv**2 + 10 * vv**4) == 0
assert sp.expand(4 + 5 * dd**2 - sp.Rational(5, 2) * (1 - dd)**2
                 - (sp.Rational(3, 2) + 5 * dd + sp.Rational(5, 2) * dd**2)) == 0
assert sp.Rational(1, 5) - sp.Rational(8, 43) == sp.Rational(3, 215)
assert sp.diff(cc, dd).subs(dd, sp.Rational(1, 2)) == sp.Rational(3, 16)
assert sp.expand(sp.diff(cc, dd, 2) - 3 + sp.Rational(15, 2) * dd**2) == 0
assert cc.subs(dd, sp.Rational(1, 2)) == sp.Rational(103, 640) > sp.Rational(1, 8)
assert cc.subs(dd, 1) == sp.Rational(1, 5) > sp.Rational(1, 8)
assert sp.Rational(1, 8) - sp.Rational(5, 52) == sp.Rational(3, 104)

# Area-only exclusion of the two high-side triangular subcases.
rr_fixed = sp.Rational(13, 16)
qq, kk, gg = sp.symbols("q k g", positive=True)
assert rr_fixed - (1 - sigma)**2 == sp.Rational(79, 4096) > 0
assert rr_fixed - sp.Rational(9, 4) * sigma == sp.Rational(145, 256) > 0
assert sp.cancel((1 - h + f * (h - d)).subs({h: rr_fixed / c, f: c * gg, d: qq / c})
                 - (1 - rr_fixed / c + gg * (rr_fixed - qq))) == 0
assert sp.cancel((c + sigma - (1 - sigma)**2 / c
                   - sigma - 2 * kk + kk**2 / c).subs(c, 1 - sigma + kk)) == 0
assert sp.expand(qq + rr_fixed * kk / qq - sigma - 2 * kk
                 - (1 - kk / sigma) * (qq - sigma)
                 - kk / sigma * (qq + rr_fixed * sigma / qq - 3 * sigma)) == 0

print("PASS: all three displaced-triangle determinants")
print("PASS: coupled rectangle sign constants")
print("PASS: exact reduction to both existing positive polynomials")
print("PASS: all nine corner-cap determinant formulas")
print("PASS: both upper-quadrilateral opposite-quadrant certificates")
print("PASS: both high-side triangular subcase area certificates")
print("The written geometric arguments remain to be reviewed by a reader.")
