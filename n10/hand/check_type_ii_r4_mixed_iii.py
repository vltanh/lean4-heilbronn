"""Exact fixed-cubic verification for TYPE_II_R4_MIXED_III.md.

All factors and table entries are reconstructed from the printed proof.
No optimizer, numerical search, or recursive subdivision is used.
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


def determinant(a, b, c):
    return subtract(multiply(subtract(b[0], a[0]), subtract(c[1], a[1])),
                    multiply(subtract(b[1], a[1]), subtract(c[0], a[0])))


S = F(93, 1000)
BOX = [
    (F(103, 1000), F(152, 1000)),
    (F(15, 100), F(39, 100)),
    (F(475, 1000), F(685, 1000)),
    (F(0), F(35, 1000)),
    (F(951, 1000), F(1)),
    (F(165, 1000), F(296, 1000)),
    (F(798, 1000), F(889, 1000)),
    (F(165, 1000), F(6, 10)),
    (F(33, 100), F(666, 1000)),
    (F(165, 1000), F(555, 1000)),
]
VARIABLES = [variable(i) for i in range(10)]
b, lam, a, k, c, d, p, y, u, v = VARIABLES
one, zero = constant(1), {}
POINTS = {
    "D": (zero, one), "C": (one, one), "E": (zero, lam), "B": (b, zero),
    "H": (a, k), "F": (c, d), "P": (p, y), "Q": (u, v),
}
FACTORS = {}
for name in ["-BCQ", "-CFP", "-DFQ", "-DPQ", "+BHF", "+HFP", "+BPQ",
             "+FPQ", "+DFP", "+DEB", "+EBH", "+EPQ", "-EPQ"]:
    sign = 1 if name[0] == "+" else -1
    FACTORS[name] = add(scale(determinant(*(POINTS[ch] for ch in name[1:])), sign),
                        constant(-S))
FACTORS["OCHF"] = add(determinant(POINTS["C"], POINTS["H"], POINTS["F"]),
                       constant(-3 * S))
for i, (lower, upper) in enumerate(BOX):
    FACTORS[f"L{2 * i}"] = subtract(VARIABLES[i], constant(lower))
    FACTORS[f"L{2 * i + 1}"] = subtract(constant(upper), VARIABLES[i])
FACTORS["L20"] = add(p, scale(u, -1), constant(-F(19, 100)))
FACTORS["L21"] = constant(1 - S)
for index, coordinate in [(22, k), (23, d), (24, y), (25, v), (26, lam)]:
    FACTORS[f"L{index}"] = subtract(constant(1 - S), coordinate)

# Exactly the two fixed integer tables printed in the manuscript.
TABLES = {
    1: """
1 L1*L10
5 L2*L5
15 L2*L20
2 L5*L10
6 L9*L14
7 L9*L19
4 L9*L25
20 L13*L18
16 L0*L14*L19
7 L0*L19*L23
1 -BCQ
17 -BCQ*L14
7 -BCQ*L23
1 -BCQ*L26
5 -CFP*L16
15 -CFP*L18
15 -DFQ*L15
1 -DPQ*L2
15 -DPQ*L10
1 +BHF
19 +FPQ
6 +DFP*L16
4 +DEB*L14
5 +DEB*L22
1 +DEB*L25
5 +EBH
17 +EPQ
1 OCHF
""",
    -1: """
13 L1*L3
9 L1*L14
2 L5*L10
2 L6*L13
12 L13*L18
5 L1*L3*L22
14 L1*L19*L24
1 L1*L19*L25
1 L3*L20*L25
2 L3*L20*L26
8 -BCQ
15 -BCQ*L14
3 -CFP
3 -CFP*L1
3 -CFP*L4
13 -CFP*L18
11 -DPQ*L3
3 +BHF
3 +HFP
21 +BPQ
2 +BPQ*L25
13 +BPQ*L26
1 +FPQ*L18
3 +DFP*L1
3 +DFP*L4
12 +DFP*L18
3 +DEB
13 +DEB*L18
5 +DEB*L22
14 +DEB*L24
12 -EPQ
1 -EPQ*L25
2 -EPQ*L26
""",
}


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
    expected = {1: -F(2041503, 10**9), -1: -F(200391, 200000000)}
    counts = {1: 28, -1: 33}
    widths = [hi - lo for lo, hi in BOX]
    results = []
    for sign, table in TABLES.items():
        polynomial = {}
        count = 0
        for row in table.strip().splitlines():
            weight_text, product_text = row.split()
            weight = int(weight_text)
            assert 1 <= weight <= 21
            term = constant(weight)
            for factor in product_text.split("*"):
                term = multiply(term, FACTORS[factor])
            assert max(map(len, term), default=0) <= 3
            polynomial = add(polynomial, term)
            count += 1
        assert count == counts[sign]
        shifted = shift_to_lower_corner(polynomial)
        bound = shifted.get((), F(0))
        positive = 0
        for exponent, coefficient in shifted.items():
            if exponent and coefficient > 0:
                positive += 1
                for i in exponent:
                    coefficient *= widths[i]
                bound += coefficient
        assert bound == expected[sign]
        assert bound < 0
        print(f"PASS EPQ {sign:+}: {count} fixed terms, {len(shifted)} expanded "
              f"monomials, {positive} positive nonconstant terms; upper bound {bound}")
        results.append(bound)
    return results


if __name__ == "__main__":
    verify()
