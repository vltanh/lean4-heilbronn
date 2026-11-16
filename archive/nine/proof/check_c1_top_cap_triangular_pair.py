"""Exact fixed certificate for C1_TOP_CAP_TRIANGULAR_PAIR.md; no search."""

from fractions import Fraction
from itertools import product
from math import comb, lcm

import sympy as sp


def area(a, b, c):
    return sp.det(sp.Matrix.hstack(b - a, c - a))


s = sp.Rational(8, 73)
rho = sp.Rational(49, 60)
h, c, d, f, x, y, r, a, b = sp.symbols("h c d f x y r a b", real=True)
O = sp.Matrix([0, 0])
H = sp.Matrix([0, h])
C = sp.Matrix([c, 0])
D = sp.Matrix([1, d])
F = sp.Matrix([f, 1])
Y = sp.Matrix([x, y])
T = 1 - d * f
A = 1 - c + d * (c - f)
U = 1 - h + f * (h - d)
delta = d * f - (1 - h) * (1 - c)
alpha, beta = -area(H, F, Y), area(C, D, Y)
actual_a, actual_b = y - d * x, x - f * y
actual_r = -area(D, F, Y)
assert sp.expand(actual_a + actual_b - T - actual_r) == 0
assert sp.expand(d * actual_b + actual_a - T * y) == 0
assert sp.expand(f * actual_a + actual_b - T * x) == 0
assert sp.expand(d * actual_r + (1 - d) * beta - A * (y - d)) == 0
assert sp.expand(f * actual_r + (1 - f) * alpha - U * (x - f)) == 0
assert sp.expand(T * alpha - U * (T - actual_a) - (T - h) * actual_r) == 0

ld, lf, ly = sp.symbols("ld lf ly", real=True)
X = ld * D + lf * F + ly * Y
assert sp.expand(area(O, X, Y) - ld * actual_a + lf * actual_b) == 0
assert sp.expand((r * a - s * (2 * a + b) - s * r).subs(b, r + T - a)
                 - a * (r - s) + s * (2 * r + T)) == 0
assert (1 - s) ** 2 > 3 * s

F0 = A * U - s * (A + U) - delta * r
F1 = (1 - f) * (U - s) - f * r
F2 = (T * (1 - d) - d * r) * (r - s) - s * (1 - d) * (2 * r + T)
F3 = (T * (U - s) + (T - h) * r) * (r - s) - s * U * (2 * r + T)

u, v = sp.symbols("u v", real=True)
normalized = {c: rho / h, f: u / h, d: v * h / rho}
normalized_polys = [sp.cancel(expr.subs(normalized)) for expr in (h * F0, h * F1, F2, F3)]
assert all(sp.denom(expr).is_number for expr in normalized_polys)
H0, U0, V0, R0 = sp.symbols("H0 U0 V0 R0")
cube = {
    h: rho + (1 - rho) * H0,
    u: s + (rho - s) * U0,
    v: s + (rho - s) * V0,
    r: 3 * s + ((1 - s) ** 2 - 3 * s) * R0,
}
polys = [sp.Poly(sp.expand(expr.subs(cube)), H0, U0, V0, R0) for expr in normalized_polys]
expected_degrees = [(2, 2, 2, 1), (2, 2, 1, 1), (1, 1, 2, 2), (1, 2, 2, 2)]
assert [tuple(poly.degree(g) for g in poly.gens) for poly in polys] == expected_degrees


def bernstein_coefficients(poly):
    degrees = tuple(poly.degree(g) for g in poly.gens)
    result = {}
    for index in product(*(range(n + 1) for n in degrees)):
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
    n = degrees[axis]
    left, right = {}, {}
    other_axes = tuple(i for i in range(4) if i != axis)
    for other_index in product(*(range(degrees[i] + 1) for i in other_axes)):
        index = [0, 0, 0, 0]
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
    "00000000": 0, "00000001": 0, "0000001": 0, "00000100000000": 0,
    "00000100000001": 3, "0000010000001": 0, "000001000001": 0,
    "00000100001": 0, "0000010001000": 3, "000001000100100000": 0,
    "000001000100100001": 2, "00000100010010001": 0, "0000010001001001": 0,
    "000001000100101": 0, "00000100010011": 2, "000001000101": 3,
    "00000100011": 0, "000001001": 0, "00000101": 0, "0000011": 0,
    "000010": 0, "000011": 0, "0001000": 0, "00010010": 0,
    "00010011000": 3, "0001001100100": 3, "0001001100101": 0,
    "000100110011": 3, "0001001101": 3, "000100111": 0, "000101": 3,
    "0001100": 0, "0001101": 0, "000111": 0, "0010": 0, "00110000": 0,
    "0011000100000": 3, "0011000100001": 0, "0011000100010": 3,
    "0011000100011": 1, "00110001001": 1, "0011000101": 3,
    "001100011": 1, "0011001": 1, "001101": 3, "00111": 0,
    "01": 2, "1000": 0, "1001": 0, "101": 0, "11": 0,
}
assert len(LEAVES) == 51
assert max(map(len, LEAVES)) == 18
degrees_and_coefficients = [bernstein_coefficients(poly) for poly in polys]
degrees = [item[0] for item in degrees_and_coefficients]
initial = [item[1] for item in degrees_and_coefficients]
seen = set()


def verify(path, coefficients):
    if path in LEAVES:
        assert not any(other != path and other.startswith(path) for other in LEAVES)
        assert max(coefficients[LEAVES[path]].values()) < 0, path
        seen.add(path)
        return
    assert len(path) < 18
    assert any(leaf.startswith(path + "0") for leaf in LEAVES), path
    assert any(leaf.startswith(path + "1") for leaf in LEAVES), path
    axis = (3, 2, 1, 0)[len(path) % 4]
    halves = [split(coef, degree, axis) for coef, degree in zip(coefficients, degrees)]
    verify(path + "0", [half[0] for half in halves])
    verify(path + "1", [half[1] for half in halves])


verify("", initial)
assert seen == set(LEAVES)
print("C1 triangular top-cap pair: exact elimination and all 51 fixed Bernstein boxes verified.")
