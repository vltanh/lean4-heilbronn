"""Twelve exact cubic inequalities for all one-lower C1 eight-vertex hulls."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations, product
import json
from pathlib import Path
from check_c1_one_lower_top_cap import const, add, sub, scale, mul, area, cube_upper

S = F(8, 73)
VARIABLES = 'h c d f r_x r_y x_x x_y y_x y_y l_x l_y'.split()
h, c, d, f, rx, ry, xx, xy, yx, yy, lx, ly = [
    {(i,): F(1)} for i in range(12)]
ZERO, ONE = const(0), const(1)
HULLS = {
    'one_each': ['O', 'C', 'R', 'D', 'X', 'F', 'Y', 'H', 'L'],
    'two_top': ['O', 'C', 'R', 'D', 'X', 'Y', 'F', 'H', 'L'],
}
POINTS = {
    'one_each': [(ZERO, ZERO), (c, ZERO), (rx, ry), (ONE, d),
                 (xx, xy), (f, ONE), (yx, yy), (ZERO, h), (lx, ly)],
    'two_top': [(ZERO, ZERO), (c, ZERO), (rx, ry), (ONE, d),
                (xx, xy), (yx, yy), (f, ONE), (ZERO, h), (lx, ly)],
}
FACTORS = {
    'one_each': [
        sub(h, const(4*S)), sub(const(F(6, 7)), h),
        sub(c, const(4*S)), sub(const(F(6, 7)), c),
        sub(d, const(4*S)), sub(h, d), sub(f, const(4*S)), sub(c, f), sub(d, f),
        sub(sub(rx, c), const(7*S/6)), sub(ONE, rx), sub(ry, const(7*S/6)),
        sub(sub(d, ry), const(F(8, 41))), sub(sub(xx, f), const(F(8, 41))),
        sub(sub(xy, d), const(F(8, 41))), sub(ONE, xx), sub(ONE, xy),
        sub(yx, const(7*S/6)), sub(sub(f, yx), const(F(8, 41))),
        sub(sub(yy, h), const(7*S/6)), sub(ONE, yy),
        sub(lx, const(7*S/6)), sub(ly, const(7*S/6)),
        sub(sub(c, lx), const(7*S/3)), sub(sub(h, ly), const(7*S/3)),
        sub(sub(sub(ONE, lx), ly), const(S)),
    ],
    'two_top': [
        sub(h, const(48*S/11)), sub(ONE, h), sub(c, const(3*S)),
        sub(const(F(11, 16)), c), sub(d, const(4*S)), sub(const(F(33, 65)), d),
        sub(f, const(S)), sub(const(F(17, 50)), f), sub(h, d), sub(c, f),
        sub(sub(rx, c), const(65*S/33)), sub(ONE, rx), sub(ry, const(16*S/11)),
        sub(sub(d, ry), const(F(8, 49))), sub(sub(xx, f), const(F(8, 41))),
        sub(ONE, xx), sub(sub(xy, d), const(F(8, 65))), sub(ONE, xy),
        sub(sub(yx, f), const(F(8, 41))), sub(ONE, yx),
        sub(sub(yy, d), const(F(8, 65))), sub(ONE, yy),
        sub(sub(xx, yx), const(S)), sub(sub(yy, xy), const(S)),
        sub(lx, const(S)), sub(ly, const(16*S/11)),
        sub(sub(c, lx), const(2*S)), sub(sub(h, ly), const(32*S/11)),
        sub(sub(sub(ONE, lx), ly), const(S)),
    ],
}
TRIPLES = list(combinations(range(9), 3))
AREAS = {mode: [area(*(points[i] for i in triple)) for triple in TRIPLES]
         for mode, points in POINTS.items()}


@lru_cache(maxsize=1)
def words():
    ranges = [range(1, 7) for _ in range(8)]
    ranges[1] = (6,)
    return tuple(r for r in product(*ranges)
                 if all((j <= r[i]) == (8-j > r[(i+j) % 8])
                        for i in range(8) for j in range(1, 8)))


def positive(word, i, j):
    return (j-i) % 8 <= word[i]


def inside(word, triple):
    return all(positive(word, triple[i], triple[(i+1) % 3]) for i in range(3))


def costs(mode, word):
    out = []
    for triple, polynomial in zip(TRIPLES, AREAS[mode]):
        if triple[2] < 8:
            sg, bound = 1, 3*S if inside(word, triple) else S
        else:
            sg = 1 if positive(word, triple[0], triple[1]) else -1
            bound = S
        out.append(sub(scale(polynomial, sg), const(bound)))
    return out


def residual(cert):
    mode, word = cert['mode'], tuple(cert['word'])
    factors, qs = FACTORS[mode], costs(mode, word)
    out = {}
    for term in cert['terms']:
        if term[0] == 'f':
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            assert all(type(i) is int and 0 <= i < len(factors) for i in indices)
            polynomial = const(1)
            for index in indices:
                polynomial = mul(polynomial, factors[index])
        else:
            assert term[0] == 'q'
            _, qindex, factor, weight = term
            assert type(qindex) is int and 0 <= qindex < 84
            assert type(factor) is int and -1 <= factor < len(factors)
            polynomial = qs[qindex]
            if factor != -1:
                polynomial = mul(polynomial, factors[factor])
        assert type(weight) is int and weight > 0
        out = add(out, scale(polynomial, F(weight, cert['scale'])))
    assert all(len(m) <= 3 for m in out)
    return out


def verify():
    assert S/(1-S) == F(8, 65) > F(6, 49)
    assert S/(1-4*S) == F(8, 41)
    assert S/(1-3*S) == F(8, 49)
    assert 4*S > F(1089, 2500) and 1-4*S/(1-S) == F(33, 65)
    assert 65*S/33 > F(55, 256) and 3*S/F(11, 16) == 48*S/11
    X, Y, D, Fpoint = POINTS['two_top'][4], POINTS['two_top'][5], POINTS['two_top'][3], POINTS['two_top'][6]
    assert area(D, X, Y) == sub(mul(sub(xx, yx), sub(xy, d)),
                                mul(sub(ONE, xx), sub(yy, xy)))
    assert area(Fpoint, X, Y) == sub(mul(sub(yy, xy), sub(yx, f)),
                                     mul(sub(ONE, yy), sub(xx, yx)))
    ww = words()
    assert len(ww) == 6
    assert ww == ((1,6,6,5,4,3,2,1), (2,6,5,5,4,3,2,1),
                  (3,6,5,4,4,3,2,1), (4,6,5,4,3,3,2,1),
                  (5,6,5,4,3,2,2,1), (6,6,5,4,3,2,1,1))
    data = json.loads(Path(__file__).with_name('c1_one_lower_eight_hull_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES and data['hulls'] == HULLS
    expected = {(mode, word) for mode in HULLS for word in ww}
    seen = set()
    total = 0
    worst = None
    for cert in data['certificates']:
        mode, word = cert['mode'], tuple(cert['word'])
        assert (mode, word) in expected and (mode, word) not in seen
        seen.add((mode, word))
        assert cert['scale'] == 4096
        assert type(cert['word_index']) is int and ww[cert['word_index']] == word
        bound = cube_upper(residual(cert))
        assert bound == F(cert['upper_bound']) and bound <= -F(3, 4)
        total += len(cert['terms'])
        worst = bound if worst is None else max(worst, bound)
        print(f'PASS: {mode}, word {cert["word_index"]}, {len(cert["terms"])} positive terms')
    assert seen == expected
    assert len(data['certificates']) == 12 and total == 1488
    assert worst == -F(24902965599574904570203, 25151865159450302873600)
    print(f'PASS: both eight-hull patterns, all twelve certificates, {total} positive terms')
    print(f'Largest exact cube upper bound: {worst}')


if __name__ == '__main__':
    verify()
