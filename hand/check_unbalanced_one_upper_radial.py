#!/usr/bin/env python3
"""Exact identities for UNBALANCED_ONE_UPPER_RADIAL.md."""

import sympy as sp

F = sp.Rational
s = F(7, 64)
b, q, r, k, v, z, x, y = sp.symbols("b q r k v z x y", real=True)
a, ap, h, u, t = sp.symbols("a ap h u t", real=True)
w = 1 - b
lam = 1 - q


def same(lhs, rhs):
    assert sp.cancel(lhs - rhs) == 0, sp.factor(lhs - rhs)


def det(A, B, C):
    return sp.expand((B[0] - A[0]) * (C[1] - A[1])
                     - (B[1] - A[1]) * (C[0] - A[0]))


D, C, E, B = (0, 1), (1, 1), (0, lam), (b, 0)
R, S, P = (r, 1 - v), (k, 1 - z), (x, 1 - y)
same(det(C, R, S), (1 - r) * z - (1 - k) * v)
same(det(D, B, R), r - b * v)
same(det(D, E, B), b * q)
assert 1 - 2 * s == F(25, 32) < F(13, 16)
assert s * (4 + 2 * F(12, 7)) == F(13, 16)
assert F(12, 7)**2 < 3
print("PASS: universal DBR capacity-one estimate")

cstar = 1 - 9 * w / 10
ear = 4 * cstar * b * s - w * (cstar - s)**2
p0 = 82944 * b**3 - 44352 * b**2 + 6217 * b - 9
same(102400 * ear, p0)
same(p0.subs(b, F(1, 4) + t), 82944 * t**3 + 17856 * t**2 - 407 * t + F(277, 4))
same(p0.subs(b, F(1, 4) - u), u**2 * (17856 - 82944 * u) + 407 * u + F(277, 4))
assert 407**2 - 17856 * 277 == -4780463 < 0
assert 17856 - 82944 * F(9, 64) == 6192 > 0
same(det(S, C, P), z * (1 - x) - (1 - k) * y)
same(det(D, E, P), q * x)
assert F(9, 10) * (1 - s) == F(513, 640) < F(13, 16)
print("PASS: q<9/10 and capacity one for DEQ/DET")

ar, ass = r - 1 + w * v, k - 1 + w * z
same(det(B, R, C), ar)
same(det(B, S, C), ass)
right_hull = det(B, R, S) + det(B, S, C)
same(right_hull, ar * (1 - z) + ass * v)
same(det(D, R, S), v * (1 + ass) - z * (1 + ar))
trimmed = a * ap - s * (a + ap + a * (1 - z) + ap * v)
same(trimmed, a * (ap - s * (2 - z)) - s * ap * (1 + v))
bound = v * (1 + ap) - z - z * s * ap * (1 + v) / (ap - s * (2 - z))
same(sp.diff(bound, ap), v + z * s**2 * (1 + v) * (2 - z) / (ap - s * (2 - z))**2)
bound_k = sp.cancel(bound.subs(ap, w * z))
same(sp.diff(bound_k, v), 1 + w * z * (w * z - 2 * s) / ((w + s) * z - 2 * s))
same(bound_k.subs(v, 1), 1 - b * z - 2 * s * w * z**2 / ((w + s) * z - 2 * s))
same((w + s)**2 * z**2 - 8 * s * ((w + s) * z - 2 * s), ((w + s) * z - 4 * s)**2)
ww = sp.symbols("ww", positive=True)
same(sp.diff(ww / (ww + s)**2, ww), (s - ww) / (ww + s)**3)
assert 3 * s**2 / (1 - s) == F(49, 1216) > F(1, 30)
assert 16 * s**2 * (1 - s) == F(2793, 16384) > F(1, 6)
assert 1 - F(1, 30) - F(1, 6) == F(4, 5) < F(13, 16)
print("PASS: complete cell-II DRS capacity-one estimate")

alpha = v - q * (1 - r)
hstar = v + q * r
same(det(E, R, C), alpha)
same(det(D, E, R) + det(D, R, C), hstar)
same(hstar, alpha + q)
same(hstar - alpha, q)
same(hstar - v, q * r)
qc = v**2 / (4 * s) - 2 * v + s
same(sp.diff(qc, v), v / (2 * s) - 2)
assert qc.subs(v, 1) == F(177, 448) < F(2, 5)
same(det(D, B, P), x - b * y)
same(det(R, D, P), r * y - v * x)
same(det(E, C, P), q * (1 - x) - y)
lower = s * (1 + F(13, 16)) / (1 - F(13, 16) * 5 * s / 2)
upper = (2 - 7 * s) / (5 * (1 + s))
assert lower == F(406, 1593) > F(1, 4)
assert upper == F(79, 355) < F(1, 4)
print("PASS: every noncontainment line sign forces contradictory P depths")
print("PASS: exact algebra for the complete P-below-DR exclusion")
