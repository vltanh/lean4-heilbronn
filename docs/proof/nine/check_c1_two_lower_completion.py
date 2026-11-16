"""Exact 27-coefficient certificate for C1_TWO_LOWER_COMPLETION.md."""

from fractions import Fraction
from itertools import product
from math import comb

import sympy as sp


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
h, c, f, x, Y, ell, y = sp.symbols("h c f x Y ell y")
a = x - f * Y
T = c * Y + s - rho
U = (1 - h) * (c * Y - rho) + Y * (h * f - s)
B0 = c - x + f * Y
B1 = (1 - h) * (c - x) + f * Y
G0 = a * T - s * c * (1 + Y)
G1 = a * U - s * (1 + Y) * B1

CXL = (c - ell) * Y - (c - x) * y
OFL = ell - f * y
HFL = h * f + (1 - h) * ell - f * y
OXL = x * y - Y * ell
assert sp.expand(OXL + Y * OFL - a * y) == 0
assert sp.expand(CXL + Y * OFL - (c * Y - B0 * y)) == 0
assert sp.expand((1 - h) * CXL + Y * HFL
                 - ((1 - h) * c * Y + Y * h * f - B1 * y)) == 0
assert sp.expand(a * ((c - s) * Y - rho) - s * (1 + Y) * B0 - G0) == 0
assert sp.diff(G0, x) == T
assert sp.expand(sp.diff(G1, x) - U - s * (1 + Y) * (1 - h)) == 0

xs = c + ((1 - c) * Y - s) / h
assert sp.factor((1 - c) * Y + h * (c - xs) - s) == 0
U0 = (1 - h) * (c * Y - rho) - s * Y
B = h * xs - U0 - s * (1 + Y) - sp.Rational(5, 4) * T
C0 = (xs * (U0 + sp.Rational(5, 4) * T)
      - s * (1 + Y) * ((1 - h) * (c - xs) + sp.Rational(5, 4) * c))
weighted = sp.cancel((G1 + sp.Rational(5, 4) * G0).subs(x, xs))
assert sp.factor(weighted + h * Y**2 * f**2 - Y * B * f - C0) == 0
P = sp.cancel(B**2 + 4 * h * C0)
assert sp.denom(P).is_number
assert sp.factor(P - 4 * h * weighted - (2 * h * Y * f - B)**2) == 0
polynomial = sp.Poly(sp.expand(P), h, c, Y)
assert tuple(polynomial.degree(g) for g in polynomial.gens) == (2, 2, 2)

H, C, V = sp.symbols("H C V")
cube = {h: rho + (1 - rho) * H,
        c: rho + (1 - rho) * C,
        Y: rho + (1 - rho) * V}
polynomial = sp.Poly(sp.expand(P.subs(cube)), H, C, V)
coefficients = []
for index in product(range(3), repeat=3):
    value = Fraction(0)
    for power, coefficient in polynomial.terms():
        if all(j <= i for j, i in zip(power, index)):
            term = Fraction(int(coefficient.p), int(coefficient.q))
            for i, j in zip(index, power):
                term *= Fraction(comb(i, j), comb(2, j))
            value += term
    coefficients.append(value)
assert len(coefficients) == 27
assert max(coefficients) == Fraction(-124631, 12278016) < 0

print("C1 two-lower completion: exact eliminations and all 27 Bernstein coefficients pass.")
