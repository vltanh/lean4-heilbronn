#!/usr/bin/env python3
"""Exact identities and printed certificate for UNBALANCED_UPPER_CELL_II.md."""

from fractions import Fraction
from itertools import combinations, product
from math import comb, prod

import sympy as sp

R = sp.Rational
s0, s = R(7, 64), R(8, 73)
b, q, z, l, p, y = sp.symbols("b q z l p y", real=True)
r, k, vr, vs, tx, tv = sp.symbols("r k vr vs tx tv", real=True)
Z = sp.symbols("Z", positive=True)
w, lam = 1 - b, 1 - q
c = 1 - w * q


def det(a, bb, cc):
    return sp.expand((bb[0] - a[0]) * (cc[1] - a[1])
                     - (bb[1] - a[1]) * (cc[0] - a[0]))


def same(a, bb):
    assert sp.cancel(a - bb) == 0, sp.factor(a - bb)


D, C, E, B = (0, 1), (1, 1), (0, lam), (b, 0)
RR, SS, T = (r, 1 - vr), (k, 1 - vs), (tx, 1 - tv)
Q, P = (l, 1 - z), (p, 1 - y)
ell, d = p - l, z * p - l * y
dc, ae = d + y - z, q * ell - d
a, beta, jd = k - r, vr - vs, k * vr - r * vs

assert 219**2 * 65 - 1765**2 == 2240 > 0
assert s > s0 > R(1, 10)
assert s0 * (4 + 2 * R(12, 7)) == R(13, 16)
assert R(119, 128) == 17 * s0 / 2 < 17 * s / 2
same(det(D, Q, P), d)
same(det(Q, P, C), dc)
same(det(E, P, Q), ae)
same(det(C, D, Q), z)
same(det(C, D, P), y)
same(det(D, RR, SS), jd)
same(det(D, E, Q), q * l)
same(det(E, C, Q), q * (1 - l) - z)
same(det(E, C, P), q * (1 - p) - y)
same(det(D, B, Q), l - b * z)
same(det(E, B, Q), b * (q - z) + lam * l)
same(det(E, B, RR), c - b * vr - lam * (1 - r))
same(det(C, RR, SS), (1 - r) * vs - (1 - k) * vr)
print("PASS: threshold and ordered determinant formulas")

cstar = 1 - w * R(119, 128)
ear = 4 * cstar * b * s0 - w * (cstar - s0)**2
p0 = 14161 * b**3 - 8687 * b**2 + 1719 * b - 25
same(16384 * ear, p0)
tt = sp.symbols("tt", real=True)
same(p0.subs(b, R(1, 4) + tt),
     14161 * tt**3 + R(7735, 4) * tt**2 + R(491, 16) * tt + R(5317, 64))
same(p0.subs(b, R(1, 4) - tt),
     -14161 * tt**3 + R(7735, 4) * tt**2 - R(491, 16) * tt + R(5317, 64))
q_bound_constant = R(5317, 64) - R(491, 16) * R(9, 64) - 14161 * R(9, 64)**3
assert q_bound_constant == R(10323799, 262144) > 0
AA, cc1, cc2 = sp.symbols("AA cc1 cc2", positive=True)
line_bound = AA + cc1 + cc2 + 2 * s + (cc1 * cc2 + s * (cc1 + cc2)) / AA
same(line_bound.subs({cc1: 3 * s / 2, cc2: s}), AA + 9 * s / 2 + 4 * s**2 / AA)
same(AA + 4 * s + 3 * s**2 / AA - 35 * s / 4,
     (AA - 4 * s) * (AA - 3 * s / 4) / AA)
same((AA + 4 * s + 3 * s**2 / AA) * s / (AA + s), s + 3 * s**2 / AA)
print("PASS: q upper bound and central-line area caps")

signed_r = (1 - r) * d + r * dc - vr * (ae + d) / q
same(det(Q, P, RR), signed_r)
same(det(RR, P, Q), ell * vr - (y - z) * r - d)
same(det(RR, D, Q), r * z - vr * l)
same(det(D, Q, T), z * tx - l * tv)
same(det(Q, T, P), (z - y) * tx + ell * tv - d)
same(det(RR, SS, T), jd - a * tv - beta * tx)
assert 3 * s / 2 - 5 * s**2 < s
assert 4 * s > R(1, 4)
same(det(B, RR, SS), (r - b) * beta - (1 - vr) * a)
lq, lp = a * z + beta * l, a * y + beta * p
same(lp - lq, a * ell * (beta / a - (z - y) / ell))
same((lp - lq) * det(D, Q, T) + lq * det(Q, T, P)
     + d * det(RR, SS, T), d * (jd - lq))
same(ell * det(RR, D, Q) + l * det(RR, P, Q), d * (r - l))
print("PASS: all positive cross-triangle identities")

A, bs, k0 = d * z + s * y, d * l + s * p, d * (1 - l) - s * p
F = d * jd - a * A - beta * bs - s * d
same(F, d * (jd - lq) - s * (d + lp))
same(sp.diff(F, vs), bs - r * d)
f_vs = sp.cancel(F.subs(vs, (s + (1 - k) * vr) / (1 - r)))
assert sp.Poly(f_vs, k).degree() <= 1
same(f_vs.subs(k, r), s * (bs - r * d) / (1 - r) - s * d)
f_k = sp.cancel(f_vs.subs(k, 1))
same(f_k, vr * k0 - (1 - r) * A - s * (r * d - bs) / (1 - r) - s * d)
same(r * d - bs, k0 - (1 - r) * d)
f_ear = sp.cancel(f_k.subs(vr, (c - s - lam * (1 - r)) / b).subs(r, 1 - Z))
same(f_ear, k0 * (c - s) / b - Z * (lam * k0 / b + A) - s * k0 / Z)
gamma = (c - s)**2 - 4 * s * b * lam
G = gamma * k0 - 4 * s * b**2 * A
same(G, k0 * (c - s)**2 - 4 * s * b * lam * k0 - 4 * s * b**2 * A)
print("PASS: exact monotone right-hull elimination")

zc = gamma * (1 - l) - 4 * s * b**2 * z
same(G, d * zc - s * (gamma * p + 4 * s * b**2 * y))
same(G, p * (z * zc - s * gamma) - y * (l * zc + 4 * s**2 * b**2))
same(sp.diff(G, l), -y * zc - gamma * d)
same(sp.diff(G, p), z * zc - s * gamma)
same(sp.diff(G, y), -l * zc - 4 * s**2 * b**2)
kappa = q * (1 - l) - z
same(dc.subs(p, 1 - (s + y) / q), (kappa * y - s * z) / q)
ystar = s * (q + z) / kappa
pstar = 1 - (s + ystar) / q
dstar = sp.cancel(d.subs({p: pstar, y: ystar}))
ybar = s * (q + z)
pbar = kappa - s * (2 - l)
dbar = (z + s) * kappa - s * (q + z)
same(kappa * ystar, ybar)
same(kappa * pstar, pbar)
same(kappa * dstar, dbar)
same(sp.diff(ystar, l), q * s * (q + z) / kappa**2)
same(sp.diff(pstar, l), -s * (q + z) / kappa**2)
N = gamma * (dbar * (1 - l) - s * pbar) - 4 * s * b**2 * (dbar * z + s * ybar)
same(N, kappa * G.subs({p: pstar, y: ystar}))
F0 = z * kappa - s * (q + z)
same(F0, kappa * (dstar - s))
l0 = s + b * z
S0 = b * (1 - z) - s
same((s - b * (q - z)) / (1 - q) - l0, -q * S0 / (1 - q))
F00 = q * (z * (1 - s - b * z) - s) - z * (z + s)
same(F00, F0.subs(l, l0))
same(F0, F00 - q * z * (l - l0))
alpha, eta = R(9, 512), R(7, 2048)
assert alpha * R(67, 80)**2 * R(14, 73) * R(80, 13) > eta
assert R(119, 128) - 2 * s < R(3, 4)
assert 7 * s / 4 == R(14, 73)
print("PASS: endpoint elimination and dual for both l branches")

N0 = sp.expand(N.subs(l, l0))
H = sp.Poly(N0 + alpha * F00 + eta * S0, b, q, z)
degree = (4, 3, 3)
assert H.degree_list() == degree

# The table is fixed by the note. No adaptive subdivision is used here.
f = Fraction
zero, one, half = f(0), f(1), f(1, 2)
quarter, eighth, three_sixteenths = f(1, 4), f(1, 8), f(3, 16)
table = [
    (((zero, quarter), (zero, one), (zero, eighth)), 201292),
    (((quarter, half), (zero, one), (zero, eighth)), 28701),
    (((zero, eighth), (zero, half), (eighth, three_sixteenths)), 673376),
    (((zero, eighth), (half, one), (eighth, three_sixteenths)), 85605),
    (((eighth, quarter), (zero, half), (eighth, three_sixteenths)), 264312),
    (((eighth, quarter), (half, one), (eighth, three_sixteenths)), 87739),
    (((zero, quarter), (zero, half), (three_sixteenths, quarter)), 141939),
    (((zero, quarter), (half, one), (three_sixteenths, quarter)), 94199),
    (((quarter, half), (zero, one), (eighth, quarter)), 68199),
    (((half, one), (zero, one), (zero, quarter)), 6165),
    (((zero, one), (zero, one), (quarter, half)), 29261),
    (((zero, one), (zero, one), (half, one)), 2153),
]
assert sum(prod(hi - lo for lo, hi in box) for box, _ in table) == 1
for box, _ in table:
    assert all(0 <= lo < hi <= 1 for lo, hi in box)
for (box1, _), (box2, _) in combinations(table, 2):
    assert any(hi1 <= lo2 or hi2 <= lo1 for (lo1, hi1), (lo2, hi2) in zip(box1, box2))
print("PASS: the 12 printed boxes cover the unit cube with disjoint interiors")

base_box = [(f(8, 73), half), (f(67, 80), f(119, 128)), (f(14, 73), f(3, 4))]
terms = [(powers, f(coef)) for powers, coef in H.terms()]
indices = list(product(*(range(dd + 1) for dd in degree)))
assert len(indices) == 80
coefficient_count = 0

for row, (unit_box, denominator) in enumerate(table, 1):
    physical_box = []
    for (lo, hi), (a0, a1) in zip(unit_box, base_box):
        physical_box.append((a0 + (a1 - a0) * lo, a0 + (a1 - a0) * hi))
    # Direct affine power expansion on this printed box.
    powers = {}
    for ks, coeff in terms:
        for js in product(*(range(kk + 1) for kk in ks)):
            value = coeff
            for axis in range(3):
                lo, hi = physical_box[axis]
                value *= comb(ks[axis], js[axis]) * lo**(ks[axis] - js[axis]) * (hi - lo)**js[axis]
            powers[js] = powers.get(js, f(0)) + value
    bernstein = []
    for ks in indices:
        value = f(0)
        for js, coeff in powers.items():
            if all(jj <= kk for jj, kk in zip(js, ks)):
                term = coeff
                for axis in range(3):
                    term *= f(comb(ks[axis], js[axis]), comb(degree[axis], js[axis]))
                value += term
        assert value < -f(1, denominator), (row, ks, value)
        bernstein.append(value)
        coefficient_count += 1
    print(f"PASS: row {row:2d}, all 80 coefficients < -1/{denominator}")

assert coefficient_count == 960
print("PASS: all 960 exact coefficient bounds; entire upper support cell II excluded")
