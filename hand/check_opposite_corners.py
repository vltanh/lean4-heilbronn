#!/usr/bin/env python3
"""Optional exact transcription checks for OPPOSITE_CORNERS.md.

This is not a search over configurations or a proof-completeness certificate.
The hand proof explicitly states every identity checked below.
"""

import sympy as S


def equal(left, right=0):
    assert S.factor(left - right) == 0, S.factor(left - right)


h, beta, x, w, p, q, v, z, s = S.symbols("h beta x w p q v z s")
f = 1 - beta
alpha = 1 - h
D = h + beta - h * beta
L = f * w - beta * x
K = h * (1 - x) - w
N = f * w + (h - beta) * x - f * h
equal(N, -f * K - alpha * beta * x)
equal(N, alpha * L - h * f * (1 - x - w))


def det(a, b, c):
    return S.det(S.Matrix([[b[0] - a[0], b[1] - a[1]],
                          [c[0] - a[0], c[1] - a[1]]]))


# Determinant-one (x,w=y-x) coordinates.
A, E, H, F = (0, 0), (1, 0), (0, h), (f, beta)
X, P, Q = (x, w), (p, w), (q, v)
equal(det(A, F, X), L)
equal(det(E, H, X), K)
equal(det(H, F, X), N)
dA, dE, dH, dF = [det(P, Q, Z) for Z in (A, E, H, F)]
equal(dH, (h - w) * q + p * v - h * p)
equal(dE, w * (1 - q) + (p - 1) * v)
KP = K.subs(x, p)
equal(w * dH + (h - w) * dE, KP * (w - v))
equal(dE - dA, w - v)

l = -L.subs(x, p)
b = beta * (1 - p - w)
NP = N.subs(x, p)
equal(w * dH, KP * (-dA) - h * p * dE)
equal(w * dF, b * (-dA) - l * dE)
equal(h * p * b - KP * l, -w * NP)
print("PASS determinant identities and line-sign ordering identity")

ss = S.Rational(6, 55)
W = s * (h * (1 - h) + s) / (h * (1 - h - s))
equal((W - h / 2) * 2 * h * (1 - h - s),
      h**3 - (1 + s) * h**2 + 2 * s * h + 2 * s**2)
equal((h**3 - (1 + s) * h**2 + 2 * s * h + 2 * s**2)
      .subs(s, ss).subs(h, z + S.Rational(4, 5)),
      z**3 + S.Rational(71, 55) * z**2 + S.Rational(4, 11) * z
      + S.Rational(8, 15125))
quintic = (166375 * h**5 - 278300 * h**4 + 130075 * h**3
           - 16386 * h**2 + 3960 * h + 216)
equal(((h - s - W) * (W - s) - h * s).subs(s, ss),
      -ss * quintic / (166375 * h**2 * (1 - h - ss)**2))
equal(quintic.subs(h, z + S.Rational(4, 5)),
      166375 * z**5 + 387200 * z**4 + 304315 * z**3
      + 78962 * z**2 - 1736 * z + S.Rational(536, 25))
equal(S.Rational(536, 25) - S.Rational(1736**2, 4 * 78962),
      S.Rational(11744016, 987025))
print("PASS quintic contradiction and positive quadratic remainder")

U = h * beta
condition = (U - s * (beta + 2 * h - U))**2 - 4 * s * D * U
quartic = (7263025 * h**4 - 8180040 * h**3 + 1597176 * h**2
           - 97632 * h + 1296)
equal((h**2 * condition.subs(beta, 1 - s / h)).subs(s, ss),
      quartic / 9150625)
equal(quartic.subs(h, z + S.Rational(4, 5)),
      7263025 * z**4 + 15061640 * z**3 + 9855096 * z**2
      + 1626848 * z - S.Rational(1339312, 5))
equal(quartic.subs(h, S.Rational(49, 55)), -S.Rational(1468937, 55))
print("PASS quartic contradiction and endpoint sign")

r, sigma, total = S.symbols("r sigma total")
condition_same = (r**2 - sigma * total)**2 - 4 * sigma * r**2 * (total - r**2)
equal(condition_same.subs(total, 2 * r),
      r**2 * ((1 + 4 * sigma) * r**2 - 12 * sigma * r + 4 * sigma**2))
equal(1024 * ((1 + 4 * sigma) * r**2 - 12 * sigma * r + 4 * sigma**2)
      .subs(sigma, S.Rational(7, 64)),
      (8 * r - 7) * (184 * r - 7))

outside = r * (1 - r)**2 / (2 - r)
equal(S.diff(outside, r),
      2 * (1 - r) * (r**2 - 3 * r + 1) / (2 - r)**2)
equal(outside.subs(r, (3 - S.sqrt(5)) / 2), (5 * S.sqrt(5) - 11) / 2)
for numerator, denominator, critical in [
    (r * (1 - r), 3 - r, 3 - S.sqrt(6)),
    (r * (1 - r), 2 + r, S.sqrt(6) - 2),
]:
    equal((numerator / denominator).subs(r, critical), 5 - 2 * S.sqrt(6))
assert 6 * 110**2 > 269**2
assert 56**2 > 5 * 25**2
assert 65 * 18**2 - 145**2 == 35
print("PASS exact 7/128 factorization and auxiliary radical comparisons")
print("OPPOSITE_CORNER_IDENTITIES_PASS")
