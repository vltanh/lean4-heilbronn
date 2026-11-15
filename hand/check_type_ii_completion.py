"""Exact algebra diagnostics for TYPE_II_COMPLETION.md; not a global certificate."""

from fractions import Fraction
from itertools import combinations

import sympy as sp


def equal(left, right):
    assert sp.factor(left - right) == 0


x, y, z, lam = sp.symbols("x y z lam")
lower = (x - y) / (1 - y)
upper = x / (1 - y)
equal(upper - lower, y / (1 - y))
equal((1 - y) * (z - lower), z * (1 - y) + y - x)
equal((1 - y) * (upper - z), x - z * (1 - y))
equal(sp.det(sp.Matrix([[1, 0], [z, -1]])), -1)
equal(lam + (1 - lam) * x - x, lam * (1 - x))
equal((0 - lam) / (1 - lam), -lam / (1 - lam))
equal(lower, 1 - (1 - x) / (1 - y))
a, c = sp.symbols("a c", positive=True)
wx, wy = a / (a + c), 1 - 1 / (a + c)
equal(wx, a * (1 - wy))
equal(1 - wx, c * (1 - wy))
equal(1 - wy, 1 / (a + c))
assert 18**2 * 65 - 145**2 == 35
assert len(list(combinations(range(7), 4))) == 35

# Balanced triangular-right hull: empty lower ear.
b, q, r, u, w, s = sp.symbols("b q r u w s")
K = 4 + 2 * sp.sqrt(3)
equal((b * (1 - 3 * s / (1 - b)) + (1 - b) * (1 - q))
      .subs(b, 1 - w), 1 - w * q - 3 * s * (1 - w) / w)
equal(1 - w * K * s - 3 * s * (1 - w) / w,
      1 + 3 * s - s * (K * w + 3 / w))
equal(K * w + 3 / w - (K + 2),
      ((1 + sp.sqrt(3)) * w - sp.sqrt(3))**2 / w)
equal(sp.det(sp.Matrix([[r, u - 1], [b, -1]])), -(r - b + b * u))
equal(sp.det(sp.Matrix([[r, u - 1], [0, -q]])), -q * r)
assert 3 * 7**2 > 12**2
assert Fraction(66, 64) > 1

# Complete balanced quadrilateral-right exclusion.
ss = sp.Rational(7, 64)
ll, vv, pp, tt, zz = sp.symbols("ll vv pp tt zz")
dd = pp * (1 - vv) - ll * (1 - tt)
de = ll * (tt - lam) - pp * (vv - lam)
dc = (1 - ll) * (1 - tt) - (1 - vv) * (1 - pp)
hl = vv - lam - (1 - lam) * ll
hp = tt - lam - (1 - lam) * pp
equal((1 - vv) * de + (vv - lam) * dd,
      (1 - lam) * ll * (tt - vv))
equal(dc - de, hl - hp)
ff = ((vv - lam) * (1 - vv)
      - (s + ll * (tt - lam)) * (1 - vv)
      - (s + (1 - ll) * (1 - tt)) * (vv - lam))
jj = zz**2 - (q * (1 - ll) + s) * zz + s * q * (2 - ll)
equal(sp.diff(ff, tt), hl)
equal(ff.subs({tt: 1 - s, vv: 1 - zz, lam: 1 - q}), -jj)
equal(sp.diff(jj, ll), q * (zz - s))
equal(jj.subs(ll, s / q), zz**2 - q * zz + 2 * s * q - s**2)
assert (sp.Rational(7, 8) - 3 * ss) / (2 + sp.Rational(7, 8)) == sp.Rational(35, 184)
assert sp.Rational(35, 184) < sp.Rational(1, 5)
assert sp.Rational(7, 8) * sp.Rational(3, 5) - 2 * ss == sp.Rational(49, 160)
assert sp.Rational(1, 5) * (sp.Rational(7, 8) * sp.Rational(4, 5) - 2 * ss) == sp.Rational(77, 800) < ss
assert 2 * ss * (1 + sp.Rational(8, 7)) == sp.Rational(15, 32) > sp.Rational(7, 16)

def nn(cap):
    return 4 * cap * b * ss - (1 - b) * (cap - ss)**2


cap1 = (1 + 7 * b) / 8
cap2 = 1 - 3 * ss * (1 - b) / b
poly1 = 3136 * b**3 - 1456 * b**2 + 113 * b - 1
poly2 = 8464 * b**3 - 9948 * b**2 + 3717 * b - 441
equal(4096 * nn(cap1), poly1)
equal(4096 * b**2 * nn(cap2), poly2)
equal(poly1.subs(b, sp.Rational(3, 8) + vv),
      3136 * vv**3 + 2072 * vv**2 + 344 * vv + 2)
equal(poly2.subs(b, sp.Rational(3, 8) - vv),
      sp.Rational(9, 32) + sp.Rational(693, 4) * vv - 426 * vv**2 - 8464 * vv**3)
assert sp.Rational(693, 4) - sp.Rational(426, 16) - sp.Rational(8464, 256) == sp.Rational(1817, 16)
assert sp.Rational(3, 8) - 3 * ss == sp.Rational(3, 64) < sp.Rational(1, 16)

q0 = sp.Rational(7, 8)
equal(q0**2 - 8 * ss * q0 + 4 * ss**2, (2 * ss)**2)
assert (q0 + 2 * ss) / 2 == 5 * ss
q1 = sp.Rational(27, 32)
b1 = sp.Rational(9, 20)
z1 = ss * (q1 + 1) / (b1 * q1)
assert z1 == sp.Rational(2065, 3888)
assert z1 - q1 / 2 == sp.Rational(1699, 15552) > 0
assert z1**2 - q1 * z1 + 2 * ss * q1 - ss**2 == sp.Rational(1587523, 241864704) > 0
cap3 = 1 - sp.Rational(27, 32) * (1 - b)
cap4 = 1 - sp.Rational(13, 16) * (1 - b)
poly3 = 2916 * b**3 - 1080 * b**2 - 35 * b - 9
poly4 = 2704 * b**3 - 728 * b**2 - 159 * b - 25
equal(4096 * nn(cap3), poly3)
equal(4096 * nn(cap4), poly4)
equal(poly3.subs(b, (u + 3) / 7),
      (2916 * u**3 + 18684 * u**2 + 31657 * u + 2460) / 343)
equal(poly4.subs(b, (u + 9) / 20),
      (169 * u**3 + 3653 * u**2 + 20712 * u + 1216) / 500)

# Universal six-point parameter inequality, without b <= 1/2.
equal((q - zz - s) * (zz - s) - q * s,
      -(zz**2 - q * zz + 2 * s * q - s**2))
equal((q - 4 * s)**2 - q * (q - 4 * s) + 2 * s * q - s**2,
      s * (15 * s - 2 * q))
q0 = sp.Rational(89, 100)
b0 = sp.Rational(2, 5)
z0 = ss * (q0 + 1) / (b0 * q0)
assert z0 == sp.Rational(6615, 11392)
assert z0 - q0 / 2 == sp.Rational(38639, 284800) > 0
assert z0**2 - q0 * z0 + 2 * ss * q0 - ss**2 == sp.Rational(10077669, 3244441600) > 0

# Second support shear and both-central-points-above cut.
rr, uy, beta, vz, ww = sp.symbols("rr uy beta vz ww")
tau = (1 - rr) / (1 - uy)
bbprime = 1 - b - tau
gg = rr - b - (1 - b) * uy
equal(bbprime, gg / (1 - uy))
equal(1 - rr - tau * (1 - uy), 0)
bfun = (vz - ss * (vz + 1))**2 / (4 * ss * vz**2) - 1 / vz
equal(sp.diff(bfun, vz), ((3 - ss) * vz - ss) / (2 * vz**3))
assert bfun.subs(vz, 1) == sp.Rational(177, 448) < sp.Rational(1, 2)
assert 9 * ss == sp.Rational(63, 64)
assert sp.Rational(1, 3) * sp.Rational(3, 16) + sp.Rational(1, 64) == sp.Rational(5, 64) < ss
for bb, qq, value, cap in [
    (sp.Rational(1, 3), sp.Rational(89, 100), sp.Rational(1427, 1600), sp.Rational(25, 28)),
    (sp.Rational(2, 5), sp.Rational(7, 8), sp.Rational(117, 128), sp.Rational(15, 16)),
    (sp.Rational(3, 7), sp.Rational(27, 32), sp.Rational(61, 64), sp.Rational(31, 32)),
]:
    assert qq + (1 - ss - qq) / bb == value < cap

poly_g = (448 * beta**3 * vz**3
          + beta**2 * vz**2 * (1890 - 3648 * vz)
          + beta * vz * (3648 * vz**2 - 5293 * vz + 2135)
          + 399 * vz**2 - 847 * vz + 644)
equal(sp.diff(poly_g, beta, 2),
      vz**2 * (2688 * beta * vz + 3780 - 7296 * vz))
assert 7296 - 2688 * sp.Rational(2, 3) == 5504
assert 3780 - 5504 * sp.Rational(13, 16) == -692 < 0
assert sp.Rational(3, 16) < sp.Rational(1, 5)
for bound, upper, g0, g1, g2minus in [
    (sp.Rational(2, 3), sp.Rational(25, 28), sp.Rational(707369, 148176), sp.Rational(1107899, 882), sp.Rational(45961, 945)),
    (sp.Rational(3, 5), sp.Rational(15, 16), sp.Rational(1213, 128), sp.Rational(9331, 10), sp.Rational(277314, 625)),
    (sp.Rational(4, 7), sp.Rational(31, 32), sp.Rational(436571, 50176), sp.Rational(601887, 784), sp.Rational(155703, 245)),
    (sp.Rational(11, 20), sp.Rational(1), sp.Rational(8241, 1000), sp.Rational(77669, 125), sp.Rational(3981699, 5000)),
]:
    expansion = sp.Poly(sp.expand(poly_g.subs({beta: bound, vz: upper - ww})), ww)
    neg_g3, g2, actual_g1, actual_g0 = expansion.all_coeffs()
    assert actual_g0 == g0 > 0
    assert actual_g1 == g1 > 0
    assert neg_g3 < 0
    assert g2 + neg_g3 / 5 == g2minus > 0

# Upper inner-diagonal cell: both containing triangles force a small ear.
lx, ly, sx, sy = sp.symbols("lx ly sx sy")
def determinant(a, b, c):
    return sp.det(sp.Matrix([[b[0] - a[0], b[1] - a[1]],
                             [c[0] - a[0], c[1] - a[1]]]))


equal(determinant((0, 1), (0, 1 - q), (sx, sy)), q * sx)
equal(-determinant((1, 1), (rr, 1 - vz), (lx, ly)),
      vz * (1 - lx) - (1 - rr) * (1 - ly))
equal(-determinant((1, 1), (rr, 1 - vz), (sx, sy)),
      vz * (1 - sx) - (1 - rr) * (1 - sy))
equal(determinant((0, 1 - q), (b, 0), (rr, 1 - vz)),
      b * (1 - vz) + (1 - q) * (rr - b))
assert 3 * 14**2 > 24**2  # (4 + 2 sqrt(3)) * (7/64) > 13/16.
assert sp.Rational(13, 16) - (1 - ss)**2 == sp.Rational(79, 4096) > 0

# Left mixed inner cell: Q in BRL and on the positive side of ES.
aa, cc, kk, HH, hh, TT, alpha, beta_weight = sp.symbols(
    "aa cc kk HH hh TT alpha beta_weight")
point_b = (b, 0)
point_r = (rr, uy)
point_l = (ll, aa)
point_e = (0, lam)
point_s = (kk, cc)
point_q = tuple(alpha * point_b[i] + beta_weight * point_r[i]
                + (1 - alpha - beta_weight) * point_l[i] for i in (0, 1))
equal(determinant(point_e, point_s, point_q),
      alpha * determinant(point_e, point_s, point_b)
      + beta_weight * determinant(point_e, point_s, point_r)
      + (1 - alpha - beta_weight) * determinant(point_e, point_s, point_l))
equal(determinant(point_b, point_r, point_l), (rr - b) * aa + uy * (b - ll))
equal(determinant((0, 1), point_r, point_s)
      + determinant(point_r, (1, 1), point_s), cc - uy)
equal(determinant(point_e, point_s, point_l),
      kk * aa - ll * cc - lam * (kk - ll))
fb = (1 - b) * (1 - 2 * ss / b) + sp.Rational(3, 16) * (b - ss)
equal(fb.subs(b, sp.Rational(1, 2)) - fb,
      (sp.Rational(1, 2) - b) * (4 * ss / b - sp.Rational(13, 16)))
H0 = sp.Rational(363, 1024)
h0 = sp.Rational(35607, 77824)
assert fb.subs(b, sp.Rational(1, 2)) == H0
assert 1 - ss / (1 - ss) == sp.Rational(50, 57)
assert sp.Rational(50, 57) * sp.Rational(9, 16) - 3 * ss**2 == h0
phi = HH * hh - ss * (HH + 2 * hh + 2 * ss)
equal(phi.subs({HH: H0, hh: h0}) - phi,
      (H0 - HH) * (hh - ss) + (h0 - hh) * (H0 - 2 * ss))
assert H0 - 2 * ss > 0
assert phi.subs({HH: H0, hh: h0}) == -sp.Rational(47171, 79691776) < 0

# Unbalanced triangular-right hull: empty ear at the stronger threshold.
sigma = sp.Rational(8, 73)
assert 219**2 * 65 - 1765**2 == 2240 > 0
assert sigma > ss
assert sp.Rational(72, 169) < 1
lower_ear_bound = 1 - sigma * (K * b / (1 - b) + (1 - b) / b)
equal(sp.diff(lower_ear_bound, b), sigma * (1 / b**2 - K / (1 - b)**2))
equal(lower_ear_bound.subs(b, 1 - K * sigma),
      K * sigma * (1 - sigma / (1 - K * sigma)))
equal(8 * K * (K - 2) - 73 * (K - 3), 87 - 50 * sp.sqrt(3))
assert 87**2 - 3 * 50**2 == 69 > 0
equal((1 - q) + q * x - (x - b) / (1 - b),
      (1 - (1 - b) * q) * (1 - x) / (1 - b))
equal(determinant((0, 1), (0, 1 - q), (1 / q, 1)), 1)
equal(determinant((0, 1 - q), (1 / q, 1), (x, y)),
      (y - (1 - q) - q**2 * x) / q)


def by_four_subsets(intervals):
    return all(max(intervals[i][0] for i in subset)
               > min(intervals[i][1] for i in subset)
               for subset in combinations(range(len(intervals)), 4))


def by_event_points(intervals):
    # For closed intervals any nonempty four-way intersection contains its
    # largest left endpoint. Checking all endpoints is consequently enough.
    endpoints = {v for interval in intervals for v in interval}
    return all(sum(left <= v <= right for left, right in intervals) <= 3
               for v in endpoints)


# Include endpoint-only intersections and singleton intervals explicitly.
examples = [
    [(Fraction(i), Fraction(i + 2)) for i in range(7)],
    [(Fraction(i), Fraction(i + 3)) for i in range(7)],
    [(Fraction(i), Fraction(i)) for i in range(7)],
    [(Fraction(0), Fraction(0))] * 4 + [(Fraction(i), Fraction(i + 1))
                                     for i in range(2, 5)],
    [(Fraction(-i), Fraction(i)) for i in range(7)],
]
for intervals in examples:
    assert by_four_subsets(intervals) == by_event_points(intervals)
assert by_four_subsets(examples[0])
assert not by_four_subsets(examples[1])  # Four closed intervals meet at 3.
assert by_four_subsets(examples[2])
assert not by_four_subsets(examples[3])
print("PASS: capacity and swept tests; balanced right-quadrilateral, second-shear, upper and left mixed cells; unbalanced triangular-right empty ear")
