"""Exact polynomials for N6-06: two opposite-cap points.

This module uses only the Python standard library.  Coordinates, ordered
factor prefixes, radial words, and cost indices are reconstructed here;
the coefficient file supplies only fixed rational positive combinations.
"""

from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product


S = F(7, 64)
RHO = F(13, 16)
THRESHOLDS = (S, F(8, 73), F(79, 720))
VARIABLES = {
    "convex": "a h b c d f ex ey gx gy ox oy".split(),
    "triangle": "a h b c d f x y px py qx qy".split(),
}
LABELS = {
    "convex": "A B C D E G F H O".split(),
    "triangle": "A B C D X F H P Q".split(),
}
TRIPLES = tuple(combinations(range(9), 3))
SHARP = (3, 2, 3, 4, 5, 4, 4, 3)
SHARP_BRANCHES = ("Llow", "Lhigh", "Mlow", "glarge",
                  "blarge", "csmall", "klow")


def const(value):
    return {(): F(value)} if value else {}


def add(*polynomials):
    result = {}
    for polynomial in polynomials:
        for monomial, coefficient in polynomial.items():
            result[monomial] = result.get(monomial, F(0)) + coefficient
    return {monomial: coefficient for monomial, coefficient in result.items()
            if coefficient}


def scale(polynomial, coefficient):
    return {monomial: value * coefficient
            for monomial, value in polynomial.items() if value * coefficient}


def sub(left, right):
    return add(left, scale(right, -1))


def mul(left, right):
    result = {}
    for lm, lc in left.items():
        for rm, rc in right.items():
            monomial = tuple(sorted(lm + rm))
            result[monomial] = result.get(monomial, F(0)) + lc * rc
    return {monomial: coefficient for monomial, coefficient in result.items()
            if coefficient}


def area(first, second, third):
    return sub(mul(sub(second[0], first[0]), sub(third[1], first[1])),
               mul(sub(second[1], first[1]), sub(third[0], first[0])))


def cube_upper(polynomial):
    return polynomial.get((), F(0)) + sum(
        (coefficient for monomial, coefficient in polynomial.items()
         if monomial and coefficient > 0), F(0))


COORDINATES = tuple({(index,): F(1)} for index in range(12))
a, h, b, c, d, f, x, y, px, py, qx, qy = COORDINATES
ZERO, ONE = const(0), const(1)


@lru_cache(maxsize=None)
def vertices(mode):
    assert mode in VARIABLES
    anchors = ((ZERO, a), (b, ZERO), (c, ZERO), (ONE, d))
    if mode == "convex":
        return anchors + ((x, y), (px, py), (f, ONE), (ZERO, h), (qx, qy))
    return anchors + ((x, y), (f, ONE), (ZERO, h), (px, py), (qx, qy))


@lru_cache(maxsize=None)
def areas(mode):
    points = vertices(mode)
    result = {triple: area(*(points[i] for i in triple)) for triple in TRIPLES}
    result["HC"] = mul(h, c)
    result["delta"] = mul(sub(ONE, d), sub(ONE, f))
    result["W"] = sub(ONE, mul(sub(h, d), sub(c, f)))
    return result


@lru_cache(maxsize=None)
def common_factors(mode):
    factors = [
        sub(a, const(F(1, 8))), sub(b, const(F(1, 8))),
        sub(h, const(4 * S)), sub(c, const(4 * S)),
        sub(ONE, h), sub(ONE, c), sub(d, a), sub(h, d),
        sub(f, b), sub(c, f), sub(d, f),
        sub(sub(h, a), const(S)), sub(sub(c, b), const(S)),
    ]
    if mode == "convex":
        # The first 29 factors are the original prefix; append, never insert.
        factors.extend((sub(const(1 - S), d), sub(const(1 - S), f)))
        for xx, yy in ((x, y), (px, py)):
            factors.extend((sub(ONE, xx), sub(ONE, yy),
                            sub(sub(xx, f), const(S)),
                            sub(sub(yy, d), const(S))))
        factors.extend((sub(x, px), sub(py, y)))
        for coordinate in (qx, qy):
            factors.extend((sub(coordinate, const(S)),
                            sub(const(1 - S), coordinate)))
        assert len(factors) == 29
        factors.extend((sub(const(F(1, 2)), d), sub(const(F(11, 32)), f),
                        sub(sub(x, px), const(F(1, 8))),
                        sub(sub(py, y), const(F(1, 8)))))
        for xx, yy in ((x, y), (px, py)):
            factors.extend((sub(sub(xx, f), const(F(1, 8))),
                            sub(sub(yy, d), const(F(1, 8)))))
        assert len(factors) == 37
    else:
        assert mode == "triangle"
        # The first 27 factors are the original prefix.
        factors.extend((sub(const(F(5, 8)), d), sub(const(F(7, 16)), f),
                        sub(ONE, x), sub(ONE, y),
                        sub(sub(x, f), const(3 * S)),
                        sub(sub(y, d), const(3 * S)),
                        sub(ONE, px), sub(ONE, py),
                        sub(sub(px, f), const(S)),
                        sub(sub(py, d), const(S))))
        for coordinate in (qx, qy):
            factors.extend((sub(coordinate, const(S)),
                            sub(const(1 - S), coordinate)))
        assert len(factors) == 27
        factors.extend((sub(sub(x, f), const(F(3, 8))),
                        sub(sub(y, d), const(F(3, 8))),
                        sub(sub(px, f), const(F(1, 8))),
                        sub(sub(py, d), const(F(1, 8))),
                        sub(const(F(7, 8)), px), sub(const(F(7, 8)), py)))
        assert len(factors) == 33
    return tuple(factors)


def sharp_factor(branch):
    assert branch in SHARP_BRANCHES
    return {
        "Llow": sub(const(F(11, 20)), sub(h, a)),
        "Lhigh": sub(sub(h, a), const(F(2, 3))),
        "Mlow": sub(const(F(11, 20)), sub(px, f)),
        "glarge": sub(f, const(F(1, 4))),
        "blarge": sub(b, const(F(1, 4))),
        "csmall": sub(const(F(2, 3)), c),
        "klow": sub(const(F(6, 7)), py),
    }[branch]


def condition_tuple(conditions):
    result = []
    for coordinate, cut, direction in conditions:
        assert type(coordinate) is int and 0 <= coordinate < 12
        assert type(direction) is int and direction in (-1, 1)
        cut = F(cut)
        assert 0 < cut < 1
        result.append((coordinate, cut, direction))
    return tuple(result)


def factors(mode, certificate):
    prefix = certificate["factor_prefix"]
    assert type(prefix) is int
    assert prefix in ((29, 37) if mode == "convex" else (27, 33))
    result = list(common_factors(mode)[:prefix])
    branch = certificate.get("branch", "whole")
    if branch != "whole":
        assert mode == "convex" and prefix == 37
        result.append(sharp_factor(branch))
    conditions = condition_tuple(certificate["conditions"])
    if conditions:
        assert branch == "whole" and prefix == len(common_factors(mode))
    for coordinate, cut, direction in conditions:
        result.append(scale(sub(COORDINATES[coordinate], const(cut)), direction))
    return tuple(result)


def radial_sign(word, first, second):
    assert first != second
    return 1 if (second - first) % len(word) <= word[first] else -1


def inside(word, triple):
    return all(radial_sign(word, triple[i], triple[(i + 1) % 3]) > 0
               for i in range(3))


@lru_cache(maxsize=None)
def radial_words(size):
    assert size in (7, 8)
    return tuple(word for word in product(range(1, size - 1), repeat=size)
                 if all(radial_sign(word, i, j) == -radial_sign(word, j, i)
                        for i, j in combinations(range(size), 2)))


@lru_cache(maxsize=1)
def convex_words():
    return tuple(word for word in radial_words(8) if word[3] >= 3)


@lru_cache(maxsize=1)
def triangle_cases():
    cap = tuple(word for word in radial_words(7) if word[3] == 1)
    inner = tuple(word for word in radial_words(7) if word[3] >= 2)
    return tuple(("lower" if second[6] < 3 else "upper", first, second)
                 for first, second in product(cap, inner))


def tuple_case(case):
    return case[0], tuple(case[1]), tuple(case[2])


def oriented(signs, triple):
    key = tuple(sorted(triple))
    if key not in signs:
        return None
    inversions = sum(triple[i] > triple[j]
                     for i in range(3) for j in range(i + 1, 3))
    return signs[key] * (-1) ** inversions


def known_signs(case, extra=()):
    _, first, second = case
    result = {}
    for triple in TRIPLES:
        i, j, k = triple
        if k < 7:
            result[triple] = 1
        elif j < 7:
            result[triple] = radial_sign(first if k == 7 else second, i, j)
    for vertex in range(7):
        if first[vertex] != second[vertex]:
            result[vertex, 7, 8] = 1 if first[vertex] < second[vertex] else -1
    for vertex, sign in extra:
        assert type(vertex) is int and 0 <= vertex < 7
        assert type(sign) is int and sign in (-1, 1)
        assert (vertex, 7, 8) not in result
        result[vertex, 7, 8] = sign
    return result


@lru_cache(maxsize=None)
def convex_cost_specs(word, threshold=S):
    result = []
    for triple in TRIPLES:
        i, j, k = triple
        sign = 1 if k < 8 else radial_sign(word, i, j)
        bound = 3 * threshold if k < 8 and inside(word, triple) else threshold
        result.append((triple, sign, bound))
    result.extend((("HC", 1, F(7, 11) if word[7] < 3 else 4 * S),
                   ("delta", 1, 2 * S)))
    ears = ((0, 1, 7), (0, 1, 2), (1, 2, 3),
            (2, 3, 6), (3, 6, 7), (0, 6, 7))
    result.extend((triple, -1, -RHO) for triple in ears)
    assert len(result) == 92
    # The stronger cap cost is appended; index 85 retains its old meaning.
    result.append(("delta", 1, 4 * S))
    return tuple(result)


@lru_cache(maxsize=None)
def triangle_cost_specs(case, extra=(), threshold=S):
    signs = known_signs(case, extra)
    result = []
    for triple, sign in sorted(signs.items()):
        count = sum(all(oriented(signs, (triple[i], triple[(i + 1) % 3], vertex))
                        == sign for i in range(3))
                    for vertex in (7, 8) if vertex not in triple)
        result.append((triple, sign, (threshold, 3 * threshold, RHO)[count]))
    result.extend((("W", 1, 4 * S if case[0] == "upper" else 2 * S),
                   ("HC", 1, 4 * S if case[0] == "upper" else F(7, 11)),
                   ("delta", 1, 3 * S)))
    ears = ((0, 1, 6), (0, 1, 2), (1, 2, 3),
            (2, 3, 5), (3, 5, 6), (0, 5, 6))
    result.extend((triple, -1, -RHO) for triple in ears)
    result.append(((3, 4, 5), -1, -F(49, 64)))
    return tuple(result)


def certificate_specs(mode, certificate):
    threshold = F(certificate["threshold"])
    assert threshold in THRESHOLDS
    if mode == "convex":
        return convex_cost_specs(tuple(certificate["word"]), threshold)
    return triangle_cost_specs(tuple_case(certificate["case"]),
                               tuple(map(tuple, certificate["extra"])), threshold)


def residual(mode, certificate):
    affine = factors(mode, certificate)
    determinants = areas(mode)
    specifications = certificate_specs(mode, certificate)
    costs = [sub(scale(determinants[key], sign), const(bound))
             for key, sign, bound in specifications]
    assert certificate["scale"] == 4096
    products = {}
    result = {}
    for term in certificate["terms"]:
        if term[0] == "f":
            assert len(term) == 3
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            assert all(type(index) is int and 0 <= index < len(affine)
                       for index in indices)
            key = tuple(indices)
            if key not in products:
                polynomial = const(1)
                for index in indices:
                    polynomial = mul(polynomial, affine[index])
                products[key] = polynomial
            polynomial = products[key]
        else:
            assert term[0] == "q" and len(term) == 4
            _, cost, factor, weight = term
            assert type(cost) is int and 0 <= cost < len(costs)
            assert type(factor) is int and -1 <= factor < len(affine)
            if mode == "convex" and certificate["factor_prefix"] == 29:
                assert cost < 92
            polynomial = costs[cost] if factor == -1 else mul(costs[cost], affine[factor])
        assert type(weight) is int and weight > 0
        result = add(result, scale(polynomial, F(weight, 4096)))
    assert all(len(monomial) <= 3 and all(0 <= i < 12 for i in monomial)
               for monomial in result)
    return result


def applies(certificate, target):
    """Reuse only nonnegative costs actually used by a triangle certificate."""
    assert certificate["scope"] in ("whole", "sign")
    assert not certificate["conditions"]
    source = certificate_specs("triangle", certificate)
    threshold = F(certificate["threshold"])
    other = {}
    for key, sign, bound in triangle_cost_specs(target[0], target[1], threshold):
        other[key, sign] = max(other.get((key, sign), bound), bound)
    used = {term[1] for term in certificate["terms"] if term[0] == "q"}
    return all((source[i][0], source[i][1]) in other and
               other[source[i][0], source[i][1]] >= source[i][2] for i in used)
