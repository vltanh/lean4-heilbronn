#!/usr/bin/env python3
"""Exact algebra diagnostics for BALANCED_BOTTOM_INNER_SECTOR.md."""

import sympy as sp


def det(p, q):
    return sp.expand(p[0] * q[1] - p[1] * q[0])


b, lam, r, u, l, h, z, t, x, y = sp.symbols(
    "b lam r u l h z t x y", real=True
)
points = {
    "D": sp.Matrix([0, 1]),
    "C": sp.Matrix([1, 1]),
    "E": sp.Matrix([0, lam]),
    "B": sp.Matrix([b, 0]),
    "R": sp.Matrix([r, u]),
    "L": sp.Matrix([l, h]),
    "S": sp.Matrix([z, t]),
    "Q": sp.Matrix([x, y]),
}


def area(order):
    a, b, c = (points[name] for name in order)
    return det(b - a, c - a)


formulas = {
    "DEL": (1 - lam) * l,
    "BDL": b * (1 - h) - l,
    "BSC": z - b - (1 - b) * t,
    "RCS": (1 - u) * (1 - z) - (1 - r) * (1 - t),
    "EBR": b * u + lam * (r - b),
    "BQL": h * (x - b) + (b - l) * y,
    "BSQ": (z - b) * y - t * (x - b),
    "EQS": (t - lam) * x - z * (y - lam),
    "LQR": (h - u) * (r - x) - (r - l) * (y - u),
    "ERQ": r * (y - lam) - (u - lam) * x,
}
for order, formula in formulas.items():
    assert sp.expand(area(order) - formula) == 0

assert sp.expand(area("BQL") - y * area("BDL") - h * (x - b * (1 - y))) == 0
assert sp.expand(area("BSQ") - y * area("BSC") - t * (b + (1 - b) * y - x)) == 0

total = (r - b) * h + b * t - lam * (r - z) - u * l
assert sp.expand(sum(area(order) for order in ("BQL", "BSQ", "EQS", "LQR", "ERQ")) - total) == 0

q, v, s = sp.symbols("q v s", positive=True)
w = 1 - b
l0 = s / q
h0 = 1 - s * (q + 1) / (b * q)
z0 = 1 - s / v
t0 = 1 - s * (v + 1) / (w * v)
assert sp.cancel(h0 - (1 - (s + l0) / b)) == 0
assert sp.cancel(t0 - (z0 - b - s) / w) == 0

endpoint_bound = w * h0 + b * t0 - (1 - q) * (1 - z0) - (1 - v) * l0
k = w / b + b / w + 1 / (b * q) + 1 / (w * v) - v / q - q / v
assert sp.cancel(endpoint_bound - (1 - s * k)) == 0

c = w * q + b * v
assert sp.expand(b * (1 - v) + (1 - q) * w - (1 - c)) == 0
assert sp.cancel(w / q + b / v - 1 / c - b * w * (q - v) ** 2 / (q * v * c)) == 0
assert sp.cancel(
    k - 4 / c
    - (1 / (b * w) - 4) * (1 + 1 / c)
    - (q - v) ** 2 * (1 - c) / (q * v * c)
) == 0

s0 = sp.Rational(7, 64)
assert 1 - 4 * s0 / (1 - s0) == sp.Rational(29, 57)
assert 5 * s0 - sp.Rational(29, 57) == sp.Rational(139, 3648) > 0
assert sp.cancel((1 - s) * (5 * s - 1 + 4 * s / (1 - s))) == -5 * s**2 + 10 * s - 1
root = 1 - 2 / sp.sqrt(5)
assert sp.simplify(5 * root**2 - 10 * root + 1) == 0
assert 4 * 64**2 - 5 * 57**2 == 139  # root < 7/64, by squaring positives.

print("PASS: all ten signed determinant formulas and centrality identities")
print("PASS: five-area cancellation and endpoint substitutions")
print("PASS: weighted-mean identity and complete bottom-cell strict bound")
