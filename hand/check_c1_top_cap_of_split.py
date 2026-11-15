"""Exact three-rectangle certificate for C1_TOP_CAP_OF_SPLIT.md."""

from fractions import Fraction
from itertools import product
from math import comb

import sympy as sp


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
omega = sp.Rational(5, 64)
h, c, d, f, x, Y, v, p = sp.symbols("h c d f x Y v p", real=True)
assert 73 * rho - 532 * s == sp.Rational(5761, 4380) > 0
assert 48 * rho - 266 * s == sp.Rational(3668, 365) > 0
assert rho - (1 - s) ** 2 == sp.Rational(7621, 319740) > 0
assert sp.expand(((73 * p - 532 * s) / 23) ** 2
                 - (p**2 - 8 * s * p + 4 * s**2)
                 - 12 * (20 * p - 153 * s) ** 2 / 529) == 0

r = (1 - d) * x + (1 - f) * Y - 1 + d * f
beta = (1 - c) * Y + d * (c - x)
assert sp.expand((c - x) * r + (x - f) * beta
                 - (1 - x) * ((c - f) * Y - (c - x))) == 0
Z0 = c * (1 - h) + h * f
B = (c - f) * (1 - h + h * f - s) - f * (c - 1)
E0 = c * (1 - h + h * f - s) - f * rho
E1 = c * (1 - h)
Q = -Z0 * v**2 + B * v - s * f * (c - f)
upper_fY = 1 - h + h * f - s - (1 - h) * v
cap_elimination = v * (c - f) * upper_fY - f * v * (c - 1 + v) - s * f * (c - f)
assert sp.expand(cap_elimination - Q) == 0
assert sp.expand(c * upper_fY - f * rho - E0 + E1 * v) == 0
R = (B - omega * E1) ** 2 - 4 * Z0 * (s * f * (c - f) - omega * E0)
assert sp.expand(R - 4 * Z0 * (Q + omega * (E0 - E1 * v))
                 - (2 * Z0 * v - B + omega * E1) ** 2) == 0

# Form the quartic and its exact Bernstein coefficients on [f0,c-s].
Rc = sp.cancel(c**2 * R.subs(h, p / c))
assert sp.denom(Rc).is_number
quartic = sp.Poly(sp.expand(Rc), f)
assert quartic.degree() == 4
D = p * (48 * p - 266 * s)
ell = 23 * s * c * (p + c)
W = (c - s) * D - ell
theta = sp.symbols("theta")
N = []
for k in range(5):
    expression = sum(
        quartic.nth(i) * D ** (4 - i)
        * sum(sp.Rational(comb(i, j) * comb(k, j), comb(4, j))
              * ell ** (i - j) * W**j
              for j in range(min(i, k) + 1))
        for i in range(5)
    )
    N.append(sp.Poly(sp.expand(expression), p, c).as_expr())

# Verify the univariate power-to-Bernstein conversion without evaluating points.
for power in range(5):
    expected = sum(quartic.nth(i) * D ** (4 - i) * comb(i, power)
                   * ell ** (i - power) * W**power for i in range(power, 5))
    obtained = sum(N[k] * comb(4, k) * comb(4 - k, power - k)
                   * (-1) ** (power - k) for k in range(power + 1))
    assert sp.expand(expected - obtained) == 0

H0, C0 = sp.symbols("H0 C0")
cn = rho + (1 - rho) * C0
pn = rho + (cn - rho) * H0
polys = [sp.Poly(sp.expand(expression.subs({p: pn, c: cn})), H0, C0)
         for expression in N]
degrees = [tuple(poly.degree(g) for g in poly.gens) for poly in polys]
assert degrees == [(10, 12), (10, 13), (10, 14), (10, 14), (10, 14)]


def bernstein_coefficients(poly):
    degree = tuple(poly.degree(g) for g in poly.gens)
    result = {}
    for index in product(*(range(n + 1) for n in degree)):
        value = Fraction(0)
        for power, coefficient in poly.terms():
            if all(j <= i for j, i in zip(power, index)):
                term = Fraction(int(coefficient.p), int(coefficient.q))
                for i, j, n in zip(index, power, degree):
                    term *= Fraction(comb(i, j), comb(n, j))
                value += term
        result[index] = value
    return result


def split(coefficients, degree, axis):
    """Exact midpoint subdivision with unscaled rational coefficients."""
    n = degree[axis]
    other = 1 - axis
    left, right = {}, {}
    for other_index in range(degree[other] + 1):
        def key(j):
            return (j, other_index) if axis == 0 else (other_index, j)

        row = [coefficients[key(j)] for j in range(n + 1)]
        left[key(0)], right[key(n)] = row[0], row[-1]
        for level in range(1, n + 1):
            row = [(a + b) / 2 for a, b in zip(row, row[1:])]
            left[key(level)], right[key(n - level)] = row[0], row[-1]
    return left, right


for poly, degree in zip(polys, degrees):
    initial = bernstein_coefficients(poly)
    lower_c, upper_c = split(initial, degree, 1)
    lower_h_upper_c, upper_h_upper_c = split(upper_c, degree, 0)
    for rectangle in (lower_c, lower_h_upper_c, upper_h_upper_c):
        assert max(rectangle.values()) < -2

print("C1 OF-split top-cap branch: exact reductions and all five quartic coefficients on three rectangles verified.")
