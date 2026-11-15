"""Exact fixed cubic certificates for the one-lower, single-top-cap hexagon.

This file uses rational arithmetic only.  It neither runs an optimizer nor
subdivides a continuous domain.  The finite radial-word cover is reconstructed
independently of the certificate data.
"""
from fractions import Fraction as F
from itertools import combinations, combinations_with_replacement, product
import json
from pathlib import Path

VARIABLES = 'h c d f g k lx ly px py qx qy'.split()
S, RHO = F(8, 73), F(49, 60)


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


def area(P, Q, R):
    return sub(mul(sub(Q[0], P[0]), sub(R[1], P[1])),
               mul(sub(Q[1], P[1]), sub(R[0], P[0])))


h, c, d, f, g, k, lx, ly, px, py, qx, qy = [
    {(i,): F(1)} for i in range(12)]
ZERO, ONE = const(0), const(1)
FACTORS = [
    sub(h, const(3*S)), sub(c, const(3*S)), sub(ONE, h), sub(ONE, c),
    sub(d, const(S)), sub(const(F(57, 65)), d),
    sub(f, const(S)), sub(const(F(67, 100)), f),
    sub(h, d), sub(c, f), sub(d, f),
    sub(sub(g, f), const(S)), sub(sub(k, d), const(S)),
    sub(ONE, g), sub(ONE, k), sub(lx, const(S)), sub(ly, const(S)),
    sub(sub(c, lx), const(2*S)), sub(sub(h, ly), const(2*S)),
    sub(sub(sub(ONE, lx), ly), const(S)),
]
for coordinate in (px, py, qx, qy):
    FACTORS.extend((sub(coordinate, const(S)), sub(const(1-S), coordinate)))
VERTICES = [(ZERO, ZERO), (c, ZERO), (ONE, d), (g, k), (f, ONE),
            (ZERO, h), (lx, ly), (px, py), (qx, qy)]
TRIPLES = list(combinations(range(9), 3))
AREAS = {t: area(*(VERTICES[i] for i in t)) for t in TRIPLES}
W = sub(ONE, mul(sub(h, d), sub(c, f)))


def sign(word, i, j):
    return ((j-i) % 6) <= word[i]


def inside(word, triangle):
    return all(sign(word, triangle[i], triangle[(i+1) % 3]) for i in range(3))


WORDS = [r for r in product(range(1, 5), repeat=6)
         if all((j <= r[i]) == (6-j > r[(i+j) % 6])
                for i in range(6) for j in range(1, 6))]
LOWER = [r for r in WORDS if inside(r, (0, 1, 5))]
UPPER = [r for r in WORDS
         if all(sign(r, i, j) for i, j in ((5, 1), (1, 2), (2, 4), (4, 5)))]


def candidate_cases():
    out = []
    for i, L in enumerate(LOWER):
        for j, P in enumerate(UPPER):
            for ell in range(j, len(UPPER)):
                Q = UPPER[ell]
                if (sign(P, 5, 2), sign(P, 1, 4)) == (sign(Q, 5, 2), sign(Q, 1, 4)):
                    continue
                if any(sum(inside(r, t) for r in (L, P, Q)) > 2
                       for t in combinations(range(6), 3)):
                    continue
                if any(sum(inside(r, t) for r in (L, P, Q)) > 1
                       for t in ((1, 2, 3), (3, 4, 5), (0, 4, 5), (2, 4, 5))):
                    continue
                out.append((i, j, ell))
    return out


CASES = candidate_cases()


def upper_pair_signs(P, Q):
    pHD, qHD = (1 if sign(r, 5, 2) else -1 for r in (P, Q))
    pCF, qCF = (1 if sign(r, 1, 4) else -1 for r in (P, Q))
    assert (pHD, pCF) != (qHD, qCF)
    if pHD != qHD and pCF != qCF:
        return {5: -pHD, 2: pHD, 1: -pCF, 4: pCF}
    if pHD == qHD:
        isolated = 4 if pHD > 0 else 1
        side = pCF if isolated == 4 else -pCF
    else:
        isolated = 5 if pCF > 0 else 2
        side = -pHD if isolated == 5 else pHD
    return {v: side if v == isolated else -side for v in (1, 2, 4, 5)}


def conflicting(case):
    _, j, ell = case
    P, Q = UPPER[j], UPPER[ell]
    return any(P[v] != Q[v] and sg != (1 if P[v] < Q[v] else -1)
               for v, sg in upper_pair_signs(P, Q).items())


def cells():
    out = []
    for case in CASES:
        if conflicting(case):
            continue
        out.extend((case, branch) for branch in (range(4) if case == (0, 8, 10) else (-1,)))
    return out


def cost_specs(case, branch):
    """Each entry is (actual-triangle indices, sign, lower area bound).

    The empty indices denote the upper quadrilateral area, not a triangle.
    """
    i, j, ell = case
    wr = LOWER[i], UPPER[j], UPPER[ell]
    out = [((), 1, 8*S)]
    for t in TRIPLES:
        if t[2] < 6:
            count = sum(inside(r, t) for r in wr)
            assert count <= 2
            out.append((t, 1, (S, 3*S, RHO)[count]))
        elif t[1] < 6:
            sg = 1 if sign(wr[t[2]-6], t[0], t[1]) else -1
            out.append((t, sg, S))
    for a, b in combinations(range(3), 2):
        forced = upper_pair_signs(wr[a], wr[b]) if (a, b) == (1, 2) else {}
        for v in range(6):
            sg = forced.get(v)
            if wr[a][v] != wr[b][v]:
                radial = 1 if wr[a][v] < wr[b][v] else -1
                assert sg is None or sg == radial
                sg = radial
            if sg is not None:
                out.append(((v, a+6, b+6), sg, S))
    if case == (0, 8, 10):
        assert branch in range(4)
        for v, bit in ((3, 0), (4, 1)):
            out.append(((v, 6, 7), 1 if branch & (1 << bit) else -1, S))
    else:
        assert branch == -1
    return out


def costs(case, branch):
    return [sub(scale(AREAS[t] if t else W, sg), const(bound))
            for t, sg, bound in cost_specs(case, branch)]


def residual(cert):
    qs = costs(tuple(cert['case']), cert['branch'])
    out = {}
    for term in cert['terms']:
        if term[0] == 'f':
            _, indices, weight = term
            assert 1 <= len(indices) <= 3 and indices == sorted(indices)
            assert all(type(i) is int and 0 <= i < 28 for i in indices)
            p = const(1)
            for index in indices:
                p = mul(p, FACTORS[index])
        else:
            assert term[0] == 'q'
            _, qindex, factor, weight = term
            assert type(qindex) is int and 0 <= qindex < len(qs)
            assert type(factor) is int and -1 <= factor < 28
            p = qs[qindex]
            if factor != -1:
                p = mul(p, FACTORS[factor])
        assert type(weight) is int and weight > 0
        out = add(out, scale(p, F(weight, cert['scale'])))
    assert all(len(m) <= 3 for m in out)
    return out


def cube_upper(p):
    return p.get((), F(0)) + sum((max(c, F(0)) for m, c in p.items() if m), F(0))


def applicable(cert, target):
    source = cost_specs(tuple(cert['case']), cert['branch'])
    target_costs = {(t, sg): bound for t, sg, bound in cost_specs(*target)}
    used = {term[1] for term in cert['terms'] if term[0] == 'q'}
    return all((source[i][0], source[i][1]) in target_costs
               and target_costs[source[i][0], source[i][1]] >= source[i][2]
               for i in used)


def verify():
    # Rational comparisons for 8/73 < 2 A0 and rho < (4+2 sqrt(3))s.
    assert 65 * 219**2 > 1765**2
    assert 3 * 11**2 > 19**2 and F(82, 11)*S > RHO
    assert S > F(7, 64) and S > F(1089, 10000)
    assert 1+S-S/(1-RHO) == F(411, 803) < RHO
    assert 1-3*S < RHO and 1-F(7, 3)*S < RHO
    assert 1-S/(1-S) == F(57, 65)
    # The two positive projection identities used for all upper coordinates.
    for index, x, y in ((7, px, py), (8, qx, qy)):
        left = add(mul(sub(ONE, f), AREAS[(1, 2, index)]),
                   mul(sub(ONE, c), AREAS[(2, 4, index)]))
        assert left == mul(AREAS[(1, 2, 4)], sub(ONE, x))
        left = add(mul(sub(ONE, d), AREAS[(4, 5, index)]),
                   mul(sub(ONE, h), AREAS[(2, 4, index)]))
        assert left == mul(AREAS[(2, 4, 5)], sub(ONE, y))
    data = json.loads(Path(__file__).with_name('c1_one_lower_top_cap_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES
    assert data['vertices'] == ['O', 'C', 'D', 'X', 'F', 'H', 'L', 'P', 'Q']
    assert len(WORDS) == 26 and len(LOWER) == 4 and len(UPPER) == 18
    assert len(CASES) == 228 and sum(conflicting(case) for case in CASES) == 26
    expected = set(cells())
    assert len(expected) == 205
    covered = set()
    seen = set()
    total = 0
    worst = None
    for cert in data['certificates']:
        cell = (tuple(cert['case']), cert['branch'])
        assert cell in expected and cell not in seen
        seen.add(cell)
        assert type(cert['scale']) is int and cert['scale'] > 0
        bound = cube_upper(residual(cert))
        assert bound == F(cert['upper_bound']) and bound <= -F(3, 4), (cell, bound)
        applies = {target for target in expected if applicable(cert, target)}
        assert cell in applies
        covered |= applies
        total += len(cert['terms'])
        worst = bound if worst is None else max(worst, bound)
        print(f'PASS: {cell}, {len(cert["terms"])} terms, applicable to {len(applies)} cells')
    assert covered == expected, expected-covered
    assert len(seen) == 98 and total == 9677
    assert worst == -F(6141896482601, 6214313164800)
    print(f'PASS: all 205 cells covered by {len(seen)} fixed cubic certificates, {total} positive terms')
    print(f'Largest exact cube upper bound: {worst}')


if __name__ == '__main__':
    verify()
