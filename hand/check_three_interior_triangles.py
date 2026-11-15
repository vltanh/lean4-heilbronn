#!/usr/bin/env python3
"""Exact diagnostic for THREE_INTERIOR_TRIANGLES.md, not a numerical cover."""

from itertools import combinations, combinations_with_replacement

import sympy as sp

R = sp.Rational
p0, q0, rho = R(11, 29), R(20, 29), R(11, 20)
assert p0 / rho == q0
assert 2 * q0 - p0 == 1

standard = [(R(0), R(0)), (R(1), R(0)), (R(0), R(1)), (q0, q0), (-p0, q0)]
sheared = [(x + y / 2 - R(1, 2), y) for x, y in standard]
assert sheared == [(-R(1, 2), 0), (R(1, 2), 0), (0, 1),
                   (R(31, 58), R(20, 29)), (-R(31, 58), R(20, 29))]
extreme_differences = [(R(31, 29), 0), (R(30, 29), R(20, 29)), (R(1, 2), 1)]
differences = [(abs(a[0] - b[0]), abs(a[1] - b[1]))
               for a, b in combinations(sheared, 2)]
for x, y in differences:
    assert any(x <= u and y <= v for u, v in extreme_differences)
assert all(p in differences for p in extreme_differences)

T, U, V = (0, 1), (R(29, 31), R(29, 620)), (R(9, 20), R(31, 40))
for x, y in (T, U, V):
    assert x <= R(29, 31)
    assert 30 * x + 20 * y <= 29
    assert x / 2 + y <= 1

expected = [0, R(29, 31), R(9, 20), R(841, 9610),
            R(9251, 12400), R(279, 400)]
for (a, b), value in zip(combinations_with_replacement((T, U, V), 2), expected):
    assert a[0] * b[1] + a[1] * b[0] == value
    assert value <= R(29, 31)

assert 5 * 30**2 - 67**2 == 11
assert 65 * 81**2 - 653**2 == 56
assert R(177, 20) * R(79, 720) == R(13983, 14400) > R(29, 30)
assert R(39, 32) > R(30, 29)
assert R(19, 2) * R(7, 64) == R(133, 128) > 1

x, y, tau, rx, ry, b, lam = sp.symbols("x y tau rx ry b lam", real=True)
F = sp.Matrix([x + tau * (1 - y), y])
assert F.jacobian([x, y]).det() == 1
assert F.subs({x: 0, y: 1}) == sp.Matrix([0, 1])
assert F.subs({x: 1, y: 1}) == sp.Matrix([1, 1])
assert sp.simplify(F[0].subs({x: rx, y: ry, tau: (1-rx)/(1-ry)}) - 1) == 0
support = (1-x)*(1-ry) - (1-rx)*(1-y)
ratio_difference = (1-x)/(1-y) - (1-rx)/(1-ry)
assert sp.factor(support - (1-y)*(1-ry)*ratio_difference) == 0
DB, DE = sp.Matrix([b, -1]), sp.Matrix([0, lam-1])
assert sp.factor(sp.Matrix.hstack(DB, DE).det() - b*(lam-1)) == 0

print("PASS: canonical pentagon, width polar, and N/Type-II triangle capacity")
