"""Exact identities for C1_TOP_CAP_COMMON_CELL.md."""

from math import comb

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

ell, m, t, v = sp.symbols("ell m t v")
dC = (c - ell) * (y - t) - y * (m - ell)
dH = (h - y) * (m - ell) - ell * (y - t)
assert sp.expand((h - y) * dC + y * dH - (y - t) * (h * c - h * ell - c * y)) == 0
F0 = (v - s) * (p - v) - p * s
F1 = (v - s) * (p - h * s - (1 + z) * v) - p * s
F2 = (v - s) * ((1 - h + z) * (p - v) - h * s) - p * s * (1 - h)
assert sp.expand(F0 - F1 - (v - s) * (h * s + z * v)) == 0
assert sp.diff(F1, h) == -s * (v - s)
assert sp.expand(sp.diff(F2, h) + F0 + s * (v - s)) == 0
assert rho - s / rho == sp.Rational(146473, 214620) > 0

a2 = 1 - p + z
B1 = p - s * (1 + p + z)
B2 = a2 * (p - s) - p * s
w = sp.symbols("w")
assert sp.expand(F1.subs({h: p, v: w + s}) - (w * (B1 - (1 + z) * w) - p * s)) == 0
assert sp.expand(F2.subs({h: p, v: w + s}) - (w * (B2 - a2 * w) - p * s * (1 - p))) == 0
G1 = B1**2 - 4 * s * p * (1 + z)
G2 = B2**2 - 4 * a2 * p * s * (1 - p)
P1 = 2131600 * p**4 - 5837080 * p**3 + 5365281 * p**2 - 1692432 * p + 33856
assert sp.expand(P1 - 2131600 * G2.subs(z, sp.Rational(3, 20))) == 0
pstar = sp.Rational(89, 100)
assert G1.subs({p: pstar, z: sp.Rational(3, 20)}) == -sp.Rational(48147, 10658000)
q = (p**2 - p + s) / (p - rho)
assert sp.factor(A.subs({c: 1, z: q}) - s) == 0
P2 = (17515357200 * p**4 - 79495677240 * p**3 + 98117240305 * p**2
      - 37399223344 * p + 613850176)
assert sp.cancel(P2 - 102233667600 * (p - rho)**2 * G1.subs(z, q)) == 0

theta = sp.symbols("theta")
rows = [
    (P1, rho, pstar, 10125000,
     [-10883875000, -4215963750, -1228984425, -798761115, -1176942798]),
    (P2, pstar, sp.Integer(1), 1500000,
     [-7879524510312, -101309868116010, -288190723895375, -577077596272500, -972679354500000]),
]
for poly, lo, hi, denominator, expected in rows:
    polynomial = sp.Poly(sp.expand(poly.subs(p, lo + (hi - lo) * theta)), theta)
    assert polynomial.degree() == 4
    bernstein = [
        sum(polynomial.nth(j) * sp.Rational(comb(i, j), comb(4, j)) for j in range(i + 1))
        for i in range(5)
    ]
    assert [denominator * coefficient for coefficient in bernstein] == expected
    assert all(coefficient < 0 for coefficient in bernstein)

print("C1 common-cell isolated C and O: all exact identities, gaps, and ten coefficients pass.")
