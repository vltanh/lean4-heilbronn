#!/usr/bin/env python3
"""Exact identities for the four-interior quadrilateral placement theorem."""
from fractions import Fraction

import sympy as sp


def det(p, q):
    return sp.det(sp.Matrix.hstack(p, q))


def equal(p, q):
    assert sp.factor(p - q) == 0


a, b, s, p, q, u, v, z = sp.symbols("a b s p q u v z")
A = sp.Matrix([0, 0])
B = sp.Matrix([1, 0])
C = sp.Matrix([(1 - b) / a, b])
D = sp.Matrix([0, a])
P = sp.Matrix([p, u])
Q = sp.Matrix([q, v])
equal(det(B - A, C - A), b)
equal(det(B - A, D - A), a)
equal(det(C - A, D - A), 1 - b)
equal(det(C - B, D - B), 1 - a)
equal(det(B, C) + det(C, D), 1)
dA, dB, dD = [det(Q - P, X - P) for X in [A, B, D]]
equal(dA, p * v - u * q)
equal(dB, dA + u - v)
equal(dD, dA + a * (q - p))
equal(u * dD + (a - u) * dB, (a * (1 - p) - u) * (u - v))


def lower(height):
    return s / b + (1 - b) * height / (a * b)


def upper(height):
    return 1 - (s + height) / a


equal(v * upper(u) - u * lower(v),
      v * (1 - s / a) - u * v / (a * b) - s * u / b)
equal(u * (upper(v) - 1) + v * (1 - lower(u)),
      v * (1 - s / b) - u * v / (a * b) - s * u / a)
equal(v * upper(v) - v * lower(v),
      v * (1 - s * (a + b) / (a * b)) - v**2 / (a * b))
equal((a - a * s / b - u / b) * (u - s) / a,
      (u - s) * (1 - s / b - u / (a * b)))
equal(((u - s) * (1 - s / b - u / (a * b))).subs(u, z + s),
      z * (a * b - s * (1 + a) - z) / (a * b))

sigma = Fraction(7, 128)
endpoint = 1 - Fraction(22, 3) * sigma
assert endpoint == Fraction(115, 192)
gap = (endpoint**2 - sigma * (1 + endpoint))**2 - 4 * sigma * endpoint**2
assert gap == -Fraction(26465591, 5435817984)
assert endpoint > sigma > Fraction(7, 32)**2
assert 4 * Fraction(7, 32) + 4 * sigma == Fraction(35, 32) > 1
assert 18**2 * 65 - 145**2 == 35

print("PASS: general quadrilateral identities, including a+b <= 1")
print("PASS: opposite-sector rational exclusion and final Cauchy contradiction")
