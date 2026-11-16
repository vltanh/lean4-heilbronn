"""Exact fixed-polynomial check for TYPE_II_R4_MIXED_I.md.

This verifier performs no optimization, subdivision, or numerical search.
It reconstructs the printed factors and integer table, expands with
Fraction arithmetic, and applies the printed one-box coefficient bound.
"""
from fractions import Fraction as F
from collections import defaultdict


def constant(c):
    return {(): F(c)} if c else {}


def variable(i):
    return {(i,): F(1)}


def add(*polynomials):
    answer = defaultdict(F)
    for polynomial in polynomials:
        for exponent, coefficient in polynomial.items():
            answer[exponent] += coefficient
    return {e: c for e, c in answer.items() if c}


def scale(polynomial, coefficient):
    return {e: coefficient * c for e, c in polynomial.items() if coefficient * c}


def subtract(left, right):
    return add(left, scale(right, -1))


def multiply(left, right):
    answer = defaultdict(F)
    for e, c in left.items():
        for f, d in right.items():
            answer[tuple(sorted(e + f))] += c * d
    return {e: c for e, c in answer.items() if c}


S = F(93, 1000)
BOX = [
    (F(103, 1000), F(152, 1000)),
    (F(11, 100), F(39, 100)),
    (F(795, 1000), F(861, 1000)),
    (F(48, 100), F(861, 1000)),
    (F(12, 100), F(226, 1000)),
    (F(279, 1000), F(572, 1000)),
]
VARIABLES = [variable(i) for i in range(6)]
b, lam, a, p, y, total = VARIABLES
one = constant(1)
width = subtract(one, b)
height = subtract(one, lam)
hull = subtract(a, b)
upper = add(a, scale(p, -1), multiply(subtract(one, a), y))
remaining = subtract(total, constant(S))
FACTORS = {
    "B0": add(multiply(b, height), constant(-S)),
    "E1": add(multiply(lam, subtract(p, b)), multiply(b, y), constant(-S)),
    "E2": add(multiply(a, y), scale(multiply(lam, subtract(a, p)), -1), constant(-S)),
    "D1": add(multiply(height, subtract(a, p)), constant(-2 * S)),
    "F1": add(multiply(remaining, subtract(one, a)), scale(subtract(p, b), -S)),
    "PY": add(multiply(p, y), constant(-S)),
    "M": add(multiply(upper, remaining), scale(hull, -S)),
}
identity = add(total, scale(p, -1), b, multiply(width, y))
FACTORS["Z"] = identity
FACTORS["NZ"] = scale(identity, -1)
for i, (lower, upper_bound) in enumerate(BOX):
    FACTORS[f"L{2 * i}"] = subtract(VARIABLES[i], constant(lower))
    FACTORS[f"L{2 * i + 1}"] = subtract(constant(upper_bound), VARIABLES[i])
FACTORS["L12"] = add(hull, constant(-F(149, 20) * S))
FACTORS["L13"] = add(a, scale(p, -1), constant(-2 * S))
FACTORS["L14"] = add(hull, scale(total, -1), constant(-2 * S))

# Exactly the fixed integer table printed in the manuscript.
TABLE = """
21 L0*L0*L2*L11
78 L0*L2*L2*L11
5 L0*L2*L2*L14
105 L0*L9*L11*L13
4 L2*L2*L2*L13
20 L2*L2*L4*L5
575 L2*L2*L13*L13
1187 L2*L8*L12*L13
319 L3*L5*L5*L8
186 L5*L5*L7*L8
169 B0
15 B0*L2
63 B0*L4
534 B0*L13
8 B0*L14
22 B0*L2*L7
79 B0*L2*L11
21 B0*L6*L7
630 B0*L6*L8
17 B0*L6*L11
258 B0*L7*L9
186 B0*L9*L14
22 E1*L3
394 E1*L7
239 E1*L11
172 E1*L13
137 E1*L14
26 E1*L1*L10
8 E1*L2*L14
13 E1*L3*L7
12 E1*L7*L7
2180 E1*L7*L13
658 E1*L11*L13
11 E1*L13*L13
628 E2*L1
274 E2*L3
104 E2*L6
286 E2*L10
347 E2*L12
657 E2*L1*L11
382 E2*L3*L7
20 E2*L3*L11
864 E2*L3*L13
21 E2*L4*L6
716 E2*L6*L10
178 D1*L2
1884 D1*L5
2558 D1*L13
2180 D1*L0*L6
2147 D1*L0*L9
6 D1*L2*L2
418 D1*L2*L7
12 D1*L2*L11
1417 D1*L2*L13
2228 D1*L5*L6
1374 D1*L5*L10
2204 D1*L6*L13
1374 D1*L10*L13
622 F1
1039 F1*L7
5654 F1*L13
8 F1*L2*L3
442 F1*L2*L8
1842 F1*L5*L8
2326 F1*L7*L8
97 F1*L9*L12
396 PY*L0
893 PY*L11
2420 PY*L13
14 PY*L0*L14
55 PY*L3*L4
111 PY*L4*L4
525 PY*L10*L12
226 M
432 M*L3
6437 M*L4
3578 M*L6
270 NZ
357 NZ*L3
778 NZ*L4
1074 NZ*L13
120 NZ*L3*L12
958 NZ*L3*L13
24 NZ*L6*L7
2180 NZ*L6*L13
79 Z*L2*L12
"""


def shift_to_lower_corner(polynomial):
    answer = defaultdict(F)
    for exponent, coefficient in polynomial.items():
        partial = {(): coefficient}
        for i in exponent:
            next_partial = defaultdict(F)
            for e, c in partial.items():
                next_partial[e] += c * BOX[i][0]
                next_partial[tuple(sorted(e + (i,)))] += c
            partial = next_partial
        for e, c in partial.items():
            answer[e] += c
    return {e: c for e, c in answer.items() if c}


def verify():
    polynomial = {}
    count = 0
    for row in TABLE.strip().splitlines():
        weight_text, product_text = row.split()
        weight = int(weight_text)
        assert weight > 0
        term = constant(weight)
        for factor in product_text.split("*"):
            term = multiply(term, FACTORS[factor])
        assert max(map(len, term), default=0) <= 4
        polynomial = add(polynomial, term)
        count += 1
    assert count == 86
    shifted = shift_to_lower_corner(polynomial)
    bound = shifted.get((), F(0))
    positive = 0
    widths = [hi - lo for lo, hi in BOX]
    for exponent, coefficient in shifted.items():
        if exponent and coefficient > 0:
            positive += 1
            for i in exponent:
                coefficient *= widths[i]
            bound += coefficient
    assert bound == -F(1330931547, 10**13)
    assert bound < 0
    print(f"PASS: {count} fixed terms, {len(shifted)} expanded monomials, "
          f"{positive} positive nonconstant terms; upper bound {bound}")
    return bound


if __name__ == "__main__":
    verify()
