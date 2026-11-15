#!/usr/bin/env python3
"""Exact diagnostic for UNBALANCED_CELL_III.md; no sampled premises."""

import sympy as sp

s = sp.Rational(7, 64)
b, q, r, u, k, t, x, a, p, v = sp.symbols("b q r u k t x a p v", real=True)
w = 1 - b
lam = 1 - q


def det(a_, b_, c_):
    return sp.expand(
        (b_[0] - a_[0]) * (c_[1] - a_[1])
        - (b_[1] - a_[1]) * (c_[0] - a_[0])
    )


D, C, E, B, R, S = (0, 1), (1, 1), (0, lam), (b, 0), (r, u), (k, t)
U = det(B, R, S)
V = det(C, R, S)
delta = det(E, B, R)
jd = det(D, R, S)
vr, vs = 1 - u, 1 - t
assert sp.expand(delta - (b * u + lam * (r - b))) == 0
assert sp.expand(V - ((1 - r) * vs - vr * (1 - k))) == 0
assert sp.expand(jd - (k * vr - r * vs)) == 0
assert sp.expand(V - (jd + vs - vr)) == 0
assert det(D, S, C) == vs
assert det(D, S, R) == -jd
assert det(D, S, S) == 0
print("PASS: occupied upper-ear and signed DST identities")

psi = x + 2 * a - 3 * a / (1 - x)
assert sp.cancel(-(1 - x) * psi - (x**2 - (1 - 2 * a) * x + a)) == 0
assert sp.expand((x**2 - (1 - 2 * a) * x + a).subs(a, sp.Rational(1, 8))
                 - (x - sp.Rational(1, 4)) * (x - sp.Rational(1, 2))) == 0
assert sp.cancel(psi - (1 + 2 * a - ((1 - x) + 3 * a / (1 - x)))) == 0
assert sp.Rational(3, 2) - sp.Rational(39, 32)**2 == sp.Rational(15, 1024) > 0
assert sp.Rational(5, 4) - sp.Rational(39, 32) == sp.Rational(1, 32)
assert s / sp.Rational(7, 8) == sp.Rational(1, 8)
print("PASS: x<1/2 and u<1/32")

c, dd = b + lam * w, b * s / w
envelope = c * x + 2 * dd - 3 * dd / (1 - x)
assert sp.cancel(envelope - (b * psi.subs(a, s / w) + lam * w * x)) == 0
assert sp.cancel(sp.diff(envelope, x) - (c - 3 * dd / (1 - x)**2)) == 0
assert 12 * s * sp.Rational(16, 13) == sp.Rational(21, 13)
assert sp.Rational(15, 16) - sp.Rational(21, 13) == -sp.Rational(141, 208)
assert 2 * s - sp.Rational(141, 208) * sp.Rational(3, 16) == sp.Rational(305, 3328) > 0
p_poly = p**2 - (w - 2 * s) * p + s * w
assert sp.cancel(w**2 * (x**2 - (1 - 2 * s / w) * x + s / w).subs(x, p / w) - p_poly) == 0
p0 = s * b / (b - s)
assert p0.subs(b, sp.Rational(3, 20)) == sp.Rational(21, 52)
assert (1 - 3 * s) / 2 == sp.Rational(43, 128) < sp.Rational(21, 52)
n = sp.cancel((b - s)**2 * p_poly.subs(p, p0) / s)
assert sp.expand(n - sp.Rational(7, 4096) * (256 * b**2 - 85 * b + 7)) == 0
assert sp.expand(n.subs(b, sp.Rational(3, 20) - v)
                 - sp.Rational(7, 409600) * (25600 * v**2 + 820 * v + 1)) == 0
print("PASS: exact strengthening b>3/20")

r0 = b + (s - b / 32) / (1 - s / b)
assert sp.cancel(sp.diff(r0, b) - sp.Rational(31, 32) * (1 - s**2 / (b - s)**2)) == 0
assert sp.Rational(3, 16) < 2 * s
assert r0.subs(b, sp.Rational(3, 16)) == sp.Rational(279, 640) > sp.Rational(16, 37)
assert s / sp.Rational(7, 16) == sp.Rational(1, 4)
assert 3 * s * sp.Rational(16, 37) / (1 - sp.Rational(16, 37)) == sp.Rational(1, 4)
print("PASS: r>16/37 and the two top-area caps")

assert sp.Rational(461, 500)**2 - sp.Rational(17, 20) == sp.Rational(21, 250000) > 0
assert s - sp.Rational(21, 64)**2 == sp.Rational(7, 4096) > 0
assert sp.Rational(461, 500) - sp.Rational(21, 64) == sp.Rational(4751, 8000)
v0 = sp.Rational(4751, 8000)**2
assert v0 == sp.Rational(22572001, 64000000) > 3 * s
M, m, VV, VR = sp.symbols("M m VV VR", positive=True)
assert sp.cancel((M - s * (2 * M + m) / VV).subs(m, VV + VR - M)
                 - (M * (1 - s / VV) - s - s * VR / VV)) == 0
assert sp.Rational(3, 4) + sp.Rational(31, 32) == sp.Rational(55, 32)
cap = sp.Rational(3, 4) - s - sp.Rational(55, 32) * s / v0
assert cap == sp.Rational(155452041, 1444608064)
assert s - cap == sp.Rational(1275983, 722304032) > 0
print("PASS: exact |DST|<s contradiction; entire support cell III excluded")
