#!/usr/bin/env python3
"""Exact algebra diagnostics for UNBALANCED_RIGHT_HULL.md."""

import sympy as sp

x, y, z, t, a, m, n = sp.symbols("x y z t a m n", real=True)
u = x * t - y * z
v = u + z - t - x + y
substituted = sp.expand(v.subs(t, (m * a + y * z) / x))
assert sp.cancel(substituted - ((x - y) * z / x - (x - y) - (1 - x) * m * a / x)) == 0
assert sp.cancel(substituted.subs(z, 1) - (1 - x) * (x - y - m * a) / x) == 0
assert sp.cancel(x - a * (x + 3 * (1 - x)) / (1 - x) - (x - 2 * a - a / (1 - x))) == 0
assert sp.cancel(x - a * (3 * x + 1 - x) / (1 - x) - (x + 2 * a - 3 * a / (1 - x))) == 0

b, q, c, d, C = sp.symbols("b q c d C", positive=True)
s = sp.Rational(7, 64)
w = 1 - b
assert sp.expand(b + (1 - q) * w - (1 - w * q)) == 0
assert sp.expand(c * x - 2 * d - d / (1 - x) - (c - 2 * d - c * (1 - x) - d / (1 - x))) == 0
assert sp.simplify((1 + sp.sqrt(3)) ** 2 - (4 + 2 * sp.sqrt(3))) == 0
assert sp.simplify((sp.sqrt(3) - 1) * (sp.sqrt(3) + 1) - 2) == 0
assert 147 > 144  # sqrt(3) > 12/7, hence Ks > 13/16.
assert sp.Rational(52, 7) * s == sp.Rational(13, 16)

N = lambda cval: 4 * cval * b * s * w - (w * cval - s * (1 + b)) ** 2
assert sp.cancel(
    w**2 * (4 * C * b * s / w - (C - s - 2 * b * s / w) ** 2) - N(C)
) == 0
F = (q - s * (q + 1)) ** 2 - 4 * s * q * (1 + s)
assert F.subs(q, sp.Rational(67, 80)) == -sp.Rational(34599, 26214400)
assert F.subs(q, s / (1 - s)) < 0
assert s / (1 - s) < sp.Rational(67, 80)

C1 = 1 - sp.Rational(67, 80) * w
P1 = -71824 * b**4 + 59496 * b**3 + 6591 * b**2 + 1126 * b - 289
assert sp.cancel(102400 * N(C1) - P1) == 0
shift1 = (
    -71824 * t**4 + sp.Rational(553688, 25) * t**3
    + sp.Rational(14069679, 625) * t**2
    + sp.Rational(81639342, 15625) * t + sp.Rational(61692937, 781250)
)
assert sp.expand(P1.subs(b, sp.Rational(13, 100) + t) - shift1) == 0
assert sp.Rational(3, 16) - sp.Rational(13, 100) == sp.Rational(23, 400) < sp.Rational(1, 16)
assert sp.Rational(553688, 25) - sp.Rational(71824, 16) == sp.Rational(441463, 25) > 0

C2 = 1 + s - s / b
P2 = -8072 * b**4 + 13260 * b**3 - 6329 * b**2 + 994 * b - 49
assert sp.cancel(4096 * b**2 * N(C2) - P2) == 0
shift2 = (
    -8072 * t**4 - sp.Rational(226564, 25) * t**3
    - sp.Rational(1235063, 625) * t**2
    + sp.Rational(3137171, 62500) * t + sp.Rational(1083451, 12500000)
)
assert sp.expand(P2.subs(b, sp.Rational(13, 100) - t) - shift2) == 0
assert sp.Rational(13, 100) - s == sp.Rational(33, 1600) < sp.Rational(1, 48)
lower_linear = (
    sp.Rational(3137171, 62500)
    - sp.Rational(1235063, 625 * 48)
    - sp.Rational(226564, 25 * 48**2)
    - sp.Rational(8072, 48**3)
)
assert lower_linear == sp.Rational(1084228751, 216000000) > 0

print("PASS: generalized right lower-vertex elimination and outer-cell comparison")
print("PASS: common upper-central quadratic and q>67/80")
print("PASS: both rational polynomial contradictions for complete cells I and III")

# Complete C-isolated central-line exclusion, including right cell II.
fc = (q - s * (2 + b * q)) ** 2 - 4 * s * q * (1 + b * q)
qc = sp.Rational(4, 5) + 2 * b / 3
fc_line = 1225 * b**4 - 64260 * b**3 - 49766 * b**2 + 23412 * b - 2799
assert sp.cancel(230400 * fc.subs(q, qc) - fc_line) == 0
assert 23412**2 - 4 * 49766 * 2799 == -9058392 < 0
assert 2 * s / (1 - 2 * s / 7) == sp.Rational(7, 31) < sp.Rational(4, 5)
generic_n = lambda cval: 4 * cval * b * s - w * (cval - s) ** 2
c3 = 1 - w * qc
p3 = (
    409600 * b**5 - 245760 * b**4 + 232704 * b**3
    - 51712 * b**2 + 65937 * b - 7569
)
assert sp.cancel(921600 * generic_n(c3) - p3) == 0
assert sp.diff(p3, b) == 2048000 * b**4 - 983040 * b**3 + 698112 * b**2 - 103424 * b + 65937
assert 698112 - 983040 * sp.Rational(2, 7) == sp.Rational(2920704, 7)
assert 65937 - 103424 * sp.Rational(2, 7) == sp.Rational(254711, 7)
assert p3.subs(b, sp.Rational(123, 1000)) == sp.Rational(1437613843347, 9765625000) > 0
c4 = 1 + s - s / b
p4 = 6084 * b**3 - 5188 * b**2 + 945 * b - 49
assert sp.cancel(4096 * b**2 * generic_n(c4) - p4) == 0
shift4 = (
    -6084 * t**3 - sp.Rational(735751, 250) * t**2
    + sp.Rational(13778373, 250000) * t + sp.Rational(16815707, 250000000)
)
assert sp.expand(p4.subs(b, sp.Rational(123, 1000) - t) - shift4) == 0
assert sp.Rational(123, 1000) - s == sp.Rational(109, 8000) < sp.Rational(1, 64)
assert (
    sp.Rational(13778373, 250000)
    - sp.Rational(735751, 250 * 64) - sp.Rational(6084, 64**2)
) == sp.Rational(122299247, 16000000) > 0
print("PASS: complete C-isolated central-line exclusion in the upper cut")
