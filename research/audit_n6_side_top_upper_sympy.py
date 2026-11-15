"""Independent symbolic audit of all 87 N6-04 upper certificates.

Reconstructs the factors from the manuscript's formulas, determinants
from 3-by-3 SymPy matrices, radial signs, and containment thresholds.
It imports no production certificate checker or polynomial helper.

Run from any directory with Python and SymPy installed.
"""

from functools import lru_cache
from hashlib import sha256
from itertools import combinations, product
import json
from pathlib import Path

import sympy as sy


ROOT = Path(__file__).resolve().parents[1]
DATA_PATH = ROOT / "hand" / "six_boundary_side_top_upper_certificates.json"
VARIABLE_NAMES = "a h b c d f x y z w r t".split()
VARIABLES = sy.symbols(" ".join(VARIABLE_NAMES))
a, h, b, c, d, f, x, y, z, w, r, t = VARIABLES
S = sy.Rational(7, 64)
THRESHOLDS = (S, sy.Rational(8, 73), sy.Rational(79, 720))
POINTS = ((0, a), (b, 0), (c, 0), (x, y), (1, d),
          (z, w), (f, 1), (0, h), (r, t))
TRIPLES = tuple(combinations(range(9), 3))
BD_WORD = (4, 3, 3, 2, 3, 4, 5, 4)
DF_WORD = (3, 2, 3, 4, 5, 4, 4, 3)
SPLIT_WORD = (4, 4, 4, 4, 3, 3, 3, 3)
DF_BRANCHES = ("left", "low", "df_Llo", "df_Lhi", "df_Mlo", "df_g", "df_c")


def polynomial(expression):
    return sy.Poly(expression, *VARIABLES, domain=sy.QQ)


# Equation (17) of SIX_BOUNDARY_SIDE_TOP_LOWER.md, transcribed independently.
COMMON_FACTORS = tuple(map(polynomial, (
    a - sy.Rational(1, 7), b - sy.Rational(1, 8),
    h - sy.Rational(1, 2), c - 4 * S, 1 - h, 1 - S - c,
    d - a, h - d, f - b, c - f,
    d - sy.Rational(1, 2), sy.Rational(7, 8) - d, 1 - S - f,
    h - a - S, c - b - S,
    x - c - S, 1 - x, y - sy.Rational(1, 7), d - y - sy.Rational(7, 36),
    z - f - 2 * S, w - d - sy.Rational(1, 8), 1 - z, 1 - w,
    r - S, t - S, 1 - S - r, 1 - S - t,
)))
BRANCH_FACTORS = {
    "left": z - x,
    "low": h - w,
    "side_above": y - a,
    "side_below": a - y,
    "df_Llo": sy.Rational(11, 20) - (h - a),
    "df_Lhi": (h - a) - sy.Rational(2, 3),
    "df_Mlo": sy.Rational(11, 20) - (z - f),
    "df_g": f - sy.Rational(1, 4),
    "df_c": sy.Rational(2, 3) - c,
}


@lru_cache(maxsize=None)
def affine_factors(branch):
    if branch == "whole":
        return COMMON_FACTORS
    assert branch in BRANCH_FACTORS
    return COMMON_FACTORS + (polynomial(BRANCH_FACTORS[branch]),)


AREAS = {
    triple: polynomial(sy.Matrix([[POINTS[index][0], POINTS[index][1], 1]
                                  for index in triple]).det())
    for triple in TRIPLES
}


def positive(word, first, second):
    return (second - first) % 8 <= word[first]


def contains(word, triple):
    return all(positive(word, triple[index], triple[(index + 1) % 3])
               for index in range(3))


def upper_words():
    # Separate integer enumeration; no production word list is read.
    return tuple(word for word in product(range(1, 7), repeat=8)
                 if 2 <= word[1] <= 5 and word[2] >= 2 and
                 word[4] >= 2 and word[7] >= 3 and
                 all(positive(word, i, j) != positive(word, j, i)
                     for i, j in combinations(range(8), 2)))


def costs(word, threshold):
    result = []
    for triple in TRIPLES:
        i, j, k = triple
        sign = 1 if k < 8 or positive(word, i, j) else -1
        bound = 3 * threshold if k < 8 and contains(word, triple) else threshold
        result.append(sign * AREAS[triple] - bound)
    # Fixed geometric costs stay at 7/64 for every actual-area threshold.
    result.extend((polynomial(h * c - 4 * S),
                   3 * S - AREAS[0, 1, 7],
                   3 * S - AREAS[1, 2, 3]))
    assert len(result) == 87
    return tuple(result)


@lru_cache(maxsize=None)
def factor_product(branch, indices):
    result = polynomial(1)
    factors = affine_factors(branch)
    for index in indices:
        result *= factors[index]
    return result


def expand_certificate(certificate):
    word = tuple(certificate["word"])
    branch = certificate["branch"]
    threshold = sy.Rational(certificate.get("threshold", "7/64"))
    assert threshold in THRESHOLDS and certificate["scale"] == 4096
    factors = affine_factors(branch)
    quadratics = costs(word, threshold)
    result = polynomial(0)
    for term in certificate["terms"]:
        if term[0] == "f":
            assert len(term) == 3
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            assert all(type(index) is int and 0 <= index < len(factors)
                       for index in indices)
            summand = factor_product(branch, tuple(indices))
        else:
            assert term[0] == "q" and len(term) == 4
            _, cost_index, factor_index, weight = term
            assert type(cost_index) is int and 0 <= cost_index < 87
            assert type(factor_index) is int and -1 <= factor_index < len(factors)
            summand = quadratics[cost_index]
            if factor_index >= 0:
                summand *= factors[factor_index]
        assert type(weight) is int and weight > 0
        result += sy.Rational(weight, 4096) * summand
    assert result.total_degree() <= 3
    upper_bound = result.coeff_monomial(1) + sum(
        coefficient for powers, coefficient in result.terms()
        if any(powers) and coefficient > 0)
    assert upper_bound == sy.Rational(certificate["upper_bound"])
    assert upper_bound <= -sy.Rational(3, 4)
    return result, upper_bound


def oriented_sign(word, triple):
    sorted_triple = tuple(sorted(triple))
    i, j, k = sorted_triple
    inversions = sum(triple[left] > triple[right]
                     for left in range(3) for right in range(left + 1, 3))
    sign = 1 if k < 8 or positive(word, i, j) else -1
    return sign * (-1) ** inversions


def verify():
    content = DATA_PATH.read_bytes()
    data = json.loads(content)
    assert data["version"] == 1 and data["variables"] == VARIABLE_NAMES
    assert data["vertices"] == "A B C X D Y F H Q".split()
    assert len(COMMON_FACTORS) == 27
    for threshold in THRESHOLDS:
        assert (55 + 160 * threshold) ** 2 < 81 * 65
    words = set(upper_words())
    assert len(words) == 79 and {BD_WORD, DF_WORD, SPLIT_WORD} <= words
    expected = {(word, "whole") for word in words - {BD_WORD, DF_WORD, SPLIT_WORD}}
    expected |= {(BD_WORD, branch) for branch in ("left", "low")}
    expected |= {(DF_WORD, branch) for branch in DF_BRANCHES}
    expected |= {(SPLIT_WORD, branch) for branch in ("side_above", "side_below")}
    assert len(expected) == 87
    assert sy.expand(BRANCH_FACTORS["side_above"] + BRANCH_FACTORS["side_below"]) == 0
    seen = set()
    positive_terms = 0
    coefficient_count = 0
    expanded_digest = sha256()
    bounds = []
    for index, certificate in enumerate(data["certificates"]):
        key = (tuple(certificate["word"]), certificate["branch"])
        assert key in expected and key not in seen
        seen.add(key)
        expanded, bound = expand_certificate(certificate)
        bounds.append(bound)
        positive_terms += len(certificate["terms"])
        coefficient_count += len(expanded.terms())
        # A stable receipt for every independently expanded rational coefficient.
        digest_record = [list(key[0]), key[1],
                         [[list(powers), str(coefficient)]
                          for powers, coefficient in expanded.terms()]]
        expanded_digest.update(json.dumps(digest_record, separators=(",", ":")).encode())
        expanded_digest.update(b"\n")
        if (index + 1) % 20 == 0 or index + 1 == len(data["certificates"]):
            print("PASS:", index + 1, "independently expanded certificates", flush=True)
    assert seen == expected
    assert len(data["certificates"]) == 87 and positive_terms == 18308
    worst = max(bounds)
    assert worst == -sy.Rational(353712019499, 360072609792)
    bd_triples = ((2, 3, 1), (2, 3, 4), (2, 0, 1),
                  (5, 6, 7), (0, 1, 7), (0, 6, 7),
                  (2, 5, 8), (5, 1, 8), (3, 8, 6),
                  (0, 4, 8), (8, 4, 7))
    df_triples = ((0, 1, 7), (0, 1, 2), (0, 6, 7),
                  (3, 4, 5), (6, 7, 5), (6, 4, 5),
                  (0, 3, 8), (3, 7, 8), (1, 8, 4),
                  (6, 2, 8), (8, 2, 5))
    assert all(oriented_sign(BD_WORD, triple) == 1 for triple in bd_triples)
    assert all(oriented_sign(DF_WORD, triple) == 1 for triple in df_triples)
    print("INDEPENDENT SYMPY PASS: 79 upper words; 87 certificates;")
    print("27 common factors; 87 costs;", positive_terms, "positive terms;")
    print(coefficient_count, "nonzero expanded coefficients; all bounds <= -3/4")
    print("Largest exact cube upper bound:", worst)
    print("Both sharp maps: all eleven required oriented signs are positive")
    print("Data SHA-256:", sha256(content).hexdigest())
    print("Expanded coefficient SHA-256:", expanded_digest.hexdigest())
    print("SymPy version:", sy.__version__)


if __name__ == "__main__":
    verify()
