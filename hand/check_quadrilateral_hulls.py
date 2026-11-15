#!/usr/bin/env python3
"""Exact identity diagnostic for QUADRILATERAL_HULL.md, not a global cover."""

from itertools import combinations

import sympy as sp


def doubled(p, q, r):
    return sp.expand((q[0] - p[0]) * (r[1] - p[1])
                     - (q[1] - p[1]) * (r[0] - p[0]))


def polygon_doubled(points):
    return sp.expand(sum(p[0] * q[1] - p[1] * q[0]
                         for p, q in zip(points, points[1:] + points[:1])))


a, b, c, d, p, q, r, w, u = sp.symbols("a b c d p q r w u", real=True)
A, B, C, D = (a, 0), (0, b), (-c, 0), (0, -d)
P, Q = (p, -q), (-r, w)

assert sp.expand(-doubled(A, D, P) - (a * d - d * p - a * q)) == 0
assert sp.expand(doubled(B, C, Q) - (b * c - b * r - c * w)) == 0
assert sp.expand(polygon_doubled([A, B, C, D]) - (a + c) * (b + d)) == 0
assert sp.expand(doubled(A, C, P) - (a + c) * q) == 0
assert sp.expand(-doubled(A, C, Q) - (a + c) * w) == 0
assert sp.expand(doubled(B, D, P) - (b + d) * p) == 0
assert sp.expand(-doubled(B, D, Q) - (b + d) * r) == 0
assert sp.expand(1 + u - 2 * u**2 - (1 - u) * (2 * u + 1)) == 0

equality_points = [(0, 0), (1, 0), (1, 1), (0, 1),
                   (sp.Rational(1, 4), sp.Rational(1, 2)),
                   (sp.Rational(3, 4), sp.Rational(1, 2))]
assert min(abs(doubled(*triple)) for triple in combinations(equality_points, 3)) == sp.Rational(1, 4)

h, f = sp.symbols("h f", real=True)
H, C, D, F = (0, h), (c, 0), (1, d), (f, 1)
assert sp.expand(polygon_doubled([H, C, D, F])
                 - (1 - (h - d) * (c - f))) == 0
A, B = (0, a), (b, 0)
assert sp.expand(polygon_doubled([H, A, B, C]) - (h * c - a * b)) == 0
assert 18**2 * 65 - 145**2 == 35
assert sp.Rational(23, 3) > sp.Rational(27, 4)
assert sp.Rational(17, 320) > sp.Rational(1, 19)

print("PASS: quadrilateral hull identities, equality, and cap area factors")
