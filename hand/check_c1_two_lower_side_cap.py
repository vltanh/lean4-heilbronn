"""Exact algebra for C1_TWO_LOWER_SIDE_CAP.md; no numerical search."""

import sympy as sp


def area(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


h, c, d, f, x, Y, r, z = sp.symbols("h c d f x Y r z", real=True)
O = sp.Matrix([0, 0])
H = sp.Matrix([0, h])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
X = sp.Matrix([x, Y])
R = sp.Matrix([r, z])
sigma = sp.Rational(8, 73)
k = (4 + 2 * sp.sqrt(3)) * sigma
rho = sp.Rational(49, 60)
height = sp.Rational(341, 400)

assert 3 * 960**2 - 1657**2 == 19151
assert sp.factor(k - rho - (960 * sp.sqrt(3) - 1657) / 4380) == 0
assert sigma - sp.Rational(7, 64) == sp.Rational(1, 4672)
assert sigma < sp.Rational(1, 8)

identities = [
    (area(H, F, X), f * (Y - h) - (1 - h) * x),
    (area(C, D, F), 1 - c + d * (c - f)),
    (area(O, R, X), r * Y - z * x),
    (area(H, R, X), r * (Y - h) + (h - z) * x),
    (area(C, X, O), c * Y),
    (area(C, X, H), c * (Y - h) + h * x),
]
for lhs, rhs in identities:
    assert sp.expand(lhs - rhs) == 0

G = (1 - sigma) * (1 - h) - c * (1 - h) ** 2 - sigma
assert G.subs({h: sp.Rational(43, 50), c: rho}) == -sp.Rational(10273, 10950000)
assert -(1 - sigma) + 2 * rho * (1 - sp.Rational(43, 50)) < 0
assert -(1 - sigma) + 2 * (1 - height) < 0
u = sp.symbols("u", real=True)
G_line = u**3 / 625 - 67 * u**2 / 5000 - sp.Rational(24063, 11680000) * u - sp.Rational(113, 11680000)
assert sp.expand(G.subs({h: height + u / 25, c: 1 - u}) - G_line) == 0
assert sp.Rational(1, 625) - sp.Rational(67, 5000) < 0

radial_gap = h * (1 - h) - sigma * h * (3 - 2 * h) - k * (1 - h) ** 2
assert sp.simplify(radial_gap.subs(h, k) - (-3072 + 1664 * sp.sqrt(3)) / 389017) == 0
assert sp.simplify(sp.diff(radial_gap, h).subs(h, k) - (1017 - 1536 * sp.sqrt(3)) / 5329) == 0
assert sp.simplify(sp.diff(radial_gap, h, 2) + 2 * (16 * sp.sqrt(3) + 89) / 73) == 0
assert 3072**2 > 3 * 1664**2
assert 1017 < 1536

cap_x = (1 - c * (1 - h) - sigma / (1 - h)) / h
edge_bound = (1 - h) * (c - 2 * sigma / h) + cap_x * (h - sigma / c)
simplified_edge_bound = (1 - sigma / (1 - h)) * (1 - sigma / (h * c)) - sigma * (1 - h) / h
assert sp.factor(edge_bound - simplified_edge_bound) == 0
E = 1 + sigma - sigma * (2 - h - sigma) / (h * (1 - h))
assert sp.factor(simplified_edge_bound.subs(c, 1) - E) == 0
assert sp.factor(sp.diff(E, h) - 8 * (73 * h**2 - 276 * h + 138) / (5329 * h**2 * (1 - h) ** 2)) == 0
assert 138 - 203 * rho < 0
assert sp.factor(E.subs(h, rho) - 3 * sigma) == -sp.Rational(14661, 2872331)

a, b, total = sp.symbols("a b total", real=True)
general_gap = (a * b - sigma * (total + a)) ** 2 - 4 * sigma * total * a * b
endpoint_gap = ((a - sigma) * b - sigma * (a + sigma)) ** 2 - 4 * sigma * a * b * (b + sigma)
assert sp.expand(general_gap.subs(total, b + sigma) - endpoint_gap) == 0
assert sp.Poly(endpoint_gap, b).nth(2) == a**2 - 6 * sigma * a + sigma**2
assert sp.Poly(endpoint_gap.subs(b, 1), a).nth(2) == (1 - sigma) ** 2
assert endpoint_gap.subs({a: sp.Rational(43, 50), b: 1}) == -sp.Rational(9555119, 2839824100)

p, q, y, t, v = sp.symbols("p q y t v", real=True)
P = sp.Matrix([p, y])
Q = sp.Matrix([q, t])
assert sp.expand(area(O, P, Q) - (p * t - y * q)) == 0
assert sp.expand(area(C, P, Q) - (p * t - y * q + c * (y - t))) == 0

L = lambda value: sigma / (1 - value)
U = lambda value: c - (c * value + sigma) / h
positive_bound = U(y) * t - y * L(t)
negative_bound = y * (U(t) - c) + t * (c - L(y))
assert sp.factor(sp.diff(positive_bound, y) + c * t / h + L(t)) == 0
assert sp.factor(sp.diff(negative_bound, t) - U(y) - sigma / h + L(y)) == 0
assert sp.factor(positive_bound.subs(y, t) - t * (U(t) - L(t))) == 0
assert sp.factor(negative_bound.subs(t, y) - y * (U(y) - L(y))) == 0

width_gap = v * (c - (c * v + sigma) / h - sigma / (1 - v)) - sigma
directional = sp.diff(width_gap, c) - sp.diff(width_gap, h) / 25
assert sp.factor(directional - v / h**2 * (h * (h - v) - (c * v + sigma) / 25)) == 0
assert sp.Rational(2, 3) - (sp.Rational(7, 8) - 2 * sigma) == sp.Rational(19, 1752)
assert sp.Rational(4, 5) * (sp.Rational(4, 5) - sp.Rational(2, 3)) - (sp.Rational(2, 3) + sp.Rational(1, 8)) / 25 == sp.Rational(3, 40)

w = sp.symbols("w", real=True)
cubic = sp.factor(height * (1 - v) * width_gap.subs({h: height, c: 1}))
shifted = sp.Poly(sp.expand(cubic.subs(v, w + sp.Rational(9, 32))), w)
assert [shifted.nth(i) for i in range(3, -1, -1)] == [
    1, -sp.Rational(52511, 58400), -sp.Rational(321, 1868800), -sp.Rational(6017, 59801600)
]
assert sp.Rational(2, 3) - sp.Rational(9, 32) == sp.Rational(37, 96)
quadratic = shifted.nth(2) + sp.Rational(37, 96)
assert quadratic == -sp.Rational(11251, 21900)
assert sp.factor(shifted.nth(1) ** 2 - 4 * quadratic * shifted.nth(0)) == -sp.Rational(2166003421, 10477240320000)

print("Both C1 two-lower side caps excluded: exact identities and sign certificates verified.")
