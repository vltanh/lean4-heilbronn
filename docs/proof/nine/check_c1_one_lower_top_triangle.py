"""Exact fixed cubic proof for the one-lower C1 hexagon with two top-cap points."""
from fractions import Fraction as F
from functools import lru_cache
from itertools import combinations
import json
from pathlib import Path
from check_c1_one_lower_top_cap import (
    const, add, scale, sub, mul, area, cube_upper, WORDS, LOWER, UPPER, sign, inside)

VARIABLES = 'h c d f g k lx ly px py qx qy'.split()
S, RHO = F(8, 73), F(49, 60)
h, c, d, f, g, k, lx, ly, px, py, qx, qy = [
    {(i,): F(1)} for i in range(12)]
ZERO, ONE = const(0), const(1)
FACTORS = [
    sub(h, const(3*S)), sub(c, const(3*S)), sub(ONE, h), sub(ONE, c),
    sub(d, const(S)), sub(const(F(41, 65)), d),
    sub(f, const(S)), sub(const(F(3, 7)), f),
    sub(h, d), sub(c, f), sub(d, f),
    sub(sub(g, f), const(3*S)), sub(sub(k, d), const(3*S)),
    sub(ONE, g), sub(ONE, k), sub(lx, const(S)), sub(ly, const(S)),
    sub(sub(c, lx), const(2*S)), sub(sub(h, ly), const(2*S)),
    sub(sub(sub(ONE, lx), ly), const(S)),
    sub(sub(px, f), const(F(8, 65))), sub(const(1-S), px),
    sub(sub(py, d), const(F(8, 65))), sub(const(1-S), py),
    sub(qx, const(S)), sub(const(1-S), qx),
    sub(qy, const(S)), sub(const(1-S), qy),
]
VERTICES = [(ZERO, ZERO), (c, ZERO), (ONE, d), (g, k), (f, ONE),
            (ZERO, h), (lx, ly), (px, py), (qx, qy)]
TRIPLES = list(combinations(range(9), 3))
AREAS = {t: area(*(VERTICES[i] for i in t)) for t in TRIPLES}
CAP = [r for r in WORDS if inside(r, (2, 3, 4))]
CAPACITY_ONE = ((1, 2, 3), (3, 4, 5), (0, 4, 5), (2, 4, 5))
SPLIT_CASES = {(0, 1, 14), (0, 3, 6), (1, 1, 13), (1, 2, 13),
               (2, 0, 6), (2, 3, 1), (2, 3, 4), (2, 3, 6)}


def candidate_cases():
    out = []
    for i, L in enumerate(LOWER):
        for j, P in enumerate(CAP):
            for ell in range(len(UPPER)):
                Q = UPPER[ell]
                if any(sum(inside(r, t) for r in (L, P, Q)) > 2
                       for t in combinations(range(6), 3)):
                    continue
                if any(sum(inside(r, t) for r in (L, P, Q)) > 1
                       for t in CAPACITY_ONE):
                    continue
                out.append((i, j, ell))
    return out


CASES = candidate_cases()


def base_signs(case):
    i, j, ell = case
    wr = LOWER[i], CAP[j], UPPER[ell]
    out = {}
    for t in TRIPLES:
        if t[2] < 6:
            out[t] = 1
        elif t[1] < 6:
            out[t] = 1 if sign(wr[t[2]-6], t[0], t[1]) else -1
    for a, b in combinations(range(3), 2):
        forced = {}
        for v in range(6):
            sg = forced.get(v)
            if wr[a][v] != wr[b][v]:
                radial = 1 if wr[a][v] < wr[b][v] else -1
                assert sg is None or sg == radial
                sg = radial
            if sg is not None:
                out[(v, a+6, b+6)] = sg
    return out


def unknown_triples(case):
    known = base_signs(case)
    return [t for t in TRIPLES if t[0] < 6 and t not in known]


def cells():
    out = []
    for case in CASES:
        if case not in SPLIT_CASES:
            out.append((case, -1))
            continue
        branches = list(range(1 << len(unknown_triples(case))))
        if case == (2, 3, 6):
            assert len(branches) == 16
            branches.append(18)
        out.extend((case, branch) for branch in branches)
    return out


def known_signs(case, branch):
    out = base_signs(case)
    if case not in SPLIT_CASES:
        assert branch == -1
        return out
    unknown = unknown_triples(case)
    if case == (2, 3, 6) and branch in (2, 18):
        out[(6, 7, 8)] = 1 if branch == 18 else -1
    else:
        assert 0 <= branch < (1 << len(unknown))
    for bit, triple in enumerate(unknown):
        out[triple] = 1 if branch & (1 << bit) else -1
    return out


def oriented(signs, triple):
    key = tuple(sorted(triple))
    if key not in signs:
        return None
    inversions = sum(triple[i] > triple[j] for i in range(3) for j in range(i+1, 3))
    return signs[key] * (-1 if inversions % 2 else 1)


@lru_cache(maxsize=None)
def cost_specs(case, branch):
    signs = known_signs(case, branch)
    out = []
    for t, sg in sorted(signs.items()):
        count = sum(all(oriented(signs, (t[i], t[(i+1) % 3], v)) == sg
                        for i in range(3))
                    for v in range(6, 9) if v not in t)
        assert count <= 2
        out.append((t, sg, (S, 3*S, RHO)[count]))
    return out


def costs(case, branch):
    return [sub(scale(AREAS[t], sg), const(bound))
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
    assert 3*S > F(16, 49)
    assert 1-3*S/(1-S) == F(41, 65)
    assert S/(1-S) == F(8, 65)
    assert F(3, 7) < RHO and 1+S-S/(1-RHO) < RHO
    assert AREAS[(2, 3, 7)] == sub(mul(sub(k, d), sub(ONE, px)),
                                   mul(sub(ONE, g), sub(py, d)))
    assert AREAS[(3, 4, 7)] == sub(mul(sub(g, f), sub(ONE, py)),
                                   mul(sub(ONE, k), sub(px, f)))
    assert scale(AREAS[(2, 4, 7)], -1) == sub(mul(sub(ONE, d), sub(px, f)),
                                               mul(sub(ONE, f), sub(ONE, py)))
    assert scale(AREAS[(2, 4, 7)], -1) == sub(mul(sub(ONE, f), sub(py, d)),
                                               mul(sub(ONE, d), sub(ONE, px)))
    assert AREAS[(2, 3, 4)] == add(AREAS[(2, 3, 7)], AREAS[(3, 4, 7)],
                                     scale(AREAS[(2, 4, 7)], -1))
    data = json.loads(Path(__file__).with_name('c1_one_lower_top_triangle_certificates.json').read_text())
    assert data['version'] == 1 and data['variables'] == VARIABLES
    assert data['vertices'] == ['O', 'C', 'D', 'X', 'F', 'H', 'L', 'P', 'Q']
    assert len(WORDS) == 26 and len(LOWER) == 4 and len(UPPER) == 18
    assert len(CAP) == 4 and len(CASES) == 219
    expected = set(cells())
    assert len(expected) == 276
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
    assert len(seen) == 168 and total == 18124
    assert worst == -F(3295947656639, 3346168627200)
    print(f'PASS: all 276 cells covered by {len(seen)} fixed cubic certificates, {total} positive terms')
    print(f'Largest exact cube upper bound: {worst}')


if __name__ == '__main__':
    verify()
