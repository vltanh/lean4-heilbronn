#!/usr/bin/env python3
"""Exact diagnostic for UNBALANCED_CELL_I.md; no numerical search premises."""

import sympy as sp

s = sp.Rational(7, 64)
b, q, r, u, k, t, z = sp.symbols("b q r u k t z", real=True)
w = 1 - b
lam = 1 - q


def det(a, b_, c):
    return sp.expand(
        (b_[0] - a[0]) * (c[1] - a[1])
        - (b_[1] - a[1]) * (c[0] - a[0])
    )


D, C, E, B, R, S = (0, 1), (1, 1), (0, lam), (b, 0), (r, u), (k, t)
U = det(B, R, S)
V = det(C, R, S)
g = det(B, R, C)
delta = det(E, B, R)
J = det(E, R, S)
alpha = det(E, R, C)
assert sp.expand(V - ((1 - r) * (1 - t) - (1 - u) * (1 - k))) == 0
assert sp.expand(g - (r - b - w * u)) == 0
assert sp.expand(delta - (b * u + lam * (r - b))) == 0
assert sp.expand(alpha - (1 - u - q * (1 - r))) == 0
x = (r - b) / w
zz = (k - b) / w
assert sp.cancel(V / w - ((x - u) * (zz - x) - (1 - x) * U / w) / x) == 0

c0, d0 = sp.Rational(101, 192), sp.Rational(1, 64)
assert 1 + s - s / sp.Rational(3, 16) == c0
assert sp.Rational(1, 8) * s / sp.Rational(7, 8) == d0
assert c0 - 2 * d0 - 3 * s == sp.Rational(1, 6)
assert 4 * c0 * d0 == sp.Rational(101, 3072) > sp.Rational(1, 36)
print("PASS: right-hull determinant signs and empty-ear constants")

t_bound = 1 - (s + (1 - u) * (1 - k)) / (1 - r)
j_bound = sp.cancel(J.subs(t, t_bound))
assert sp.cancel(sp.diff(j_bound, k) - ((r - u) / (1 - r) + lam)) == 0
assert sp.cancel(j_bound.subs(k, 1) - (r - r * s / (1 - r) - u + lam * (1 - r))) == 0
j_next = r - r * s / (1 - r) + (1 - s / b) * (1 - r)
assert sp.cancel(j_next.subs(r, 1 - z) - (1 + s - s * (1 / z + z / b))) == 0
assert sp.Rational(7, 5)**2 < 2
assert sp.Rational(12, 7)**2 < 3
assert (4 + 2 * sp.Rational(12, 7) + 2 * sp.Rational(7, 5) - 1) * s == sp.Rational(323, 320) > 1
assert sp.Rational(3, 16) < sp.Rational(7, 16)**2
assert 2 * s / sp.Rational(7, 16) == sp.Rational(1, 2)
assert 1 + s - sp.Rational(1, 2) == sp.Rational(39, 64)

r0 = 1 - 2 * s
poly_r = (r - b) * (1 - r) - s * (3 - b - 2 * r)
assert sp.expand(poly_r.subs(r, r0) - s * (w - 8 * s)) == 0
assert sp.diff(poly_r, r) == 1 + b - 2 * r + 2 * s
assert (1 + sp.Rational(3, 16) - 2 * r0 + 2 * s) == -sp.Rational(5, 32)
assert s / sp.Rational(3, 16) == sp.Rational(7, 12)
assert 1 - sp.Rational(7, 12) * 2 * s == sp.Rational(335, 384) < 8 * s
print("PASS: universal ERS bound and ECR doubled area below 8s")

a, c, d, ss = sp.symbols("a c d ss", positive=True)
rigidity = (a + c) * (a + d) / a + ss * ((a + c) / a + (a + d) / a)
assert sp.cancel(rigidity.subs({c: ss, d: ss}) - (a + 4 * ss + 3 * ss**2 / a)) == 0
assert sp.cancel(a + 4 * ss + 3 * ss**2 / a - 8 * ss - (a - ss) * (a - 3 * ss) / a) == 0
assert sp.cancel((a + 4 * ss + 3 * ss**2 / a) * ss / (a + ss) - (ss + 3 * ss**2 / a)) == 0
# Monotonicity in the two non-isolated line areas.
assert sp.cancel(sp.diff(rigidity, c) - (1 + d / a + ss / a)) == 0
assert sp.cancel(sp.diff(rigidity, d) - (1 + c / a + ss / a)) == 0
print("PASS: two-interior-point rigidity lemma")

h, f = sp.symbols("h f", positive=True)
a0 = sp.Rational(1, 8)
A, Z, H, FF = (0, 0), (1, 1), (0, h), (f, 1)
ustar = det(A, FF, H)  # positive absolute area of AHF
vstar = det(Z, H, FF)  # negative; opposite side from A
assert ustar == h * f
assert sp.expand(vstar + (1 - h) * (1 - f)) == 0
assert det(Z, H, A) == h
assert det(Z, H, H) == 0
cap = h - a0 * (2 * h + (1 - h) * (1 - f)) / (h * f)
assert sp.cancel(cap - (h + a0 * (1 - h) / h - a0 * (1 + h) / (h * f))) == 0
assert sp.cancel(sp.diff(cap, f) - a0 * (1 + h) / (h * f**2)) == 0
fmax = 1 - a0 / (1 - h)
assert sp.expand(h**2 - (1 + 2 * a0) * h + 3 * a0 - (h - sp.Rational(1, 2)) * (h - sp.Rational(3, 4))) == 0
ph = (h - 2 * a0) * h * (1 - h - a0) - a0 * (2 * h + a0) * (1 - h)
assert sp.cancel((cap.subs(f, fmax) - 2 * a0) * h * (1 - h - a0) - ph) == 0
assert sp.expand(64 * ph + 24 * (h - sp.Rational(3, 4))**2
                 + 64 * (h - sp.Rational(5, 8))**2 * (h - sp.Rational(1, 2))) == 0
assert sp.Rational(7, 8) / 4 == 2 * s
print("PASS: exact negative-square cap for the RCT area")

j0 = sp.Rational(39, 64)
u0 = sp.Rational(1521, 4096)
assert sp.Rational(7, 8) < sp.Rational(15, 16)**2
assert sp.Rational(21, 64)**2 < s
assert sp.Rational(15, 16) - sp.Rational(21, 64) == sp.Rational(39, 64)
assert sp.Rational(39, 64)**2 == u0
assert det(E, R, B) == -delta
assert det(E, R, R) == 0
assert det(E, R, S) == J
ert_cap = j0 - s * (2 * j0 + s) / u0
assert ert_cap == sp.Rational(21239, 97344) == 2 * s - sp.Rational(55, 97344) < 2 * s
print("PASS: exact ERT cap and complete cell-I orientation exclusions")
