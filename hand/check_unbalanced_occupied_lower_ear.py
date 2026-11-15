#!/usr/bin/env python3
"""Exact fixed certificate for UNBALANCED_OCCUPIED_LOWER_EAR.md."""

from fractions import Fraction
from itertools import combinations, product
from math import comb, prod

import sympy as sp

Rational = sp.Rational
s = Rational(8, 73)
b, q, r, u, k, t, x, y = sp.symbols("b q r u k t x y", real=True)
V, W, ZZ, mm = sp.symbols("V W ZZ mm", real=True)
w, L, lam = 1 - b, 1 - r, 1 - q
c = 1 - w * q
delta = b * u + lam * (r - b)
g = r - b - w * u
margin = g - s * w / L


def same(a, bb):
    assert sp.cancel(a - bb) == 0, sp.factor(a - bb)


def det(a, bb, cc):
    return sp.expand((bb[0] - a[0]) * (cc[1] - a[1])
                     - (bb[1] - a[1]) * (cc[0] - a[0]))


D, C, E, B = (0, 1), (1, 1), (0, lam), (b, 0)
RR, SS, T = (r, u), (k, t), (x, y)
area_a = lam * (x - b) + b * y
area_z = (r - b) * y - u * (x - b)
stress = (delta - 2 * s) * area_a - s * (delta + area_z)
same(det(E, B, RR), delta)
same(det(B, RR, C), g)
same(det(E, B, T), area_a)
same(det(B, RR, T), area_z)
same(det(B, T, E), area_a)
same(det(B, T, RR), -area_z)
same(sp.diff(stress, q), -(r - b) * (area_a - s) - (x - b) * (delta - 2 * s))
assert 219**2 * 65 - 1765**2 == 2240 > 0
assert s > Rational(7, 64)
assert Rational(7, 64) / Rational(11, 64) == Rational(7, 11)
print("PASS: ordered Q--T stress and monotone q reduction")

dd = b * s / w
c_low = 1 + s - s / b
c_high = 1 - 3 * s * w
small_b_poly = 5841 * b**3 - 4417 * b**2 + 976 * b - 64
same(5329 * b**2 * (4 * c_low * b * s - w * (c_low - 3 * s)**2), small_b_poly)
a = sp.symbols("a", real=True)
same(small_b_poly.subs(b, Rational(1, 5) - a),
     -5841 * a**3 - Rational(4562, 5) * a**2 + Rational(2247, 25) * a + Rational(156, 125))
assert s / (1 - 2 * s) == Rational(8, 57)
assert Rational(1, 5) - Rational(8, 57) == Rational(17, 285)
small_bound = Rational(2247, 25) - Rational(4562, 5) * Rational(17, 285) - 5841 * Rational(17, 285)**2
assert small_bound == Rational(397292, 27075) > 0
assert 1 - s == Rational(65, 73) < Rational(9, 10)
same(3 * s - (3 * b / 16 + (1 - s / b) * (Rational(7, 10) - b)),
     2 * s - Rational(7, 10) + 13 * b / 16 + 7 * s / (10 * b))
assert Rational(7, 10) - 2 * s > 0
assert 4 * Rational(91, 160) * s - (Rational(7, 10) - 2 * s)**2 == Rational(9659, 532900) > 0
assert 3 * s - Rational(1, 16) - (1 - 3 * s) * Rational(11, 30) == Rational(353, 17520) > 0
assert Rational(3, 16) - (1 - 3 * s) < 0
print("PASS: b and r interval bounds")

assert c_low.subs(b, Rational(7, 25)) == Rational(367, 511)
assert dd.subs(b, Rational(1, 5)) == Rational(2, 73)
assert c_high.subs(b, Rational(4, 11)) == Rational(635, 803)
assert dd.subs(b, Rational(7, 25)) == Rational(28, 657)
for cc, d0, gap in [
    (Rational(367, 511), Rational(2, 73), Rational(103, 261121)),
    (Rational(635, 803), Rational(28, 657), Rational(61519, 5803281)),
]:
    assert cc - 4 * s > 0
    assert 4 * cc * d0 - (cc - 4 * s)**2 == gap > 0
print("PASS: exact ear bound delta<4s")

xx = sp.symbols("xx", real=True)
same(delta.subs({r: b + w * xx, u: xx - s / w - s / (w * (1 - xx))}),
     c * xx - dd - dd / (1 - xx))
same(c * xx - dd - dd / (1 - xx), c - dd - (c * (1 - xx) + dd / (1 - xx)))
p_minus = -(6817 * b**4 - 11298 * b**3 + 5521 * b**2 - 1040 * b + 64) / sp.Integer(5329)
p_plus = -(576 * b**4 + 1200 * b**3 - 319 * b**2 - 2018 * b + 625) / sp.Integer(5329)
same((b * w)**2 * (4 * c_low * dd - (c_low - dd - 3 * s)**2), p_minus)
same(w**2 * (4 * c_high * dd - (c_high - dd - 3 * s)**2), p_plus)
expanded_minus = 2081640625 * sp.expand(p_minus.subs(b, Rational(7, 25) + a))
same(expanded_minus,
     -2662890625 * a**4 + 1430843750 * a**3 + 297891875 * a**2 + 2711900 * a + 182108)
assert 297891875 - 1430843750 * Rational(2, 25) - 2662890625 * Rational(2, 25)**2 == 166381875
assert 2711900**2 - 4 * 166381875 * 182108 == -113843480360000 < 0
expanded_plus = 47961 * sp.expand(p_plus.subs(b, Rational(1, 3) + a))
same(expanded_plus, -5184 * a**4 - 17712 * a**3 - 11385 * a**2 + 15708 * a + 284)
assert Rational(4, 11) - Rational(1, 3) == Rational(1, 33)
assert 15708 - Rational(11385, 33) - Rational(17712, 33**2) - Rational(5184, 33**3) == Rational(20426313, 1331) > 0
print("PASS: both exact polynomials forcing M<s")

vv, ww, zz = det(C, B, T), det(RR, C, T), det(B, RR, T)
same(vv + ww + zz, g)
same(g * x, b * ww + r * vv + zz)
same(g * (1 - x), w * ww + L * vv)
same(1 - s * (w + L) / g - r, L * (margin - s) / g)
t_upper = 1 - (s + (1 - k) * (1 - u)) / L
rst_bound = sp.cancel(det(RR, SS, T).subs(t, t_upper))
same(sp.diff(rst_bound, k), ww / L)
same(rst_bound.subs(k, 1), ww + s * (x - r) / L)
same(L * g * ww - s * g * (1 - x), L * (margin * ww - s * vv))
fb = -s * delta
fr = delta * (delta - 3 * s)
fc = (delta - 2 * s) * c - s * (delta + g)
same(g * stress, ww * fb + vv * fr + zz * fc)
same(fr + fb, delta * (delta - 4 * s))
linear = V * fr + (s * V / mm) * fb + (g - V - s * V / mm) * fc
k1 = (mm * (g - s) - s**2) * fc + s * mm * fr + s**2 * fb
k2 = (g - s) * (s * fb + mm * fr) + s * (mm + s) * fc
same(mm * linear.subs(V, s), k1)
same((mm + s) * linear.subs(V, mm * (g - s) / (mm + s)), k2)
core = (g - 2 * s) * (g * L - s * w) - s**2 * L
same(core, L * (margin * (g - 2 * s) - s**2))
print("PASS: eliminating S and the exact two barycentric endpoint stresses")

k1 = k1.subs(mm, margin)
k2 = k2.subs(mm, margin)
H1 = L * b**2 * k1 + Rational(3, 1024) * core
H2 = L * b**2 * k2
polynomials = {}
expected = {(0, 1): (5, 4, 3), (0, 2): (6, 5, 4),
            (1, 1): (6, 4, 3), (1, 2): (6, 5, 4)}
for branch, q0 in [(0, s / b), (1, 3 * s)]:
    for index, expr in [(1, H1), (2, H2)]:
        pp = sp.Poly(sp.cancel(expr.subs(q, q0)), b, r, u)
        assert pp.degree_list() == expected[(branch, index)]
        polynomials[(branch, index)] = pp

f = Fraction
zero, one, half = f(0), f(1), f(1, 2)
quarter, three_quarters, five_eighths = f(1, 4), f(3, 4), f(5, 8)
table = [
    (0, 1, ((zero, one), (zero, half), (zero, half)), 3224550),
    (0, 1, ((zero, one), (zero, half), (half, one)), 413076),
    (0, 1, ((zero, one), (half, five_eighths), (zero, quarter)), 3614646),
    (0, 1, ((zero, one), (five_eighths, three_quarters), (zero, quarter)), 1983267),
    (0, 1, ((zero, one), (half, three_quarters), (quarter, half)), 1439036),
    (0, 1, ((zero, one), (half, three_quarters), (half, one)), 351848),
    (0, 1, ((zero, one), (three_quarters, one), (zero, one)), 486594),
    (0, 2, ((zero, one), (zero, one), (zero, one)), 177533),
    (1, 1, ((zero, one), (zero, half), (zero, one)), 2703813),
    (1, 1, ((zero, one), (half, one), (zero, one)), 841173),
    (1, 2, ((zero, one), (zero, one), (zero, one)), 129369),
]
for branch in [0, 1]:
    for index in [1, 2]:
        boxes = [row[2] for row in table if row[:2] == (branch, index)]
        assert sum(prod(hi - lo for lo, hi in box) for box in boxes) == 1
        for box in boxes:
            assert all(0 <= lo < hi <= 1 for lo, hi in box)
        for box1, box2 in combinations(boxes, 2):
            assert any(hi1 <= lo2 or hi2 <= lo1 for (lo1, hi1), (lo2, hi2) in zip(box1, box2))
print("PASS: all four printed coefficient covers are complete")

coefficient_count = 0
for row_number, (branch, index, unit_box, denominator) in enumerate(table, 1):
    poly = polynomials[(branch, index)]
    degree = expected[(branch, index)]
    physical_root = [(f(1, 5), f(1, 3)) if branch == 0 else (f(1, 3), f(4, 11)),
                     (f(7, 10), f(9, 10)), (zero, f(3, 16))]
    physical_box = []
    for (lo, hi), (p0, p1) in zip(unit_box, physical_root):
        physical_box.append((p0 + (p1 - p0) * lo, p0 + (p1 - p0) * hi))
    powers = {}
    for ks, coeff in poly.terms():
        coeff = f(coeff)
        for js in product(*(range(kk + 1) for kk in ks)):
            value = coeff
            for axis in range(3):
                lo, hi = physical_box[axis]
                value *= comb(ks[axis], js[axis]) * lo**(ks[axis] - js[axis]) * (hi - lo)**js[axis]
            powers[js] = powers.get(js, f(0)) + value
    count = 0
    for ks in product(*(range(dd + 1) for dd in degree)):
        value = f(0)
        for js, coeff in powers.items():
            if all(jj <= kk for jj, kk in zip(js, ks)):
                term = coeff
                for axis in range(3):
                    term *= f(comb(ks[axis], js[axis]), comb(degree[axis], js[axis]))
                value += term
        assert value < -f(1, denominator), (row_number, ks, value)
        count += 1
    coefficient_count += count
    print(f"PASS: row {row_number:2d}, all {count} coefficients < -1/{denominator}")

assert coefficient_count == 1540
print("PASS: all 1540 exact coefficient bounds; occupied lower ear excluded")
