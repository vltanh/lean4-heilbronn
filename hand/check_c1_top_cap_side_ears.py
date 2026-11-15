"""Exact two-box certificate for C1_TOP_CAP_SIDE_EARS.md."""

from fractions import Fraction
from itertools import product
from math import comb

import sympy as sp


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
h, c, d, f, x, y = sp.symbols("h c d f x y", real=True)
A = 1 - c + d * (c - f)
U = 1 - h + f * (h - d)
delta = d * f - (1 - h) * (1 - c)
alpha = (1 - h) * x - f * (y - h)
beta = (1 - c) * y + d * (c - x)
r = (1 - d) * x + (1 - f) * y - 1 + d * f
assert sp.expand(A * alpha + U * beta + delta * r - A * U) == 0
aa, uu, dd = sp.symbols("aa uu dd")
J = aa * uu - s * (aa + 3 * uu + dd)
assert sp.diff(J, aa) == uu - s
assert sp.diff(J, uu) == aa - 3 * s
assert sp.diff(J, dd) == -s

u, v = sp.symbols("u v")
normalized = {c: rho / h, d: v * h / rho, f: u / h}
P = sp.cancel((h * (A * U - s * (A + 3 * U + delta))).subs(normalized))
assert sp.denom(P).is_number
H, V1, V2 = sp.symbols("H V1 V2")
maxima = [
    Fraction(-4376159983, 274490395200),
    Fraction(-1816566733, 112036896000),
]

for half in (0, 1):
    cube = {
        h: rho + (1 - rho) * H,
        u: s + (rho - s) * V1,
        v: s + (rho - s) * (V2 + half) / 2,
    }
    poly = sp.Poly(sp.expand(P.subs(cube)), H, V1, V2)
    assert tuple(poly.degree(g) for g in poly.gens) == (2, 2, 2)
    coefficients = []
    for index in product(range(3), repeat=3):
        value = Fraction(0)
        for power, coefficient in poly.terms():
            if all(j <= i for j, i in zip(power, index)):
                term = Fraction(int(coefficient.p), int(coefficient.q))
                for i, j in zip(index, power):
                    term *= Fraction(comb(i, j), comb(2, j))
                value += term
        coefficients.append(value)
    assert len(coefficients) == 27
    assert max(coefficients) == maxima[half] < 0

print("C1 top-cap side ears: all 54 exact Bernstein coefficients are negative.")
