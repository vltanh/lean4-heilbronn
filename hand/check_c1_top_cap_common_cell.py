"""Exact identities for C1_TOP_CAP_COMMON_CELL.md."""

import sympy as sp


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
p0 = sp.Rational(71, 80)
p, c, z, h, f, y = sp.symbols("p c z h f y", positive=True)

W = c * (1 + z)
G = (p - 2 * s - s * z) ** 2 - 4 * s * p * (1 + z)
assert sp.expand((p * c - s * (W + c)) ** 2 - 4 * s * W * p * c - c**2 * G) == 0
assert sp.diff(G, z) == -2 * s * (p - 2 * s - s * z) - 4 * s * p
assert p0 - 2 * s - s**2 > 0
assert G.subs({p: p0, z: s}) == -sp.Rational(169041839, 181748742400)
assert p0 > rho

z0 = 2 * p - sp.Rational(5, 3)
assert z0.subs(p, p0) > 0
assert p0 * (1 - 2 * s) - s / 3 > 0
G0 = sp.expand(G.subs(z, z0))
assert sp.expand(G0 + (12807 * p**2 - 11280 * p - 64) / 47961) == 0
assert G0.subs(p, p0) == -sp.Rational(80087, 306950400)
assert sp.diff(G0, p).subs(p, p0) == -sp.Rational(152699, 639480)
assert sp.diff(G0, p, 2) == -sp.Rational(2846, 5329)

cap = (1 - h) * (c + ((1 - c) * y - s) / h) + f * (h - y)
assert sp.factor(sp.diff(cap, y) - ((1 - h) * (1 - c) - h * f) / h) == 0
assert (1 - rho) ** 2 < s
A = (c - p) * (1 - s / p + rho * (1 - c) / (c * p)) + z * c * (1 - rho / p)
assert sp.factor(cap.subs({h: p / c, f: z * c**2 / p, y: rho / c}) - A) == 0
dc = 1 - (s + rho) / p + rho / c**2 + z * (1 - rho / p)
assert sp.factor(sp.diff(A, c) - dc) == 0
assert 1 - (s + rho) / p0 + rho == sp.Rational(80129, 103660) > 0
F = sp.factor(A.subs({c: 1, z: z0}))
assert sp.factor(sp.diff(F, p) - (1 - (5 * rho / 3 - s) / p**2)) == 0
assert 5 * rho / 3 - s == sp.Rational(3289, 2628) > 1
assert F.subs(p, p0) - s == -sp.Rational(8711, 3731760)

print("C1 common-cell C-isolated pair line: all exact identities and gaps pass.")
