"""Exact certificate for C1_TOP_CAP_CONTAINMENT_PAIR.md."""

from fractions import Fraction
from itertools import product
from math import comb

import sympy as sp


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
omega = sp.Rational(5, 64)
h, c, d, f, x, y, p, z, v0 = sp.symbols("h c d f x y p z v0")

# The cap dual uses only actual cap costs and c*y >= rho.
r = (1 - d) * x + (1 - f) * y - 1 + d * f
beta = (1 - c) * y + d * (c - x)
assert sp.expand((c - x) * r + (x - f) * beta
                 - (1 - x) * ((c - f) * y - (c - x))) == 0
Z0 = c * (1 - h) + h * f
B = (c - f) * (1 - h + h * f - s) - f * (c - 1)
E0 = c * (1 - h + h * f - s) - f * rho
E1 = c * (1 - h)
Q = -Z0 * v0**2 + B * v0 - s * f * (c - f)
upper_fy = 1 - h + h * f - s - (1 - h) * v0
assert sp.expand(v0 * (c - f) * upper_fy - f * v0 * (c - 1 + v0)
                 - s * f * (c - f) - Q) == 0
assert sp.expand(c * upper_fy - f * rho - E0 + E1 * v0) == 0
R = (B - omega * E1) ** 2 - 4 * Z0 * (s * f * (c - f) - omega * E0)
assert sp.expand(R - 4 * Z0 * (Q + omega * (E0 - E1 * v0))
                 - (2 * Z0 * v0 - B + omega * E1) ** 2) == 0

# Quartic coefficients for f in [c^2/(2p), c-s].
Rc = sp.cancel(c**2 * R.subs(h, p / c))
assert sp.denom(Rc).is_number
quartic = sp.Poly(sp.expand(Rc), f)
assert quartic.degree() == 4
D0 = 2 * p
ell0 = c**2
W0 = (c - s) * D0 - ell0
N = []
for k in range(5):
    expression = sum(
        quartic.nth(i) * D0 ** (4 - i)
        * sum(sp.Rational(comb(i, j) * comb(k, j), comb(4, j))
              * ell0 ** (i - j) * W0**j
              for j in range(min(i, k) + 1))
        for i in range(5)
    )
    N.append(sp.expand(expression))
for power in range(5):
    expected = sum(quartic.nth(i) * D0 ** (4 - i) * comb(i, power)
                   * ell0 ** (i - power) * W0**power for i in range(power, 5))
    obtained = sum(N[k] * comb(4, k) * comb(4 - k, power - k)
                   * (-1) ** (power - k) for k in range(power + 1))
    assert sp.expand(expected - obtained) == 0

H0, C0 = sp.symbols("H0 C0")
cn = rho + (1 - rho) * C0
pn = rho + (cn - rho) * H0
count = 0
for expression in N:
    polynomial = sp.Poly(sp.expand(expression.subs({p: pn, c: cn})), H0, C0)
    assert tuple(polynomial.degree(g) for g in polynomial.gens) == (6, 10)
    for i, j in product(range(7), range(11)):
        coefficient = Fraction(0)
        for (a, b), value in polynomial.terms():
            if a <= i and b <= j:
                coefficient += (Fraction(int(value.p), int(value.q))
                                * Fraction(comb(i, a), comb(6, a))
                                * Fraction(comb(j, b), comb(10, b)))
        assert coefficient < Fraction(-1, 250)
        count += 1
assert count == 385

# Signed-area identity for the middle pair-line placement.
ell, m, t, v = sp.symbols("ell m t v")
dH = (m - ell) * (h - y) - ell * (y - t)
dF = (m - ell) * (1 - y) + (f - ell) * (y - t)
AL = h * f + (1 - h) * ell - f * y
assert sp.expand((1 - y) * (-dH) + (h - y) * dF - (y - t) * AL) == 0
AL_upper = (1 - h + z) * (p - v) - s * (1 - h)
assert sp.factor((h * AL).subs({ell: (p - v - s) / h,
                               y: v / c, f: z * c / h})
                 - AL_upper - z * (h * c - p)) == 0

calF = (v - s) * AL_upper - p * s * (1 + h) + 2 * h * s * v
derivative = v**2 - (p - 2 * s) * v - s**2
assert sp.expand(sp.diff(calF, h) - derivative) == 0
b = (p - s * (1 + p)) / (1 + s)
assert sp.factor(derivative.subs(v, b)
                 + 8 * (692770 * p**2 - 507569 * p + 104464) / 34963569) == 0
assert 507569**2 - 4 * 692770 * 104464 == -31851811359

F = sp.expand(calF.subs(h, p))
V = (p - s * (1 + p)) / (1 + z)
E = (-73 * p**2 * z + 57 * p**2 + 73 * p * z**2 + 32 * p * z
     - 57 * p + 8 * z**2 + 24 * z + 16)
assert sp.factor(73 * (1 + z) * sp.diff(F, v).subs(v, V) - E) == 0
Ez = -73 * p**2 + 146 * p * z + 32 * p + 16 * z + 24
assert sp.expand(sp.diff(E, z) - Ez) == 0
assert Ez.subs({p: rho, z: s}) == sp.Rational(4274831, 262800) > 0
assert Ez.subs({p: 1, z: s}) == sp.Rational(55, 73) > 0
assert sp.factor(E.subs(z, s) - (261121 * p**2 - 280393 * p + 99792) / 5329) == 0
assert 280393**2 - 4 * 261121 * 99792 == -25610912879

T = (4745 * p**2 * z + 520 * p**2 - 4745 * p * z**2 - 6889 * p * z
     - 1104 * p + 584 * z**3 + 2464 * z**2 + 2784 * z + 840)
assert sp.factor((1 + z)**2 * F.subs(v, V) + p * T / 5329) == 0
assert sp.expand(sp.diff(T, z, 2) - (3504 * z - 9490 * p + 4928)) == 0
assert 3504 / sp.Integer(2) - 9490 * rho + 4928 == -sp.Rational(6421, 6)
assert sp.factor(T.subs(z, s)
                 - 8 * (692770 * p**2 - 1276259 * p + 783001) / 5329) == 0
assert sp.factor(T.subs(z, sp.Rational(1, 2))
                 - (11570 * p**2 - 22939 * p + 11684) / 4) == 0
assert 1276259**2 - 4 * 692770 * 783001 == -540921375999
assert 22939**2 - 4 * 11570 * 11684 == -14537799

print("C1 containment pair: all 385 cap coefficients and exact scalar identities pass.")
