"""Verify fixed cubic inequalities for the 28 non-R1/non-R3 exterior words.

This verifier uses only integer/rational arithmetic. It does not run an
optimizer, subdivide a domain, or import numerical search results.
"""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement
import json
from pathlib import Path

VARIABLES = 'a h b c d e f g k x y'.split()
S = F(7, 64)


def const(c):
    return {(): F(c)} if c else {}


def add(*polys):
    out = {}
    for p in polys:
        for m, c in p.items():
            out[m] = out.get(m, F(0)) + c
    return {m: c for m, c in out.items() if c}


def scale(p, c):
    return {m: F(c) * v for m, v in p.items() if c * v}


def sub(p, q):
    return add(p, scale(q, -1))


def mul(p, q):
    out = {}
    for m, c in p.items():
        for n, d in q.items():
            key = tuple(sorted(m + n))
            out[key] = out.get(key, F(0)) + c * d
    return {m: c for m, c in out.items() if c}


def product(polys):
    out = const(1)
    for p in polys:
        out = mul(out, p)
    return out


def area(P, Q, R):
    return sub(mul(sub(Q[0], P[0]), sub(R[1], P[1])),
               mul(sub(Q[1], P[1]), sub(R[0], P[0])))


a, h, b, c, d, e, f, g, k, x, y = [{(i,): F(1)} for i in range(11)]
FACTORS = [
    sub(a, const(F(5, 32))), sub(h, a), sub(k, h), sub(const(1), k),
    sub(d, const(F(5, 32))), sub(e, d), sub(sub(k, e), const(F(1, 8))),
    sub(b, const(F(3, 20))), sub(f, b), sub(c, f),
    sub(const(F(27, 32)), c), sub(sub(g, f), const(F(9, 40))),
    sub(const(F(27, 32)), g), sub(const(F(1, 2)), f),
    sub(sub(x, b), const(S)), sub(const(F(3, 4)), x),
    sub(y, const(F(17, 64))), sub(const(F(49, 64)), y),
    sub(const(F(7, 8)), h), sub(const(F(27, 32)), e),
    sub(h, const(F(33, 64))), sub(e, const(F(33, 64))),
    sub(sub(k, y), const(S)),
]
ZERO, ONE = const(0), const(1)
VERTICES = [(ZERO, a), (b, ZERO), (c, ZERO), (ONE, d), (ONE, e),
            (g, k), (f, ONE), (ZERO, h), (x, y)]
TRIPLES = list(combinations(range(9), 3))
AREAS = [area(*(VERTICES[i] for i in ids)) for ids in TRIPLES]
BLOCKS = [(3, 2, 5, 4), (3, 3, 4, 4), (3, 4, 4, 3),
          (4, 3, 3, 4), (4, 4, 3, 3), (5, 4, 3, 2)]


def word_for_blocks(row, col):
    p, q = BLOCKS[row - 1], BLOCKS[col - 1]
    return p[:2] + q[:2] + p[2:] + q[2:]


def orbit(word):
    return {tuple(word[(i + 2*r) % 8] for i in range(8)) for r in range(4)} | {
        tuple(7 - word[(1 - i + 2*r) % 8] for i in range(8)) for r in range(4)}


def costs(word):
    out = []
    for (i, j, ell), p in zip(TRIPLES, AREAS):
        sign = 1 if ell < 8 or j - i <= word[i] else -1
        out.append(sub(scale(p, sign), const(S)))
    return out


def residual(cert):
    word = tuple(cert['word'])
    qs = costs(word)
    out = {}
    for term in cert['terms']:
        if term[0] == 'f':
            _, indices, weight = term
            assert 1 <= len(indices) <= 3
            assert indices == sorted(indices)
            assert all(type(i) is int and 0 <= i < 23 for i in indices)
            p = product(FACTORS[i] for i in indices)
        else:
            assert term[0] == 'q'
            _, triangle, factor, weight = term
            assert type(triangle) is int and 0 <= triangle < 84
            assert type(factor) is int and -1 <= factor < 23
            p = qs[triangle]
            if factor != -1:
                p = mul(p, FACTORS[factor])
        assert type(weight) is int and weight > 0
        out = add(out, scale(p, F(weight, cert['scale'])))
    assert all(len(m) <= 3 for m in out)
    return out


def cube_upper(p):
    """Every nonconstant monomial lies in [0,1] on the unit cube."""
    return p.get((), F(0)) + sum((max(c, F(0)) for m, c in p.items() if m), F(0))


def verify():
    data = json.loads(Path(__file__).with_name('seven_boundary_exterior_certificates.json').read_text())
    assert data['version'] == 1
    assert data['variables'] == VARIABLES
    assert data['vertices'] == ['A', 'B', 'C', 'D', 'E', 'X', 'F', 'H', 'P']
    r1 = orbit((3, 2, 3, 2, 5, 4, 5, 4))
    r3 = orbit((3, 2, 3, 4, 5, 4, 4, 3))
    assert len(r1) == len(r3) == 4 and not r1 & r3
    all_words = {word_for_blocks(i, j) for i in range(1, 7) for j in range(1, 7)}
    expected = all_words - r1 - r3
    assert len(all_words) == 36 and len(expected) == 28
    seen = set()
    total = 0
    worst = None
    for cert in data['certificates']:
        word = tuple(cert['word'])
        assert cert['scale'] == 4096
        assert word == word_for_blocks(*cert['blocks'])
        assert word in expected and word not in seen
        seen.add(word)
        p = residual(cert)
        bound = cube_upper(p)
        assert bound == F(cert['upper_bound'])
        assert bound <= -F(3, 4), (cert['blocks'], bound)
        total += len(cert['terms'])
        worst = bound if worst is None else max(worst, bound)
        print(f"PASS: blocks {cert['blocks']}, {len(cert['terms'])} positive terms, exact upper bound <= -3/4")
    assert seen == expected
    print(f"PASS: all 28 remaining exterior words, {total} positive integer-weighted terms")
    print(f"Largest exact residual bound: {worst}")


if __name__ == '__main__':
    verify()
