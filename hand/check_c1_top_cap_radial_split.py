"""Exact algebra for C1_TOP_CAP_RADIAL_SPLIT.md; no numerical search."""

import sympy as sp


def area(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


h, c, d, f, x, Y, p, y, q, t = sp.symbols("h c d f x Y p y q t", real=True)
O = sp.Matrix([0, 0])
H = sp.Matrix([0, h])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
X = sp.Matrix([x, Y])
P = sp.Matrix([p, y])
Q = sp.Matrix([q, t])
sigma = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
h_low = sp.Rational(71, 80)
h_high = sp.Rational(23, 25)
height_cap = sp.Rational(11, 32)

assert rho - (1 - sigma) ** 2 == sp.Rational(7621, 319740)
assert sp.expand(area(H, F, X) - f * (Y - h) + (1 - h) * x) == 0
assert sp.expand(area(C, F, X) - f * Y + c * Y + x - c) == 0
assert sp.expand(area(C, D, X) - (1 - c) * Y - d * (c - x)) == 0
assert sp.expand(area(H, C, X) - h * x - c * Y + h * c) == 0

# Eliminating f when Y<h combines the two negative upper-edge areas.
lower_f = (sigma - (1 - h) * x) / (h - Y)
upper_f = (x - c * (1 - Y) - sigma) / Y
assert sp.factor((upper_f - lower_f) * Y * (h - Y) - (h * (1 - Y) * x - c * (h - Y) * (1 - Y) - h * sigma)) == 0

m = sp.symbols("m", positive=True)
ratio = (m * (1 - sigma) - sigma) ** 2 / m
assert sp.factor(sp.diff(ratio, m) - (1 - sigma) ** 2 + sigma**2 / m**2) == 0
assert (1 - sigma) ** 2 - sigma**2 / rho**2 > 0
assert (1 - 2 * sigma) ** 2 - 4 * sigma * (1 + sigma / (1 - rho)) == -sp.Rational(5317, 58619)

assert sp.expand(area(C, P, Q) - area(O, P, Q) - c * (y - t)) == 0
weighted = (1 - y) * (-area(O, P, Q)) + y * (-area(F, P, Q))
assert sp.expand(weighted - (y - t) * (p - f * y)) == 0

pair_bound = (1 - sigma / h - (1 / h + f) * y) * (y - sigma)
discriminant = (h - sigma * (2 + h * f)) ** 2 - 4 * sigma * h * (1 + h * f)
poly = sp.Poly(sp.expand(pair_bound - sigma), y)
assert sp.factor((poly.nth(1) ** 2 - 4 * poly.nth(2) * poly.nth(0)) * h**2 - discriminant) == 0
assert discriminant.subs({h: h_low, f: sigma / h_low}) == -sp.Rational(169041839, 181748742400)
assert discriminant.subs({h: 1, f: sp.Rational(2, 7)}) == -sp.Rational(479, 261121)
assert discriminant.subs({h: h_high, f: sp.Rational(1, 5)}) == -sp.Rational(1182199, 83265625)
assert 1 - sigma - rho > 0
assert (1 - sigma - sp.Rational(2, 7) * rho) / (1 - sp.Rational(2, 7)) == sp.Rational(10073, 10950)
assert h_high - sp.Rational(10073, 10950) == sp.Rational(1, 10950)

height_test = Y * (h - height_cap - sigma) - h * height_cap * x - h * sigma
upper_order = height_test.subs(x, sigma * Y / (h * (1 - h)))
assert sp.factor(upper_order - Y * (h - height_cap - sigma - height_cap * sigma / (1 - h)) + h * sigma) == 0
height_quadratic = (1 - h) * (h - height_cap - sigma) - height_cap * sigma - sigma**2
assert sp.factor(upper_order.subs(Y, h * (1 - h) / sigma) - h * height_quadratic / sigma) == 0
assert height_quadratic.subs(h, h_low) == -sp.Rational(57153, 68211200)
assert sp.diff(height_quadratic, h).subs(h, h_low) < 0
assert sp.diff(height_quadratic, h, 2) == -2

lower_order = height_test.subs(x, (sigma + (Y - h) / 5) / (1 - h))
Y_coefficient = h - height_cap - sigma - h * height_cap / (5 * (1 - h))
assert sp.factor(sp.diff(lower_order, Y) - Y_coefficient) == 0
assert Y_coefficient.subs(h, h_low) == -sp.Rational(5687, 52560)
assert sp.factor(sp.diff(Y_coefficient, h) - 1 + height_cap / (5 * (1 - h) ** 2)) == 0
assert 1 - height_cap / (5 * (1 - h_low) ** 2) < 0
N = 447340 * h**2 - 689228 * h + 259455
assert sp.factor(lower_order.subs(Y, rho) + N / (700800 * (1 - h))) == 0
assert N.subs(h, h_low) == sp.Rational(7379, 64)
assert sp.diff(N, h).subs(h, h_low) == sp.Rational(209601, 2)
assert sp.diff(N, h, 2) > 0

final_upper = (1 - sigma / h_high - (1 + sigma) * y / h_high) * (y - sigma)
assert sp.diff(final_upper, y).subs(y, height_cap) == sp.Rational(360597, 1961072)
assert sp.diff(final_upper, y, 2) < 0
assert final_upper.subs(y, height_cap) - sigma == -sp.Rational(50377, 125508608)

def transform(point):
    first, second = point
    return sp.Matrix([c - first - (c - x) * second / Y, second])


assert transform(C) == O
assert transform(O) == C
assert sp.simplify(transform(X) - sp.Matrix([0, Y])) == sp.zeros(2, 1)
f_new = c - f - (c - x) / Y
x_new = c - (c - x) * h / Y
assert sp.simplify(transform(F) - sp.Matrix([f_new, 1])) == sp.zeros(2, 1)
assert sp.simplify(transform(H) - sp.Matrix([x_new, h])) == sp.zeros(2, 1)
assert sp.factor(Y * f_new + area(C, F, X)) == 0
assert sp.factor(Y * x_new - area(H, C, X)) == 0
assert sp.factor(transform(P)[0] - area(C, X, P) / Y) == 0
assert sp.factor(area(transform(X), transform(F), transform(H)) - area(H, F, X)) == 0
assert sp.factor(area(transform(O), transform(P), transform(Q)) + area(O, P, Q)) == 0

print("C1 top-cap radial split: exact identities, affine symmetry, and all scalar signs verified.")
