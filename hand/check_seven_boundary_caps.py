#!/usr/bin/env python3
"""Exact identities for SEVEN_BOUNDARY_CAPS.md; no orientation sampling."""

import sympy as sp


def doubled(p, q, r):
    return sp.expand((q[0] - p[0]) * (r[1] - p[1])
                     - (q[1] - p[1]) * (r[0] - p[0]))


s = sp.Rational(7, 64)
a, b, c, d, e, f, h, L = sp.symbols("a b c d e f h L", real=True)
A, H, B, C, D, E, F = (0, a), (0, h), (b, 0), (c, 0), (1, d), (1, e), (f, 1)

assert sp.expand(doubled(A, B, H) - b * (h - a)) == 0
assert sp.expand(doubled(H, E, F) - ((1 - f) * (1 - h) + f * (1 - e))) == 0
assert sp.expand(doubled(H, C, F) - (c - h * (c - f))) == 0
assert sp.expand(doubled(H, B, F) - (b * (1 - h) + f * h)) == 0
assert doubled(B, C, F) == c - b

height = L + s * L / ((1 - s) * L - 3 * s)
assert sp.simplify(sp.diff(height, L) - (1 - 3 * s**2 / ((1 - s) * L - 3 * s)**2)) == 0
assert 1 - 1 / (3 * (1 - 2 * s)**2) == sp.Rational(851, 1875)
assert height.subs(L, 6 * s) == sp.Rational(749, 800)
assert sp.Rational(51, 800) < s

assert sp.Rational(21, 8)**2 < 7
assert sp.Rational(12, 5)**2 < 6
assert sp.Rational(7, 5)**2 < 2
assert sp.Rational(21, 32) * (1 + (sp.Rational(12, 5) + sp.Rational(7, 5)) / 2) == sp.Rational(609, 320)
assert 2 - s == sp.Rational(605, 320)
assert sp.Rational(5, 3)**2 < 3
assert sp.Rational(28, 3) * s == sp.Rational(49, 48) > 1

J = b - b * s / (1 - s - b) + sp.Rational(1, 2)
assert sp.simplify(sp.diff(J, b) - (1 - s * (1 - s) / (1 - s - b)**2)) == 0
assert s * (1 - s) / (sp.Rational(1, 2) - s)**2 == sp.Rational(399, 625)
assert J.subs(b, sp.Rational(1, 2)) == sp.Rational(43, 50) < 8 * s

M = sp.symbols("M", positive=True)
assert sp.Rational(22, 3)*s - (1-s)**2 == sp.Rational(109, 12288) > 0
U, V = 1-3*s/M, 2-2*s-4*s/M
assert sp.factor(U-V/2 - s*(1-1/M)) == 0
assert sp.factor(V-U - (1-2*s-s/M)) == 0
budget_excess = M + s*M/(M-3*s) + s*M/((1-2*s)*M-s) - 1
N = (3200*M**3 - 3900*M**2 + 1449*M - 147)/4096
assert sp.factor(budget_excess*(M-3*s)*((1-2*s)*M-s) - N) == 0
assert sp.factor(sp.diff(N, M) - 3*(40*M-21)*(80*M-23)/4096) == 0
assert sp.Rational(23, 80) < 3*s < sp.Rational(21, 40)
assert N.subs(M, sp.Rational(21, 40)) == sp.Rational(147, 327680) > 0

print("PASS: seven-boundary cap identities and rational exclusions")
