"""Exact transcription checks for FOUR_CORNERS.md; no box search."""

import sympy as sp


def det(a, b):
    return a[0] * b[1] - a[1] * b[0]


def tri(a, b, c):
    return det((b[0] - a[0], b[1] - a[1]),
               (c[0] - a[0], c[1] - a[1]))


s = sp.Rational(2, 19)
assert (1 - 2 * s)**2 / 8 == sp.Rational(225, 2888) < s
assert sp.Rational(1, 2) - 2 * s < 4 * s
assert (1 - 3 * s)**2 - 8 * s == -sp.Rational(135, 361)
assert s / (sp.Rational(1, 2) - 2 * s) == sp.Rational(4, 11)
assert ((sp.Rational(1, 2) - 2 * s) * (1 - 3 * s) - s
        == sp.Rational(67, 722) < s)
assert -sp.Rational(7, 75) > -s
assert ((1 - 7 * s) * (sp.Rational(1, 2) - s) - 4 * s**2
        == sp.Rational(43, 722) < s)
assert (1 - 4 * s)**2 / 4 == sp.Rational(121, 1444) < s
assert ((1 - 2 * s) * ((1 - 2 * s)**2 / 2 - 2 * s)
        == sp.Rational(1095, 13718) < s)

p, q, u, v, x, y, z, m, h, k, ss = sp.symbols("p q u v x y z m h k s")
a, b, c, dd = (0, 0), (0, 1), (1, 1), (1, 0)
pp, qq = (p, u), (q, v)
assert sp.expand(tri(b, pp, qq) - tri(a, pp, qq) - q + p) == 0
line_pp, line_qq = (p, z + m * p), (q, z + m * q)
for corner, expected in [
    (a, -(q - p) * z),
    (b, (q - p) * (1 - z)),
    (c, (q - p) * (1 - z - m)),
    (dd, -(q - p) * (z + m)),
]:
    assert sp.expand(tri(corner, line_pp, line_qq) - expected) == 0

assert sp.expand(tri(b, qq, (x, y)) - ((1 - v) * x - q * (1 - y))) == 0
assert sp.expand(tri(c, qq, (x, y))
                 - ((1 - v) * x - (1 - q) * y + v - q)) == 0

f1 = q * h * k / (v * (1 - v)) - ss * (k / (1 - v) + h / v)
f2 = q * h * k / (v * (1 - v)) - ss * (k / v + h / (1 - v))
end = {h: 1 - ss - v, k: v - ss}
assert sp.cancel(f1.subs(end) - f2.subs(end)
                 + ss * (2 * v - 1)**2 / (v * (1 - v))) == 0
assert sp.cancel(f2.subs(end) - q + 2 * ss
                 + (q * ss * (1 - ss) - ss**2) / (v * (1 - v))) == 0
assert sp.expand(q - 2 * ss - 4 * (q * ss * (1 - ss) - ss**2)
                 - (q * (1 - 2 * ss)**2 - 2 * ss * (1 - 2 * ss))) == 0
assert sp.cancel(sp.diff(f2, h) - (q * k - ss * v) / (v * (1 - v))) == 0
assert sp.cancel(sp.diff(f2, k) - (q * h - ss * (1 - v)) / (v * (1 - v))) == 0

print("PASS: all four-corner determinant and line identities")
print("PASS: exact region-separation and sign-comparison constants")
print("PASS: final two-variable determinant bound")
print("The written geometric and sign arguments remain to be reviewed by a reader.")
