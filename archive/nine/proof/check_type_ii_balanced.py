"""Exact transcription checks for TYPE_II_BALANCED.md."""

import sympy as sp


def equal(left, right):
    assert sp.factor(left - right) == 0


x, y, z, w, a = sp.symbols("x y z w a")
u = x * w - y * z
v = u + z - w - x + y
equal(v.subs(w, (a + y * z) / x),
      (x - y) * z / x - (x - y) - (1 - x) * a / x)
equal(v.subs({w: (a + y * z) / x}).subs(z, 1),
      (1 - x) * (x - y - a) / x)
equal((1 - x) * (x - y - a) - a * x,
      (1 - x) * (x - y) - a)

b, lam, p, vy, s, qx, qy = sp.symbols("b lam p vy s qx qy")
equal((lam * (b - p) - s) / b, lam - lam * p / b - s / b)
equal(((lam * (b - p) - s) / b).subs(p, s / (1 - lam)),
      lam - s / (b * (1 - lam)))
equal(s / lam + s / (1 - lam), s / (lam * (1 - lam)))
equal(sp.det(sp.Matrix([[b - p, -vy], [qx - p, qy - vy]])),
      (b - p) * qy + vy * (qx - b))

sigma = sp.Rational(7, 64)
assert 1 - 4 * sigma == sp.Rational(9, 16)
assert sigma / sp.Rational(9, 16) == sp.Rational(7, 36)
assert 7 * 225 - 8 * 196 == 7
assert 7 * 64 - 21**2 == 7
assert sp.Rational(1, 2) * sp.Rational(1, 8) + sp.Rational(1, 15) * sp.Rational(9, 16) == sp.Rational(1, 10)
assert sp.Rational(1, 10) < sigma
assert 10 * sigma > 1
assert 1 - 12 * sigma**2 / (1 - 4 * sigma) == sp.Rational(143, 192) < sp.Rational(13, 16)
assert sp.Rational(52, 7) * sigma == sp.Rational(13, 16)
assert 3 > sp.Rational(12, 7)**2
assert sp.Rational(5, 16) * sp.Rational(11, 16) == sp.Rational(55, 256) < 2 * sigma
assert sigma / sp.Rational(11, 16) == sp.Rational(7, 44)
assert sp.Rational(1, 2) - sp.Rational(7, 44) == sp.Rational(15, 44)
bound = sp.Rational(15, 44) * sp.Rational(3, 16) + sp.Rational(1, 15) * sp.Rational(9, 16)
assert bound == sp.Rational(357, 3520)
assert sigma - bound == sp.Rational(7, 880) > 0

# The stronger rational threshold in the two-central-point CE cut.
ss = sp.Rational(79, 720)
qq = sp.symbols("qq", positive=True)
tx = b * qq / (1 + b * qq)
ty = (1 - qq + b * qq) / (1 + b * qq)
equal(tx, b * (1 - ty))
equal(ty, 1 - qq + qq * tx)
equal(b * (ty - (1 - qq)) + (1 - qq) * tx,
      b * qq * (1 - (1 - b) * qq) / (1 + b * qq))
bb = (qq - ss * (qq + 1))**2 / (4 * ss * qq**2) - 1 / qq
vv = (1 - ss)**2 * qq / (4 * ss) - (3 - ss) / 2 + ss / (4 * qq)
equal(qq * bb, vv)
equal(sp.diff(vv, qq), (1 - ss)**2 / (4 * ss) - ss / (4 * qq**2))
assert bb.subs(qq, 1) == sp.Rational(22081, 56880)
assert sp.Rational(7, 18) - bb.subs(qq, 1) == sp.Rational(13, 18960)
assert sp.Rational(5, 3) * sp.Rational(69, 169) - sp.Rational(1, 2) == sp.Rational(61, 338) > 0
assert sp.Rational(7, 18)**2 / (1 + sp.Rational(7, 18)) == sp.Rational(49, 450)
assert ss - sp.Rational(49, 450) == sp.Rational(1, 1200) > 0
assert 3 * ss > sp.Rational(2, 7)
assert 6 * ss > sp.Rational(1, 2)
assert ss < sp.Rational(1, 9)
print("PASS: endpoint-quadrilateral elimination, left-hull exclusions, and both-central CE cut")
