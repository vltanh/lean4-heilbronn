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

print("PASS: all three displaced-triangle determinants")
print("PASS: coupled rectangle sign constants")
print("PASS: exact reduction to both existing positive polynomials")
print("The written geometric arguments remain to be reviewed by a reader.")
