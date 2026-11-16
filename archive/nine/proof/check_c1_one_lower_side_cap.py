"""Exact fixed cubic proof for the one-lower, single-side-cap C1 hexagon."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
import json
from pathlib import Path
from check_c1_one_lower_top_cap import (
    const, add, scale, sub, mul, area, cube_upper, WORDS, LOWER, sign, inside)

VARIABLES = 'h c d f g k lx ly px py qx qy'.split()
S, RHO = F(8, 73), F(49, 60)
h, c, d, f, g, k, lx, ly, px, py, qx, qy = [
    {(i,): F(1)} for i in range(12)]
ZERO, ONE = const(0), const(1)
FACTORS = [
    sub(h, const(3*S)), sub(c, const(4*S)), sub(const(F(6, 7)), h), sub(ONE, c),
    sub(d, const(S)), sub(h, d), sub(f, const(4*S)), sub(const(1-S), f),
    sub(c, f), sub(g, const(7*S/6)), sub(sub(f, g), const(F(8, 49))),
    sub(sub(k, h), const(F(8, 65))), sub(ONE, k), sub(const(1-2*S), g),
    sub(k, const(4*S)), sub(lx, const(7*S/6)), sub(ly, const(S)),
    sub(sub(c, lx), const(7*S/3)), sub(sub(h, ly), const(2*S)),
    sub(sub(sub(ONE, lx), ly), const(S)),
    sub(px, const(7*S/6)), sub(const(1-S), px),
    sub(py, const(S)), sub(const(1-S), py),
    sub(qx, const(7*S/6)), sub(const(1-S), qx),
    sub(qy, const(S)), sub(const(1-S), qy),
]
VERTICES = [(ZERO, ZERO), (c, ZERO), (ONE, d), (f, ONE), (g, k),
            (ZERO, h), (lx, ly), (px, py), (qx, qy)]
TRIPLES = list(combinations(range(9), 3))
AREAS = {t: area(*(VERTICES[i] for i in t)) for t in TRIPLES}
W = sub(ONE, mul(sub(h, d), sub(c, f)))
UPPER = [r for r in WORDS
         if all(sign(r, i, j) for i, j in ((5, 1), (1, 2), (2, 3), (3, 5)))]
CAPACITY_ONE = ((0, 3, 5), (1, 2, 3), (3, 4, 5), (0, 4, 5))


def candidate_cases():
    out = []
    for i, L in enumerate(LOWER):
        for j, P in enumerate(UPPER):
            for ell in range(j, len(UPPER)):
                Q = UPPER[ell]
                if (sign(P, 5, 2), sign(P, 1, 3)) == (sign(Q, 5, 2), sign(Q, 1, 3)):
                    continue
                if any(sum(inside(r, t) for r in (L, P, Q)) > 2
                       for t in combinations(range(6), 3)):
                    continue
                if any(sum(inside(r, t) for r in (L, P, Q)) > 1
                       for t in CAPACITY_ONE):
                    continue
                out.append((i, j, ell))
    return out


CASES = candidate_cases()


def upper_pair_signs(P, Q):
    pHD, qHD = (1 if sign(r, 5, 2) else -1 for r in (P, Q))
    pCF, qCF = (1 if sign(r, 1, 3) else -1 for r in (P, Q))
    assert (pHD, pCF) != (qHD, qCF)
    if pHD != qHD and pCF != qCF:
        return {5: -pHD, 2: pHD, 1: -pCF, 3: pCF}
    if pHD == qHD:
        isolated = 3 if pHD > 0 else 1
        side = pCF if isolated == 3 else -pCF
    else:
        isolated = 5 if pCF > 0 else 2
        side = -pHD if isolated == 5 else pHD
    return {v: side if v == isolated else -side for v in (1, 2, 3, 5)}


def conflicting(case):
    _, j, ell = case
    P, Q = UPPER[j], UPPER[ell]
    return any(P[v] != Q[v] and sg != (1 if P[v] < Q[v] else -1)
               for v, sg in upper_pair_signs(P, Q).items())


def cells():
    return [(case, -1) for case in CASES if not conflicting(case)]


def known_signs(case):
    i, j, ell = case
    wr = LOWER[i], UPPER[j], UPPER[ell]
    out = {}
    for t in TRIPLES:
        if t[2] < 6:
            out[t] = 1
        elif t[1] < 6:
            out[t] = 1 if sign(wr[t[2]-6], t[0], t[1]) else -1
    for a, b in combinations(range(3), 2):
        forced = upper_pair_signs(wr[a], wr[b]) if (a, b) == (1, 2) else {}
        for v in range(6):
            sg = forced.get(v)
            if wr[a][v] != wr[b][v]:
                radial = 1 if wr[a][v] < wr[b][v] else -1
                assert sg is None or sg == radial
                sg = radial
            if sg is not None:
                out[(v, a+6, b+6)] = sg
    return out


def oriented(signs, triple):
    key = tuple(sorted(triple))
    if key not in signs:
        return None
    inversions = sum(triple[i] > triple[j] for i in range(3) for j in range(i+1, 3))
    return signs[key] * (-1 if inversions % 2 else 1)


@lru_cache(maxsize=None)
def cost_specs(case, branch):
    assert branch == -1
    signs = known_signs(case)
    out = [((), 1, 8*S)]
    for t, sg in sorted(signs.items()):
        count = sum(all(oriented(signs, (t[i], t[(i+1) % 3], v)) == sg
                        for i in range(3))
                    for v in range(6, 9) if v not in t)
        assert count <= 2
        out.append((t, sg, (S, 3*S, RHO)[count]))
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


def applicable(cert, target):
    source = cost_specs(tuple(cert['case']), cert['branch'])
    target_costs = {(t, sg): bound for t, sg, bound in cost_specs(*target)}
    used = {term[1] for term in cert['terms'] if term[0] == 'q'}
    return all((source[i][0], source[i][1]) in target_costs
               and target_costs[source[i][0], source[i][1]] >= source[i][2]
               for i in used)


def verify():
    assert S/(1-S) == F(8, 65) > F(6, 49)
    assert S/(1-3*S) == F(8, 49) and F(8, 65) > S
    assert F(6, 7)*(1-S) == F(390, 511) < RHO
    assert 1-4*S < RHO and 1-3*S < RHO
    # Positive weighted cap identity: h[HFX]+(1-h)[OHX] = hf(k-h).
    assert add(mul(h, AREAS[(3, 4, 5)]), mul(sub(ONE, h), AREAS[(0, 4, 5)])) == mul(mul(h, f), sub(k, h))
    data = json.loads(Path(__file__).with_name('c1_one_lower_side_cap_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES
    assert data['vertices'] == ['O', 'C', 'D', 'F', 'X', 'H', 'L', 'P', 'Q']
    assert len(WORDS) == 26 and len(LOWER) == 4 and len(UPPER) == 18
    assert len(CASES) == 189 and sum(conflicting(case) for case in CASES) == 36
    expected = set(cells())
    assert len(expected) == 153
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
    assert len(seen) == 70 and total == 4016
    assert worst == -F(170969015277097, 172160375869440)
    print(f'PASS: all 153 cells covered by {len(seen)} fixed cubic certificates, {total} positive terms')
    print(f'Largest exact cube upper bound: {worst}')


if __name__ == '__main__':
    verify()
