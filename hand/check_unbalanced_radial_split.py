#!/usr/bin/env python3
"""Exact identities for UNBALANCED_RADIAL_SPLIT.md; no sampled premises."""

import sympy as sp

s = sp.Rational(7, 64)
b, r, u, q, z = sp.symbols("b r u q z", real=True)
w = 1 - b
lam = 1 - q


def det(a, b_, c):
    return sp.det(sp.Matrix([[b_[0] - a[0], b_[1] - a[1]],
                             [c[0] - a[0], c[1] - a[1]]]))


D = (0, 1)
C = (1, 1)
E = (0, lam)
B = (b, 0)
R = (r, u)
W = (0, -b * u / (r - b))
scale = r + r * b * u / (r - b)
assert sp.cancel(det(D, W, R) - scale) == 0
assert sp.cancel(det(B, R, W)) == 0
x = (r - b) / w
u_bound = (r - b) / w - s / (1 - r)
assert sp.cancel((x - u_bound) * (1 - x) - s / w) == 0
scale_bound = r / w - r * b * s / ((r - b) * (1 - r))
assert sp.cancel(scale.subs(u, u_bound) - scale_bound) == 0
condition = (b - z) * (w - z) * z / ((1 - z) * b * w)
assert sp.cancel(condition - (z / (1 - z) - z**2 / (b * w))) == 0
assert sp.cancel((scale_bound - 1).subs(r, 1 - z)
                 - (1 - z) * b / ((w - z) * z) * (condition - s)) == 0
F = z / (1 - z) - 4 * z**2
assert sp.cancel(sp.diff(F, z)
                 - (1 - 2 * z) * (4 * z**2 - 6 * z + 1) / (1 - z)**2) == 0
assert (4 * z**2 - 6 * z + 1).subs(z, sp.Rational(1, 5)) == -sp.Rational(1, 25)
assert sp.expand(sp.Rational(5, 4) * z - 4 * z**2
                 - sp.Rational(25, 256) + 4 * (z - sp.Rational(5, 32))**2) == 0
assert F.subs(z, sp.Rational(1, 5)) == sp.Rational(9, 100) < sp.Rational(25, 256) < s
assert s - sp.Rational(3, 28) == sp.Rational(1, 448) > 0
print("PASS: right-quadrilateral support scale is below one")

# The affine map sends D,R,W to (0,0),(1,1),(0,1).
xx, yy = sp.symbols("xx yy", real=True)
first = xx / r
second = (1 - yy + (u - 1) * xx / r) / (1 + b * u / (r - b)) + first
assert sp.cancel(first.subs({xx: r, yy: u})) == 1
assert sp.cancel(second.subs({xx: 0, yy: 1})) == 0
assert sp.cancel(second.subs({xx: r, yy: u})) == 1
assert sp.cancel(second.subs({xx: 0, yy: W[1]})) == 1
assert sp.cancel(second.subs({xx: 0, yy: lam}) - q * (r - b) / (r - b + b * u)) == 0
assert sp.cancel(second.subs({xx: b, yy: 0})) == 1
assert sp.cancel(sp.det(sp.Matrix([[sp.diff(first, xx), sp.diff(first, yy)],
                                  [sp.diff(second, xx), sp.diff(second, yy)]])) + 1 / scale) == 0
print("PASS: exact six-point cell-II normalization")

c = 1 - w * q
assert sp.expand(det(E, B, R) - (b * u + lam * (r - b))) == 0
assert sp.expand(c - (b + lam * w)) == 0
assert (sp.Rational(5, 8) / 2)**2 < s
assert sp.Rational(13, 80) + (sp.Rational(67, 80) - sp.Rational(5, 8)) / 2 == sp.Rational(43, 160) < 3 * s
assert sp.expand(det(B, R, C) - (r - b - w * u)) == 0
assert sp.expand(det(D, E, R) + det(D, R, C) - (q * r + 1 - u)) == 0
bound_r = (1 - 2 * s)**2 / (4 * s) - 1
assert bound_r == sp.Rational(177, 448) < 4 * s == sp.Rational(7, 16)
assert sp.Rational(12, 7)**2 < 3
assert (4 + 2 * sp.Rational(12, 7)) * s == sp.Rational(13, 16)
print("PASS: empty lower ear, central-line contradiction, and forced radial signs")
