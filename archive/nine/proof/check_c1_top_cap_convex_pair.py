"""Exact fixed certificate for C1_TOP_CAP_CONVEX_PAIR.md; no search."""

from fractions import Fraction
from itertools import product
from math import comb, lcm

import sympy as sp


def area(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
h, c, d, f, x, y = sp.symbols("h c d f x y", real=True)
H = sp.Matrix([0, h])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
Z = sp.Matrix([x, y])
A = 1 - c + d * (c - f)
U = 1 - h + f * (h - d)
delta = d * f - (1 - h) * (1 - c)
assert sp.expand(A - area(C, D, F)) == 0
assert sp.expand(U - area(H, D, F)) == 0
assert sp.expand(A + U + delta - 1 + (h - d) * (c - f)) == 0
assert sp.expand(A * (-area(H, F, Z)) + U * area(C, D, Z) - delta * area(D, F, Z) - A * U) == 0
assert rho > sp.Rational(81, 100)
assert sp.Rational(81, 10000) < s**2
assert s > sp.Rational(1, 10)
assert rho > 2 * s
assert s / rho < 1
assert sp.Rational(113, 125) ** 2 - rho == sp.Rational(103, 187500)

# The two same-side signs imply the same height-width bound.
ell, m, S, p, q, t = sp.symbols("ell m S p q t", real=True)
d_D = p * t - y * q
d_F = d_D + y - t
positive_upper = t * (m - y / S) - y * ell
negative_upper = y * (m - t / S - 1) + t * (1 - ell)
width_bound = t * (m - ell - t / S)
assert sp.factor(width_bound - positive_upper - (y - t) * (ell + t / S)) == 0
assert sp.factor(width_bound - negative_upper - (y - t) * (1 - m + t / S)) == 0

# The exact expressions after hc=rho and u=hf, v=cd.
u, v = sp.symbols("u v", real=True)
normalized = {c: rho / h, f: u / h, d: v * h / rho}
A0 = 1 - rho / h + v - u * v / rho
U0 = 1 - h + u - u * v / rho
delta0 = u * v / rho - 1 + h + rho / h - rho
assert sp.factor(A.subs(normalized) - A0) == 0
assert sp.factor(U.subs(normalized) - U0) == 0
assert sp.factor(delta.subs(normalized) - delta0) == 0
bracket = A0 * U0 - s * (A0 + U0)
gap = bracket**2 - 4 * s * A0 * U0 * delta0

H0, U1, V0 = sp.symbols("H0 U1 V0")
cube = {
    h: rho + (sp.Rational(113, 125) - rho) * H0,
    u: s + (rho - s) * U1,
    v: s + (rho - s) * V0,
}
polys = [
    sp.Poly(sp.expand(sp.expand(h * bracket).subs(cube)), H0, U1, V0),
    sp.Poly(sp.expand(sp.expand(h**2 * gap).subs(cube)), H0, U1, V0),
]
assert tuple(polys[0].degree(g) for g in polys[0].gens) == (2, 2, 2)
assert tuple(polys[1].degree(g) for g in polys[1].gens) == (4, 4, 4)


def bernstein_coefficients(poly):
    """Return tensor degree and coefficients times a positive common scale."""
    degrees = tuple(poly.degree(g) for g in poly.gens)
    indices = product(*(range(n + 1) for n in degrees))
    result = {}
    for index in indices:
        value = Fraction(0)
        for power, coefficient in poly.terms():
            if all(j <= i for j, i in zip(power, index)):
                term = Fraction(int(coefficient.p), int(coefficient.q))
                for i, j, n in zip(index, power, degrees):
                    term *= Fraction(comb(i, j), comb(n, j))
                value += term
        result[index] = value
    denominator = lcm(*(value.denominator for value in result.values()))
    return degrees, {index: int(value * denominator) for index, value in result.items()}


def split(coefficients, degrees, axis):
    """Midpoint de Casteljau, clearing the same 2**degree from both halves."""
    n = degrees[axis]
    left, right = {}, {}
    other_axes = tuple(i for i in range(3) if i != axis)
    for other_index in product(*(range(degrees[i] + 1) for i in other_axes)):
        index = [0, 0, 0]
        for i, value in zip(other_axes, other_index):
            index[i] = value

        def key(j):
            index[axis] = j
            return tuple(index)

        row = [coefficients[key(j)] for j in range(n + 1)]
        left[key(0)] = row[0] * 2**n
        right[key(n)] = row[-1] * 2**n
        for level in range(1, n + 1):
            row = [a + b for a, b in zip(row, row[1:])]
            left[key(level)] = row[0] * 2 ** (n - level)
            right[key(n - level)] = row[-1] * 2 ** (n - level)
    return left, right


LEAVES = {
    "000000000": "P", "000000001": "P", "00000001": "Q",
    "0000001": "Q", "00000100": "P", "000001010": "Q",
    "000001011": "P", "0000011": "Q", "00001": "Q", "0001": "Q",
    "0010000": "P", "00100010": "P", "00100011": "Q", "001001": "P",
    "0010100": "P", "0010101": "Q", "001011": "P", "001100": "Q",
    "001101": "P", "001110": "Q", "0011110": "P", "00111110": "P",
    "00111111": "Q", "010": "Q", "011000": "Q", "011001": "P",
    "01101": "Q", "0111": "Q", "100": "Q", "101000": "Q",
    "101001": "P", "10101": "Q", "101100": "Q", "101101": "P",
    "10111": "Q", "11": "Q",
}
assert len(LEAVES) == 36
assert max(map(len, LEAVES)) == 9
degrees_and_coefficients = [bernstein_coefficients(poly) for poly in polys]
degrees = [item[0] for item in degrees_and_coefficients]
initial = [item[1] for item in degrees_and_coefficients]
seen = set()


def verify(path, coefficients):
    """Follow only the prescribed finite tree, verifying coverage and signs."""
    if path in LEAVES:
        assert not any(other != path and other.startswith(path) for other in LEAVES)
        label = LEAVES[path]
        if label == "P":
            assert max(coefficients[0].values()) <= 0, path
        else:
            assert max(coefficients[1].values()) < 0, path
        seen.add(path)
        return

    assert len(path) < 9
    assert any(leaf.startswith(path + "0") for leaf in LEAVES), path
    assert any(leaf.startswith(path + "1") for leaf in LEAVES), path
    axis = (2, 0, 1)[len(path) % 3]
    halves = [split(coef, degree, axis) for coef, degree in zip(coefficients, degrees)]
    verify(path + "0", [half[0] for half in halves])
    verify(path + "1", [half[1] for half in halves])


verify("", initial)
assert seen == set(LEAVES)
print("C1 top-cap convex pair: exact identities and all 36 fixed Bernstein boxes verified.")
