"""Exact algebra for C1_MIXED_PENTAGON.md; no numerical optimization."""

import sympy as sp


def area(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


h, c, d, f, l, y, x, t = sp.symbols("h c d f l y x t", real=True)
O = sp.Matrix([0, 0])
H = sp.Matrix([0, h])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
L = sp.Matrix([l, y])
Q = sp.Matrix([x, t])
s = sp.Rational(7, 64)
rho = sp.Rational(13, 16)

checks = [
    (area(H, D, F), 1 - h + f * (h - d)),
    (area(C, D, L), d * (c - l) + (1 - c) * y),
    (area(C, D, F), 1 - c + d * (c - f)),
    (area(F, L, D), 1 - d * f - (1 - f) * y - (1 - d) * l),
    (area(H, L, Q), x * (h - y) - l * (h - t)),
    (area(H, Q, F), f * (h - t) + (1 - h) * x),
    (area(H, Q, D), h + (d - h) * x - t),
    (area(O, F, L), f * y - l),
    (area(C, D, Q), d * (c - x) + (1 - c) * t),
    (area(D, F, Q), (1 - f) * (d - t) + (1 - d) * (1 - x)),
]
for lhs, rhs in checks:
    assert sp.expand(lhs - rhs) == 0

opposite = d * c + (1 - c) * h - s * d / h - 2 * s * (1 - c) / c
assert sp.factor(sp.diff(opposite, h) - (1 - c + s * d / h**2)) == 0
last = sp.factor(opposite.subs(h, 1).subs(d, 1 - s))
assert sp.factor(last - (1 + s + s**2 - s * c - 2 * s / c)) == 0
assert sp.factor((1 - s) ** 2 - last - s * (c - 1) * (c - 2) / c) == 0
assert rho - (1 - s) ** 2 == sp.Rational(79, 4096)
assert 2 - 1 / rho == sp.Rational(10, 13)
assert 1 - 3 * s < rho

A = 1 - d * f - (1 - f) * y - (1 - d) * l
B = x * (h - y) - l * (h - t)
T = h * (1 + f) + (d + 1 - 2 * h) * x - (1 + f) * t
A_replaced = sp.factor(A.subs({l: s / h, y: s * (1 + 1 / h) / f}))
assert sp.factor(A_replaced - (1 + s - d * f - s * (h + 1) / (f * h) + s * d / h)) == 0
assert sp.factor(sp.diff(A_replaced, h) - s * (1 / f - d) / h**2) == 0
B_replaced = sp.factor(B.subs({l: s / h, y: s * (1 + 1 / h) / f}))
assert sp.factor(sp.diff(B_replaced, h) - x - s * (x / f - t) / h**2) == 0
B_height = sp.factor(B_replaced.subs(h, 1).subs(t, d * x - s))
assert sp.factor(B_height - (x * (1 + s * d - 2 * s / f) - s - s**2)) == 0

e = 1 - h + f * (h - d)
t_upper = d + ((1 - d) * (1 - x) - s) / (1 - f)
assert sp.factor(T.subs(t, t_upper) - (s * (1 + f) + e * (2 * x - 1 - f)) / (1 - f)) == 0

a_bound = 1 + s + 10 * s / 13 - 10 * f / 13 - 2 * s / f
b_bound = (1 - s / (1 - s)) * (1 + s * (1 - s) - 2 * s / f) - s - s**2
tau_bounds = [
    2 * rho * s / (1 - f),
    (s * (1 + f) + sp.Rational(3, 13) * (sp.Rational(5, 8) - f)) / (1 - f),
]
numerators = [
    -109366400 * f**4 + 271978583 * f**3 - 226269917 * f**2 + 75587470 * f - 8153600,
    -109366400 * f**4 + 269399447 * f**3 - 224657957 * f**2 + 75587470 * f - 8153600,
]
table = [
    (sp.Rational(337020417, 64), -sp.Rational(5526839, 4), sp.Rational(1876629, 8), -sp.Rational(388094693478925, 128)),
    (sp.Rational(220959297, 64), -sp.Rational(6816407, 4), sp.Rational(2521413, 8), -sp.Rational(185422408809469, 128)),
]
z = sp.symbols("z", real=True)
radius = sp.Rational(11, 64)
assert sp.Rational(1, 2) - 3 * s == radius
assert 1 - 3 * s - sp.Rational(1, 2) == radius
for tau, numerator, row in zip(tau_bounds, numerators, table):
    gap = a_bound * b_bound - s * (a_bound + 2 * b_bound + tau)
    assert sp.factor(gap + numerator / (194248704 * f**2 * (1 - f))) == 0
    poly = sp.Poly(sp.expand(numerator.subs(f, z + sp.Rational(1, 2))), z)
    assert poly.nth(4) == -109366400
    assert poly.nth(3) > 0
    leading = poly.nth(2) - radius * poly.nth(3) + radius**2 * poly.nth(4)
    linear, constant = poly.nth(1), poly.nth(0)
    discriminant = sp.factor(linear**2 - 4 * leading * constant)
    assert (leading, linear, constant, discriminant) == row
    assert leading > 0 and discriminant < 0

print("C1 ordinary mixed-pentagon identities and exact certificates verified.")
